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
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li class="active">진학시뮬레이션</li>
                            <li class="active">대학 정보</li>
                        </ol>
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-th icon"></i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="title">
                                    Notification <span class="badge pull-right">0</span>
                                </li>
                                <li class="message">
                                    No new notification
                                </li>
                            </ul>
                        </li>
           
                        <li class="dropdown profile">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">이용갑<span class="caret"></span></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="profile-img">
                                    <img src="img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                                </li>
                                <li>
                                    <div class="profile-info">
                                        <h4 class="username">학생</h4>
                                        <p>학생@.com</p>
                                        <div class="btn-group margin-bottom-2x" role="group">
                                            <button type="button" class="btn btn-default"><i class="fa fa-user"></i> Profile</button>
                                            <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> Logout</button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="side-menu sidebar-inverse">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="side-menu-container">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="teacherMain.jsp">
                                <div class="icon fa fa-book"></div>
                                <div class="title">학사관리</div>
                            </a>
                            <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                                <i class="fa fa-times icon"></i>
                            </button>
                        </div>
                        <ul class="nav navbar-nav">
                            <!-- 
                            <li class="active">
                                <a href="blank.jsp">
                                    <span class="icon fa fa-tachometer"></span><span class="title">Dashboard</span>
                                </a>
                            </li> 
                            -->
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-element">
                                    <span class="icon fa fa-desktop"></span><span class="title">성적조회</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-element" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="#">내신성적조회</a>
                                            </li>
                                            <li><a href="#">모의고사성적조회</a>
                                            </li>
                                      
                                        </ul>
                                    </div>
                                </div>
                            </li>
                       
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">진학시뮬레이션</span>
                                </a>
                                
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="#">수시 시뮬레이션</a>
                                            </li>
                                            <li><a href="#">정시 시뮬레이션</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>    
                          
                            
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-form">
                                    <span class="icon fa fa-file-text-o"></span><span class="title">학교생활</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-form" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
											<li><a href="#">시간표 조회</a>
											</li>
											<li><a href="#">식단표 조회</a>
											</li>
											
										</ul>
                                    </div>
                                </div>
                            </li>
                            <!-- Dropdown-->
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#component-example">
                                    <span class="icon fa fa-commenting-o"></span><span class="title">소통공간</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="component-example" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="#">교내 공지사항</a>
                                            </li>
                                            <li><a href="#">가정 통신문 조회</a>
                                            </li>
                                            <li><a href="#">학급 게시판</a>
                                            </li>
                                            <li><a href="#">일정</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
            
            
            
<!--			메인 컨텐츠 -->
            <div class="container-fluid">
                <div class="side-body padding-top">
               		<div class="row">
               			<div id="entranceInfoDiv1" class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
               				<div id="entranceUniversityDiv">
	               				<img id="universityMark" alt="서울대학교마크" src="img/SeoulUniversityMark.jpg">
	               				<div id="entranceUniversityInfo">
	               					<ul class="list-unstyled list-inline">
			               				<li class="entranceInfoUniversityName">서울대</li>
			               				<li class="entranceInfoUniversityMajor">국어국문학과</li>
			               				<li id="entrancInfoDetail"><a href="#">홈페이지</a></li>
			               			</ul>
	               				</div>
	               			</div>
	               			<div id="entranceInfoDiv2">
	               				<div class="row">
		               				<div id="entranceInfo1" class="entranceInfo col-md-5 col-sm-12">
			               				<div class=" panel fresh-color panel-success">
				               				<div class="panel-heading entranceInfoPanelHead"><h3>정시</h3></div>
											<div class="panel-body">
					               				<ul id="mockTestUl" class="list-unstyled">
					               					<li>정시 모집 인원<span id="mockTestRecruitNum">15</span></li>
					               					<li>정시 커트라인<span id="mockTestRecruitNum">1.6</span></li>
					               					<li>현재 이 대학 목표자<span id="mockTestNowHopeThis">214</span></li>
					               					<li>작년 정시 목표율<span id="lastMockTestRate">13/231</span></li>
					               				</ul>
					               			</div>
			               				</div>
		               				</div>
		               				<div id="entranceInfoBlank" class="col-md-1 hidden-sm hidden-xs">
		               					<p> </p>
		               				</div>
		               				<div id="entranceInfo2" class="entranceInfo col-md-5 col-md-offset-1 col-sm-12">
			               				<div class=" panel fresh-color panel-info">
				               				<div class="panel-heading entranceInfoPanelHead"><h3>수시</h3></div>
											<div class="panel-body">
					               				<ul id="totalExamUl" class="list-unstyled">
					               					<li>수시 모집 인원<span id="totalExamRecruitNum">10</span></li>
					               					<li>수시 커트라인<span id="totalExamRecruitNum">3.9</span></li>
					               					<li>현재 이 대학 목표자<span id="totalExamNowHopeThis">283</span></li>
					               					<li>작년 수시 목표율<span id="lastTotalExamRate">17/295</span></li>
					               				</ul>
				               				</div>
			               				</div>
		               				</div>
	               				</div>
	               			</div>
	               			<div id="entranceInfoChangeDiv">
	               				<h3>작년대비 모집요강 변경사항</h3>
	               				<div id="entranceInfoChange">
	               					<div class="row">
	               						<div id="entranceInfo3" class="entranceInfo table-responsive col-md-5 col-sm-12">
			               					<table class="table table-striped">
			               						<tr>
			               							<th>정시</th>
			               							<th>작년</th>
			               							<th>현재</th>
			               						</tr>
			               						<!--  -->
			               						<tr>
			               							<td id="entranceChangeName">모집인원</td>
			               							<td>13</td>
			               							<td>15</td>
			               						</tr>
			               						<!--  -->
			               					</table>
	               						</div>
	               						<div id="entranceInfoBlank" class="col-md-1 hidden-sm hidden-xs"></div>
	               						<div id="entranceInfo4" class="entranceInfo table-responsive col-md-5 col-md-offset-1 col-sm-12">
	               							<table class="table table-striped">
			               						<tr>
			               							<th>수시</th>
			               							<th>작년</th>
			               							<th>현재</th>
			               						</tr>
			               						<!--  -->
			               						<tr>
			               							<td id="entranceChangeName">모집인원</td>
			               							<td>17</td>
			               							<td>10</td>
			               						</tr>
			               						<!--  -->
			               					</table>
	               						</div>
	               					</div>
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