<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
<form method="POST"
		action="/cuongddph14896_assimant/user/update?id=${ user.id }">
	<div>
		<label>Họ tên</label>
		<input type="hidden" />
		<input type="text" name="hoTen" value="${ user.hoTen }" />
	</div>
	<div>
		<label>Địa chỉ</label>
		<input type="text" name="diaChi" value="${ user.diaChi }" />
	</div>
	<div>
		<label>SĐT</label>
		<input type="text" name="sdt" value="${ user.sdt }" />
	</div>
	<div>
		<label>Email</label>
		<input type="email" name="email" value="${ user.email }" />
	</div>
	<div>
		<label>Giới tính</label>
		<input type="radio" name="gioiTinh" value="1"
			${ user.gioiTinh == 1 ? "checked" : "" }/>
		<label>Nam</label>
		<input type="radio" name="gioiTinh" value="0"'
			${ user.gioiTinh == 0 ? "checked" : "" }/>
		<label>Nữ</label>
	</div>
	<div>
		<label>Quyền quản trị</label>
		<input type="radio" name="role" value="1"
			${ user.role == 1 ? "checked" : "" }/>
		<label>Admin</label>
		<input type="radio" name="role" value="0"'
			${ user.role == 0 ? "checked" : "" }/>
		<label>User</label>
	</div>
	<div>
		<button>Cập nhật</button>
		<button type="reset">Xóa form</button>
	</div>
</form>