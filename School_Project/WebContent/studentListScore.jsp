<%@page import="java.util.ArrayList"%>
<%@page import="kosta.model.AllStudentNum"%>
<%@page import="kosta.model.AllRankingScoreList"%>
<%@page import="kosta.model.AllSubjectScoreList"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@include file="logic/studentSessionCheck.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setAttribute("path", "성적조회 > 내신성적조회");
	request.setAttribute("id", id);
	String se = request.getParameter("semester");
	String s_grade = request.getParameter("subjectGrade");
	int subjectGrade = 0;
	if(s_grade != null){
	subjectGrade = Integer.parseInt(s_grade);
	request.setAttribute("subjectGrade", subjectGrade);
	}
	int semester = 0;
	int size=0;
	int size2=0;
	int size3=0;
	if(se != null){
	semester = Integer.parseInt(se);
	request.setAttribute("semester", semester);
	List<AllSubjectScoreList> list = service.allSubjectScoreListService(semester);
	request.setAttribute("list", list);
	}
	
	List<AllRankingScoreList> list2 = service.allRankingScoreListService(semester);
	request.setAttribute("list2", list2);
	List<AllStudentNum> list3 = service.allStudentNumService(semester);
	request.setAttribute("list3", list3);
	int i = 0;
	int j = 0;
	int k = 0;
	int i2 = 0;
	int j2 = 0;
	int i3 = 0;
	int j3 = 0;
%>
<!DOCTYPE html>
<html>

<head>
<title>내신점수 확인 페이지</title>
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
<script src="js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		$('#selectTerm').change(function(){
			var subjectGrade = $('input:radio[name="subjectGrade"]:checked').val();
			if(subjectGrade == null){
				alert("학년을 선택해주세요.")
			}else{
			var semester = $(this).val();
			location.href = "studentListScore.jsp?semester="+semester+"&subjectGrade="+subjectGrade;
			}
		})
		$('input:radio[name="subjectGrade"]:input[value="${subjectGrade}"]').attr("checked", true);
		$('#view1').click(function(){
			var listSize = $('#listSize').html();
			var listSize2 = $('#listSize2').html();
			var listSize3 = $('#listSize3').html();
			var listSize4 = $('#listSize4').html();
			var size = parseInt(listSize);
			var size2 = parseInt(listSize2);
			var size3 = parseInt(listSize3);
			var size4 = parseInt(listSize4);
			var arrSubjectId = new Array();
			var arrRankSubjectId = new Array();
			var arrRankSend = new Array();
			var arrStdev = new Array();
			var arrAllStudentSubjectId = new Array();
			var arrAllStudentNum = new Array();
			var arrAllStdevSubjectId = new Array();
			for (var i=1; i<=size; i++){
				arrSubjectId[i]= $('#subjectId'+i).html();
				$('#arrSubject'+i).html(arrSubjectId[i]);
			}
			for (var i=1; i<=size2; i++){
				arrRankSubjectId[i]= $('#rankSubjectId'+i).html();
				arrRankSend[i]= $('#rankSend'+i).html();
			}
			for(var i=1; i<=size3; i++){
				arrAllStudentSubjectId[i] = $('#allStudentSubjectId'+i).html();
				arrAllStudentNum[i] = $('#allStudentNum'+i).html();
			}
			for(var i=1; i<=size4; i++){
				arrStdev[i] = $('#stdev'+i).html();
				arrAllStdevSubjectId[i] = $('#stdevSubjectId'+i).html();
			}
			for (var i=1; i<=size; i++){
				for (var j=1; j<=size2; j++){
					if(arrSubjectId[i]==arrRankSubjectId[j]){
						$('#ranking'+i).html(arrRankSend[j]);
					}
				}
			}
			for (var i=1; i<=size; i++){
				for (var j=1; j<=size3; j++){
					if(arrSubjectId[i]==arrAllStudentSubjectId[j]){
						$('#allStudent'+i).html(arrAllStudentNum[j]);
					}
				}
			}
			//표준편차
			var g = 0;
			var result = parseFloat(g);
			for (var i=1; i<=size; i++){
				for (var j=1; j<=size4; j++){
					if(arrSubjectId[i]==arrAllStdevSubjectId[j]){
						result = result+Math.pow(parseFloat(arrStdev[j])-parseFloat($('#avg'+i).html()),2)/parseFloat($('#allStudent'+i).html());
					}
				}
				$('#stdevResult'+i).html(Math.sqrt(result).toFixed(2));
				result = 0;
			}
		})
	})
</script>
</head>

