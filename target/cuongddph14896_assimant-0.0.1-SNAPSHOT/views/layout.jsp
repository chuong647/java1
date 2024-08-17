<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cuongddph14896</title>
	<link rel="stylesheet"
			href="/cuongddph14896_assimant/css/bootstrap.min.css" />
</head>
<body>
	<fmt:setLocale value="vi" scope="request"/>
	<fmt:setBundle basename="global" scope="request"/>	
	<c:url value="/home" var="home">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="https://i.pinimg.com/236x/3c/f3/bb/3cf3bbf96663fefac4e687373e2fdecc--free-icon-silhouette.jpg" style="height: 50px;width: 50px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${ home }/index">Trang chủ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Giới thiệu</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Câu hỏi thường gặp</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Tài khoản
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">          	
            <li><a class="dropdown-item" href="${ home }/login">Đăng nhập</a></li>
            <li><a class="dropdown-item" href="${ home }/user">Quản lý người dùng</a></li>
            <li><a class="dropdown-item" href="${ home }/category">Quản lý danh mục</a></li>
            <li><a class="dropdown-item" href="${ home }/product">Quản lý sản phẩm</a></li>
            <hr>
            <li><a class="dropdown-item" href="${ home }/logout">Đăng xuất</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
</c:url>
	<div class="container">
		<div class="row"> 		
			<div class="col-12">
				<jsp:include page="${ view }"></jsp:include>
			</div>
		</div>
	</div>
	<footer class="bg-dark text-white text-center">Cuongddph14896</footer>
	
	
	<script src="/cuongddph14896_assimant/js/jquery.min.js"></script>
	<script src="/cuongddph14896_assimant/js/popper.min.js"></script>
	<script src="/cuongddph14896_assimant/js/bootstrap.min.js"></script>
</body>
</html>