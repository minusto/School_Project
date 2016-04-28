<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setAttribute("path", "학생 관리 > 내신 성적 입력");
%>
<html>

<head>
    <title>빈칸</title>
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
            <jsp:include page="teacherMenu.jsp"/>
            <!-- 메인 컨텐츠 -->
            <div class="container-fluid">
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">내신 성적 입력</div>
									</div>
								</div>
								<div class="card-body table-responsive col-xs-8">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th rowspan="2">학년</th>
												<th rowspan="2">교과</th>
												<th rowspan="2">과목</th>
												<th colspan="4">
													<select>
														<optgroup label="학기">
															<option>1학기</option>
															<option>2학기</option>
														</optgroup>
													</select>
												</th>
												<th rowspan="2">비고</th>
											</tr>
											<tr>
												<th>단위수</th>
												<th>중간고사</th>
												<th>기말고사</th>
												<th>수행평가</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											<!-- 1학년시작 -->
												<td rowspan="8">1학년</td>
												<td>국어</td>
												<td>국어</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												
											</tr>
											<tr>
												<td>도덕</td>
												<td>도덕</td>
												<td>1</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>사회</td>
												<td>국사</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>사회</td>
												<td>사회</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>과학</td>
												<td>과학</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>수학</td>
												<td>수학</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>기술가정</td>
												<td>기술가정</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>영어</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<!-- 2학년 시작 -->
											<tr>
												<td rowspan="10">2학년</td>
												<td>국어</td>
												<td>문학</td>
												<td>5</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>일본어 1</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>한문</td>
												<td>한문</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>수학</td>
												<td>수학 1</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>영어 1</td>
												<td>6</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											
											<tr>
												<td>외국어</td>
												<td>영어독해와 작문</td>
												<td></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>도덕</td>
												<td>윤리와 사상</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>기술가정</td>
												<td>정보사회와 컴퓨터</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>사회</td>
												<td>한국근현대사</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>과학</td>
												<td>화학</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<!-- 3학년 시작 -->
											<tr>
												<td rowspan="6">3학년</td>
												<td>국어</td>
												<td>독서</td>
												<td>5</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>국어</td>
												<td>문법</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>영어 2</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>수학</td>
												<td>미적분과 통계 기본</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>심화영어독해와 작문</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>도덕</td>
												<td>전통윤리</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
										</tbody> 
									</table>
									<!--페이지 -->
									<a href="#" class="pull-right" ><button class="btn btn-default">등록</button></a><br><br>
 									<br><br>
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