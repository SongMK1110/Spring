<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empInsert.jsp</title>
</head>
<body>
<h4>사원등록</h4>

<form name="insertForm" action="bookInsert" method="post" onsubmit="return false">
	<div>도서번호<input name="bookNo" value="${bookInfo.bookNo }" readonly></div>	
	<div>도서명<input name="bookName"></div>
	<div>도서표지<input name="bookCoverimg"></div>
	<div>출판일자<input type="date" name="bookDate"></div>
	<div>금액<input name="bookPrice"></div>
	<div>출판사<input name="bookPublisher"></div>
	<div>도서소개</div><input name="bookInfo"></div>
	<button type="submit">등록</button>
	<button type="button" onclick="location.href='bookList'">조회</button>
</form>
<script>
		function formOptionChk() {
			let bookName = document.getElementsByName('bookName')[0];

			if (bookName.value == "") {
				alert("제목이 입력되지 않았습니다.");
				title.focus();
				return;
			}
			alert("도서등록이 완료 되었습니다.")
			insertForm.submit();
		}

		document.querySelector('button[type="submit"]').addEventListener(
				'click', formOptionChk);
	</script>
</body>
</html>