<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Aaradhya Construction</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Body styling */
        body {
            background-image: url('image/register.jpg'); /* Change URL to your image */
            background-size: cover;
            background-position: center;
            color: black;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            padding-bottom: 80px; /* Space for footer */
            padding-top: 80px; /* Space for navbar */
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

        /* Form container styling */
        .register-form {
            max-width: 500px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent background */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            margin-bottom: 50px; /* Space from the footer */
        }
        .register-form h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
        }
        .btn {
            width: 48%;
            padding: 10px;
            font-size: 16px;
        }
        .btn-register {
            background-color: #4CAF50;
            color: white;
            border: none;
        }
        .btn-register:hover {
            background-color: #45a049;
        }
        .btn-reset {
            background-color: #f44336;
            color: white;
            border: none;
        }
        .btn-reset:hover {
            background-color: #e53935;
        }

        /* Footer styling */
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

    <!-- Registration Form -->
    <div class="register-form">
        <h2>Register</h2>
        <form action="RegisterServlet" method="post">
            <!-- Name -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" class="form-control" name="name" required placeholder="Enter your full name">
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" class="form-control" name="email" required placeholder="Enter your email">
            </div>

            <!-- Mobile Number -->
            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="tel" id="mobile" class="form-control" name="mobile" required placeholder="Enter your mobile number">
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" class="form-control" name="password" required placeholder="Enter your password">
            </div>

            <!-- Buttons -->
            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-register">Register</button>
                <button type="reset" class="btn btn-reset">Reset</button>
            </div>
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Aaradhya Construction | All Rights Reserved</p>
        <p>Contact us: <a href="mailto:info@aaradhyaconstruction.com">info@aaradhyaconstruction.com</a></p>
        <p>
            <a href="Home.jsp">Home</a> |
            <a href="about.jsp">About</a> |
            <a href="contact.jsp">Contact</a>
        </p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
