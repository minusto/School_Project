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
	<div class="app-container">
		<div class="row content-container">
			<jsp:include page="schoolAdminMenu.jsp"/>
<script type="text/javascript">
           
        </script>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body padding-top" id="content">
					<div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">교사등록</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form class="form-horizontal" action="/logic/insertTeacherOk.jsp ">
                                    
                                    	<input type="hidden" name="schoolId" value="111" />
                                    
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">사용자ID</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberId" placeholder="UserID">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">이름</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberName" placeholder="Name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">생년월일</label>
                                            <div class="col-sm-5">
													<div class='input-group date' id='datetimepicker1'>
														<input type='text' class="form-control" name="memberBirthday"/> <span
															class="input-group-addon"> <span
															class="glyphicon glyphicon-calendar"></span>
														</span>
													</div>
											</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">전화번호</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberTel" placeholder="Tel">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">주소</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberAddress" placeholder="Tel">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">이메일</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberEmail" placeholder="aaa@bbb.com">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">비고</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberNote">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">담당학급</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="teacherClass" placeholder="TeacherClass">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">담당과목</label>
                                            <div class="col-sm-5">
												<select id="kkkk" class="col-md-12 form-control" name="subjectId">
													<option>수학</option>
													<option>영어</option>
													<option>언어</option>
													<option>탐구</option>
												</select>
											</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">사진</label>
                                            <div class="col-sm-5">
                                               <input type="file" id="exampleInputFile" name="teacherPicture">
                                            <p class="help-block">jpg 형식의 파일만 지원합니다.</p>
                                            </div>
                                        </div> 
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">직책</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="teacherPosition" placeholder="Tel">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-default">등록</button>
                                            </div>
                                        </div>
                                    </form>
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
