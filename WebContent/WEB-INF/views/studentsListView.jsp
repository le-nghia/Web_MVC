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
<title>Students List</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/_header.jsp"></jsp:include>
	<div class="container my-5 head">
		<section>
			<div style="width: 200px;" class=".col-lg-3 .col-lg-6">

				<form action="#" method="post">
					<input name="timkiem" type="text" placeholder="Tìm mã..."
						class="form-control"><br> <input name="btn"
						type="submit" value="Search" class="btn-primary">

				</form>
			</div>

			<div class="row">

				<div class="col-9">
					<a href="createProduct?student=new" class="btn btn-primary float-right" title="Thêm Mới"><i
						class="fa fa-plus" ></i> Add New</a>
				</div>

				<div class="post">
					<h3 style="text-align: center;">STUDENTS LIST</h3>
					<table class="table ">

						<thead class="bg-info text-white">
							<tr>
								<td>Name</td>
								<td>Gender</td>
								<td>Birthday</td>
								<td>Address</td>
								<td>Actions</td>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${productList}" var="student">
								<tr>
									<td>${ student.name}</td>
									<td>${ student.gender}</td>
									<td>${ student.birthday}</td>
									<td>${ student.address}</td>
									<td><a class="btn btn-info" href="editProduct?ID=${student.ID}" title="Chỉnh Sửa">Edit</a>&nbsp;&nbsp;&nbsp; 
										<a class="btn btn-danger" href="deleteProduct?ID=${student.ID}" title="Xóa SV">Delete</a>
									</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</div>
</body>
</html>


