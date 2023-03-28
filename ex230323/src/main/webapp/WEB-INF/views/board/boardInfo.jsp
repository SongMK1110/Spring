<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 조회</title>
</head>
<body>
	<form onsubmit="return false">
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">번호 : </label>
			<div class="col-sm-8">${boardInfo.bno }</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">제목 : </label>
			<div class="col-sm-8">${boardInfo.title }</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">작성자 : </label>
			<div class="col-sm-8">${boardInfo.writer }</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">내용 : </label>
			<div class="col-sm-8">
				<textarea class="form-control" readonly>${boardInfo.contents}</textarea>
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">첨부파일 : </label>
			<div class="col-sm-8">
				<c:choose>
					<c:when test="${not empty boardInfo.image }">
						<img alt="이미지"
							src="<c:url value="/resources/images/${boardInfo.image }" />"
							style="width: 50%;">
					</c:when>
					<c:otherwise>

					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">작성일자 : </label>
			<div class="col-sm-8">
				<fmt:formatDate value="${boardInfo.regdate}" pattern="yyyy/MM/dd" />
			</div>
		</div>
		<button type="button" class="btn btn-info"
			onclick="location.href='boardUpdate?bno='+${boardInfo.bno }">수정</button>
		<button type="button" class="btn btn-danger"
			onclick="location.href='boardDelete?bno='+${boardInfo.bno }">삭제</button>
	</form>
</body>
</html>