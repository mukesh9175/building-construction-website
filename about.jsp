<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Aaradhya Construction</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        /* Banner styling */
        .banner {
            width: 100%;
            height: 300px;
            background: url('image/mumbai.jpg') no-repeat center center;
            background-size: cover;
            color: white;
            text-align: center;
            padding: 80px 0;
        }
        .banner h1 {
            font-size: 3rem;
            font-weight: bold;
        }
        /* About section styling */
        .about-section {
            padding: 50px;
            background-color: #f9f9f9;
            text-align: center;
        }
        .about-section h2 {
            font-size: 2.5rem;
            font-weight: bold;
            margin-top: 20px;
        }
        .about-section p {
            font-size: 1.2rem;
            line-height: 1.6;
            margin-top: 20px;
        }
        .about-card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin-top: 20px;
        }
        /* Footer Styling */
        .footer {
            background-color: white;
            color: black;
            padding: 10px 0;
            text-align: center;
            width: 100%;
            position: fixed;
            bottom: 0;
            left: 0;
        }
        .footer a {
            color: black;
            text-decoration: none;
            margin: 0 15px;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        /* Navbar styling */
        .navbar {
            background-color: white;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000; /* Keep navbar on top */
        }

        .navbar-brand, .navbar-nav .nav-link {
            color: black !important;
        }

        .navbar-brand:hover, .navbar-nav .nav-link:hover {
            color: #555 !important;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="home.jsp">Aaradhya Construction</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner Section -->
    <div class="banner">
        <h1>About Aaradhya Construction</h1>
        <p>Building your dreams with trust and excellence.</p>
    </div>

    <!-- About Section -->
    <div class="about-section">
        <h2>Our Story</h2>
        <p>Established in 2023 by the Sardarians Group, Aaradhya Construction has rapidly become a respected name in the construction industry. The company is owned and operated by Mukesh Gurjar, Suraj Dhangar, and Vishal Gurjar, who are dedicated to delivering quality, integrity, and innovation in every project.</p>
        
        <div class="about-card">
            <h3>Founders & Ownership</h3>
            <p>Aaradhya Construction is proudly managed by Mukesh Gurjar, Suraj Dhangar, and Vishal Gurjar, who bring their expertise and passion for construction to every project. Their leadership drives our commitment to excellence and sustainable building practices.</p>
        </div>
        
        <div class="about-card">
            <h3>Our Mission</h3>
            <p>To construct buildings that stand as symbols of excellence and reliability. We prioritize quality, transparency, and client satisfaction in every project we undertake.</p>
        </div>
        
        <div class="about-card">
            <h3>Our Services</h3>
            <p>Specializing in residential, commercial, and infrastructure projects, we provide a full range of construction services. From planning and design to execution and completion, our team ensures a seamless process with attention to detail and commitment to client needs.</p>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Aaradhya Construction | All Rights Reserved</p>
        <p>Contact us: <a href="mailto:info@aaradhyaconstruction.com">info@aaradhyaconstruction.com</a></p>
        <p>
            <a href="home.jsp">Home</a> |
            <a href="about.jsp">About</a> |
            <a href="contact.jsp">Contact</a>
        </p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
