<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("path", "진학시뮬레이션 > 대학정보");
%>
<!DOCTYPE html>
<html>

<head>
<title>대학 세부</title>
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
<link rel="stylesheet" type="text/css" href="css/ghi.css">
</head>

<body class="flat-blue">
	<div class="app-container">
		<div class="row content-container">
			<jsp:include page="studentMenu.jsp" />
			<!--			메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body padding-top">
					<div class="row">
						<div id="entranceInfoDiv1"
							class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
							<div id="entranceUniversityDiv">
								<img id="universityMark" alt="서울대학교마크"
									src="img/SeoulUniversityMark.jpg">
								<div id="entranceUniversityInfo">
									<ul class="list-unstyled list-inline">
										<li class="entranceInfoUniversityName">서울대</li>
										<li class="entranceInfoUniversityMajor">국어교육과</li>
										<li id="entrancInfoDetail"><a href="#http://www.snu.ac.kr/">홈페이지</a></li>
									</ul>
								</div>
							</div>
							<div id="entranceInfoDiv2">
								<div class="row">
									<div id="entranceInfo1" class="entranceInfo col-md-5 col-sm-12">
										<div class=" panel fresh-color panel-success">
											<div class="panel-heading entranceInfoPanelHead">
												<h3>정시</h3>
											</div>
											<div class="panel-body">
												<ul id="mockTestUl" class="list-unstyled">
													<li>정시 모집 인원<span id="mockTestRecruitNum">12</span></li>
													<li>정시 커트라인<span id="mockTestRecruitNum">526.8</span></li>
													<li>현재 이 대학 목표자<span id="mockTestNowHopeThis">214</span></li>
													<li>작년 정시 목표율<span id="lastMockTestRate">15/231</span></li>
												</ul>
											</div>
										</div>
									</div>
									<div id="entranceInfoBlank"
										class="col-md-1 hidden-sm hidden-xs">
										<p></p>
									</div>
									<div id="entranceInfo2"
										class="entranceInfo col-md-5 col-md-offset-1 col-sm-12">
										<div class=" panel fresh-color panel-info">
											<div class="panel-heading entranceInfoPanelHead">
												<h3>수시</h3>
											</div>
											<div class="panel-body">
												<ul id="totalExamUl" class="list-unstyled">
													<li>수시 모집 인원<span id="totalExamRecruitNum">15</span></li>
													<li>수시 커트라인<span id="totalExamRecruitNum">1.6</span></li>
													<li>현재 이 대학 목표자<span id="totalExamNowHopeThis">283</span></li>
													<li>작년 수시 목표율<span id="lastTotalExamRate">17/295</span></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="entranceInfoChangeDiv">
								<h3>작년대비 모집요강 변경사항</h3>
								<div id="entranceInfoChange">
									<div class="row">
										<div id="entranceInfo3"
											class="entranceInfo table-responsive col-md-5 col-sm-12">
											<table class="table table-striped">
												<tr>
													<th>정시</th>
													<th>작년</th>
													<th>현재</th>
												</tr>
												<!-- 데이터 들어갈 곳 -->
												<tr>
													<td id="entranceChangeName">모집인원</td>
													<td>15</td>
													<td>12</td>
												</tr>
												<!--  -->
											</table>
										</div>
										<div id="entranceInfoBlank"
											class="col-md-1 hidden-sm hidden-xs"></div>
										<div id="entranceInfo4"
											class="entranceInfo table-responsive col-md-5 col-md-offset-1 col-sm-12">
											<table class="table table-striped">
												<tr>
													<th>수시</th>
													<th>작년</th>
													<th>현재</th>
												</tr>
												<!--  -->
												<tr>
													<td id="entranceChangeName">모집인원</td>
													<td>17</td>
													<td>15</td>
												</tr>
												<!--  -->
											</table>
										</div>
									</div>
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
