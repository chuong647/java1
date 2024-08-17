<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cuongddph14896_home</title>
	<link rel="stylesheet"
			href="/cuongddph14896_assimant/css/bootstrap.min.css" />
</head>
<body>
<div class="row mt-5">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<c:if test="${ empty sessionScope.user }">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="/cuongddph14896_assimant/home/trangChuNoLogin">Trang chủ</a></li>
						</c:if>
						<c:if test="${ !empty sessionScope.user }">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="/cuongddph14896_assimant/home/trangChu">Trang chủ</a></li>
						</c:if>
						
						<c:if test="${ sessionScope.user.role == 1 }">							
							<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Quản lý</a>
								<ul class="dropdown-menu" aria-labelled	by="navbarDropdown">
									<li><a class="dropdown-item" href="/cuongddph14896_assimant/user/users">Quản lý người dùng</a></li>
									<li><a class="dropdown-item" href="/cuongddph14896_assimant/category/categories">Quản lý danh mục</a></li>
									<li><a class="dropdown-item" href="/cuongddph14896_assimant/product/products">Quản lý sản phẩm</a></li>
								</ul>
							</li>
						</c:if>															
						<li class="nav-item dropdown">						
						<a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownUser" role="button" 
						data-bs-toggle="dropdown" aria-expanded="false" >
							<c:if test="${ !empty sessionScope.user  }">
								${sessionScope.user.hoTen}
							</c:if>
							<c:if test="${ empty sessionScope.user  }">
								Tài khoản
							</c:if>
						</a>		         
						   <ul class="dropdown-menu" aria-labelledby="navbarDropdownUser">
							    <c:if test="${ !empty sessionScope.user  }">
							    	<li><a class="dropdown-item" href="/cuongddph14896_assimant/dmk" >Đổi mật khẩu</a></li> 
							    	<li><a class="dropdown-item" href="/cuongddph14896_assimant/logout" >Đăng xuất</a></li>   
							    </c:if>
							    <c:if test="${ empty sessionScope.user  }">
							    	<li><a class="dropdown-item" href="/cuongddph14896_assimant/register">Đăng ký</a></li>	
							    	<li><a class="dropdown-item" href="/cuongddph14896_assimant/login">Đăng nhập</a></li>
							    </c:if>
						   </ul>
						</li>
						<c:if test="${ sessionScope.user.role==0 }">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="/cuongddph14896_assimant/home/gioHangInUser?id=${ sessionScope.user.id }">giỏ hàng của bạn</a></li>
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="/cuongddph14896_assimant/hoaDon/lichSuDatHang?id=${ sessionScope.user.id }">Lịch sử đặt hàng</a></li>
						</c:if>
						<c:if test="${ sessionScope.user.role==1 }">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="/cuongddph14896_assimant/hoaDon/hoaDonKhachHang">Hóa đơn khách hàng</a></li>
						</c:if>		
					</ul>											  			        									                        
				</div>
			</div>
	</nav>
</div>
	
<div class="row">
  <img src="https://caodang.fpt.edu.vn/wp-content/uploads/Banner-LP-Tuyen-sinh-7-2016-1.jpg" class="w-100" alt="...">
</div>


<div class="container">
	<div class="col-12">
		<jsp:include page="${ view }"></jsp:include>
	</div>
</div>











<div class="row mt-2">
      <img src="https://caodang.fpt.edu.vn/wp-content/uploads/FPT_polytechnic_banner-1.png" style="width: 100%;" alt="">
</div>
<div class="row" style="background-color: orangered;height: 30px;"></div>
    <footer>
      <div class="row bg-dark">
        <div class="col-sm-3 offset-1" style="color: white;">
          <img src="https://caodang.fpt.edu.vn/vinmart/images/icon2a.png" class="w-100 mt-5" alt="">
          <br><br>
          <h2 style="color: orangered;">THÔNG TIN LIÊN HỆ</h2>
          <br>
          <h6><img src="images/icons/phonew.svg" alt=""> Điện thoại: 0255.026.262</h6>
        </div>
        <div class="col-sm-4" style="color: white;">
          <h2 style="color: orangered;padding-top: 60px;">Hệ thống văn phòng tuyển sinh</h2>
          <br><br>
          <h5><u>Cơ sở Hà Nội:</u></h5>
          <h6><img src="images/icons/map-pin.svg" alt="">Văn phòng Tuyển sinh: Tòa nhà FPT Polytechnic,
            Phố
            Trịnh
            Văn Bô, Nam Từ Liêm, Hà Nội</h6>
          <h6><img src="images/icons/phonew.svg" alt="">0255.026.262</h6>
          <br><br>
          <h5><u>Cơ sở Đà Nẵng:</u></h5>
          <h6><img src="images/icons/map-pin.svg" alt="">Văn phòng Tuyển sinh: Số 137 Nguyễn Thị Thập,
            Phường
            Hòa
            Minh, Quận Liên Chiểu, TP. Đà Nẵng</h6>
          <h6><img src="images/icons/phonew.svg" alt="">0255.026.262</h6>
        </div>
        <div class="col-sm-4" style="color: white;">
          <h5 style="padding-top: 150px;"><u>Cơ sở Hà Nội:</u></h5>
          <h6><img src="images/icons/map-pin.svg" alt="">Văn phòng Tuyển sinh: Tòa nhà FPT Polytechnic,
            Phố
            Trịnh
            Văn Bô, Nam Từ Liêm, Hà Nội</h6>
          <h6><img src="images/icons/phonew.svg" alt="">0255.026.262</h6>
          <br><br>
          <h5><u>Cơ sở Đà Nẵng:</u></h5>
          <h6><img src="images/icons/map-pin.svg" alt="">Văn phòng Tuyển sinh: Số 137 Nguyễn Thị Thập,
            Phường
            Hòa
            Minh, Quận Liên Chiểu, TP. Đà Nẵng</h6>
          <h6><img src="images/icons/phonew.svg" alt="">0255.026.262</h6>
          <br><br>
        </div>
      </div>
    </footer>
</div>				


	<script src="/cuongddph14896_assimant/js/jquery.min.js"></script>
	<script src="/cuongddph14896_assimant/js/popper.min.js"></script>
	<script src="/cuongddph14896_assimant/js/bootstrap.min.js"></script>
</body>
</html>