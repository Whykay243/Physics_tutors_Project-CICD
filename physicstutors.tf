provider "aws" {
  profile = "whykay"
  region = var.aws_region
}


#Creating VPC and Subnets
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "whykay-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false      #optional
  single_nat_gateway = true
  enable_dns_hostnames = true
  enable_dns_support   = true


  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

#Security Group
resource "aws_security_group" "whykayweb_sg" {
  name        = "web-sg"
  description = "Allow SSH and HTTP access"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere (restrict later!)
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP from anywhere
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTPS from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }

  tags = {
    Name = "whykayweb-sg"
  }
}

# Creating multiple public server
resource "aws_instance" "public_server" {
  count                      = length(module.vpc.public_subnets)  # Create one instance per public subnet
  ami                        = "ami-00a929b66ed6e0de6"  # Update as necessary
  instance_type              = "t2.micro"
  key_name                   = "whykayKP"
  subnet_id                  = module.vpc.public_subnets[count.index]  # Use the corresponding public subnet
  associate_public_ip_address = true
  vpc_security_group_ids     = [aws_security_group.whykayweb_sg.id]

  tags = {
    Name = "Public_server-${count.index + 1}"  # Unique name for each instance
  }
}

#Creating multiple private server
resource "aws_instance" "private_server" {
  count                      = length(module.vpc.private_subnets)  # Create one instance per private subnet
  ami                        = "ami-00a929b66ed6e0de6"  # Update as necessary
  instance_type              = "t2.micro"
  key_name                   = "whykayKP"
  subnet_id                  = module.vpc.private_subnets[count.index]  # Use the corresponding private subnet
  associate_public_ip_address = false  # Private servers won't have public IP addresses
  vpc_security_group_ids     = [aws_security_group.whykayweb_sg.id]

  tags = {
    Name = "Private_server-${count.index + 1}"  # Unique name for each instance
  }
}


#Load Balancer
resource "aws_lb" "publicserver_lb" {
  name               = "publicserver-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.whykayweb_sg.id] # Use the ALB-specific SG
  subnets            = module.vpc.public_subnets  # ALB in public subnets (us-east-1a, 1b, 1c)

  enable_cross_zone_load_balancing = true

  tags = {
    Name = "PublicserverLB"
  }
}



resource "aws_lb" "private_lb" {
  name               = "web-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.whykayweb_sg.id] # Use the ALB-specific SG
  subnets            = module.vpc.private_subnets  # ALB in private subnets (us-east-1a, 1b, 1c)

  enable_cross_zone_load_balancing = true

  tags = {
    Name = "PrivateserverLB"
  }
}

# Public Target groups
resource "aws_lb_target_group" "public_tg" {
  name        = "public-target-group"
  port        = 80  # HTTP port, can be adjusted based on your app's configuration
  protocol    = "HTTP"
  vpc_id      = module.vpc.vpc_id

  health_check {
    interval            = 30
    path                = "/"
    port                = "80"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = "PublicTargetGroup"
  }
}

#Private Target group
resource "aws_lb_target_group" "private_tg" {
  name        = "private-target-group"
  port        = 80  # HTTP port, can be adjusted based on your app's configuration
  protocol    = "HTTP"
  vpc_id      = module.vpc.vpc_id

  health_check {
    interval            = 30
    path                = "/"
    port                = "80"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = "PrivateTargetGroup"
  }
}

#Register public Instances with public Target Groups
resource "aws_lb_target_group_attachment" "public_server_attachment" {
  count              = length(aws_instance.public_server)  # Register all public servers
  target_group_arn   = aws_lb_target_group.public_tg.arn
  target_id          = aws_instance.public_server[count.index].id
  port               = 80  # HTTP port for the target group
}

# Register Private Instances with private Target Groups
resource "aws_lb_target_group_attachment" "private_server_attachment" {
  count              = length(aws_instance.private_server)  # Register all private servers
  target_group_arn   = aws_lb_target_group.private_tg.arn
  target_id          = aws_instance.private_server[count.index].id
  port               = 80  # HTTP port for the target group
}

#Configuring Load Balancer Listeners {Public ALB Listener (HTTP)}
resource "aws_lb_listener" "public_listener" {
  load_balancer_arn = aws_lb.publicserver_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.public_tg.arn
  }
}

#Configuring Load Balancer Listeners {Private ALB Listener (HTTP)}
resource "aws_lb_listener" "private_listener" {
  load_balancer_arn = aws_lb.private_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.private_tg.arn
  }
}

