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
										<div class="title">공지사항</div>
									</div>
								</div>
								<div class="card-body table-responsive col-md-5">
									<form id="contact-form" method="post" action="logic/insertNoticeboardOk.jsp"	enctype="multipart/form-data">
										<div class="messages"></div>
										<div class="controls">
											<div class="row">
												<div class="col-md-12">
													<label for="form_name">제목</label> 
													<input  type="text" name="noticeBoardTitle" class="form-control"
														placeholder="제목을 적어주세요" required="required">
												</div>
												
												<div class="col-md-12">
													<label for="form_pword">비밀번호</label> 
													<input  type="password" name="noticeBoardPassword" class="form-control"
														required="required">
												</div>
											
												<div class="col-md-12">
													<label for="form_contents">내용</label>
													<textarea name="noticeBoardContent"
														class="form-control" placeholder="내용을 입력해주세요" rows="20"
														required="required"></textarea>
												</div>
												<div class="col-md-12">
													<label for="exampleInputFile">File input</label> 
													<input type="file"  name="noticeBoardFileName">
													<p class="help-block">영문명 파일로 올려주세요</p>
												</div>
												<input type="hidden" name="schoolAdminId" value="admin">
												<div class="pull-right">
													<input type="submit" class="btn btn-default" value="글쓰기">
													&nbsp;&nbsp;&nbsp;
													<input type="reset" class="btn btn-default" value="취소">
												</div>

											</div>
										</div>
									</form>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>

			<!--         컨텐츠 끝 -->
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
