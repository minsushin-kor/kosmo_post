<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
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
                    <h1 class="h3 mb-4 text-gray-800">장바구니 목록</h1>
                    
                    <div class="row">
                    	<div>
                    		<input type="checkbox">
                    		<button class="btn btn-primary">선택항목 삭제</button>
                    		<button class="btn btn-danger">선택항목 가입</button>
                    	</div>
                    </div>
                    
                    <div class="row" >
                    	<c:forEach items="${list}" var="p">
                    		<div class="col-4">
	                    		<div class="card">
	                    			<div class="card-header">
	                    				<input type="checkbox"> <button class="btn btn-info">삭제</button>
	                    			</div>
								  <img src="/files/product/${p.productFileDTO.fileName}" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title">${p.productName}</h5>
								    
								    <a href="./detail?productNum=${p.productNum}" class="btn btn-primary">상세보기</a>
								  </div>
								</div>
                    		</div>
                    	</c:forEach>
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
	<script src="/js/cart/list.js"></script>
</body>
</html>