<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Physics Tutors | Learn with Confidence</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      color: #333;
      background: linear-gradient(to bottom, #f9f9f9, #e6f2ff);
    }

    header, footer {
      background-color: #003366;
      color: white;
      text-align: center;
      padding: 2rem 1rem;
    }

    header h1 {
      font-size: 3rem; /* made heading bigger */
      margin-bottom: 0.5rem;
    }

    nav {
      background: #004080;
      text-align: center;
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    nav a {
      color: white;
      text-decoration: none;
      padding: 1rem;
      display: inline-block;
      font-size: 1.1rem;
    }

    .container {
      max-width: 1000px;
      margin: auto;
      padding: 2rem;
      background: white;
    }

    h1, h2 {
      color: #003366;
    }

    h2 {
      font-size: 2rem; /* made section headings bigger */
    }

    ul {
      margin-left: 1rem;
    }

    form {
      background: #f1f1f1;
      padding: 1rem;
      border-radius: 8px;
    }

    input, textarea {
      width: 100%;
      padding: 0.7rem;
      margin: 0.5rem 0;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    button {
      background-color: #003366;
      color: white;
      padding: 0.7rem 1.5rem;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 1rem;
    }

    .contact-info a {
      color: #003366;
    }

    .stats {
      display: flex;
      justify-content: space-around;
      background: #e0eaff;
      padding: 1.5rem 1rem;
      border-radius: 8px;
      margin: 2rem 0;
    }

    .stat {
      text-align: center;
    }

    .stat h3 {
      margin: 0;
      font-size: 2em;
      color: #003366;
    }

    /* Testimonial styles */
    .testimonial {
      background: #e0eaff;
      border-radius: 10px;
      padding: 1.5rem;
      margin-bottom: 1.5rem;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      position: relative;
    }

    .testimonial::before {
      content: "“";
      font-size: 3rem;
      color: #007acc;
      position: absolute;
      top: 10px;
      left: 20px;
    }

    .testimonial p {
      font-size: 1.2rem;
      color: #333;
      margin: 0;
      padding-left: 2rem;
    }

    .testimonial span {
      display: block;
      margin-top: 0.8rem;
      font-weight: bold;
      color: #003366;
      padding-left: 2rem;
    }

    /* Hover effect for testimonials */
    .testimonial:hover {
      transform: translateY(-5px);
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15);
      transition: all 0.3s ease;
    }

    .book-btn {
      display: block;
      width: fit-content;
      margin: 2rem auto;
      padding: 1rem 2rem;
      background-color: #007acc;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      font-weight: bold;
      font-size: 1.1rem;
    }

    @media (max-width: 600px) {
      .stats {
        flex-direction: column;
        gap: 1rem;
      }

      nav a {
        display: block;
        padding: 0.75rem;
      }
    }
  </style>
</head>

<body>

  <header>
    <h1>Physics Tutors</h1>
    <p>Master Physics with Confidence and Clarity</p>
  </header>

  <nav>
    <a href="#about">About</a>
    <a href="#curriculum">Curriculum</a>
    <a href="#services">Services</a>
    <a href="#stats">Stats</a>
    <a href="#testimonials">Testimonials</a>
    <a href="#contact">Contact</a>
  </nav>

  <div class="container">

    <section id="about">
      <h2>About Us</h2>
      <p>We offer expert tutoring in high school and college-level physics, helping students build strong foundations and ace their exams with confidence. With personalized instruction and hands-on learning, our approach is designed to make physics both fun and effective.</p>
    </section>

    <section id="curriculum">
      <h2>What You'll Learn</h2>

      <h3> Measurements & Unit Conversions (2 weeks)</h3>
      <ul>
        <li>Precise scientific measurements</li>
        <li>Units and conversions</li>
        <li>Understanding error margins</li>
      </ul>

      <h3>🏃 Kinematics (3 weeks)</h3>
      <ul>
        <li>Displacement, velocity, acceleration</li>
        <li>Motion analysis and graphing</li>
        <li>Free-fall problems</li>
      </ul>

      <h3>🚀 Dynamics (8 weeks)</h3>
      <ul>
        <li>Newton’s Laws</li>
        <li>Friction, gravity, drag</li>
        <li>Rocket projects</li>
      </ul>

      <h3>⚡ Energy & Momentum (4 weeks)</h3>
      <ul>
        <li>Energy conservation</li>
        <li>Kinetic, potential, thermal energy</li>
        <li>Egg drop challenge</li>
      </ul>

      <h3>🌊 Waves (4 weeks)</h3>
      <ul>
        <li>Wave types and properties</li>
        <li>Sound, resonance, musical instruments</li>
      </ul>

      <h3> Electricity & Magnetism (4 weeks)</h3>
      <ul>
        <li>Circuits and Ohm’s Law</li>
        <li>Magnetic fields and motors</li>
        <li>Build your own speaker</li>
      </ul>
    </section>

    <section id="services">
      <h2>Our Services</h2>
      <ul>
        <li><i class="fas fa-user-graduate"></i> One-on-One Tutoring</li>
        <li><i class="fas fa-users"></i> Small Group Lessons</li>
        <li><i class="fas fa-book"></i> Exam & AP Physics Prep</li>
        <li><i class="fas fa-chart-line"></i> Monthly Progress Reports</li>
      </ul>

      <a class="book-btn" href="https://calendly.com/yourname/physics-tutoring" target="_blank">Book a Free Consultation</a>
    </section>

    <section id="stats" class="stats">
      <div class="stat">
        <h3>150+</h3>
        <p>Students Tutored</p>
      </div>
      <div class="stat">
        <h3>95%</h3>
        <p>Grade Improvement</p>
      </div>
      <div class="stat">
        <h3>5+</h3>
        <p>Years Experience</p>
      </div>
    </section>

    <section id="testimonials">
      <h2>What Our Students Say</h2>

      <div class="testimonial">
        <p>I went from failing physics to getting an A. These tutors are amazing!</p>
        <span>– Alex, Grade 12</span>
      </div>

      <div class="testimonial">
        <p>I finally understand Newton’s laws thanks to these sessions!</p>
        <span>– Maya, College Freshman</span>
      </div>

    </section>

    <section id="contact">
      <h2>Contact Us</h2>
      <p>Fill out the form below and we’ll get back to you within 24 hours:</p>

      <form action="mailto:yinkaajibola@physicstutors.org" method="POST" enctype="text/plain">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="tel" name="phone" placeholder="Phone Number" required>
        <textarea name="message" rows="5" placeholder="What do you need help with?"></textarea>
        <button type="submit">Submit</button>
      </form>

      <p>Or contact us directly:</p>
      <div class="contact-info">
        <p>Email: <a href="mailto:yinkaajibola@physicstutors.org">yinkaajibola@physicstutors.org</a></p>
        <p>Phone: <a href="tel:8573997810">(857) 399-7810</a></p>
        <p>Website: <a href="http://www.physicstutors.org" target="_blank">www.physicstutors.org</a></p>
        <p>Instagram: <a href="https://instagram.com/yourhandle" target="_blank">@yourhandle</a></p>
      </div>
    </section>

  </div> <!-- end container -->

  <footer>
    <p>&copy; 2025 Physics Tutors. All rights reserved.</p>
  </footer>

</body>
</html>
