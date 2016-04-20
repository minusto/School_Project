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
                            <li class="active">내신 성적 입력</li>
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
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">내신성적 입력</div>
									</div>
								</div>
								<div class="card-body table-responsive">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th rowspan="2">학년</th>
												<th rowspan="2">교과</th>
												<th rowspan="2">과목</th>
												<th colspan="4">1학기</th>
												<th colspan="4">2학기</th>
												<th rowspan="2">비고</th>
											</tr>
											<tr>
												<td>단위수</td>
												<td>중간고사</td>
												<td>기말고사</td>
												<td>수행평가</td>
												<td>단위수</td>
												<td>중간고사</td>
												<td>기말고사</td>
												<td>수행평가</td>
											</tr>
										</thead>
										<tbody>
											<tr>
											<!-- 1학년시작 -->
												<td rowspan="8">1학년</td>
												<td>국어</td>
												<td>국어</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>도덕</td>
												<td>도덕</td>
												<td>1</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>1</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>사회</td>
												<td>국사</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>사회</td>
												<td>사회</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>과학</td>
												<td>과학</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>수학</td>
												<td>수학</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>기술가정</td>
												<td>기술가정</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>영어</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<!-- 2학년 시작 -->
											<tr>
												<td rowspan="10">2학년</td>
												<td>국어</td>
												<td>문학</td>
												<td>5</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>5</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>일본어 1</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>한문</td>
												<td>한문</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>수학</td>
												<td>수학 1</td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>4</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>영어 1</td>
												<td>6</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											
											<tr>
												<td>외국어</td>
												<td>영어독해와 작문</td>
												<td></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>6</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>도덕</td>
												<td>윤리와 사상</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>기술가정</td>
												<td>정보사회와 컴퓨터</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>사회</td>
												<td>한국근현대사</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>과학</td>
												<td>화학</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<!-- 3학년 시작 -->
											<tr>
												<td rowspan="6">3학년</td>
												<td>국어</td>
												<td>독서</td>
												<td>5</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>5</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>국어</td>
												<td>문법</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>영어 2</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>수학</td>
												<td>미적분과 통계 기본</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>외국어</td>
												<td>심화영어독해와 작문</td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>3</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											<tr>
												<td>도덕</td>
												<td>전통윤리</td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>2</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
										</tbody> 
									</table>
									<!--페이지 -->
									<a href="#" class="pull-right" ><button class="btn btn-default">등록</button></a><br><br>
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