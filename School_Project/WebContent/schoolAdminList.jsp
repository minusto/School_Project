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
			<jsp:include page="schoolAdminMenu.jsp"/>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">학교 목록</div>
									</div>
								</div>
								<div class="card-body table-responsive">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th>관리자ID</th>
												<th>전화번호</th>
												<th>삭제신청여부</th>
												<th>등록일</th>
												<th>만료일</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#">YGAD001</a></td>
												<td>01000000000</td>
												<td>no</td>
												<td>2016-04-06</td>
												<td>2036-04-06</td>
											</tr>
											<tr>
												<td><a href="#">YGAD001</a></td>
												<td>01000000000</td>
												<td>no</td>
												<td>2016-04-06</td>
												<td>2036-04-06</td>
											</tr>
											<tr>
												<td><a href="#">YGAD001</a></td>
												<td>01000000000</td>
												<td>no</td>
												<td>2016-04-06</td>
												<td>2036-04-06</td>
											</tr>
											
										</tbody> 
									</table>
 									
									<!--페이지 -->
									
									
 									
 									<a href="#" class="pull-right" ><button class="btn btn-default">등록</button></a><br><br>
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
