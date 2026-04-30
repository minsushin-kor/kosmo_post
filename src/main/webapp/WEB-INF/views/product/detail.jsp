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
					<h1 class="h3 mb-4 text-gray-800">Product Detail</h1>

					<h3>${dto.productName}</h3>
					<h3>${dto.productRate}</h3>


					<a href="../account/create?productNum=${dto.productNum}"
						class="btn-btn">상품 가입</a>
					<button id="create" class="btn btn-danger"
						data-pn="${dto.productNum}">장바구니 담기</button>

					<div id="review_list" data-product-num="${dto.productNum}"></div>

					<div>
						<textarea rows="6" id="review_contents"></textarea>
						<button id="review_add">등록</button>
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

	<div>
		<!-- Modal -->
		<div class="modal fade" id="reviewModal" tabindex="-1"	aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<textarea rows="" cols="" id="contents_update"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"	data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" id="update_btn">Savechanges</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>
	<script src="/js/cart/cart.js"></script>
	<script src="/js/review/review.js"></script>
</body>
</html>