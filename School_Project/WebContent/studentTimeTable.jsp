<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="logic/studentSessionCheck.jsp" %>
<%
	request.setAttribute("path", "학교생활 > 시간표조회");
%>
<!DOCTYPE html>
<html>

<head>
    <title>학생 메인페이지</title>
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
                           <h3>시간표</h3>
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
										<th></th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
									</tr>
								</thead>
								<tbody>
				<!-- 			성적표 예시 나중에 DB연동 			-->
									<tr>
										<th>1</th>
										<td>국어</td>
										<td>영어</td>
										<td>수리</td>
										<td>사회문화</td>
										<td>한국지리</td>
									</tr>
									<tr>
										<th>2</th>
										<td>수리</td>
										<td>체육</td>
										<td>영어</td>
										<td>수학</td>
										<td>체육</td>
									</tr>
									<tr>
										<th>3</th>
										<td>세계지리</td>
										<td>근현대사</td>
										<td>한국사</td>
										<td>경제</td>
										<td>물리</td>
									</tr>
									<tr>
										<th>4</th>
										<td>화학</td>
										<td>수리</td>
										<td>국어</td>
										<td>영어</td>
										<td>한국지리</td>
									</tr>
					
									<tr>
										<th>5</th>
										<td>가나</td>
										<td>꺄꺄</td>
										<td>수학</td>
										<td>체육</td>
										<td>바둑</td>
									</tr>
									<tr>
										<th>6</th>
										<td>스타</td>
										<td>서든</td>
										<td>롤</td>
										<td>바봉</td>
										<td>한국지리</td>
									</tr>
									<tr>
										<th>7</th>
										<td>워크</td>
										<td>클랜전</td>
										<td>체스</td>
										<td>음악</td>
										<td>집가고싶다</td>
									</tr>
								
								
									
				
			<!-- 						예시 끝              			                 -->
			
								</tbody>
							</table>
						</div>
					</div>
                </div>
            </div>
        </div>
        
        
		<!-- 컨텐츠 끝 -->
        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right">오른쪽쓸것 <a href="#"></a></span> 왼쪽
            </div>
        </footer>
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