<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<jsp:useBean id="student" class="co.micol.dto.Student" />
			<jsp:setProperty property="name" name="student" value="킴태영"/>			
			<jsp:setProperty property="studentId" name="student" value="5343070"/>
			<jsp:setProperty property="addr" name="student" value="대구대구"/>
			<jsp:setProperty property="age" name="student" value="24"/>
			<jsp:setProperty property="tel" name="student" value="010-0001-0000"/>
	</div>
	
	<div>
		이름 : ${student.name}<br/> <!-- 출력 -->
		학번 : ${student.studentId}<br/>
		주소 : ${student.addr}<br/>
		나이 : ${student.age} <br/>
		전화번호 : <jsp:getProperty property="tel" name="student"/><br/><br/>
	</div>
	<div>
		<button type="button" onclick="location.href='student2.jsp'">자바코드</button>
	</div>
	<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>