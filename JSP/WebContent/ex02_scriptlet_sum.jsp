<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합계 구하기</title>
</head>
<body>
	<h2>1부터 10까지의 합계 구하기</h2>
	<h3>출력 형태 : 1+2+3+....+9+10=55</h3>
	<h3>1+2+3+....+9+10=
	<%
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	out.print(sum); //브라우저 화면에 출력
	%>
	</h3>
	<hr>
	<%-- 스크립트릿, out 객체를 사용해서 h3 태그 출력 
	<h3>출력 형태 : 1+2+3+....+9+10=55</h3>
	<h3>1+2+3+4+5+6+7+8+9+10=55<h3>
	--%>
	<hr>
	<h3>
	<%
	int num = 0;
	int sum1 = 0;
	for (int i = 1; i <= 10; i++) {
		out.print(i + "+");
		i++;
		
		if(i == 10) {
			out.print(i + "=");
		}else {
			out.print(i + "+");
			sum1 += i;
		}
	}
	out.print(sum);
	%>
	</h3>

    <%-- 다른 방법
    <h1>
	<%
	//(실습)<h3>1+2+3+4+5+6+7+8+9+10=55<h3> 형태로 출력
	//반복문을 사용해서 문장만들고 합계값 출력
	sum = 0;
	int first = 1;
	int last = 10;
	int step = 1;
	boolean isFirst = true;
	for (int i = first; i <= last; i += step) {
		if (isFirst) {
			out.print(i);
			isFirst = false;
		} else {
			out.print("+" + i);
		}
		sum += i;
	}
	out.print("=" + sum);
	%>
	</h1>
    --%>
</body>
</html>