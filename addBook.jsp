<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script>
function CheckAddBook(){
	var bookId = document.getElementById("bookId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	if(!check(/^ISBN[0-9]{1,7}$/, bookId, 
			"[도서코드]\nISBN과 숫자를 조합하여 5~12자까지 입력하세요\n 반드시 ISBN으로 시작하세요")) return false;
	
	if(name.value.length < 4 || name.value.length > 12){
		alert("[도서명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	
	if(unitPrice.value < 0){
		alert("[가격]\n0이상의 수를 입력하세요.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInstock.select();
		unitsInstock.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		if(regExp.test(e.value)){
			return true;
		}
		
		alert(msg);
		e.select;
		e.focus;
		return false;
	}
	
	document.newBook.submit();
}
</script>
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
	<form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post"
			enctype="multipart/form-data">
		<div class="form-group row">
			<label class="col-sm-2">도서코드</label>
			<div class="col-sm-3">
				<input type="text" name="bookId" class="form-control" id="bookId">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">도서명</label>
			<div class="col-sm-3">
				<input type="text" name="name" class="form-control" id="name">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">가격</label>
			<div class="col-sm-3">
				<input type="text" name="unitPrice" class="form-control" id="unitPrice">
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
			<label class="col-sm-2">총 페이지 수 </label>
			<div class="col-sm-3">
				<input type="text" name="totalPages" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">상세 정보</label>
			<div class="col-sm-5">
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
			<label class="col-sm-2">재고 수 </label>
			<div class="col-sm-3">
				<input type="text" name="unitsInStock" class="form-control" id="unitsInStock">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">상태</label>
			<div class="col-sm-3">
				<input type="radio" name="condition" value="New">신규 도서
				<input type="radio" name="condition" value="Old">중고 도서
				<input type="radio" name="condition" value="eBook">E-book
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">이미지 </label>
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