<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) 전달받은 파라미터 값(id)을 사용해서 DB데이터 삭제하고 화면 이동
	정상처리 : selectAll.jsp
	예외발생 : error.jsp
--%>
<%
	String id = request.getParameter("id");
	
	int result = 0;
	try {
		//2. 파라미터 값이 정상이면 DB입력처리
		result = delete(id);
	} catch (NumberFormatException e) {
		System.out.println(">> 나이에 잘못된 값이 입력되었습니다.");
	}
	//3. 페이지 이동처리(list.jsp)
	if (result > 0) {
		response.sendRedirect("selectAll.jsp");
	}else {
		response.sendRedirect("error.jsp");
	}
%>

<%!
	//DB 연동 프로그램 작성
	final String DRIVER = "oracle.jdbc.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String USER = "mystudy";
	final String PASSWORD = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;	
	
	private int delete(String id) {
	int delRs = 0;
	
	try {
		//1. 드라이버 로딩
		Class.forName(DRIVER);
		//2. 데이터베이스 연결
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		String sql = "DELETE FROM MEMBER WHERE ID = ? ";
		//3. Statement 객체 생성(Connection 객체로 부터)
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		//4. SQL 실행
		delRs = pstmt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		//6. 사용자원 반납(close)
		try {
			if (rs != null) rs.close();
		} catch(SQLException e) {}	
		try {
			if (pstmt != null) pstmt.close();
		} catch(SQLException e) {}	
		try {
			if (conn != null) conn.close();
		} catch(SQLException e) {}	
	
	}
	return delRs;
	}
%>	
