<%@page import="kosta.model.SchoolRegist"%>
<%@page import="kosta.model.School"%>
<%@page import="kosta.model.SchoolService"%>
<%@include file="logic/schoolAdminSessionCheck.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	request.setAttribute("path", "학교관리> 학교 정보 조회");
	request.setCharacterEncoding("UTF-8");
	SchoolRegist sr=service.schoolRegistSchoolIdService(id);
	String schoolId=sr.getSchoolId();
	School school=service.SchoolDetail(schoolId);
	request.setAttribute("school", school);
%>
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
			<jsp:include page="schoolAdminMenu.jsp"/>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">학교 정보</div>
									</div>
								</div>
								<div class="col-sm-2"></div>
								<div class="card-body table-responsive col-sm-8">
									<!-- Table -->
									<table class="table table-striped">
										<tr height="30">
											<th width="150">학교아이디</th>
											<td width="150">${school.schoolId}</td>
										</tr>
										
										<tr height="30">
											<th width="150">학교이름</th>
											<td width="150">${school.schoolName}</td>
										</tr>
										<tr height="30">
											<th width="150">주소</th>
											<td width="150">${school.schoolAddress}</td>
										</tr>
										<tr height="30">
											<th width="150">전화번호</th>
											<td width="150"> ${school.schoolTel}</td>
										</tr>
									</table>
									<a href="#" class="pull-right" ><button type="button" class="btn btn-primary">정보수정</button></a>
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
		<script type="text/javascript"
			src="lib/js/dataTables.bootstrap.min.js"></script>
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