<body class="flat-blue">
   <div class="app-container">
        <div class="row content-container">
            <jsp:include page="studentMenu.jsp"/>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body padding-top">
					<div class="row">
						<div class="col-md-12">
							<h3>내신성적</h3>
							<label>3학년 2반 홍길동</label>
								<label for="exampleInputName2">&nbsp;&nbsp;</label>
                               		<div class="radio3 radio-check radio-inline">
                                  		<input type="radio" id="radio4" name="subjectGrade" value="1">
                                       	<label for="radio4">1학년</label>
                                   	</div>
                                    <div class="radio3 radio-check radio-inline">
                                    	<input type="radio" id="radio5" name="subjectGrade" value="2">
                                    	<label for="radio5">2학년</label>
                                    </div>
                                    <div class="radio3 radio-check radio-inline">
                                    	<input type="radio" id="radio6" name="subjectGrade" value="3">
                                    	<label for="radio6">3학년</label>
                                    </div>
							<select style="width: 150px" id="selectTerm">
								<option>${semester }학기</option>
								<option value="1">1학기</option>
								<option value="2">2학기</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-8">
							<div class="sub-title">
								Table Bordered <span class="description">(
									.table-bordered )</span>
							</div>
							<button id="view1">결과보기</button>
							<div style="display:none">
							<!-- 표준편차-->
							<table>
							<c:forEach var="list" items="${list }">
								<c:if test="${list.subjectGrade == subjectGrade}">
									<tr>
										<td id="stdevSubjectId<%=++size%>">${list.subjectId }</td>
										<td id="stdev<%=++size2%>">${list.subjectTotal }</td>
									</tr>
								</c:if>
							</c:forEach>
							</table>
							<p id="listSize4" style="display:none"><%=size2%></p>
							<!-- 석차와 이수자수-->
							<table>
							<c:forEach var="list" items="${list2 }">
								<c:if test="${id == list.memberId }">
								<tr>
									<td id="rankSubjectId<%=++i2 %>">${list.subjectId}</td>
									<td id="rankSend<%=++j2%>">${list.rank }</td>
								</tr>
								</c:if>
							</c:forEach>
							<c:forEach var="list" items="${list3 }">
								<tr>
									<td id="allStudentSubjectId<%=++i3 %>">${list.subjectId}</td>
									<td id="allStudentNum<%=++j3%>">${list.allStudentNum }</td>
								</tr>
							</c:forEach>
							</table> 
							<!-- for문 size 구하기 위함-->
							<p id="listSize2" style="display:none"><%=i2%></p>
							<p id="listSize3" style="display:none"><%=i3%></p>
							</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>교과</th>
										<th>과목</th>
										<th colspan="5">${semester }학기</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="2"></td>
										<td>단위수</td>
										<td>원점수</td>
										<td>과목평균</td>
										<td>표준편차</td>
										<td>석차등급</td>
										<td>이수자수</td>
									</tr>
									<c:forEach var="list" items="${list }">
									<c:if test="${id == list.memberId && subjectGrade == list.subjectGrade}">
									<tr>
										<td id="subjectId<%=++k%>" style="display:none">${list.subjectId }</td>
										<td>${list.subjectType }</td>
										<td>${list.subjectName }</td>
										<td>${list.subjectUnit }</td>
										<td>${list.subjectTotal }</td>
										<td id="avg<%=k%>"><fmt:formatNumber value="${list.subjectAvg }" pattern=".00"/></td>
										<td id="stdevResult<%=++size3%>"></td>
										<td id="ranking<%=++i%>"></td>
										<td id="allStudent<%=++j%>"></td>
									</tr>
									</c:if>
									</c:forEach>
								</tbody>
							</table>
							<!-- for문 size 구하기 위함-->
							<p id="listSize" style="display:none"><%=i%></p>
						</div>
					</div>
						<!-- Chart JS -->
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">학년평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                    <canvas id="line-chart" class="chart"></canvas>
                                </div>
                            <div class="card">
                            	<div class="card-header">
                            		<div class="card-title">
                                        <div class="title">학년평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                	<p>국어 평균점수 60점대비 <b>+15점</b>인 75점입니다</p>
                                	<p>영어 평균점수 70점대비 <b>+10점</b>인 80점입니다</p>
                                	<p>수학 평균점수 40점대비 <b>+32점</b>인 72점입니다</p>
                                	<p>사회 평균점수 40점대비 <b>+53점</b>인 93점입니다</p>
                                	<p>과학 평균점수 70점대비 <b>-20점</b>인 50점입니다</p>
                                </div>
                            </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">반평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                    <canvas id="bar-chart" class="chart"></canvas>
                                </div>
                            </div>
                            <div class="card">
                            	<div class="card-header">
                            		<div class="card-title">
                                        <div class="title">반 평균 대비 분석</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                	<p>국어 평균점수 60점대비 <b>+15점</b>인 75점입니다</p>
                                	<p>영어 평균점수 70점대비 <b>+10점</b>인 80점입니다</p>
                                	<p>수학 평균점수 40점대비 <b>+32점</b>인 72점입니다</p>
                                	<p>사회 평균점수 40점대비 <b>+53점</b>인 93점입니다</p>
                                	<p>과학 평균점수 70점대비 <b>-20점</b>인 50점입니다</p>
                                </div>
                            </div>
                            <div>
                            	<div>
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
	<!-- index.js가 존재하면 chart.js가 안먹힘
	<script type="text/javascript" src="js/index.js"></script>
	 -->
	<script type="text/javascript" src="js/chartjs.js"></script>
</body>

</html>
​
