<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>빈칸</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->

<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'rel='stylesheet' type='text/css'>
<!-- CSS Libs -->

<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
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
					<div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">학급게시판 상세보기</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <a href="#" class="btn btn-sq-xs btn-primary">
              									<i class="fa fa-user fa-1x"></i><br/></a>&nbsp;&nbsp;&nbsp; 작성자ID
              								             									
           							<div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">제목</h3>
                                            </div>
                                            <div class="panel-body">
                                            <div>
                                            <a href="download.jsp?filename=${board.b_fname}">파일 다운로드 링크.jpeg</a>
                                             </div><br><br>
                                                		내용
                                            </div>
                                                                                  
                                        </div>
                                         <strong>조회수 :</strong><br><br><br><br>
                                         <div class="sub-title">댓글리스트</div>
                                         <div class="panel-title">
                                                		댓글내용
                                            </div><br><br><br><br>
                                         
                                         
                                          
											<div class="sub-title">댓글다는공간</div>
                                    <div>
                                        <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                    <div><button type="button" class="btn btn-green">댓글쓰기</button></div><br><br><br>
                                        <div>
                                        <button type="button" class="btn btn-primary">목록돌아가기</button>&nbsp;&nbsp;
                                        <button type="button" class="btn btn-primary">수정하기</button>&nbsp;&nbsp;
                                        <button type="button" class="btn btn-primary">글삭제하기</button>
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
