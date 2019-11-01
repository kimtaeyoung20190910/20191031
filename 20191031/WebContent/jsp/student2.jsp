<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "co.micol.dto.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<div align="center">
	<div><jsp:include page="topMenu.jsp"></jsp:include></div>
	<div>
		<%
			Student student = new Student();
			student.setName("김태영");
			student.setStudentId("5300070");
			student.setAddr("울산광역시");
			student.setAge(88);
			student.setTel("010-0002-0000");
		%>	
	</div>
	<div>
			이름 : <%= student.getName() %><br/>
			학번 : <%= student.getStudentId() %><br/>
			주소 : <%= student.getAddr() %><br/>
			나이 : <%= student.getAge() %><br/>
			전화번호 : <%= student.getTel() %><br/>
	</div>
	<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>