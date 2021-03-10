<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
body {
	background-image: url("img/a1.jpg");
	width: 100%;
	margin: 0 auto;
}

.Sua {
	width: 320px;
	border: 5px solid #6bb9f0;
	background: #f7f7f7;
	padding: 15px;
	height: 450px;
	margin: 0 auto;
	margin-top: 100px;
	position: relative;
}

a {
	
}
</style>
<title>Đăng Nhập</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/_header.jsp"></jsp:include>

	<div class="container">
		<div style="margin-bottom: 100px;"></div>
		<div class="Sua">
			<form style="margin-bottom: 10px;" method="POST"
				action="${pageContext.request.contextPath}/login">

				<h5 style="text-align: center;">Đăng Nhập</h5>
								
				<div style="margin-bottom: 10px; padding: 8px 12px; border-radius: 4px;">
					<label>Tài Khoản: </label> 
					<input type="text" name="userName" class="form-control input-lg" placeholder="Nhập tài khoản"
						value="${user.userName }"/>
				</div>
				
				<div style="margin-bottom: 10px; padding: 8px 12px; border-radius: 4px;">
					<label>Mật Khẩu: </label> 
					<input type="password" name="password" class="form-control input-lg" placeholder="Nhập mật khẩu"
						value="${user.password }"/>
				</div>
				
				<p style="color: red;">${errorString}</p>
				<input type="checkbox" name="rememberMe" value="Y" /> Remenber
				
				<button style="width: 100%; border: 1px solid transparent; padding: 4px 8px; border-radius: 4px; margin: 10px auto;"
					type="submit" class="btn-primary">Đăng Nhập</button>
				<a
					style="text-align: center; text-decoration: none; width: 100%; border: 1px solid transparent; padding: 4px 8px; border-radius: 4px; margin: 10px auto;"
					type="submit" href="${pageContext.request.contextPath}/"
					class="btn-primary">Cancel </a>
			</form>
		</div>
	</div>

</body>
</html>