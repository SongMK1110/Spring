<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
	<h2>게시글 등록</h2>
	<form name="insertForm" action="boardInsert" method="post"
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
				<input class="form-control" type="text" name="title">
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">작성자 : </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" name="writer">
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">내용 : </label>
			<div class="col-sm-8">
				<textarea class="form-control" type="text" name="contents"></textarea>
			</div>
		</div>
		<div class="mb-2 row">
			<label class="col-sm-2 col-form-label">첨부 이미지 : </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" name="image">
			</div>
		</div>
		<br>
		<button class="btn btn-success" type="submit">등록</button>
		<button class="btn btn-primary" type="button"
			onclick="location.href='getBoardList'">목록</button>

	</form>
	<script>
		function formOptionChk() {
			let title = document.getElementsByName('title')[0];
			let writer = document.getElementsByName('writer')[0];
			let contents = document.getElementsByName('contents')[0];

			if (title.value == "") {
				alert("제목이 입력되지 않았습니다.");
				title.focus();
				return;
			}
			if (writer.value == "") {
				alert("작성자가 입력되지 않았습니다.");
				writer.focus();
				return;
			}
			if (contents.value == "") {
				alert("내용이 입력되지 않았습니다.");
				contents.focus();
				return;
			}
			insertForm.submit();
		}

		document.querySelector('button[type="submit"]').addEventListener(
				'click', formOptionChk);
	</script>
</body>
</html>