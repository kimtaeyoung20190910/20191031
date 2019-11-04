package co.micol.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.MemberDto;

public class MemberDao {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "tangg";
	private String password = "1234";

	public MemberDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDto> select() { // 여러 사람의 데이터를 확인.
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();

		MemberDto dto;
		String sql = "select * from member";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new MemberDto();
				dto.setId(rs.getString("memberid"));
				dto.setName(rs.getString("membername"));
				dto.setGrant(rs.getString("membergrant"));
				dto.setEnterDate(rs.getDate("memberenterdate"));
				dto.setAddr(rs.getString("memberaddr"));
				
				list.add(dto); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public MemberDto select(String id) { // 한 사람의 데이터를 확인.
		MemberDto dto = new MemberDto();
		String sql = "select * from member where memberid = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();

			if (rs.next()) {
				dto.setId(rs.getString("memberid"));
				dto.setName(rs.getString("membername"));
				dto.setPw(rs.getString("memberpw"));
				dto.setGrant(rs.getString("membergrant"));
				dto.setEnterDate(rs.getDate("memberenterdate"));
				dto.setAddr(rs.getString("memberaddr"));
				System.out.println("select : " + rs.getString("memberid"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	public String isLoginCheck(String id, String pw) { // 회원 로그인 확인.
		String grant = null;
		String sql = "select * from member where memberid = ? and memberpw = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();
			if (rs.next()) {
				grant = rs.getString("membergrant");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return grant;
	}

	public int insert(MemberDto dto) { // 입력.
		int n = 0;
		String sql = "insert into member(memberid,membername,memberpw,memberaddr) values(?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getPw());
			psmt.setString(4, dto.getAddr());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int update(MemberDto dto) {
		int n = 0;
		String sql = "update member set membername = ? , memberaddr = ? where memberid =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getAddr());
			psmt.setString(3, dto.getId());
			System.out.println(dto.getId() + dto.getName() + dto.getAddr());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int delete(MemberDto dto) {
		int n = 0;
		return n;
	}

	public boolean isIdCheck(String id) { // 아이디 중복체크 메소드.
		boolean b = true;
		String sql = "select memberid from member where memberid = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				b = false; // 존재하면 false.
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return b;
	}

	public void close() {
		try {

			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
