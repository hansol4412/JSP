function CheckAddBook(){
	var bookId = document.getElementById("bookId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	if(!check(/^ISBN[0-9]{1,7}$/, bookId, 
			"[도서코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요")) return false;
	
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