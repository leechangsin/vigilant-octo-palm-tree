<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/SignUpEmailStep2.css" type="text/css" media="screen" />
<meta charset="UTF-8">
<title>회원가입(개인정보 입력)</title>
</head>
<body>
	<div class="wrapper">
		<div class="top">
			<div class="logo">
				<a href="/Project-P/index">
					<img src="${pageContext.request.contextPath}/resources/images/logo2.png" />
				</a>
			</div>
		</div>
		<div class="bottom">
			<div class="step_title">
				<img src="${pageContext.request.contextPath}/resources/images/SignUpEmailStep2Title.png"/>
			</div>
			<div class="box">
				<form:form action="/Project-P/regist/SignUpEmail/step3" commandName="memberInfo">
					<div class="email_area">
						<label>이메일*</label><br>
						<form:input path="email" id="email_text" size="50"/><br>
						<form:errors path="email"/>
					</div>
					<div class="password_area">
						<label>비밀번호*</label><br>
						<form:password path="passwd" id="passwd" size="50" maxlength="16" placeholder="6~16자 비밀번호를 입력해주세요."/>
						<form:errors path="passwd"/>
					</div>
					<div class="confirmPW_area">
						<form:password path="confirmPasswd" id="confirmPasswd" size="50" maxlength="16" placeholder="위와 동일한 비밀번호를 입력해주세요."/>
						<form:errors path="confirmPasswd"/>
					</div>
					<div class="birthday_area">
						<label>생년월일*</label><br>
						<form:select path="year" items="${year}" />
						<form:select path="month" items="${month}"/>
						<form:select path="day" items="${day}"/>
					</div>
					<div class="sex_area">
						<label>성별*</label><br>
						<form:radiobuttons path="sex" items="${sex}"/>
					</div>
					<input type="submit" id="next" value="다음">
				</form:form>
				<form action="/Project-P/regist/main">
					<input type="submit" id="cancle" value="가입취소">
				</form>
			</div>
		</div>
	</div>
</body>
</html>