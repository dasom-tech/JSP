<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) 전달받은 파라미터 값을 사용해서 DB에 입력하고 화면 이동
	정상처리 : selectAll.jsp
	예외발생 : error.jsp
--%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String address = request.getParameter("address");
	
	int result = 0;
	try {
		//2. 파라미터 값이 정상이면 DB입력처리
		result = insert(id, pwd, name, age, address);
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
	
	private int insert(String id, String pwd, String name, int age, String address) {
	int put = 0;
	
	try {
		//1. 드라이버 로딩
		Class.forName(DRIVER);
		//2. 데이터베이스 연결
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		String sql = ""
				+ "INSERT INTO MEMBER (IDX, ID, PWD, NAME, AGE, ADDRESS, REG) "
				+ "VALUES (MEMBER_SEQ.NEXTVAL, ?, ?, ?, ?, ?, SYSDATE)";
		//3. Statement 객체 생성(Connection 객체로 부터)
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setInt(4, age);
		pstmt.setString(5, address);
		//4. SQL 실행
		put = pstmt.executeUpdate();
		
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
	return put;
	}
%>	
