<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>도서 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 등록</h1>
		</div>
	</div>
	<div class="container">
	<form name="newBook" action="processAddBook.jsp" class="form-horizontal" method="post"
			enctype="multipart/form-data">
		<div class="form-group row">
			<label class="col-sm-2">도서 코드</label>
			<div class="col-sm-3">
				<input type="text"  id="bookId" name="bookId" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">도서명</label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">가격</label>
			<div class="col-sm-3">
				<input type="text" name="unitPrice" id="unitPrice" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">저자</label>
			<div class="col-sm-3">
				<input type="text" name="author" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">출판사</label>
			<div class="col-sm-3">
				<input type="text" name="publisher" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">출판일</label>
			<div class="col-sm-3">
				<input type="text" name="releaseDate" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"> 페이지 수 </label>
			<div class="col-sm-3">
				<input type="text"  name="totalPages" id="totalPages" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">상세정보</label>
			<div class="col-sm-3">
				<textarea name="description" cols="50" rows="2" class="form-control">
				</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">분류</label>
			<div class="col-sm-3">
				<input type="text" name="category" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">재고수</label>
			<div class="col-sm-3">
				<input type="text"  name="unitsInstock" id="unitsInstock" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">상태</label>
			<div class="col-sm-5">
				<input type="radio" name="condition" value="New"/> 신규 제품
				<input type="radio" name="condition" value="Old"/> 중고 제품
				<input type="radio" name="condition" value="eBook"/> e-book
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">이미지</label>
			<div class="col-sm-5">
				<input type="file" name="bookImage" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddBook()">
			</div>
		</div>
	</form>
	</div>
</body>
</html>