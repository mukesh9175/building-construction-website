<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Aaradhya Construction</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
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
        .banner {
            width: 100%;
            height: 300px;
            background: url('image/mumbai.jpg') no-repeat center center;
            background-size: cover;
            color: black;
            text-align: center;
            padding: 80px 0;
        }
        .banner h1 {
            font-size: 3rem;
            font-weight: bold;
        }
        .contact-section {
            padding: 50px;
            background-color: #f9f9f9;
            text-align: center;
        }
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #e9ecef;
            padding: 30px;
            border-radius: 8px;
        }
        .footer {
            background-color: white;
            color: black;
            padding: 10px 0;
            text-align: center;
            width: 100%;
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
                        <a class="nav-link" href="about.jsp">About</a>
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
        <h1>Contact Us</h1>
        <p>We're here to help you with your construction needs.</p>
    </div>

    <!-- Contact Section -->
    <div class="contact-section">
        <h2>Get in Touch</h2>
        <p>Feel free to reach out to us with any questions or inquiries.</p>

        <!-- Success or Failure message display -->
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
            <div class="alert alert-info">
                <%= message %>
            </div>
        <% } %>

        <div class="contact-form">
            <form action="ContactServlet" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="subject" class="form-label">Subject</label>
                    <input type="text" class="form-control" id="subject" name="subject" required>
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Message</label>
                    <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>

        <div class="mt-5">
            <h3>Contact Details:</h3>
            <p><strong>Email:</strong> info@aaradhyaconstruction.com</p>
            <p><strong>Phone:</strong> +91 1234567890</p>
            <p><strong>Address:</strong> 123 Construction Street, Mumbai, India</p>
        </div>
    </div>

    <!-- Footer Section -->
    <footer class="footer">
        <p> 2024 Aaradhya Construction | All Rights Reserved</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
