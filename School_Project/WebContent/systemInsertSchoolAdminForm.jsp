<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	request.setAttribute("path", "시스템> 학교관리자 등록");
%>
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
		 <jsp:include page="systemAdminMenu.jsp"/>

			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">학교 관리자 등록</div>
                                    </div>
                                </div> 
                                <div class="card-body">

									<form class="form-horizontal" action="" method="POST">
										<fieldset>
											<div class="control-group">
												<label class="control-label" for="SchoolMasterID">관리자 ID</label>
												<div class="controls">
													<input type="text" id="SchoolMasterID" name="SchoolMasterID"
														placeholder="" class="form-control ">
												</div>
											</div>
											
											<div class="control-group">
												<label class="control-label" for="SchoolMasterName">이름</label>
												<div class="controls">
													<input type="text" id="SchoolMasterName" name="SchoolMasterName"
														placeholder="" class="form-control">
												</div>
											</div>
											
											<div class="control-group">
												<label class="control-label" for="SchoolMasterTel">전화번호</label>
												<div class="controls">
													<input type="tel" id="SchoolMasterTel" name="SchoolMasterTel"
														placeholder="" class="form-control">
												</div>
											</div>

                                          
                                          <div class="control-group">
												<label class="control-label" for="SchoolRegiDate">등록일</label>
												<div class="controls">
													<input type="text" id="SchoolRegiDate" name="SchoolRegiDate"
														placeholder="" class="form-control">
												</div>
											</div>
											
											<div class="control-group">
												<label class="control-label" for="SchoolEndDate">만료일</label>
												<div class="controls">
													<input type="text" id="SchoolEndDate" name="SchoolEndDate"
														placeholder="" class="form-control">
												</div>
											</div>                                          

												<input class="btn btn-default" type="submit" value="등록">
										</fieldset>
									</form>
								</div>
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
