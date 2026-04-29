<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<c:forEach items="${list}" var="p">
	<div class="col-4">
		<div class="card">
			<div class="card-header">
				<input type="checkbox" data-pn="${p.productNum}" class="ch">
				<button class="btn btn-info del">삭제</button>
			</div>
			<img src="/files/product/${p.productFileDTO.fileName}"
				class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">${p.productName}</h5>

				<a href="./detail?productNum=${p.productNum}"
					class="btn btn-primary">상세보기</a>
			</div>
		</div>
	</div>
</c:forEach>