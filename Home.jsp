<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Aaradhya Construction</title>
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
        /* Card styling */
        .card {
            border: none;  /* Remove card borders */
            border-radius: 10px;
            overflow: hidden; /* Ensure the image doesn't overflow the card */
        }
        .card img {
            height: 200px;  /* Set a fixed height for the images */
            width: 100%;  /* Ensure the images stretch to fill the card */
            object-fit: cover;  /* Maintain the aspect ratio while covering the card */
        }
        .card-body {
            padding: 1.25rem;
        }
        .card-title {
            font-size: 1.25rem;
            font-weight: bold;
        }
        .card-text {
            font-size: 1rem;
            color: #666;
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

    <!-- Advertising Banner -->
    <div class="banner">
        <!-- Banner content can be added here -->
    </div>

    <!-- Building Images in Cards -->
    <div class="container my-5">
        <h2 class="text-center mb-4">Our Projects</h2>
        <div class="row">
            <!-- Card for Mumbai -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card">
                    <img src="image/mumbai1.jpg" class="card-img-top img-fluid" alt="Mumbai Building">
                    <div class="card-body">
                        <h5 class="card-title">Mumbai</h5>
                        <p class="card-text">Explore our landmark projects in Mumbai.</p>
                    </div>
                </div>
            </div>
            <!-- Card for Pune -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card">
                    <img src="image/pune.jpg" class="card-img-top img-fluid" alt="Pune Building">
                    <div class="card-body">
                        <h5 class="card-title">Pune</h5>
                        <p class="card-text">High-quality constructions in Pune city.</p>
                    </div>
                </div>
            </div>
            <!-- Card for Indore -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card">
                    <img src="image/indore.jpg" class="card-img-top img-fluid" alt="Indore Building">
                    <div class="card-body">
                        <h5 class="card-title">Indore</h5>
                        <p class="card-text">Building projects with modern architecture in Indore.</p>
                    </div>
                </div>
            </div>
            <!-- Card for Delhi -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card">
                    <img src="image/delhi.jpg" class="card-img-top img-fluid" alt="Delhi Building">
                    <div class="card-body">
                        <h5 class="card-title">Delhi</h5>
                        <p class="card-text">Luxury buildings with premium design in Delhi.</p>
                    </div>
                </div>
            </div>
            <!-- Card for Goa -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card">
                    <img src="image/goa.jpg" class="card-img-top img-fluid" alt="Goa Building">
                    <div class="card-body">
                        <h5 class="card-title">Goa</h5>
                        <p class="card-text">Explore beachside properties and more in Goa.</p>
                    </div>
                </div>
            </div>
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
