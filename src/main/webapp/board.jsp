<%@page import="AzabellBlog.MemberVO"%>
<%@page import="AzabellBlog.MemberDAO"%>
<jsp:useBean id="vo2" class="AzabellBlog.MemberVO" />
<jsp:setProperty property="*" name="vo2"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	//로그인 유무를 체크 1. 세션을 이용하는 방법, 2.쿠키를 이용하는 방법 => 2.1 자동로그인, 2.2 수동로그인
	String state = (String)session.getAttribute("login");
	MemberVO vo = (MemberVO)session.getAttribute("userInfo");
	// 로그인 상태라면 로그아웃화면이 나오고=> 
	// 로그인 상태가 아니라면 로그인화면이 나온다.
%>
<%
	MemberDAO dao = new MemberDAO();
	int result = dao.insert(vo2);
	if(result == 1){
		// 회원 가입 성공 => 로그인 상태
		session.setAttribute("userInfo", vo2);
		session.setAttribute("login", "success");//사족(간편하게 활용하기 위한 용도)
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#topMenu {            /*topMenu의 ID를 가진 태그의 스타일 지정*/
        font-size: 14px;
		padding : 5px;
		padding-top: 10px;
		display: flex;
		flex-direction: column;
		align-items: center;
		padding-top: 75px;
		position : fiexd;
		
   }
   
    #topMenu ul li {
    	list-style: none;           /*<li> 태그는 위의 이미지처럼 목록을 나타내는 점을 없앤다 */
        color: white;               /*글씨 색을 흰색으로 설정*/
        background-color: #807c7c;  /*배경색 설정*/
        float: left;                /*<li>태그들이 왼쪽에 흐르게 설정(그러면 아래있는 내용은 오른쪽으로 옴)*/
        line-height: 30px;          /*글씨가 가운데로 오도록 설정하기 위해 한줄의 높이를 30px로 설정*/
        vertical-align: middle;     /*세로 정렬을 가운데로 설정(위의 line-height와 같이 설정 필요함)*/
        text-align: center;         /*글씨 정렬을 가운데로 설정*/
        position : fiexd;
    }
    
    #topMenu .menuLink {                               /*topMenu 아이디를 가진 태그 안에 있는 menuLink 클래스 태그들의 스타일 설정*/
        text-decoration:none;                      /*링크(<a> 태그)가 가지는 기본 꾸밈 효과(밑줄 등)을 없앰*/
        color: white;                              /*폰트색을 흰색으로 설정*/
        display: block;                            /*링크를 글씨가 있는 부분 뿐만아니라 전체 영역을 클릭해도 링크가 걸리게 설정*/
        width: 150px;                              /*메뉴링크의 넓이 설정*/
        font-size: 12px;                           /*폰트 사이즈 12px로 설정*/
        font-weight: bold;                         /*폰트를 굵게*/
        font-family: "Trebuchet MS", Dotum, Arial; /*기본 폰트 적용, 시스템 폰트를 종류별로 순서대로*/
    }
                
   #topMenu .menuLink:hover {             /*topMenu 아이디를 가진 태그 안에 menuLink클래스를 가진 태그에 마우스가 over되면 스타일 설정*/
         color: black;                  /*글씨 색을 검은색으 설정*/
         background-color: #b88c8c;   /*배경색을 조금 더 밝은 회색으로 설정*/
   }
</style>
</head>
	<head>
		<title>Azabell Code Blog</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	
		<!-- top menu -->
		<nav id="topMenu">
			<ul>
				<%
				if (state == null){
				%>
					<script> 
						location.href = 'login.jsp';
					</script>
				<%	
				}else{
				%>
				<li><%= vo.getUserID() %> 회원님 반갑습니다.</li>
				<li><a class="menuLink" href="./index.jsp">처음화면</a></li>
				<li><a class="menuLink" href="https://harmonious-aletopelta-1f2.notion.site/Azabell-feed200efd81498a973cc26718d951f2" target="_blank">아자벨 노션</a></li>
				<li><a class="menuLink" href="./clang.jsp">C언어 객체지향</a></li>
				<li><a class="menuLink" href="./logout.jsp">로 그 아 웃</a></li>
				<li><a class="menuLink" href="./modifyForm.jsp" target="_blank">회원 정보 수정</a>
				<li><a class="menuLink" href="./board.jsp">방   명  록</a></li>
				<li><a class="menuLink" href="./outmember.jsp" target="_blank">회 원 탈 퇴</a></li>
				<%
				}
				%>
			</ul>
		</nav>
		
		
		
<body>

		
		<section class="wrapper style1 align-center">
			<h3><strong>방명록</strong></h3>
			<form action="./writeboard.jsp" method="post">
			<div class ="container">
				<div class="row">
					<table class="table table=scripted" style="text-align:center; border : 1px solid=#dddddd">
						<thread>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;"> 번   호 </th> 
								<th style="background-color: #eeeeee; text-align: center;"> 제   목 </th> 
								<th style="background-color: #eeeeee; text-align: center;"> 작 성 자 </th> 
								<th style="background-color: #eeeeee; text-align: center;"> 작 성 일 </th> 
							</tr>
						</thread>
						
						<tbody>
							<tr>
								<td>1</td>
								<td>안녕하세요.</td>
								<td>홍 길 동</td>
								<td>2022-05-09</td>
							</tr>
						</tbody>
						
						<section class="login-input-section-wrap">
							<div class="login-button-wrap">
								<button>글 쓰 기</button>
							</div>
							<br/>
					</section>
									
					</table>
			</div></div></form>
		</section>
</body>
</html>







