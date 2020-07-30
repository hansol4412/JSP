function CheckAddBook(){
	var bookId = document.getElementById("bookId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInstock = document.getElementById("unitsInstock");
	var totalPages = document.getElementById("totalPages");
	
	//상품 아이디 체크
	function check(regExp, id, msg){
		if(regExp.test(id.value)){
			return true;
		}
		alert(msg);
		id.select();
		id.focus();
		return false;
	}
	
	if(!check(/^B[0-9]{4,11}$/, bookId, "[도서 코드]\nB와 숫자를 조합하여 5~12자까지 입력하세요\n" +
			"첫 글자는 반드시 B로 시작하세요")) 
		return false;
	
	//상품명 체크
	if(name.value.length < 4 || name.value.length >12){
		alert("[도서명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	
	//상품 가격 체크
	if(unitPrice.value.length==0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력할 수 있습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(unitPrice.value < 0 ){
		alert("[가격]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	//총 페이지수 체크
	if(totalPages.value.length==0 || isNaN(totalPages.value)){
		alert("[총 페이지수]\n숫자만 입력할 수 있습니다.");
		totalPages.select();
		totalPages.focus();
		return false;
	}
	
	if(totalPages.value <0 ){
		alert("[총 페이지수]\n음수는 입력할 수 없습니다.");
		totalPages.select();
		totalPages.focus();
		return false;
	}
	
	//재고 수 체크
	if(unitsInstock.value.length==0 || isNaN(unitsInstock.value)){
		alert("[재고수]\n숫자만 입력할 수 있습니다.");
		unitsInstock.select();
		unitsInstock.focus();
		return false;
	}
	
	if(unitsInstock.value <0 ){
		alert("[재고수]\n음수는 입력할 수 없습니다.");
		unitsInstock.select();
		unitsInstock.focus();
		return false;
	}
	
	
	
	document.newBook.submit();
	
}