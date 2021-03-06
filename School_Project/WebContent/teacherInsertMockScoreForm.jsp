<%@page import="kosta.model.SecondLanguage"%>
<%@page import="kosta.model.ResearchSubject"%>
<%@page import="kosta.model.ExistStudentList"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="logic/teacherSessionCheck.jsp" %>
<!DOCTYPE html>
<%
	request.setAttribute("path", "학생 관리 > 모의고사 성적 입력");
	Member member=service.memberDetailService(id);
	List<ExistStudentList> list = service.selectExistStudentSerevice(member.getSchoolId());
	request.setAttribute("list", list);
	List<ResearchSubject> researchList = service.selectResearchSubjectListService();
	request.setAttribute("researchList", researchList);
	List<SecondLanguage> secondLanguageList = service.selectSecondLanguageSubjectListService();
	request.setAttribute("secondLanguageList", secondLanguageList);
%>
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
	<script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
	    $(function() {
			$('#mockGrade').change(function() {
				var grade = $(this).val();
				switch (grade) {
				case '1':
					var content = '<table id="inserttable" class="table table-striped">';
					content += '<thead><tr class="headings"><th colspan="4">1학년</th></tr></thead>';
					content += '<tbody><tr><td colspan="2">영역</td><td>원점수</td><td>표준점수</td><td>백분위</td></tr>';
					content += '<tr><td colspan="2">언어</td><td><input name="languageOriginalScore" type="text" class="form-control" size="1"></td><td><input name="languageStandardScore" type="text" class="form-control" size="1"></td><td><input name="languagePercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td colspan="2">수리</td><td><input name="mathOriginalScore" type="text" class="form-control" size="1"></td><td><input name="mathStandardScore" type="text" class="form-control" size="1"></td><td><input name="mathPercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td colspan="2">외국어</td><td><input name="englishOriginalScore" type="text" class="form-control" size="1"></td><td><input name="englishStandardScore"" type="text" class="form-control" size="1"></td><td><input name="englishPercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>한국사</td><td><select id="researchSubjectName0" name="researchSubjectName0"><option>미응시</option><option>한국사</option></select></td><td><input id="researchSubjectOriginalScore0" name="researchSubjectOriginalScore0" type="hidden" class="form-control" size="1"></td><td><input id="researchSubjectStandardScore0" name="researchSubjectStandardScore0" type="hidden" class="form-control" size="1"></td><td><input id="researchSubjectPercentile0" name="researchSubjectPercentile0" type="hidden" class="form-control" size="1"></td></tr>';
					content += '<tr><td>탐구영역 1</td><td><select id="researchSubjectName1" name="researchSubjectName1"><c:forEach var="researchList" items="${researchList }"><option>${researchList.researchSubjectName }</option></c:forEach></select></td><td><input name="researchSubjectOriginalScore1" type="text" class="form-control" size="1"></td><td><input name="researchSubjectStandardScore1" type="text" class="form-control" size="1"></td><td><input name="researchSubjectPercentile1" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>탐구영역 2</td><td><select id="researchSubjectName2" name="researchSubjectName2"><c:forEach var="researchList" items="${researchList }"><option>${researchList.researchSubjectName }</option></c:forEach></select></td><td><input name="researchSubjectOriginalScore2" type="text" class="form-control" size="1"></td><td><input name="researchSubjectStandardScore2" type="text" class="form-control" size="1"></td><td><input name="researchSubjectPercentile2" type="text" class="form-control" size="1"></td></tr></tbody></table>';
	
					$('#inserttable').html(content);
					break;
				case '2':
					var content = '<table id="inserttable" class="table table-striped">';
					content += '<thead><tr class="headings"><th colspan="4">2학년</th></tr></thead>';
					content += '<tbody><tr><td colspan="2">영역</td><td>원점수</td><td>표준점수</td><td>백분위</td></tr>';
					content += '<tr><td colspan="2">언어</td><td><input name="languageOriginalScore" type="text" class="form-control" size="1"></td><td><input name="languageStandardScore" type="text" class="form-control" size="1"></td><td><input name="languagePercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>수리</td><td><select name="mathType"><option>수리 가</option><option>수리 나</option></select></td><td><input name="mathOriginalScore"  type="text" class="form-control" size="1"></td><td><input name="mathStandardScore" type="text" class="form-control" size="1"></td><td><input name="mathPercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td colspan="2">외국어</td><td><input name="englishOriginalScore" type="text" class="form-control" size="1"></td><td><input name="englishStandardScore"" type="text" class="form-control" size="1"></td><td><input name="englishPercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>한국사</td><td><select id="researchSubjectName0" name="researchSubjectName0"><option>미응시</option><option>한국사</option></select></td><td><input id="researchSubjectOriginalScore0" name="researchSubjectOriginalScore0" type="hidden" class="form-control" size="1"></td><td><input id="researchSubjectStandardScore0" name="researchSubjectStandardScore0" type="hidden" class="form-control" size="1"></td><td><input id="researchSubjectPercentile0" name="researchSubjectPercentile0" type="hidden" class="form-control" size="1"></td></tr>';
					content += '<tr><td>탐구영역 1</td><td><select id="researchSubjectName1" name="researchSubjectName1"><c:forEach var="researchList" items="${researchList }"><option>${researchList.researchSubjectName }</option></c:forEach></select></td><td><input name="researchSubjectOriginalScore1" type="text" class="form-control" size="1"></td><td><input name="researchSubjectStandardScore1" type="text" class="form-control" size="1"></td><td><input name="researchSubjectPercentile1" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>탐구영역 2</td><td><select id="researchSubjectName2" name="researchSubjectName2"><c:forEach var="researchList" items="${researchList }"><option>${researchList.researchSubjectName }</option></c:forEach></select></td><td><input name="researchSubjectOriginalScore2" type="text" class="form-control" size="1"></td><td><input name="researchSubjectStandardScore2" type="text" class="form-control" size="1"></td><td><input name="researchSubjectPercentile2" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>제2외국어</td><td><select id="secondLangSelect" name="languageSubjectName"><c:forEach var="secondLanguageList" items="${secondLanguageList }"><option>${secondLanguageList.languageSubjectName }</option></c:forEach></select></td><td><input id="secondLanguageOriginalScore" name="secondLanguageOriginalScore" type="hidden" class="form-control" value="-1" size="1"></td><td><input id="secondLanguageStandardScore" name="secondLanguageStandardScore" type="hidden" class="form-control" value="-1" size="1"></td><td><input id="secondLanguagePercentile" name="secondLanguagePercentile" type="hidden" class="form-control" size="1"></td></tr></tbody></table';
					
					$('#inserttable').html(content);
					break;
				case '3':
					var content = '<table class="table table-striped">';
					content += '<thead><tr class="headings"><th colspan="4">3학년</th></tr></thead>';
					content += '<tbody><tr><td colspan="2">영역</td><td>원점수</td><td>표준점수</td><td>백분위</td></tr>';
					content += '<tr><td>언어</td><td><select name="languageType"><option>국어A</option><option>국어B</option></select></td><td><input name="languageOriginalScore" type="text" class="form-control" size="1"></td><td><input name="languageStandardScore" type="text" class="form-control" size="1"></td><td><input name="languagePercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>수리</td><td><select name="mathType"><option>수리 가</option><option>수리 나</option></select></td><td><input name="mathOriginalScore" type="text" class="form-control" size="1"></td><td><input name="mathStandardScore" type="text" class="form-control" size="1"></td><td><input name="mathPercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td colspan="2">외국어</td><td><input name="englishOriginalScore" type="text" class="form-control" size="1"></td><td><input name="englishStandardScore"" type="text" class="form-control" id="inputPassword3" size="1"></td><td><input name="englishPercentile" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>한국사</td><td><select id="researchSubjectName0" name="researchSubjectName0"><option>미응시</option><option>한국사</option></select></td><td><input id="researchSubjectOriginalScore0" name="researchSubjectOriginalScore0" type="hidden" class="form-control" size="1"></td><td><input id="researchSubjectStandardScore0" name="researchSubjectStandardScore0" type="hidden" class="form-control" size="1"></td><td><input id="researchSubjectPercentile0" name="researchSubjectPercentile0" type="hidden" class="form-control" size="1"></td></tr>';
					content += '<tr><td>탐구영역 1</td><td><select id="researchSubjectName1" name="researchSubjectName1"><c:forEach var="researchList" items="${researchList }"><option>${researchList.researchSubjectName }</option></c:forEach></select></td><td><input name="researchSubjectOriginalScore1" type="text" class="form-control" size="1"></td><td><input name="researchSubjectStandardScore1" type="text" class="form-control" size="1"></td><td><input name="researchSubjectPercentile1" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>탐구영역 2</td><td><select id="researchSubjectName2" name="researchSubjectName2"><c:forEach var="researchList" items="${researchList }"><option>${researchList.researchSubjectName }</option></c:forEach></select></td><td><input name="researchSubjectOriginalScore2" type="text" class="form-control" size="1"></td><td><input name="researchSubjectStandardScore2" type="text" class="form-control" size="1"></td><td><input name="researchSubjectPercentile2" type="text" class="form-control" size="1"></td></tr>';
					content += '<tr><td>제2외국어</td><td><select id="secondLangSelect" name="languageSubjectName"><c:forEach var="secondLanguageList" items="${secondLanguageList }"><option>${secondLanguageList.languageSubjectName }</option></c:forEach></select></td><td><input id="secondLanguageOriginalScore" name="secondLanguageOriginalScore" type="hidden" class="form-control" value="-1" size="1"></td><td><input id="secondLanguageStandardScore" name="secondLanguageStandardScore" type="hidden" class="form-control" value="-1" size="1"></td><td><input id="secondLanguagePercentile" name="secondLanguagePercentile" type="hidden" class="form-control" size="1"></td></tr></tbody></table>';
					
					$('#inserttable').html(content);
					break;
				}
			});
			//제2외국어가 미응시일 경우 input 태그를 숨김
			$(document).on('change', '#secondLangSelect', function() {
				var secondSubName = $(this).val();
				if(secondSubName == '미응시') {
					$('input[id=secondLanguageOriginalScore]').attr('type', 'hidden');
					$('input[id=secondLanguageOriginalScore]').val('-1');
					
					$('input[id=secondLanguageStandardScore]').attr('type', 'hidden');
					$('input[id=secondLanguageStandardScore]').val('-1');
					
					$('input[id=secondLanguagePercentile]').attr('type', 'hidden');
					$('input[id=secondLanguagePercentile]').val('-1');
				} else {
					$('input[id=secondLanguageOriginalScore]').attr('type', 'text');
					$('input[id=secondLanguageOriginalScore]').val('');
					
					$('input[id=secondLanguageStandardScore]').attr('type', 'text');
					$('input[id=secondLanguageStandardScore]').val('');
					
					$('input[id=secondLanguagePercentile]').attr('type', 'text');
					$('input[id=secondLanguagePercentile]').val('');
				}
			});
			//한국사가 미응시일 경우 input 태그를 숨김
			$(document).on('change', '#researchSubjectName0', function() {
				var hangooksaName = $(this).val();
				if(hangooksaName == '미응시') {
					$('input[id=researchSubjectOriginalScore0]').attr('type', 'hidden');
					$('input[id=researchSubjectOriginalScore0]').val('-1');
					
					$('input[id=researchSubjectStandardScore0]').attr('type', 'hidden');
					$('input[id=researchSubjectStandardScore0]').val('-1');
					
					$('input[id=researchSubjectPercentile0]').attr('type', 'hidden');
					$('input[id=researchSubjectPercentile0]').val('-1');
				} else {
					$('input[id=researchSubjectOriginalScore0]').attr('type', 'text');
					$('input[id=researchSubjectOriginalScore0]').val('');
					
					$('input[id=researchSubjectStandardScore0]').attr('type', 'text');
					$('input[id=researchSubjectStandardScore0]').val('');
					
					$('input[id=researchSubjectPercentile0]').attr('type', 'text');
					$('input[id=researchSubjectPercentile0]').val('');
				}
			})
			
		});
    	
    	$(function(){
			$('tbody').on('click','#clickStu',function(){
				$('input[name=memberId]').val($(this).html());
				$('button[class=close]').trigger('click'); 
			})
			$('tbody #clickStu').on({
				 mouseenter: function(){
				  $(this).css('color','red');
				 },
				 mouseleave: function(){
				  $(this).css('color','#333');
				 }
			});
		});
    	
    </script>
    <style type="text/css">
    	#selectGrade {
    		padding : 20px;
    	}
    	#submitButton {
    		width : 100px;
    		height : 35px;
    	}
    </style>
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
								<div class="card-body">
									<!-- form -->
									<form action="logic/insertMockTestScoreOk.jsp" method="post">
									<div id="selectStudentId" class="col-md-8 col-md-offset-2">
										<div class="col-md-2 col-sm-4">
										<input type="text" class="form-control" id="inputPassword3" name="memberId">
										</div>
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary btn-primary" data-toggle="modal" data-target="#modalPrimary" >
											학생ID 찾기
										</button>
										<!-- Modal -->
										<div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
														<h4 class="modal-title" id="myModalLabel">학생ID 리스트</h4>
													</div>
													<div class="modal-body">
														<div class="row" style="width:100%; height:200px; overflow:auto">
														<!-- Table -->
														<div class="col-md-8 col-md-offset-2">
															<table class="table table-striped">
															<thead>
																<tr class="headings">
																	<th>번호</th>
																	<th>학생ID</th>
																	<th>학생 이름</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="list" items="${list }">
																	<tr>
																		<td>${list.studentNum }</td>
																		<td id="clickStu" style="cursor:pointer">${list.memberId }</td>
																		<td>${list.memberName }</td>
																	</tr>
																</c:forEach>
															</tbody>
															</table>
														</div>
														</div>
                                                    </div>
                                                 </div>
                                             </div>
                                         </div>
									</div>
									<div id="selectGrade" class="col-md-8 col-md-offset-2">
										<select name="mockYear">
											<option selected>2016</option>
											<option>2015</option>
											<option>2014</option>
										</select>
										<span>년도</span>
										<select id="mockGrade" name="mockGrade">
											<option selected>1</option>
											<option>2</option>
											<option>3</option>											
										</select>
										<span>학년&nbsp;</span>
										<select name="mockMonth">
											<option selected>3</option>
											<option>6</option>
											<option>9</option>
										</select>
										<span>월</span>
									</div>
									<div id="inserttable" class="col-md-8 col-md-offset-2 table-responsive">
										<!-- table --><!-- 1학년 -->
										<table id="inserttable" class="table table-striped">
										<thead>
											<tr class="headings">
												<th colspan="4">1학년</th>
											</tr>
										</thead>
										<tbody>
										<tr>
											<td colspan="2">영역</td>
											<td>원점수</td>
											<td>표준점수</td>
											<td>백분위</td>
										</tr>
										<tr>
											<td colspan="2">언어</td>
											<td><input name="languageOriginalScore" type="text" class="form-control" size="1"></td>
											<td><input name="languageStandardScore" type="text" class="form-control" size="1"></td>
											<td><input name="languagePercentile" type="text" class="form-control" size="1"></td>
										</tr>
										<tr>
											<td colspan="2">수리</td>
											<td><input name="mathOriginalScore" type="text" class="form-control" size="1"></td>
											<td><input name="mathStandardScore" type="text" class="form-control" size="1"></td>
											<td><input name="mathPercentile" type="text" class="form-control" size="1"></td>
										</tr>
										<tr>
											<td colspan="2">외국어</td>
											<td><input name="englishOriginalScore" type="text" class="form-control" size="1"></td>
											<td><input name="englishStandardScore"" type="text" class="form-control" size="1"></td>
											<td><input name="englishPercentile" type="text" class="form-control" size="1"></td>
										</tr>
										<tr>
											<td>한국사</td>
											<td>
												<select id="researchSubjectName0" name="researchSubjectName0">
													<option>미응시</option>
													<option>한국사</option>
												</select>
											</td>
											<td><input id="researchSubjectOriginalScore0" name="researchSubjectOriginalScore0" type="hidden" class="form-control" size="1"></td>
											<td><input id="researchSubjectStandardScore0" name="researchSubjectStandardScore0" type="hidden" class="form-control" size="1"></td>
											<td><input id="researchSubjectPercentile0" name="researchSubjectPercentile0" type="hidden" class="form-control" size="1"></td>
										</tr>
										<tr>
											<td>탐구영역 1</td>
											<td>
												<select id="researchSubjectName1" name="researchSubjectName1">
												<c:forEach var="researchList" items="${researchList }">
													<option>${researchList.researchSubjectName }</option>
												</c:forEach>
												</select>
											</td>
											<td><input name="researchSubjectOriginalScore1" type="text" class="form-control" size="1"></td>
											<td><input name="researchSubjectStandardScore1" type="text" class="form-control" size="1"></td>
											<td><input name="researchSubjectPercentile1" type="text" class="form-control" size="1"></td>
										</tr>
										<tr>
											<td>탐구영역 2</td>
											<td>
												<select id="researchSubjectName2" name="researchSubjectName2">
												<c:forEach var="researchList" items="${researchList }">
													<option>${researchList.researchSubjectName }</option>
												</c:forEach>
												</select>
											</td>
											<td><input name="researchSubjectOriginalScore2" type="text" class="form-control" size="1"></td>
											<td><input name="researchSubjectStandardScore2" type="text" class="form-control" size="1"></td>
											<td><input name="researchSubjectPercentile2" type="text" class="form-control" size="1"></td>
										</tr>
										</table>
									</div>
									<div class="col-md-12" style="text-align : center">
										<input class="flat-blue btn btn-primary" id="submitButton" type="submit" value="입력">
										<br><br>
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