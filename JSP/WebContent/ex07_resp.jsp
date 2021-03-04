<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//(실습) 주문한 내역에 따라 계산하고 결과를 표시
	int coffee = Integer.parseInt(request.getParameter("coffee"));
	int su = Integer.parseInt(request.getParameter("su"));
	int money = Integer.parseInt(request.getParameter("money"));
	
	String menu = "";
	int dan = 0;
	int total = 0;
	int change = 0;
	
	switch(coffee) {
		case 1: {
			menu="아메리카노"; 
			dan=3000; 
			break;
		}
		case 2: {
			menu="카페모카"; 
			dan=3500; 
			break;
		}
		case 3: {
			menu="에스프레소"; 
			dan=2500; 
			break;
		}
		case 4: {
			menu="카페라떼"; 
			dan=4000; 
			break;
		}
		default : {
			break;
		}
	}
	
	total = su * dan;
	change = money - total;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 주문</title>
</head>
<body>
	<h2>주문 계산 결과</h2>
	<%--
	커피 종류 : 아메리카노
	단가 : 3000원
	수량 : 3
	주문금액 : 9000원 (단가 * 수량)
	-----------------------
	받은 금액 : 10000원
	거스름돈 : 1000원 (받은 금액 - 주문 금액)
	--%>
	<ul>
		<li>커피 종류 : <%=menu %></li>
		<li>단가 : <%=dan %></li>
		<li>수량 : <%=su %></li>
		<li>주문금액 : <%=total %></li>
		<li>받은 금액 : <%=money %></li>
		<li>거스름돈 : <%=change %></li>
	</ul>

</body>
</html>



















