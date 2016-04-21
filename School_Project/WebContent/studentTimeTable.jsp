<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li class="active">성적조회</li>
                            <li class="active">내신성적조회</li>
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