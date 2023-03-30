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
	<h1>도서별 대여매출현황</h1>
	<table class="table">
		<thead>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>대여총계</th>
				<th>대여횟수</th>
			</tr>
		</thead>
			<c:forEach items="${bookRentList }" var="book">
				<tr>
					<td>${book.bookNo }</td>
					<td>${book.bookName }</td>
					<td>${book.sumprice }</td>
					<td>${book.rentcnt }</td>
				</tr>
			</c:forEach>
		<tbody>
		
		</tbody>
	
	</table>
</body>
</html>