<%@page import="AzabellBlog.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/style.css">
<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
<%
	MemberVO vo = (MemberVO)session.getAttribute("userInfo");
%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>Azabell Code Blog Login</title>
	<link rel="stylesheet" href="/css/style.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
</head>
<body>
<section class="main-container">
	<h2>사용자 회원 탈퇴..구현 아직 안됨..</h2>
		<form action="./modifyProc.jsp" method="post">
		<div class="login-input-wrap">
			<input type="text" name="userID" id="userID"  value="<%=vo.getUserID()%>" readonly="readonly" placeholder="아이디" /><br />
		</div>
		<div class="login-input-wrap">
			<input type="password" name="userPassword" id="userPassword" value="<%=vo.getUserPassword()%>" placeholder="수정할 비밀번호 입력" /><br />
		</div>
		<div class="login-input-wrap">
			<input type="password"  id="userPasswordChk" placeholder="비밀번호 확인" /><br />
		</div>
		<div class="login-input-wrap">
			<input type="text" name="userName" id="userName" value="<%=vo.getUserName() %>" /><br />
		</div>
		<div class="login-input-wrap">
			<input type="email" name="userEmail" id="userEmail" value="<%=vo.getUserEmail() %>" /><br />
		</div>
		<div class="login-input-wrap">
			<input name="userGender" id="userGender" value="MALE"  readonly="readonly"  checked>
		</div>
		
			<div class="join-button-wrap password-wrap">
				<button>회 원 탈 퇴</button>
			</div>
			<br/>
	</form>
</section>
</body>