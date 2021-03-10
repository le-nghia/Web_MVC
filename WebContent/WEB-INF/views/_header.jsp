<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-info text-white">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<!-- <a class="nav-link text-white" href="#">Studens</a> -->
				<h3>Students</h3>
			</li>
			<li class="nav-item active">
				<a class="nav-link text-white" href="${pageContext.request.contextPath}/productList">Ebook</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link text-white" href="${pageContext.request.contextPath}/userInfo">Accout</a>
			</li>
		</ul>
	</div>
	
	<div style="float: right; padding: 10px; text-align: right;">

		<!-- User store in session with attribute: loginedUser -->
		<a href="${loginedUser.userName}" ></a>
		<!-- Search <input name="search"> -->
		

	</div>
	
	<div style="float: right;">
		<a class="nav-link text-white" href="${pageContext.request.contextPath}/login">Đăng Nhập</a>
	</div>
</nav>
