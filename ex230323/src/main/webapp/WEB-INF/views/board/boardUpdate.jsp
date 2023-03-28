<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<h2>게시글 수정</h2>
	<form name="updateForm" action="boardUpdate" method="post"
		onsubmit="return false">
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">번호 : </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" name="bno"
					value="${boardInfo.bno }" readonly>
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">제목 : </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" name="title"
					value="${boardInfo.title }">
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">작성자 : </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" name="writer"
					value="${boardInfo.writer }" readonly>
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">내용 : </label>
			<div class="col-sm-8">
				<textarea class="form-control" type="text" name="contents">${boardInfo.contents }</textarea>
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">첨부 이미지 : </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" name="image"
					value="${boardInfo.image }">
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">수정날짜 : </label>
			<div class="col-sm-8">
				<input type="date" name="updatedate">
			</div>
		</div>
		<br>
		<button class="btn btn-success" type="submit">수정</button>
		<button class="btn btn-primary" type="button"
			onclick="location.href='getBoardInfo?bno=${boardInfo.bno}'">취소</button>

	</form>
	<script>
		function formOptionChk() {
			let title = document.getElementsByName('title')[0];
			let contents = document.getElementsByName('contents')[0];

			if (title.value == "") {
				alert("제목이 입력되지 않았습니다.");
				title.focus();
				return;
			}
			if (contents.value == "") {
				alert("내용이 입력되지 않았습니다.");
				contents.focus();
				return;
			}
			updateForm.submit();
		}

		document.querySelector('button[type="submit"]').addEventListener(
				'click', formOptionChk);
	</script>
</body>
</html>