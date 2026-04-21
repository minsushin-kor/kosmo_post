<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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
					<h1 class="h3 mb-4 text-gray-800">Product List</h1>

					<div class="row">
						<c:forEach items="${list}" var="p">
							<div class="col-4">
								<div class="card" style="width: 18rem;">
									<img src="/files/${name}/${p.productFileDTO.fileName}" class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">${p.productName}</h5>
										<a href="./detail?productNum=${p.productNum}" class="btn btn-primary">상세보기</a>
									</div>
								</div>
							</div>
						</c:forEach>

						
					</div>
					
					<div>
						<a href="./create" class="btn btn-danger">상품등록</a>
					</div>
					
					<div>
                    	<nav aria-label="Page navigation example">
						  <ul class="pagination">
						    <li class="page-item ${pager.pre?'':'disabled'}">
						      <a class="page-link" href="./list?page=${pager.pre?pager.start-1:pager.start}&search=${pager.search}&kind=${pager.kind}" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    	<c:forEach begin="${pager.start}" end="${pager.end}" var="i">
                    			<li class="page-item"><a class="page-link" href="./list?page=${i}&search=${pager.search}&kind=${pager.kind}">${i}</a></li>
                    			</c:forEach>
						    
						    <li class="page-item ${pager.next?'':'disabled'}">
						      <a class="page-link" href="./list?page=${pager.next?pager.end+1:pager.end}&search=${pager.search}&kind=${pager.kind}" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav>
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
</body>
</html>