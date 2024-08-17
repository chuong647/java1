<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
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
		action="/cuongddph14896_assimant/product/store">
		<div class="col-9">
			<div>
				<label>tên sản phẩm:</label>
				<input type="text" name="ten" />
			</div>
			<div>
				<label>Màu sắc:</label>
				<input type="text" name="mauSac" />
			</div>
			<div>
				<label>Kích thước:</label>
				<input type="number" name="kichThuoc" />
			</div>
			<div>
				<label>Đơn giá:</label>
				<input type="number" name="donGia" />
			</div>
			<div>
				<label>Số lượng:</label>
				<input type="number" name="soLuong" />
			</div>
			<div>
				<label>Hình ảnh:</label>
				<input type="file" name="img">
			</div>
		<div class="col-12">
			<button>Thêm mới</button>
			<button type="reset">Xóa form</button>
		</div>
</form>
	
<c:if test="${ empty ds }">
	<p class="alert alert-warning">Không có dữ liệu</p>
</c:if>

<c:if test="${ !empty ds }">
	<table class="table table-hover">
		<thead>
			<th>Tên sản phẩm</th>
			<th>Màu sắc</th>
			<th>Kích thước</th>
			<th>Đơn giá</th>
			<th>Số lượng</th>
			<th>Hình ảnh</th>
			<th colspan="2">Thao tác</th>
		</thead>
		<tbody>
			<c:forEach items="${ ds }" var="product">
				<tr>
					<td>${ product.ten }</td>
					<td>${ product.mauSac }</td>
					<td>${ product.kichThuoc }</td>
					<td>${ product.donGia }</td>
					<td>${ product.soLuong }</td>
					<td>${ product.img }</td>
					<td>
						<a class="btn btn-primary" 
						href="/cuongddph14896_assimant/product/editProduct?id=${ product.id }">
						Cập nhật</a>
						<a class="btn btn-danger" 
						href="/cuongddph14896_assimant/product/delete?id=${ product.id }">
							Xóa
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>