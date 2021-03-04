<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="ex04_useBeanDisp.jsp">
		<fieldset>
		<legend>회원가입</legend>
		<p>이름 : <input type="text" name="name"></p>
		<p>나이 : <input type="text" name="age"></p>
		<p>암호 : <input type="password" name="pwd"></p>
		<p>성별 : 
			<input type="radio" name="gender" value="남">남
			<input type="radio" name="gender" value="여">여
		</p>
		<p>취미 :
			<input type="checkbox" name="hobby" value="sports">운동
			<input type="checkbox" name="hobby" value="game">게임
			<input type="checkbox" name="hobby" value="movie">영화
			<input type="checkbox" name="hobby" value="book">독서 
		</p>
		<input type="submit" value="파라미터 보내기">
		<input type="reset" value="다시 작성">
		</fieldset>
	</form>
</body>
</html>