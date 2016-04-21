<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>빈칸</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<!-- CSS Libs -->
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="lib/css/select2.min.css">
<!-- CSS App -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/themes/flat-blue.css">
</head>

<body class="flat-blue">
	<div class="app-container">
		<div class="row content-container">
<<<<<<< HEAD
			<jsp:include page="teacherMenu.jsp"/>
=======
			<nav class="navbar navbar-default navbar-fixed-top navbar-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-expand-toggle">
							<i class="fa fa-bars icon"></i>
						</button>
						<ol class="breadcrumb navbar-breadcrumb">
						<li><a href="schoolAdminMain.jsp">교사관리</a></li>
							<li class="active">교사목록</li>
						</ol>
						<button type="button"
							class="navbar-right-expand-toggle pull-right visible-xs">
							<i class="fa fa-th icon"></i>
						</button>
					</div>
					<ul class="nav navbar-nav navbar-right">
						<button type="button"
							class="navbar-right-expand-toggle pull-right visible-xs">
							<i class="fa fa-times icon"></i>
						</button>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-comments-o"></i></a>
							<ul class="dropdown-menu animated fadeInDown">
								<li class="title">Notification <span
									class="badge pull-right">0</span>
								</li>
								<li class="message">No new notification</li>
							</ul></li>

						<li class="dropdown profile"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false">이용갑<span class="caret"></span></a>
							<ul class="dropdown-menu animated fadeInDown">
								<li class="profile-img"><img
									src="img/profile/picjumbo.com_HNCK4153_resize.jpg"
									class="profile-img"></li>
								<li>
									<div class="profile-info">
										<h4 class="username">이용갑</h4>
										<p>이용갑@이용갑.com</p>
										<div class="btn-group margin-bottom-2x" role="group">
											<button type="button" class="btn btn-default">
												<i class="fa fa-user"></i> Profile
											</button>
											<button type="button" class="btn btn-default">
												<i class="fa fa-sign-out"></i> Logout
											</button>
										</div>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
			<div class="side-menu sidebar-inverse">
				<nav class="navbar navbar-default" role="navigation">
					<div class="side-menu-container">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">
								<div class="icon fa fa-book"></div>
								<div class="title">학사관리</div>
							</a>
							<button type="button"
								class="navbar-expand-toggle pull-right visible-xs">
								<i class="fa fa-times icon"></i>
							</button>
						</div>
						<ul class="nav navbar-nav">
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-element"> <span
									class="icon fa fa-university"></span><span class="title">학교관리</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-element" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="adminInsertSchoolForm.jsp">학교등록</a></li>
											<li><a href="schoolDetail.jsp">학교 정보 조회</a></li>
											<li><a href="adminInsertUserIdForm.jsp">사용자 ID 등록</a></li>
											<li><a href="userIdList.jsp">사용자 ID 목록</a></li>
										</ul>
									</div>
								</div></li>
								
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-table"> <span
									class="icon fa fa-table"></span><span class="title">교사관리</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-table" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="adminInsertTeacherForm.jsp">교사등록</a></li>
											<li><a href="teacherList.jsp">교사관리</a></li>
										</ul>
									</div>
								</div></li>
								
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-form"> <span
									class="icon fa fa-file-text-o"></span><span class="title">게시판관리</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-form" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="noticeBoardList.jsp">공지사항</a></li>
											<li><a href="scheduleList.jsp">학사일정</a></li>
											<li><a href="classBoardList.jsp">학급게시판</a></li>
										</ul>
									</div>
								</div></li>
						</ul>
					</div>
				</nav>
			</div>



>>>>>>> branch 'master' of https://github.com/minusto/School_Project.git
			<!-- 메인 컨텐츠 -->
			  <div class="container-fluid">
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">교사 목록</div>
									</div>
								</div>
									<div class="col-lg-1"></div>
								<div class="card-body table-responsive col-lg-10">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th>이름</th>
												<th>생년월일</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th>담당학급</th>
												<th>담당과목</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#">유지훈</a></td>
												<td>1991-11-12</td>
												<td>063-111-1111</td>
												<td>zmzl@kosta.com</td>
												<td>3학년2반</td>
												<td>윤리</td>
											</tr>
											<tr>
												<td><a href="#">유지훈</a></td>
												<td>1991-11-12</td>
												<td>063-111-1111</td>
												<td>zmzl@kosta.com</td>
												<td>3학년2반</td>
												<td>윤리</td>
											</tr>
											<tr>
												<td><a href="#">유지훈</a></td>
												<td>1991-11-12</td>
												<td>063-111-1111</td>
												<td>zmzl@kosta.com</td>
												<td>3학년2반</td>
												<td>윤리</td>
											</tr>
											<tr>
												<td><a href="#">유지훈</a></td>
												<td>1991-11-12</td>
												<td>063-111-1111</td>
												<td>zmzl@kosta.com</td>
												<td>3학년2반</td>
												<td>윤리</td>
											</tr>
											<tr>
												<td><a href="#">유지훈</a></td>
												<td>1991-11-12</td>
												<td>063-111-1111</td>
												<td>zmzl@kosta.com</td>
												<td>3학년2반</td>
												<td>윤리</td>
											</tr>
											
										</tbody> 
									</table>
									<!--페이지 -->
 									
 									
 									<a href="#" class="pull-right" ><button class="btn btn-default">글쓰기</button></a><br><br>
 									<br><br>
									<!-- 검색 -->
									<form action="" method="post" class="pull-right">
										<input type="checkbox" id="checkbox-1"name="area" value="b_title"> 
										<label> 제목</label>
										<input type="checkbox" id="checkbox-1"name="area" value="b_name"> 
										<label> 작성자</label>
										<input class="btn btn-default" type="text" name="searchKey" size="10"> 
										<input type="hidden" name="temp" value="temp" >
										<input class="btn btn-default" type="submit" value="검색">
								</form><br><br>					
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- Javascript Libs -->
	<script type="text/javascript" src="lib/js/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="lib/js/Chart.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="lib/js/jquery.matchHeight-min.js"></script>
	<script type="text/javascript" src="lib/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="lib/js/select2.full.min.js"></script>
	<script type="text/javascript" src="lib/js/ace/ace.js"></script>
	<script type="text/javascript" src="lib/js/ace/mode-html.js"></script>
	<script type="text/javascript" src="lib/js/ace/theme-github.js"></script>
	<!-- Javascript -->
	<script type="text/javascript" src="js/app.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>

</html>
​
