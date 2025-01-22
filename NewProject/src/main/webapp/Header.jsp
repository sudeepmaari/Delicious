<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Header</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    .navbar img {
      max-height: 50px; 
      width: auto; 
      margin-right: 10px; 
    }

    .offcanvas {
      background-color: #222;
      color: #fff;
    }

    .offcanvas .offcanvas-header {
      border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }

    .offcanvas-body ul {
      padding-left: 0;
    }

    .offcanvas-body .nav-item {
      list-style: none;
      margin-bottom: 10px;
    }

    .offcanvas-body .nav-link {
      color: #fff;
      padding: 10px;
      border-radius: 5px;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .offcanvas-body .nav-link:hover {
      background-color: #444;
      transform: translateX(10px);
    }

    .offcanvas-title {
      font-weight: bold;
      font-size: 1.5rem;
    }

    .btn-close {
      filter: invert(1);
    }
  </style>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="Dashboard.jsp">
        <img src="https://static.vecteezy.com/system/resources/previews/007/379/995/non_2x/delicious-food-word-concepts-banner-tasty-meal-catering-industry-restaurant-menu-presentation-website-isolated-lettering-typography-idea-with-linear-icons-outline-illustration-vector.jpg" alt="Logo">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasMenu" aria-controls="offcanvasMenu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="#" data-bs-toggle="offcanvas" data-bs-target="#offcanvasMenu" aria-controls="offcanvasMenu">Menu</a>
          </li>
          <li class="nav-item"><a class="nav-link" href="#">Cart</a></li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="bi bi-person-circle"></i> Profile
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="EditProfile.jsp">Profile Settings</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownLogin" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="bi bi-box-arrow-in-right"></i> Login
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownLogin">
              <li><a class="dropdown-item" href="#">Logout</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasMenu" aria-labelledby="offcanvasMenuLabel">
    <div class="offcanvas-header">
      <h5 class="offcanvas-title" id="offcanvasMenuLabel">Menu</h5>
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
      <ul>
        <li class="nav-item"><a class="nav-link" href="Snacks.html">Snacks</a></li>
        <li class="nav-item"><a class="nav-link" href="Juices.html">Juices</a></li>
        <li class="nav-item"><a class="nav-link" href="Pizza.html">Pizza</a></li>
        <li class="nav-item"><a class="nav-link" href="Meals.html">Meals</a></li>
        <li class="nav-item"><a class="nav-link" href="Desert.html">Desert</a></li>
      </ul>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>