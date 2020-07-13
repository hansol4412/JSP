<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
		<h1 class="display-3"><fmt:message key="title"/></h1>
		</div>
	</div>
	<div class="container">
	<div class="text-right">
		<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
		<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
	</div>
	<form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post"
			enctype="multipart/form-data">
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="bookId"/></label>
			<div class="col-sm-3">
				<input type="text" name="bookId" class="form-control" id="bookId">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="name"/></label>
			<div class="col-sm-3">
				<input type="text" name="name" class="form-control" id="name">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
			<div class="col-sm-3">
				<input type="text" name="unitPrice" class="form-control" id="unitPrice">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="author"/></label>
			<div class="col-sm-3">
				<input type="text" name="author" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="publisher"/></label>
			<div class="col-sm-3">
				<input type="text" name="publisher" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="releaseDate"/></label>
			<div class="col-sm-3">
				<input type="text" name="releaseDate" class="form-control">
			</div>
		</div>
		
			<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="totalPages"/></label>
			<div class="col-sm-3">
				<input type="text" name="totalPages" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="description"/></label>
			<div class="col-sm-5">
				<textarea name="description" cols="50" rows="2" class="form-control">
				</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="category"/></label>
			<div class="col-sm-3">
				<input type="text" name="category" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
			<div class="col-sm-3">
				<input type="text" name="unitsInStock" class="form-control" id="unitsInStock">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="condition"/></label>
			<div class="col-sm-3">
				<input type="radio" name="condition" value="New"><fmt:message key="condition_New"/>
				<input type="radio" name="condition" value="Old"><fmt:message key="condition_Old"/>
				<input type="radio" name="condition" value="eBook"><fmt:message key="condition_eBook"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="filename"/>이미지 </label>
			<div class="col-sm-5">
				<input type="file" name="bookImage" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAddBook()">
			</div>
		</div>
	
	</form>
	</div>
</fmt:bundle>
</body>
</html>