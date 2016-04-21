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
										<div class="title">모의고사 성적 입력</div>
									</div>
								</div>
								<div class="card-body table-responsive">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th colspan="4">1학년</th>
												<th colspan="4">2학년</th>
												<th colspan="4">3학년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="2">영역</td>
												<td>원점수</td>
												<td>표준점수</td>
												<td colspan="2">영역</td>
												<td>원점수</td>
												<td>표준점수</td>
												<td colspan="2">영역</td>
												<td>원점수</td>
												<td>표준점수</td>
											</tr>
											
											<tr>
												<td colspan="2">언어</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td colspan="2">언어</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>언어</td>
												<td>
												<select>
                                              	  <option>국어A</option>
                                              	  <option>국어B</option>
                                            	</select></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
												
											<tr>
												<td colspan="2">수리</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>수리</td>
												<td>
													<select>
														<option>수리 가</option>
                                              	  		<option>수리 나</option>
													</select></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>수리</td>
												<td>
													<select>
														<option>수리 가</option>
                                              	  		<option>수리 나</option>
													</select></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											
											<tr>
												<td colspan="2">외국어</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td colspan="2">외국어</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td colspan="2">외국어</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											
											<tr>
												<td>탐구영역 1</td>
												<td><select>
													<optgroup label="사회">
													<option>도덕</option>
													<option>한국사</option>
													<option>사회지리</option>
													<option>일반사회</option>
													</optgroup>
													<optgroup label="과학">
													<option>물리</option>
													<option>화학</option>
													<option>생명과학</option>
													<option>지구과학</option>
													</optgroup>
												</select></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>탐구영역 1</td>
												<td><select>
													<optgroup label="사회">
													<option>생활과 윤리</option>
													<option>윤리와 사상</option>
													<option>한국사</option>
													<option>한국지리</option>
													<option>세계지리</option>
													<option>동아시아사</option>
													<option>세계사</option>
													<option>법과정치</option>
													<option>경제</option>
													<option>사회문화</option>
													</optgroup>
													<optgroup label="과학">
													<option>물리1</option>
													<option>화학1</option>
													<option>생명과학1</option>
													<option>지구과학1</option>
													</optgroup>
												</select>
												</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>탐구영역 1</td>
												<td><select>
													<optgroup label="사회">
													<option>생활과 윤리</option>
													<option>윤리와 사상</option>
													<option>한국사</option>
													<option>한국지리</option>
													<option>세계지리</option>
													<option>동아시아사</option>
													<option>세계사</option>
													<option>법과정치</option>
													<option>경제</option>
													<option>사회문화</option>
													</optgroup>
													<optgroup label="과학">
													<option>물리1</option>
													<option>화학1</option>
													<option>생명과학1</option>
													<option>지구과학1</option>
													<option>물리2</option>
													<option>화학2</option>
													<option>생명과학2</option>
													<option>지구과학2</option>
													</optgroup>
												</select>
												</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											
											<tr>
												<td>탐구영역 2</td>
												<td><select>
													<optgroup label="사회">
													<option>도덕</option>
													<option>한국사</option>
													<option>사회지리</option>
													<option>일반사회</option>
													</optgroup>
													<optgroup label="과학">
													<option>물리</option>
													<option>화학</option>
													<option>생명과학</option>
													<option>지구과학</option>
													</optgroup>
												</select></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>탐구영역 2</td>
												<td><select>
													<optgroup label="사회">
													<option>생활과 윤리</option>
													<option>윤리와 사상</option>
													<option>한국사</option>
													<option>한국지리</option>
													<option>세계지리</option>
													<option>동아시아사</option>
													<option>세계사</option>
													<option>법과정치</option>
													<option>경제</option>
													<option>사회문화</option>
													</optgroup>
													<optgroup label="과학">
													<option>물리1</option>
													<option>화학1</option>
													<option>생명과학1</option>
													<option>지구과학1</option>
													</optgroup>
												</select>
												</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>탐구영역 2</td>
												<td><select>
													<optgroup label="사회">
													<option>생활과 윤리</option>
													<option>윤리와 사상</option>
													<option>한국사</option>
													<option>한국지리</option>
													<option>세계지리</option>
													<option>동아시아사</option>
													<option>세계사</option>
													<option>법과정치</option>
													<option>경제</option>
													<option>사회문화</option>
													</optgroup>
													<optgroup label="과학">
													<option>물리1</option>
													<option>화학1</option>
													<option>생명과학1</option>
													<option>지구과학1</option>
													<option>물리2</option>
													<option>화학2</option>
													<option>생명과학2</option>
													<option>지구과학2</option>
													</optgroup>
												</select>
												</td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
											
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td>제2외국어</td>
												<td><select>
													<option>미응시</option>
													<option>독일어</option>
													<option>프랑스어</option>
													<option>스페인어</option>
													<option>중국어</option>
													<option>일본어</option>
													<option>러시아어</option>
													<option>아랍어</option>
													<option>베트남어</option>
													<option>한문</option>
												</select></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td>제2외국어</td>
												<td><select>
													<option>미응시</option>
													<option>독일어</option>
													<option>프랑스어</option>
													<option>스페인어</option>
													<option>중국어</option>
													<option>일본어</option>
													<option>러시아어</option>
													<option>아랍어</option>
													<option>베트남어</option>
													<option>한문</option>
												</select></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
												<td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
											</tr>
										</tbody> 
									</table>
									<!--페이지 -->
									<a href="#" class="pull-right" ><button class="btn btn-default">등록</button></a><br><br>
 									<br><br>
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