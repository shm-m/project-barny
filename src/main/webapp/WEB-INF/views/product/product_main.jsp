<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product_main</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	 <!-- 헤더 네비게이션 바 -->

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Barny</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">브랜드스토리
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">구독</a>
          </li>
          <li class="nav-item dropdown active">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              상품보기
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">구독패키지</a>
              <a class="dropdown-item" href="#">술</a>
              <a class="dropdown-item" href="#">안주</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">후기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">이벤트</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">고객센터</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!--슬라이더바-->

  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="d-block w-100" src="static/img/first.jpg" alt="First slide">
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="static/img/second.jpg" alt="Second slide">
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="static/img/third.jpg" alt="Third slide">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <!-- 네비게이션 탭 -->

  <ul class="nav justify-content-center navbar-expand-lg navbar-light bg-light">
    <li class="nav-item">
      <a class="nav-link active" href="#">구독패키지</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">술</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">안주</a>
    </li>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </ul>

<!-- 패키지 상품 보기 -->

  	<div class="container mt-4 text-center">
   	 <div class="row">  	   
	  <c:forEach items="${product_main}" var="dto">
      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top width=100" src="barny.png"></a>
          	<div class="card-body">
            <h2>${dto.product_name}</h2>
            <p>${dto.price} 원</p>
            <p><a class="btn btn-secondary" href="product_view?product_id=${dto.product_id}">상품보러가기</a></p>
          	</div>
        </div>
      </div>
      </c:forEach>
     </div>
    </div>
    

    <!--    <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="barny.png"></a>
          <div class="card-body">
            <h2>${dto.product_name}</h2>
            <p>${dto.price}</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>


      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="barny.png"></a>
          <div class="card-body">
            <h2>${dto.product_name}</h2>
            <p>${dto.price}</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>
    </div>
  </div> -->
  
 

  <!-- 구독하기 버튼 -->

    <div class="text-center mb-5 mt-5">
      <button type="button" class="btn btn-outline-dark btn-lg mt-5">구독하기</button>
    </div>

  <div style="height: auto; width: 100%; border:1px solid hsl(0, 4%, 33%);" />
  <div class="container-2">
    <div class="text-center mb-5 mt-5">
      <h3 class="display-4 mb-5">이런 상품은 어떠세요?</h3>
      <h6>구독패키지 구매 후 구매가능</h6>
    </div>
  </div>

  <!-- 추천 상품보기-->
  <div class="container mt-4 text-center">
    <div class="row">
      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top width=100" src="barny.png"></a>
          <div class="card-body">
            <h2>안주1</h2>
            <p>10,000 원</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>

      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="barny.png"></a>
          <div class="card-body">
            <h2>안주2</h2>
            <p>20,000 원</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>


      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="barny.png"></a>
          <div class="card-body">
            <h2>안주3</h2>
            <p>30,000 원</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container mt-4 text-center">
    <div class="row">
      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top width=100" src="barny.png"></a>
          <div class="card-body">
            <h2>술1</h2>
            <p>5,000 원</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>

      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="barny.png"></a>
          <div class="card-body">
            <h2>술2</h2>
            <p>4,000 원</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>


      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="barny.png"></a>
          <div class="card-body">
            <h2>술3</h2>
            <p>6,000 원</p>
            <p><a class="btn btn-secondary" href="#">상품보러가기</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 상품 더보기 버튼 -->

  <div class="text-center mb-5 mt-5">
    <button type="button" class="btn btn-outline-dark btn-lg mt-5">상품 더 보러가기!</button>
  </div>
	
	
</body>
</html>