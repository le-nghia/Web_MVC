<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>New Students</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/_header.jsp"></jsp:include>
	
	<section class="container my-5 head">
		<div class="col-sm-8 offset-sm-2 my-5">

			<div class="card-header bg-primary text-white">
				<h3 style="text-align: center;">Add New Students</h3>
				<p style="color: red;">${errorString}</p>
			</div>
			
			<div class="card-body">

				<form action="${pageContext.request.contextPath}/createProduct"
					method="POST">
				
					<div class="form-group">
						<label>Mã ID</label> <input type="text" name="id"
							value="${student.ID}" class="form-control" placeholder="Mã ID" />
					</div>
					<div class="form-group">
						<label>Full Name</label> <input type="text" name="name"
							value="${student.name}" class="form-control"
							placeholder="Nhập họ tên" />
					</div>

					<div class="form-group">
						<label>Gender</label> <input type="text" name="gender"
							value="${student.gender}" class="form-control"
							placeholder="Nhập giới tính" />
					</div>

					<div class="form-group">
						<label>Birthday</label> <input name="birthday" type="date"
							value="${student.birthday}" placeholder="Nhập ngày sinh"
							class="form-control" />
					</div>
					<div class="form-group">
						<label>Address</label> <input type="text" name="address"
							value="${student.address}" placeholder="nhập địa chỉ"
							class="form-control" />
					</div>
					<input type="submit" value="Hoàn Thành" class="btn btn-info" />
					
					<a class="btn btn-danger" href="productList">Cancel</a>
				</form>
			</div>
		</div>
	</section>
</body>
</html>