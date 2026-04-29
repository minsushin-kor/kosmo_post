<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!-- 시간 값을 String 형식으로 보기 편하게 바꿔주기 위해 사용 -->
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<table class="table table-dark">
	<thead>
		<tr>
			<th>Contents</th>
			<th>Writer</th>
			<th>Date</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${list}" var="r">
			<tr>
				<td>${r.reviewContents}</td>
				<td>${r.username}</td>
				<td>
					<fmt:parseDate value="${r.reviewDate}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime"></fmt:parseDate>
					<fmt:formatDate value="${parsedDateTime}" pattern="yyyy-MM-dd HH:mm"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
