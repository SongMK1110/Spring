<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 조회</title>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>표지</th>
				<th>출판일자</th>
				<th>금액</th>
				<th>출판사</th>
				<th>도서소개</th>
			</tr>
		</thead>
			<c:forEach items="${bookList }" var="book">
				<tr>
					<td>${book.bookNo }</td>
					<td>${book.bookName }</td>
					<td><img alt="이미지"
							src="<c:url value="/resources/images/${book.bookCoverimg }" />"
							style="width: 50%;"></td>
					<td><fmt:formatDate value="${book.bookDate }" pattern = "yyyy/MM/dd"/></td>
					<td><fmt:formatNumber value="${book.bookPrice }" pattern = "#,###"/></td>
					<td>${book.bookPublisher }</td>
					<td>${book.bookInfo }</td>
				</tr>
			</c:forEach>
		<tbody>
		
		</tbody>
	
	</table>
</body>
</html>