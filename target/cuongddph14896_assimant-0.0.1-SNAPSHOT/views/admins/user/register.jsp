<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<h2>
	<fmt:formatDate value="${ now }" pattern="dd/MM/yyyy"/>
</h2>

<c:if test="${ !empty sessionScope.error }">
	<div class="alert alert-danger">
		${ sessionScope.error }
	</div>
	<c:remove var="error" scope="session"/>
</c:if>

<c:if test="${ !empty sessionScope.message }">
	<div class="alert alert-success">
		${ sessionScope.message }
	</div>
	<c:remove var="message" scope="session"/>
</c:if>

<form method="POST"
		action="/cuongddph14896_assimant/register">
		<div>
			<label>Họ tên:</label>
			<input type="text" name="hoTen" />
		</div>
		<div>
			<label>Password:</label>
			<input type="text" name="password" />
		</div>
		<div>
			<label>Địa chỉ:</label>
			<input type="text" name="diaChi" />
		</div>
		<div>
			<label>SĐT:</label>
			<input type="text" name="sdt" />
		</div>
		<div>
			<label>Email:</label>
			<input type="email" name="email" />
		</div>
		<div>
			<label>Giới tính</label>
			<input type="radio" name="gioiTinh" value="1" />
			<label>Nam</label>
			<input type="radio" name="gioiTinh" value="0" />
			<label>Nữ</label>
		</div>
		<div>
			<button>Đăng ký</button>
			<button type="reset">Xóa form</button>
		</div>
	</form>