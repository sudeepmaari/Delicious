<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    #promotionCarousel .carousel-item img {
      width: 100%;
      height: 500px;
      object-fit: cover;
    }

    #promotionCarousel {
      max-width: 1000px;
      margin: 0 auto;
    }

    .product-card {
      text-decoration: none;
      color: inherit;
      display: flex;
      flex-direction: column;
      height: 100%;
    }

    .product-card:hover {
      transform: scale(1.05);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .product-card img {
      object-fit: cover;
      height: 200px;
    }

    .footer {
      background: #000;
      color: #fff;
      padding: 10px 0;
    }
  </style>
</head>
<body>

  <%@include file="Header.jsp"%>

  <div id="promotionCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="f1.png" class="d-block w-100" alt="Promo 1">
      </div>
      <div class="carousel-item">
        <img src="home.png" class="d-block w-100" alt="Promo 2">
      </div>
      <div class="carousel-item">
        <img src="https://via.placeholder.com/1500x400" class="d-block w-100" alt="Promo 3">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#promotionCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#promotionCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <div class="container my-5">
    <h2 class="text-center mb-4">Featured Products</h2>
    <div class="row g-4">
      <div class="col-md-3">
        <a href="#" class="product-card">
          <img src="https://via.placeholder.com/200" class="card-img-top" alt="Product 1">
          <div class="card-body">
            <h5 class="card-title">Product 1</h5>
            <p class="card-text">$10.00</p>
          </div>
        </a>
      </div>
      <div class="col-md-3">
        <a href="#" class="product-card">
          <img src="https://via.placeholder.com/200" class="card-img-top" alt="Product 2">
          <div class="card-body">
            <h5 class="card-title">Product 2</h5>
            <p class="card-text">$15.00</p>
          </div>
        </a>
      </div>
      <div class="col-md-3">
        <a href="#" class="product-card">
          <img src="https://via.placeholder.com/200" class="card-img-top" alt="Product 3">
          <div class="card-body">
            <h5 class="card-title">Product 3</h5>
            <p class="card-text">$20.00</p>
          </div>
        </a>
      </div>
      <div class="col-md-3">
        <a href="#" class="product-card">
          <img src="https://via.placeholder.com/200" class="card-img-top" alt="Product 4">
          <div class="card-body">
            <h5 class="card-title">Product 4</h5>
            <p class="card-text">$25.00</p>
          </div>
        </a>
      </div>
    </div>
  </div>

  <%@include file="Footer.jsp"%>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>