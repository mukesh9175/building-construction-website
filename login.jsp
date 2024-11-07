<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Aaradhya Construction</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f9;
            font-family: Arial, sans-serif;
            background-image: url('<%= request.getContextPath() %>/image/login.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
        }
        .login-form {
            max-width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent background for consistency */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .login-form h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-control {
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
        }
        .btn-custom {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            background-color: #28a745;
            color: white;
            border: none;
        }
        .btn-custom:hover {
            background-color: #218838;
        }
        .text-danger {
            text-align: center;
            font-size: 16px;
            color: #dc3545;
            margin-top: 15px;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
        }
        .register-link a {
            font-size: 16px;
            color: #28a745;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }

        /* Navbar styling */
        .navbar {
            background-color: white;
            border-bottom: 1px solid #ddd;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: black !important;
        }
        .navbar-brand:hover, .navbar-nav .nav-link:hover {
            color: #555 !important;
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
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Aaradhya Construction</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.jsp">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Login Form -->
    <div class="login-form">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" class="form-control" name="email" required placeholder="Enter your email">
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" class="form-control" name="password" required placeholder="Enter your password">
            </div>

            <!-- Login Button -->
            <button type="submit" class="btn-custom">Login</button>

            <!-- Error Message -->
            <div class="text-danger">
                <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
            </div>
        </form>

        <!-- Register Link -->
        <div class="register-link">
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Aaradhya Construction | All Rights Reserved</p>
        <p>Contact us: <a href="mailto:info@aaradhyaconstruction.com">info@aaradhyaconstruction.com</a></p>
        <p>
            <a href="index.jsp">Home</a> |
            <a href="about.jsp">About</a> |
            <a href="contact.jsp">Contact</a>
        </p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
