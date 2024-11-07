<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success - Aaradhya Construction</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Success message styling */
        .success-message {
            text-align: center;
            padding: 50px;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .success-message h1 {
            font-size: 2.5rem;
            color: #155724;
        }
        .success-message p {
            font-size: 1.2rem;
            color: #155724;
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            font-size: 1.1rem;
            border-radius: 5px;
            text-decoration: none;
        }
        .btn-custom:hover {
            background-color: #218838;
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
            <a class="navbar-brand" href="#">Aaradhya Construction</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
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

    <!-- Success Message -->
    <div class="container mt-5">
        <div class="success-message">
            <h1>Registration Successful!</h1>
            <p>Thank you for registering with Aaradhya Construction. You are now part of our trusted community of builders.</p>
           
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
