<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	session="true"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<form method="post" action="/cuongddph14896_assimant/category/update?id=${ category.id }">
	<div>
		<label>Tên danh mục:</label>
		<input type="text" name="ten" value="${ category.ten }">
	</div>
	<div>
		<label>Tên người tạo:</label> 
		<select name="user_id">
			<c:forEach items="${ dsUser }" var="user">
				<option value="${ user.id }">${ user.hoTen }</option>
			</c:forEach>
		</select>
	</div>
	<div>
		<label>Tên sản phẩm:</label> 
		<select name="product_id">
			<c:forEach items="${ dsProduct }" var="product">
				<option value="${ product.id }">${ product.ten }</option>
			</c:forEach>
		</select>
	</div>
	<div>
		<button class="btn btn-primary">cập nhật</button>
		<button class="btn" type="reset">Xóa form</button>
	</div>
</form>
