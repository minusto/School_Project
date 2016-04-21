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
    <link rel="stylesheet" type="text/css" href="css/sangWan.css">
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
                            <li class="active">Dashboard</li>
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
                            <li class="panel panel-default dropdown">
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
            <!-- 메인 컨텐츠  -->
    		<div class = "container-fluid">
    			<div class = "side-body">
    				<div class = "page-title">
    					<span class="title">교사</span>
    					</div>
    					<div class="row">
    						<div class="col-sm-12">
    							<div class="card">
                                <div class="card-body">
                                    <div class="row no-margin no-gap">
                                        <div class="col-sm-3">
                                            <div class="pricing-table green">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">학생 관리</div>
                                                        <div class="pricing-type"></div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <ul class="plan-detail">
                                                        <li>학생 정보 입력</li>
                                                        <li>학생 정보 열람</li>
                                                        <li>내신 성적 입력</li>
                                                        <li>모의고사 성적 입력</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                    <button class="btn btn-primary btn-success" data-target="#modalSuccess" data-toggle="modal" type="button"> 클릭^^ </button>
                                                	<div id="modalSuccess" class="modal fade modal-success" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display: none;">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button class="close" aria-label="Close" data-dismiss="modal" type="button">
																		<span aria-hidden="true">×</span>
																	</button>
																	<h4 id="myModalLabel" class="modal-title">학생 관리</h4>
																</div>
																<div class="modal-body"> 
																	<div class="row">
																		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
																			<a href="teacherInsertStudentForm.jsp">
																			<h3>학생 정보 입력</h3>
																			</a>
																		</div>
																		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
																			<a href="teacherListStudent.jsp">
																			<h3>학생 정보 열람</h3>
																			</a>
																		</div>
																		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
																			<a href="teacherInsertScoreForm.jsp">
																			<h3>내신 성적 입력</h3>
																			</a>
																		</div>
																		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
																			<a href="teacherInsertMockScoreForm.jsp">
																			<h3>모의고사 성적 입력</h3>
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
                                        	</div>
										</div>
                                        <div class="col-sm-3">
                                            <div class="pricing-table blue">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">학부모 관리</div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <ul class="plan-detail">
                                                   		<li>학부모 정보 입력</li>
                                                        <li>학부모 정보 열람</li>
                                                        <li>&nbsp;</li>
                                                        <li>&nbsp;</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                    <button class="btn btn-primary btn-info" data-target="#modalInfo" data-toggle="modal" type="button"> 클릭^^ </button>
                                                	<div id="modalInfo" class="modal fade modal-info" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display: none;">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button class="close" aria-label="Close" data-dismiss="modal" type="button">
																		<span aria-hidden="true">×</span>
																	</button>
																	<h4 id="myModalLabel" class="modal-title">학부모 관리</h4>
																</div>
																<div class="modal-body">
																	<div class="row">
																		<div class="col-sm-6 col-xs-12" style="text-align:center;">
																			<a href="teacherInsertParentForm.jsp">
																			<h3>학부모 정보 입력</h3>
																			</a>
																		</div>
																		<div class="col-sm-6 col-xs-12" style="text-align:center;">
																			<a href="teacherListParent.jsp">
																			<h3>학부모 정보 열람</h3>
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
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="pricing-table yellow">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">가정통신문</div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <ul class="plan-detail">
                                                        <li>가정통신문 발송</li>
                                                        <li>가정통신문 조회</li>
                                                        <li>&nbsp;</li>
                                                        <li>&nbsp;</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                    <button class="btn btn-primary btn-warning" data-target="#modalWarning" data-toggle="modal" type="button"> 클릭^^ </button>
													<div id="modalWarning" class="modal fade modal-warning" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button class="close" aria-label="Close" data-dismiss="modal" type="button">
																		<span aria-hidden="true">×</span>
																	</button>
																	<h4 id="myModalLabel" class="modal-title">가정통신문</h4>
																</div>
																<div class="modal-body"> 
																	<div class="row">
																		<div class="col-sm-6 col-xs-12" style="text-align:center;">
																			<a href="teacherInsertNoticeParentForm.jsp">
																			<h3>가정통신문 발송</h3>
																			</a>
																		</div>
																		<div class="col-sm-6 col-xs-12" style="text-align:center;">
																			<a href="teacherListNoticeParent.jsp">
																			<h3>가정통신문 조회</h3>
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
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="pricing-table red">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">소통공간</div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <ul class="plan-detail">
                                                        <li>교내 공지사항</li>
                                                        <li>학급 게시판</li>
                                                        <li>일정</li>
                                                        <li>&nbsp;</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                	<button class="btn btn-primary btn-danger" data-target="#modalDanger" data-toggle="modal" type="button"> 클릭^^ </button>
													<div id="modalDanger" class="modal fade modal-danger" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1">
                                                    <div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button class="close" aria-label="Close" data-dismiss="modal" type="button">
																		<span aria-hidden="true">×</span>
																	</button>
																	<h4 id="myModalLabel" class="modal-title">소통공간</h4>
																</div>
																<div class="modal-body">
																	<div class="row">
																		<div class="col-sm-4 col-xs-12" style="text-align:center;">
																			<a href="noticeBoardList.jsp">
																			<h3>교내 공지사항</h3>
																			</a>
																		</div>
																		<div class="col-sm-4 col-xs-12" style="text-align:center;">
																			<a href="classBoardList.jsp">
																			<h3>학급 게시판</h3>
																			</a>
																		</div>
																		<div class="col-sm-4 col-xs-12" style="text-align:center;">
																			<a href="scheduleList.jsp">
																			<h3>일정</h3>
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
    						</div>
    					</div>
    				</div>
    				<div class="page-title">
    					<span class="title">일정표</span>
    				</div>
    				<div class="row">
    					<div class="col-sm-12">
    						<div class="card">
								<div class="card-body">
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