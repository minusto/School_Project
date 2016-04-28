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
            <jsp:include page="teacherMenu.jsp"/>
            <!-- 메인 컨텐츠 -->
          <div class="container-fluid">
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">가정통신문 상세조회</div>
									</div>
								</div>
								<div class="col-lg-1"></div>
								<div class="card-body table-responsive col-lg-10">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th></th>
												<th style="text-align: center">가정통신문</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
											 <td colspan="3" align="center"><textarea cols="150"  rows="25" disabled="disabled">
											 학부모님께 드림
											 어느덧 여름의 향기가 느껴지는 5월입니다.
											 가정마다 편안함과 함께 행운이 깃들길 바랍니다.
											 아이들의 여름캠프를 앞당겨 진행할 예정 입니다.
											 기존 7월1일로 예정 되어있던 캠프는 6월21일로
											 앞당길 예정입니다. 아래 일시 및 준비물을 참고하셔서
											 즐거운 물놀이 시간을 준비해 주시기 바랍니다.
											 
											 
											 체험활동 일시
											 2016년 6월 21일(금요일) 오전 9시 ~1시 
											 
											 준비물
											 도시락,수영복,수영모,물안경,튜브(안전조끼)
											 </textarea></td>
											</tr>
											
											<tr>
												<td></td>
												<td>교사 서명</td>
												<td >학부모 서명</td>
											</tr>
											
											<tr>
												<td></td>
												<td><input type="text" value="교사서명" disabled="disabled"></td>
												<td><input type="text"  value="학부모서명" disabled="disabled"></td>
											</tr>
											<tr>
												<td align="center"><a href="teacherMain.jsp" ><button class="btn btn-default">메인으로</button></a></td>
												<td align="center"></td>
												<td align="center"><a href="teacherListNoticeParent.jsp" ><button class="btn btn-default">목록보기</button></a></td>												
											</tr>
										</tbody> 
									</table>
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