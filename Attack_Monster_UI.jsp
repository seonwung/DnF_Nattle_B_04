<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="DnF.*"%>
<%
	String 플레이어id = "hero";
	캐릭터 character = (캐릭터) session.getAttribute("myDnFCharacter");

	전투 battle = new 전투();
	String 전투결과 = battle.몬스터공격(플레이어id, character);
%>
<!DOCTYPE html>
<html>
<head>
<title>DnF Battle - 전투</title>
<style>
body {
	font-family: 'Malgun Gothic', sans-serif;
	background-color: #f4f6f9;
	color: #333333;
	padding: 40px 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.box {
	background-color: #ffffff;
	border: 1px solid #e1e4e6;
	border-top: 5px solid #ef4444; 
	padding: 30px;
	border-radius: 12px;
	width: 100%;
	max-width: 480px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
	box-sizing: border-box;
}

h3 {
	font-size: 1.3rem;
	color: #ef4444;
	font-weight: 700;
	margin-top: 0;
	margin-bottom: 15px;
	display: flex;
	align-items: center;
	gap: 8px;
}

p {
	font-size: 1.05rem;
	line-height: 1.6;
	color: #1f2937;
	margin: 10px 0;
	background-color: #fef2f2;
	padding: 15px;
	border-radius: 8px;
	border: 1px dashed #fca5a5;
}
</style>
</head>
<body>
	<div class="box">
		<h3> 실시간 전투 로그</h3>
		<p>
			<%=전투결과%>
		</p>
	</div>
</body>
</html>