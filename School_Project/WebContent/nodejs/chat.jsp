<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>채팅</title>
<meta name="viewport" content="width = device-width, initial-scale = 1" />
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/jejugothic.css" /> <!--  제주고딕체 -->
<style type="text/css">
	body{
		font-family: 'Jeju Gothic', sans-serif;
	}
</style>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="/socket.io/socket.io.js"></script>
<script>
	$(document).ready(function() {
		var room = prompt( '방 이름을 입력하세요.', 'room' );
		var socket = io.connect();
		socket.emit( 'join', room );
		socket.on('message', function(data) {
			var output = '';
			output += '<li>';
			output += '    <h3>' + data.name + '</h3>';
			output += '    <p>' + data.message + '</p>';
			output += '</li>';
			$(output).prependTo('#content');
			$('#content').listview('refresh');
		});

		// 버튼을 클릭할 때
		$('button').click(function() {
			socket.emit('message', {
				name : $('#name').val(),
				message : $('#message').val()
			});
			$('#message').val('');			
		});
		var userName = $('#userName').attr('value');
		$('#name').attr('value', userName);
	});
</script>
</head>
<body>
	<div data-role="page">
		<div data-role="header">
			<a href="http://localhost:8081/Schoo_Project/main.jsp">돌아가기</a><h1>학사관리시스템 채팅</h1> 
			<!--  <a href="http://localhost:8081/Test/main.jsp">돌아가기</a><h1>학사관리시스템 채팅</h1>-->
		</div>
		<div data-role="content">
			<h3>닉네임</h3>
			<input id="name" placeholder="이름을 입력하세요" /> <a data-role="button"
				href="#chatpage">닉네임 설정</a>
		</div>
	</div>
	<div data-role="page" id="chatpage">
		<div data-role="header">
			<a href="http://localhost:8081/Schoo_Project/main.jsp">돌아가기</a><h1>학사관리시스템 채팅</h1> 
			<!-- <a href="http://localhost:8081/Test/main.jsp">돌아가기</a><h1>학사관리시스템 채팅</h1>-->
		</div>
		<div data-role="content">
			<h3>채팅하기</h3>
			<input id="message" type="text" />
			<button>전송</button>
			<!-- simpleListView 사용 -->
			<ul id="content" data-role="listview" data-inset="true">

			</ul>
		</div>
	</div>
</body>
</html>