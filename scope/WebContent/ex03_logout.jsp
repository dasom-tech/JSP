<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- (실습) [로그아웃] 세션 초기화(무효화) 후 로그인 화면 이동 --%>
<%
	//세션 초기화(무효화)
	session.invalidate();

	//재요청처리
	response.sendRedirect("ex03_login.jsp");
%>