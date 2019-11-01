<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	Connection conn;	//DBMS와 연결을 유지하는 객체.
	PreparedStatement psmt;	//sql문 실행시키는 객체.
	ResultSet rs;	//레코드 set 담을 수 있는 객체.

	String driver = "oracle.jdbc.driver.OracleDriver"; //드라이버
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //접속하려는 DB
	String user = "tangg";
	String password = "1234";
	%>

	<%
		try {
			Class.forName(driver); // 드라이버 로드
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		String sql = "select * from student";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("studentid"); //==(1)
				String name = rs.getString("studentname"); 
				String addr = rs.getString("studentaddr");
				String tel = rs.getString("studenttel");
				int age = rs.getInt("studentage");
				out.println(id + ",");
				out.println(name + ",");
				out.println(addr + ",");
				out.println(tel + ",");
				out.println(age + "<br/>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			rs.close(); 
			psmt.close();
			conn.close(); //거꾸로 해제.
		}
	%>
</body>
</html>