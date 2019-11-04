<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function formCheck(){
		var frm = document.frm;
		if(frm.id.value =="") { //document.getElementById['id'].value
			alert("아이디를 입력하세요.");
			frm.id.focus();
			return false;
		}
		if(frm.idChk.value =="unCheck"){ 
			alert("아이디 중복을 확인하세요.");
			return false;
		}	
		if(frm.pw.value ==""){
			alert("비밀번호를 입력하세요.");
			form.pw.focus();
			return false;
		}
		if(frm.name.value ==""){
			alert("이름을 입력하세요.");
			frm.name.focus();
			return false;
		}
		if(frm.addr.value ==""){
			alert("주소를 입력하세요.");
			frm.addr.focus();
			return false;
		}
		return true; 
	}
	function idCheck(){
		window.open("idCheck.jsp?cid="+id.value,"IdCheck","width=800", "height=400");
	}
	
</script>
</head>
<body>
	<div align="center">
	<div><h2>회 원 가 입</h2></div>
	<div>
	<form id="frm" name="frm" action="joinOk.jsp" method="post" onsubmit="return formCheck()">
		<div>
			<table border="1">
				<tr>
					<th align="center" width="100">*아이디</th>
					<td><input type="text" id="id" name="id" size="50">&nbsp;
					<button type="button" name="idChk" onclick="idCheck()" value="unCheck">중복체크</button>
					</td>
				</tr>
				<tr>
					<th align="center" width="100">*패스워드</th>
					<td><input type="password" id="pw" name="pw" size="50"></td>
				</tr>
				<tr>
					<th align="center" width="100">*이&nbsp;&nbsp;름</th>
					<td><input type="text" id="name" name="name" size="50"></td>
				</tr>
				<tr>
					<th align="center" width="100">&nbsp;주&nbsp;&nbsp;소</th>
					<td><input type="text" id="addr" name="addr" size="60"></td>
				</tr>
			</table>
		</div>
		<div>
			<br/>
			<button type="submit">회원가입</button>&nbsp;&nbsp;&nbsp;
			<button type="reset">취 소</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='login.jsp'">로그인</button>
		</div>
	</form>
	</div>
	</div>
</body>
</html>