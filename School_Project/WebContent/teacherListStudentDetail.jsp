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
</head>
<style type="text/css">
	.card_wan{
		background-color: #FFF;
  		border-radius: 1px;
  		overflow: hidden;
  		position: relative;
  		width: 800px;
  		height: 800px;
	}
</style>
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
                             <li>학생 관리</li>
                            <li class="active">학생 정보 입력</li>
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
                                        <h4 class="username">이용갑</h4>
                                        <p>이용갑@이용갑.com</p>
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
                            <li class="active panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-element">
                                    <span class="icon fa fa-desktop"></span><span class="title">학생 관리</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-element" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="teacherInsertStudentForm.jsp">학생 정보 입력</a>
                                            </li>
                                            <li><a href="teacherListStudent.jsp">학생 정보 열람</a>
                                            </li>
                                            <li><a href="teacherInsertScoreForm.jsp">내신 성적 입력</a>
                                            </li>
                                            <li><a href="teacherInsertMockScoreForm.jsp">모의고사 성적 입력</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">학부모 관리</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="teacherInsertParentForm.jsp">학부모 정보 입력</a>
                                            </li>
                                            <li><a href="teacherListParent.jsp">학부모 정보 열람</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-form">
                                    <span class="icon fa fa-file-text-o"></span><span class="title">가정통신문</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-form" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
											<li><a href="teacherInsertNoticeParentForm.jsp">가정통신문 발송</a>
											</li>
											<li><a href="teacherListNoticeParent.jsp">가정통신문 조회</a>
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
                                            <li><a href="noticeBoardList.jsp">교내 공지사항</a>
                                            </li>
                                            <li><a href="classBoardList.jsp">학급 게시판</a>
                                            </li>
                                            <li><a href="scheduleList.jsp">일정</a>
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
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">ㅇㅇ 학생 정보 라고 해당하는 애이름으로 만들수있나?</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button type="button" class="btn btn-link" data-toggle="modal" data-target="#modalCardProfileExample"><i class="fa fa-code"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row no-margin col-xs-12">
                                    	<div class="col-md-2 col-xs-12">
                                        </div>
                                        <div class="col-md-4 col-xs-12">
                                            <div class="card profile">
                                                <div class="card-profile-img">
                                                    <img src="img/profile/cuttyKid.jpg">
                                                </div>
                                                <div class="card-body">
                                                    <div class="name">
                                                    	김상완
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xs-12">
                                        </div>
                                    </div>
                                    <form class="form-horizontal">
                                    	<div class="col-xs-12">
                                    		<div class="form-inline">
												<div class="col-md-5 col-xs-12" >
													<label for="inputEmail3" class="control-label col-lg-2">학생ID</label>
													<input id="inputPassword3" class="form-control" type="text" placeholder="StudentID">
													<br>
                                        			<label for="inputPassword3" class="control-label col-lg-2">이름</label>
                                                	<input type="text" class="form-control" id="inputPassword3" placeholder="Name">
                                        			<br>
                                        			<label for="inputPassword3" class="control-label col-lg-2">생년월일</label>
                                                	<input type="date" class="form-control" id="inputPassword3" placeholder="YYYY-MM-dd">
                                          	 		<br>
                                        			<label for="inputPassword3" class="control-label col-lg-2">주소</label>
                                               	 	<input type="text" class="form-control" id="inputPassword3">
                                           		 	<br>
                                           		 	<label for="inputPassword3" class="control-label col-lg-2">전화번호</label>
                                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Tel">
                                           		 	<br>
                                           		 	<label for="inputPassword3" class="control-label col-lg-2">이메일</label>
                                           			<input type="email" class="form-control" id="inputPassword3" placeholder="aaa@bbb.com">
                                           			<br>
                                           			<label for="inputPassword3" class="control-label col-lg-2">학교ID</label>
                                            		<input type="text" class="form-control" id="inputPassword3">
                                        		</div>
												<div class="col-md-5 col-xs-12">
											 		<label for="inputEmail3" class="control-label col-lg-2">학번</label>
                                           		 	<input type="text" class="form-control" id="inputPassword3">
                                        			<br>
                                        			<label for="inputPassword3" class="control-label col-lg-2">학년</label>
                                                	<input type="text" class="form-control" id="inputPassword3">
                                        			<br>
                                        			<label for="inputPassword3" class="control-label col-lg-2">반</label>
                                                	<input type="date" class="form-control" id="inputPassword3">
                                          	 		<br>
                                        			<label for="inputPassword3" class="control-label col-lg-2">출석번호</label>
                                               	 	<input type="text" class="form-control" id="inputPassword3">
                                           		 	<br>
                                           		 	<label for="inputPassword3" class="control-label col-lg-2">성별</label>
                                                    <input type="text" class="form-control" id="inputPassword3" >
                                           		 	<br>
                                           		 	<label for="inputPassword3" class="control-label col-lg-2">학과</label>
                                           			<input type="email" class="form-control" id="inputPassword3" >
                                           			<br>
                                           			<label for="inputPassword3" class="control-label col-lg-2">비고</label>
                                            		<input type="text" class="form-control" id="inputPassword3">
                                        		</div>
											</div>
                                    	</div>
                                        <div class="col-xs-12">
                                        <br><br>
                                            <div class="col-md-3 col-xs-12">
                                                <a href="teacherListStudent.jsp"><button type="button" class="btn btn-default">이전페이지</button></a>
                                            </div>
                                            <div class="col-md-3 col-xs-12">
                                                <button class="btn btn-primary btn-success" data-target="#modalSuccess" data-toggle="modal" type="button"> 성적조회 </button>
                                                	<div id="modalSuccess" class="modal fade modal-success" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display: none;">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button class="close" aria-label="Close" data-dismiss="modal" type="button">
																		<span aria-hidden="true">×</span>
																	</button>
																	<h4 id="myModalLabel" class="modal-title">성적 조회</h4>
																</div>
																<div class="modal-body"> 
																	<div class="row">
																		<div class="col-sm-6 col-xs-12" style="text-align:center;">
																			<a href="studentListScore.jsp">
																			<h3>내신 성적 조회</h3>
																			</a>
																		</div>
																		<div class="col-sm-6 col-xs-12" style="text-align:center;">
																			<a href="studentMockTestListScore.jsp">
																			<h3>모의고사 성적 조회</h3>
																			</a>
																		</div>
																	</div>
																</div>
																<div class="modal-footer">
																</div>
															</div>
														</div>
                                                	</div>
                                            </div>
                                            <div class="col-md-3 col-xs-12">
                                            	<!--수정 Button-->
                                                <button type="button" class="btn btn-primary btn-primary">
                                            		수정
                                        		</button>
                                                <!--삭제 Button trigger modal -->
                                        		<button type="button" class="btn btn-primary btn-primary" data-toggle="modal" data-target="#modalPrimary">
                                            		삭제
                                        		</button>

                                        		<!--삭제 알림 Modal -->
                                        		<div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            		<div class="modal-dialog">
                                                		<div class="modal-content">
                                                    		<div class="modal-header">
                                                        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        		<h4 class="modal-title" id="myModalLabel">알림창</h4>
                                                    		</div>
                                                    		<div class="modal-body">
                                                        		정말 삭제하시겠습니까?	
                                                        	</div>
                                                    		<div class="modal-footer">
                                                        		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        		<button type="button" class="btn btn-primary">OK</button>
                                                    		</div>
                                                		</div>
                                            		</div>
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
            <script type="text/javascript" src="js/app.js"></script>
            <script type="text/javascript" src="js/index.js"></script>
</body>

</html>
​