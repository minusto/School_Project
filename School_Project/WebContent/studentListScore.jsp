<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@include file="logic/studentSessionCheck.jsp" %>
<%
	request.setAttribute("path", "성적조회 > 내신성적조회");
%>
<!DOCTYPE html>
<html>

<head>
<title>내신점수 확인 페이지</title>
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
							<h3>내신성적</h3>
							<label>3학년 2반 홍길동</label>
							<select style="width: 150px" id="kkkk">
								<option>1-1 중간고사
								<option>1-1 기말고사
								<option>1-2 중간고사
								<option>1-2 기말고사
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="sub-title">
								Table Bordered <span class="description">(
									.table-bordered )</span>
							</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>교과</th>
										<th>과목</th>
										<th colspan="3">1학기</th>
										<th colspan="3">2학기</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="2"></td>
										<td>단위수</td>
										<td>원점수/과목점수(표준편차)</td>
										<td>석차등급(이수자수)</td>
										<td>단위수</td>
										<td>원점수/과목점수(표준편차)</td>
										<td>석차등급(이수자수)</td>
									</tr>
									
				<!-- 			성적표 예시 나중에 DB연동 			-->
									<tr>
										<td>국어</td>
										<td>국어</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>사회</td>
										<td>사회</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>수학</td>
										<td>수학</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>영어</td>
										<td>영어</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>자바</td>
										<td>자바</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>서블릿</td>
										<td>서블릿</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>jsp</td>
										<td>jsp</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>네트워크</td>
										<td>네트워크</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>서버</td>
										<td>서버</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
									</tr>
									<tr>
										<td>보안</td>
										<td>보안</td>
										<td>4</td>
										<td>84/79.7(7)</td>
										<td>4(458)</td>
										<td>4</td>
										<td>93/90.4(7)</td>
										<td>3(400)</td>
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
