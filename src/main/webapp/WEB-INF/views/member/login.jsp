<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
	
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css" rel="stylesheet">
    
</head>
<body id="page-top">

	<!-- Begin Wrapper -->
	<div id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp"></c:import>

		<!-- Begin Content-Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Begin Page Content -->
			<div id="content">
				<c:import url="/WEB-INF/views/temp/topbar.jsp"></c:import>

				<!-- Begin Page container-fluid -->
				<div class="container-fluid">

					<!-- 수정 부분 -->
					<h1 class="h3 mb-4 text-gray-800">LOGIN PAGE</h1>
					<div class=col-6>
						<form action="./login" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="title">Username</label> 
								<input type="text" name="username" class="form-control" id="username"> 
							</div>
							
							<div class="form-group">
								<label for="password">Password</label> 
								<input type="password" name="password" class="form-control" id="password"> 
							</div>
														
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
				<!-- End Page container-fluid -->
			</div>
			<!-- End Page Content -->
			<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>
		</div>
		<!-- End Content-Wrapper -->
	</div>
	<!-- End Wrapper -->

	
	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>
	<script>
			    $('#contents').summernote({
        		placeholder: 'Hello Bootstrap 4',
        		tabsize: 2,
        		height: 100
      			});
    </script>
</body>
</html>