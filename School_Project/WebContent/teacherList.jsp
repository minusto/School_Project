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
	
</body>

</html>
​
