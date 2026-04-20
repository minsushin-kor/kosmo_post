<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
</head>
<body id="page-top">
	<div id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp"></c:import>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="/WEB-INF/views/temp/topbar.jsp"></c:import>
				
				<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">${name}</h1>
                    
                    <!-- 테이블 DIV 시작 -->
                    <div class="row justify-content-center">
                    <div class="col-6">
                    	<!-- 검색 폼 -->
                    	
                    	<div>
                    		<form action="./list" method="get">
	                    		<div class="input-group mb-3">
	                    		  <div class="input-group-prepend">
									<select name="kind" class="custom-select">
										<option ${pager.kind eq 'v1'?'selected':''} value="v1">Title</option>
										<option ${pager.kind eq 'v2'?'selected':''} value="v2">Contents</option>
										<option ${pager.kind eq 'v3'?'selected':''} value="v3">Writer</option>
									</select>
								  </div>	
	                    		
								  <input type="text" name="search" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
								  <div class="input-group-append">
								    <button class="btn btn-outline-secondary" id="button-addon2">검색</button>
								  </div>
								</div>
							</form>
                    		
                    	</div>
                    
                    	<table class="table">
                    		<thead class="thead-dark">
                    			<tr>
                    				<th>No</th>
                    				<th>Name</th>
                    				<th>Sort</th>
                    				<th>Rate</th>
                    			</tr>
                    		</thead>
                    		<tbody>
		                    	<c:forEach items="${list}" var="d">
		                    		<tr>
		                    			<td>${d.accountNum}</td>
		                    			<td>${d.accountName}</td>
		                    			<td>${d.accountSort}</td>
		                    			<td>
              								<fmt:formatNumber value="${d.accountRate}" type="percent" minFractionDigits="1" />
            							</td>              					                    			
		                    		</tr>
		                    	</c:forEach>
                    		</tbody>
                    	</table>
                    	                    	
                    	<div>
                    		<a href="./create">새로운 계좌 등록</a>
                    	</div>
                    	
                    </div>
                    </div>
                    <!-- 테이블 DIV 끝 -->

                </div>
                <!-- End Page container-fluid -->
                
			</div>
			<!-- End page Content -->
			<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>
		</div>
		<!-- End Content wrapper -->
	</div>
	<!-- End Wrapper -->
	
	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>

</body>
</html>