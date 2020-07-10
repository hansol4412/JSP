<%--8_4. input태그 내에 text 유형을 이용하여 아이디, 비밀번호 항목을 작성한다
		 form 태그의 action속성 값은 fileupload01_process.jsp로 작성합니다. 
		 아이디, 비밀번호 항목이 입력되지 않으면 '아이디(비밀번호)를 입력해주세요'라는 메세지를 뜨도록한다.
		 비밀번호와 아이디가 포함되면 '비밀번호는 ID를 포함 할 수 없습니다'라고 메세지가 뜨도록 한다. 
		 비밀번호 확인과 비밀번호가 다르면 '비밀번호를 다시 확인해 주십시오'라는 메세지가 뜨도록 한다.
		 비밀번호에 동일한 영문자나 숫자가 3개이상 연속으로 입력되면 '영문, 숫자는 3자 이상 연속 입력할 수 없습니다' 라고 출력
		 비밀번호에 영문, 숫자, 특수문자를 조합한 8자 이상이 되도록 하고 아니면 '영문, 숫자, 특수문자 포함해 8자리 이상 압력하세요"라고 출력--%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<script type="text/javascript">
	function checkform(){
		var id = document.file.id;
		var passwd = document.file.passwd;
		var passwdc = document.file.passwdc;
		var regExp =  /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
		if(id.value=="") {
			alert("아이디를 입력해 주세요");
			return false;
		}
		else if(passwd.value=="") {
			alert("비밀번호를 입력해 주세요");
			return false;
		}
		
		if(passwd.value.indexOf(id.value)!=-1){
			alert("비밀번호는 ID를 포함 할 수 없습니다");
			return false;
		}
		
		if(passwdc.value != passwd.value){
			alert("비밀번호를 다시 확인해 주십시오.");
			return false;
		}
		if(!regExp.test(passwd.value)){
			alert("영문, 숫자, 특수문자 포함해 8자리 이상 입력하세요.");
			return false;
		}
		
		if(/(\w)\1\1/.test(passwd.value)){
			alert('영문, 숫자는 3자 이상 연속 입력할 수 없습니다');
			return false;
		}

		
		document.file.submit();
		
	}
</script>
<title>File Upload</title>
</head>
<body>
<form action="fileupload01_process_8.jsp" method="post" name="file">
	아이디 <input name="id" type="text"><br>
	비밀번호 <input name="passwd" type="text"><br>
	비밀번호 확인 <input name="passwdc" type="text"><br>
	<input type="button" value="전송" onclick="checkform()">
</form>

</body>
</html>