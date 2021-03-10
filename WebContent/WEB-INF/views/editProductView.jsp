<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>Edit Students</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/_header.jsp"></jsp:include>
	<section>
		<div class="col-sm-8 offset-sm-2 my-5">

			<div class="card-header bg-primary text-white">
				<h3 style="text-align: center;">Edit Students</h3>
				<p style="color: red;">${errorString}</p>
			</div>

			<div class="card-body">
				<c:if test="${not empty student }">
					<form action="${pageContext.request.contextPath}/editProduct"
						method="POST">
						<input type="hidden" name="ID" value="${student.ID}" />
						
						<div class="form-group">
							<h2>Mã ID: <q><i style="color: red;">${student.ID }</i></q></h2>
							

						</div>
						
						<div class="form-group">
							<label>Full Name</label> <input type="text" name="name"
								value="${student.name}" class="form-control" />
						</div>

						<div class="form-group">
							<label>Gender</label> <input type="text" name="gender"
								value="${student.gender}" class="form-control" />
						</div>

						<div class="form-group">
							<label>Birthday</label> <input name="birthday" type="date"
								value="${student.birthday}" class="form-control" />
						</div>
						
						<div class="form-group">
							<label>Address</label> <input type="text" name="address"
								value="${student.address}" class="form-control" />
						</div>
						
						<input type="submit" value="Cập Nhật" class="btn btn-info" /> 
						<a class="btn btn-danger" href="productList">Cancel</a>
					</form>
				</c:if>
			</div>
		</div>
	</section>

</body>
</html>