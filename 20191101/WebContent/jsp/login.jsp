<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function formCheck(){
		if(frm.id.value==""){
			alert("아이디를 입력하세요");
			frm.id.focus();
			return false;
		}
		if(frm.pw.value==""){
			alert("패스워드를 입력하세요");
			frm.pw.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div align="center">
	<c:if test="${id==null}">
		<div><jsp:include page="topMenu.jsp"></jsp:include></div>
		<div><h2>로 그 인</h2></div>
		<div>
			<form id="frm" name="frm" action="loginOk.jsp" method="post" onsubmit="return formCheck()">
			<table border="1">
			<tr>
			<th width="100" align="center">아이디</th>
			<td><input type="text" id="id" name="id"></td>
			</tr>
			<tr>
			<th width="100" align="center">패스워드</th>
			<td><input type="password" id="pw" name="pw"></td>
			</tr>
			</table>
			<br/>
			<input type="submit" value="로그인">&nbsp;&nbsp;
			<input type="reset" value="취소">&nbsp;&nbsp;
			<input type="button"onclick="location.href='join.jsp'" value="회원가입">&nbsp;&nbsp;
			</form>
		</div>
		</c:if>
		<c:if test="${id != null }">
		<h2> ${id }는 이미 로그인 하였습니다.</h2>
		<a href="login.jsp"></a>
		</c:if>
		<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>