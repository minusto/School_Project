<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <link rel="stylesheet" type="text/css" href="css/ghi.css">
</head>

<body class="flat-blue">
	<div class="app-container">
		<div id="mainHeader" class="mainHeader">
			<a>학사관리 서비스</a>
		</div>
		
		<div id="mainPictureDiv" class="mainPicture">
			<a>
				<img class="img-responsive hidden-xs" alt="MainPicture" src="img/MainPicture.png">
			</a>
		</div>

		<div id="loginSelectStudentDiv" class="loginSelectDiv">
			<ul class="list-unstyled list-inline">
				<li id="liStudent">
					<a href="#" class="loginSelectA">
						<img id="loginSelectStudent" alt="학생로그인" src="img/LoginSelectStudent.png">
					</a>
				</li>
				<li id="liTeacher">
					<a href="#" class="loginSelectA">
						<img id="loginSelectTeacher" alt="교사로그인" src="img/LoginSelectTeacher.png">
					</a>
				</li>
				<li id="liParent">
					<a href="#" class="loginSelectA">
						<img id="loginSelectParent" alt="학부모로그인" src="img/LoginSelectParent.png">
					</a>
				</li>
				<li id="liManager">
					<a href="#" class="loginSelectA">
						<img id="loginSelectManager" alt="관리자로그인" src="img/LoginSelectManager.png">
					</a>
				</li>				
			</ul>
		</div>
		
		<footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right"><a id="sysLoginA">시스템 로그인</a></span>
            </div>
        </footer>
	
	</div>


</body>

</html>
​