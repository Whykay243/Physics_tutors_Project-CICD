<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content="Expert physics tutoring for high school and college students. Learn physics with confidence and clarity." />
  <meta name="keywords" content="Physics, Tutors, Tutoring, Physics Help, High School Physics, College Physics" />
  <meta name="author" content="Physics Tutors Team" />
  <meta property="og:title" content="Physics Tutors | Learn with Confidence" />
  <meta property="og:description" content="Master Physics with the best tutoring services." />
  <meta property="og:image" content="path_to_image" />
  <meta property="og:url" content="https://www.physicstutors.org" />
  <title>Physics Tutors | Learn with Confidence</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <link rel="icon" type="image/png" href="path/to/favicon.png">
</head>

<body>

  <header>
    <h1>Physics Tutors</h1>
    <p>Master Physics with Confidence and Clarity</p>
  </header>

  <nav aria-label="Main navigation">
    <a href="#about" aria-label="Go to About section">About</a>
    <a href="#curriculum" aria-label="Go to Curriculum section">Curriculum</a>
    <a href="#services" aria-label="Go to Services section">Services</a>
    <a href="#stats" aria-label="Go to Stats section">Stats</a>
    <a href="#testimonials" aria-label="Go to Testimonials section">Testimonials</a>
    <a href="#contact" aria-label="Go to Contact section">Contact</a>
  </nav>

  <div class="container">

    <section id="about">
      <h2>About Us</h2>
      <p>We offer expert tutoring in high school and college-level physics, helping students build strong foundations and ace their exams with confidence. With personalized instruction and hands-on learning, our approach is designed to make physics both fun and effective.</p>
    </section>

    <section id="curriculum">
      <h2>What You'll Learn</h2>
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

      <h3>🔌 Electricity & Magnetism (4 weeks)</h3>
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

      <a class="book-btn" href="https://calendly.com/yourname/physics-tutoring" target="_blank" aria-label="Book a free consultation with a Physics tutor">Book a Free Consultation</a>
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
      <div class="testimonial-slider">
        <div class="testimonial">
          <blockquote>
            “I went from failing physics to getting an A. These tutors are amazing!” – Alex, Grade 12
          </blockquote>
        </div>
        <div class="testimonial">
          <blockquote>
            “I finally understand Newton’s laws thanks to these sessions!” – Maya, College Freshman
          </blockquote>
        </div>
      </div>
    </section>

    <section id="contact">
      <h2>Contact Us</h2>
      <p>Fill out the form below and we’ll get back to you within 24 hours:</p>

      <form action="mailto:yinkaajibola@physicstutors.org" method="POST" enctype="text/plain" onsubmit="return validateForm()">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
        <input type="tel" name="phone" placeholder="Phone Number" required>
        <textarea name="message" rows="5" placeholder="What do you need help with?" required></textarea>
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
    <p><a href="/privacy-policy">Privacy Policy</a> | <a href="/terms">Terms & Conditions</a></p>
  </footer>

  <script>
    function validateForm() {
      const email = document.querySelector('input[name="email"]').value;
      const phone = document.querySelector('input[name="phone"]').value;
      if (!email || !phone) {
        alert("Please fill in all required fields.");
        return false;
      }
      return true;
    }
  </script>

  <style>
    .testimonial-slider {
      display: flex;
      overflow-x: auto;
    }
    .testimonial {
      min-width: 300px;
      margin: 1rem;
    }
  </style>

</body>
</html>
