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
<style type="text/css">
.headings {
	background: rgba(52, 73, 94, 0.94);
	color: white;
}

tbody tr:hover td {
	background: rgba(38, 185, 154, 0.07);
	border-top: 1px solid rgba(38, 185, 154, 0.11);
	border-bottom: 1px solid rgba(38, 185, 154, 0.11);
}

tbody tr.selected {
	background: rgba(38, 185, 154, 0.16);
}

tbody tr.selected td {
	border-top: 1px solid rgba(38, 185, 154, 0.40);
	border-bottom: 1px solid rgba(38, 185, 154, 0.40);
}
</style>
</head>

<body class="flat-blue">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">학급 게시판</div>
									</div>
								</div>

								<div class="card-body table-responsive">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th>번호</th>
												<th>제목</th>
												<th>글쓴이</th>
												<th>날짜</th>
												<th>조회수</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td><a href="#">안녕하세요 반가워요</a></td>
												<td>오태광</td>
												<td>2016-05-15</td>
												<td>0</td>
											</tr>
											<tr>
												<td>1</td>
												<td><a href="#">알고 있니?</a></td>
												<td>이기대</td>
												<td>2016-05-14</td>
												<td>0</td>
											</tr>
											<tr>
												<td>1</td>
												<td><a href="#">안녕 애들아!</a></td>
												<td>구혜인</td>
												<td>2016-05-14</td>
												<td>0</td>
											</tr>
											<tr>
												<td>1</td>
												<td><a href="#">첫글입니다 ㅎ</a></td>
												<td>유지훈</td>
												<td>2016-05-13</td>
												<td>0</td>
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
