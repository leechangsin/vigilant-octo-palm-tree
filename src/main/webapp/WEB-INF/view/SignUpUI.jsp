<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지(약관동의)</title>
</head>
<body>

<p>약관1
<label> <input type="checkbox" name="agree1" value="true"> 약관동의</label>

<p>약관2
<label> <input type="checkbox" name="agree2" value="true"> 약관동의</label>

<form action="../">
	<input type="submit" value="가입취소">
</form>

<form action="/Project-P/regist/SignUpEmail2">
<input type="submit" value="다음">
</form>

</body>
</html>