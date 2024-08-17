<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
    
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

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

<form action="/cuongddph14896_assimant/login" method="post">
	<div>
		<label>SDT</label>
		<input type="text" name="sdt">
	</div>
	<div>
		<label>Password</label>
		<input type="password" name="password">
	</div>
	<div>
		<button>Đăng nhập</button>
	</div>
</form>