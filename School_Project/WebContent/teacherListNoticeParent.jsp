<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setAttribute("path", "가정통신문 > 가정통신문 조회");
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
    <style type="text/css">
   	 tbody tr:hover td {
		background: rgba(38, 185, 154, 0.07);
		border-top: 1px solid rgba(38, 185, 154, 0.11);
		border-bottom: 1px solid rgba(38, 185, 154, 0.11);
		}
    </style>
    <script type="text/javascript">
    function goToDetail(){
    	location.href="teacherNoticeParentDetail.jsp";
    };
    </script>
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
										<div class="title">가정통신문 목록</div>
									</div>
								</div>
								<div class="col-lg-1"></div>
								<div class="card-body table-responsive col-lg-10">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th>학부모ID</th>
												<th>이름</th>
												<th>가족관계</th>
												<th>학생ID</th>
												<th>학생이름</th>
												<th>서명 여부</th>
											</tr>
										</thead>
										<tbody>
											<tr onclick="goToDetail()">
												<td>Parent_01</td>
												<td>홍길동1세</td>
												<td>부</td>
												<td>Student_01</td>
												<td>홍길동2세</td>
												<td><input type="checkbox"></td>
											</tr>
											<tr onclick="goToDetail()">
												<td>Parent_02</td>
												<td>홍길똥1세</td>
												<td>부</td>
												<td>Student_02</td>
												<td>홍길똥2세</td>
												<td><input type="checkbox"></td>
											</tr>
											<tr onclick="goToDetail()">
												<td>Parent_02</td>
												<td>홍길뜡1세</td>
												<td>모</td>
												<td>Student_02</td>
												<td>홍길뜡2세</td>
												<td><input type="checkbox"></td>
											</tr>
										</tbody> 
									</table>
									<!--페이지 -->
									<a href="teacherInsertNoticeParentForm.jsp" class="pull-right" ><button class="btn btn-default">가정통신문 발송</button></a><br><br>
 									<br><br>
									<!-- 검색 -->
									<form action="" method="post" class="pull-right">
										<input type="checkbox" id="checkbox-1"name="area" value="b_title"> 
										<label> 학부모 이름</label>
										<input type="checkbox" id="checkbox-1"name="area" value="b_name"> 
										<label> 학생 이름</label>
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