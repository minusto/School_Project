<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@include file="logic/studentSessionCheck.jsp" %>
<%
	request.setAttribute("path", "성적조회 > 모의고사성적조회");
%>
<!DOCTYPE html>
<html>

<head>
<title>모의고사 점수확인 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
<!-- CSS Libs -->
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="lib/css/select2.min.css">
<!-- CSS App -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/themes/flat-blue.css">

</head>

<body class="flat-blue">
   <div class="app-container">
        <div class="row content-container">
            <jsp:include page="studentMenu.jsp"/>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body padding-top">
					<div class="row">
						<div class="col-md-12">
							<h3>모의고사성적</h3>
							<label>3학년 2반 홍길동</label>
							<select style="width: 150px" id="kkkk">
								<option>1학년 3월 모의고사
								<option>1학년 6월 모의고사
								<option>1학년 9월 모의고사
								<option>2학년 3월 모의고사
								<option>2학년 6월 모의고사
								<option>2학년 9월 모의고사
								<option>3학년 3월 모의고사
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 table-responsive">
							<div class="sub-title">
								Table Bordered <span class="description">(
									.table-bordered )</span>
							</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th colspan="2" rowspan="2" >영역</th>
										<th colspan="2">원점수</th>
										<th colspan="2">표준점수</th>
										<th colspan="4">표준점수에 의한 석차/백분위/등급</th>
										<th rowspan="2">응시자수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="2"></td>
										<td>배점</td>
										<td>득점</td>
										<td>범위</td>
										<td>득점</td>
										<td>학급석차</td>
										<td>학교석차</td>
										<td>전국백분위</td>
										<td>등급</td>
										<td></td>
									</tr>
									
				<!-- 			성적표 예시 나중에 DB연동 			-->
									<tr>
										<td colspan="2">언어</td>
										<td>100</td>
										<td>83</td>
										<td>100</td>
										<td>124</td>
										<td>5/35</td>
										<td>37/421</td>
										<td>87.99</td>
										<td>3</td>
										<td>568654</td>
									</tr>
									<tr>
										<td>수리</td>
										<td>나형</td>
										<td>100</td>
										<td>54</td>
										<td>100</td>
										<td>125</td>
										<td>6/35</td>
										<td>25/421</td>
										<td>83.99</td>
										<td>2</td>
										<td>358654</td>
									</tr>
									<tr>
										<td colspan="2">외국어</td>
										<td>100</td>
										<td>93</td>
										<td>100</td>
										<td>148</td>
										<td>2/35</td>
										<td>10/421</td>
										<td>96.99</td>
										<td>1</td>
										<td>408654</td>
									</tr>
									<tr>
										<td rowspan="3">사회탐구</td>
										<td>윤리</td>
										<td>50</td>
										<td>40</td>
										<td>50</td>
										<td>63</td>
										<td>2/35</td>
										<td>16/421</td>
										<td>96.99</td>
										<td>1</td>
										<td>180654</td>
									</tr>
									<tr>
										<td>경제지리</td>
										<td>50</td>
										<td>31</td>
										<td>50</td>
										<td>58</td>
										<td>5/11</td>
										<td>12/351</td>
										<td>94.99</td>
										<td>2</td>
										<td>100654</td>
									</tr>
									<tr>
										<td>경제</td>
										<td>50</td>
										<td>33</td>
										<td>50</td>
										<td>58</td>
										<td>2/15</td>
										<td>2/421</td>
										<td>87.99</td>
										<td>2</td>
										<td>68654</td>
									</tr>
									
			<!-- 						예시 끝              			                 -->
			
								</tbody>
							</table>
						</div>
					</div>
						<!-- Chart JS -->
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">학년평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                    <canvas id="line-chart" class="chart"></canvas>
                                </div>
                            <div class="card">
                            	<div class="card-header">
                            		<div class="card-title">
                                        <div class="title">학년평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                	<p>국어 평균점수 60점대비 <b>+15점</b>인 75점입니다</p>
                                	<p>영어 평균점수 70점대비 <b>+10점</b>인 80점입니다</p>
                                	<p>수학 평균점수 40점대비 <b>+32점</b>인 72점입니다</p>
                                	<p>사회 평균점수 40점대비 <b>+53점</b>인 93점입니다</p>
                                	<p>과학 평균점수 70점대비 <b>-20점</b>인 50점입니다</p>
                                </div>
                            </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">반평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                    <canvas id="bar-chart" class="chart"></canvas>
                                </div>
                            </div>
                            <div class="card">
                            	<div class="card-header">
                            		<div class="card-title">
                                        <div class="title">반 평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                	<p>국어 평균점수 60점대비 <b>+15점</b>인 75점입니다</p>
                                	<p>영어 평균점수 70점대비 <b>+10점</b>인 80점입니다</p>
                                	<p>수학 평균점수 40점대비 <b>+32점</b>인 72점입니다</p>
                                	<p>사회 평균점수 40점대비 <b>+53점</b>인 93점입니다</p>
                                	<p>과학 평균점수 70점대비 <b>-20점</b>인 50점입니다</p>
                                </div>
                            </div>
                            <div>
                            	<div>
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
	<!-- index.js가 존재하면 chart.js가 안먹힘
	<script type="text/javascript" src="js/index.js"></script>
	 -->
	<script type="text/javascript" src="js/chartjs.js"></script>
</body>

</html>
​
