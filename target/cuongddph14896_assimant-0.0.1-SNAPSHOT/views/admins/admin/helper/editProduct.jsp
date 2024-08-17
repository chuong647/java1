<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
<form method="POST"
		action="/cuongddph14896_assimant/product/update?id=${ product.id }">
		<div class="col-9">
			<div>
				<label>tên sản phẩm:</label>
				<input type="text" name="ten" value="${ product.ten }"/>
			</div>
			<div>
				<label>Màu sắc:</label>
				<input type="text" name="mauSac" value="${ product.mauSac }"/>
			</div>
			<div>
				<label>Kích thước:</label>
				<input type="number" name="kichThuoc" value="${ product.kichThuoc }" />
			</div>
			<div>
				<label>Đơn giá:</label>
				<input type="number" name="donGia" value="${ product.donGia }"/>
			</div>
			<div>
				<label>Số lượng:</label>
				<input type="number" name="soLuong" value="${ product.soLuong }"/>
			</div>
			<div>
				<label>Hình ảnh:</label>
				<input type="file" name="img" value="${ product.img }">
			</div>
		<div class="col-12">
			<button>Cập nhật</button>
			<button type="reset">Xóa form</button>
		</div>
	</form>