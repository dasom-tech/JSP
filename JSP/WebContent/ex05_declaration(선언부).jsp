<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//선언부에 작성된 코드는 필드 영역에 작성되는 코드
	//필드 변수, 메소드 선언시 사용
	int tot = 0; //필드 변수 선언
	
	private int sum(int a, int b) { //메소드 선언
		return a + b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부(declaration)</title>
</head>
<body>
	<h1>선언부(declaration)</h1>
	<h3>100 + 200 = 300</h3>
<%
	int a = 100;
	int b = 200;
	int sum = a + b;
%>	
	<h3>100 + 200 = <%=sum %></h3>
	<hr>
	
	<h2>선언부의 메소드 사용</h2>
	<h3>sum(a,b) : 100 + 200 = <%=sum(a, b) %></h3>
	<%
		tot = sum(a, b);
	%>
	<h3>tot출력 : 100 + 200 = <%=tot %></h3>
	
</body>
</html>