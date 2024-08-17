<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	session="true"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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

<form method="post" action="/cuongddph14896_assimant/category/store">
	<div>
		<label>Tên danh mục:</label> 
		<input type="text" name="ten">
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
		<button class="btn btn-primary">Thêm mới</button>
		<button class="btn" type="reset">Tạo mới</button>
	</div>
</form>

<c:if test="${ empty dsCategory }">
	<p class="alert alert-warning">Không có dữ liệu</p>
</c:if>

<c:if test="${ !empty dsCategory }">
	<table class="table table-hover">
		<thead>
			<th>Tên thể loại:</th>
			<th>Tên người tạo:</th>
			<th>Tên sản phẩm:</th>
			<th colspan="2">Thao tác</th>
		</thead>
		<tbody>
			<c:forEach items="${ dsCategory }" var="ds">
				<tr>
					<td>${ ds.ten }</td>
					<td>${ ds.user.hoTen }</td>
					<td>${ ds.product.ten }</td>
					<td>
						<a class="btn btn-primary" 
						href="/cuongddph14896_assimant/category/editCategories?id=${ ds.id }">
						Cập nhật</a>
						<a class="btn btn-danger" 
						href="/cuongddph14896_assimant/category/delete?id=${ ds.id }">
							Xóa
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>
