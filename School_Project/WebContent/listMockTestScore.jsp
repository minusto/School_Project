<%@page import="kosta.model.MockKorAvgScore"%>
<%@page import="kosta.model.MockTest"%>
<%@page import="kosta.model.ResearchSubject"%>
<%@page import="kosta.model.ResearchSubjectScore"%>
<%@page import="kosta.model.MockScoreDetailList"%>
<%@page import="kosta.model.MockResearchScoreDetailList"%>
<%@page import="kosta.model.MockType"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.StudentDetail"%>
<%@page import="kosta.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="logic/teacherSessionCheck.jsp" %>
<%
	request.setAttribute("path", "성적조회 > 모의고사성적조회");
	String studentId=request.getParameter("studentId");
 	String mockId=request.getParameter("mockId");
	if(mockId!=null){
		request.setAttribute("mockId", mockId);
	} 
	
	StudentDetail studentDetail=service.selectStudentDetailService(studentId);
	List<MockType> mockList=service.studentMockTestListService(studentId);
	
	request.setAttribute("studentDetail",studentDetail);
	request.setAttribute("mockList", mockList);
	request.setAttribute("studentId", studentId);
	
	List<MockTest> selectMyKorScoreList = service.selectMyKorScoreService(studentId);
	List<MockKorAvgScore> selectMockKorAvgScoreList =service.selectMockKorAvgScoreService(studentId);
	
	request.setAttribute("selectMockKorAvgScoreList", selectMockKorAvgScoreList);
	request.setAttribute("selectMyKorScoreList", selectMyKorScoreList);
	
	if(mockId!=null){
		
	List<ResearchSubject> researchSubjectList=service.selectResearchSubjectListService();
	request.setAttribute("researchSubjectList", researchSubjectList);

	List<MockResearchScoreDetailList> researchScoreList=service.studentMockResearchSocreListService(mockId); 
	// 해당 모의고사를 치룬 학생의  탐구과목 정보(점수)를 가져온다 ==> 모의고사 ID를 파라미터로 보내 받아온 결과를 학생 ID와 비교
	List<MockScoreDetailList> mockScoreDetailList=service.studentMockScorePlusSecondLangListService(studentId);
	// 학생이 치룬 모의고사의 탐구과목을 제외한 나머지 과목의 정보를 가져온다 ==> 멤버 ID를 파라미터로 보내 받아온 결과를 모의고사 ID와 비교
	List<ResearchSubjectScore> koreaHistroyScoreList=service.koreaHistroyScoreListService(studentId);
	// 한국사 시험을 치룬 학생의 점수 LIST ==> 멤버 ID를 파라미터로 보내 받아온 결과를 모의고사 ID와 비교 파라미터 = memberId
	request.setAttribute("researchScoreList", researchScoreList);
	request.setAttribute("mockScoreDetailList", mockScoreDetailList);
	request.setAttribute("koreaHistroyScoreList", koreaHistroyScoreList);
	}
	String studentName=studentDetail.getMemberName();
	request.setAttribute("studentName", studentName);

	int i = 0;
	int j = 0;
	int k = 0;
	int a = 0;
	int b = 0;
%>
<!DOCTYPE html>
<html>

<head>
<title>모의고사 점수확인 페이지</title>
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
<!-- <script type="text/javascript">
	$(function(){
		$("#selectMock").change(function(){
		var mockId=$(this).val();
		var studentId=$("#studentId").attr('value');
		
		location.href="studentListMockTestScore.jsp?studentId="+studentId+"&mockId="+mockId;

		})
	})
</script> -->
</head>

<body class="flat-blue">
<input type="hidden" id="studentName" value="${studentName }">
					<div class="row">
					<input type="hidden" name="studentId" id="studentId" value="${studentId }">
					<c:forEach items="${ selectMyKorScoreList}" var="list">
						<input id="myKorScore<%=i++ %>" type="hidden" value="${list.languageOriginalScore }">
							<c:forEach items="${ selectMockKorAvgScoreList}" var="list1">
								<c:if test="${list.mockId == list1.mockId }">
									<input id="mockKorAvg<%=j++ %>" type="hidden" value="${list1.avg }">
								</c:if>
							</c:forEach>
					</c:forEach>
						<div class="col-md-12">
							<h3>모의고사성적</h3>
							<label>${studentDetail.studentGrade}학년 ${studentDetail.studentClass }반 ${studentDetail.memberName }</label>
							<select style="width: 250px" id="selectMock">
								<c:forEach var="list" items="${mockList }">
									<c:if test="${mockId == list.mockId }">
										<option value="${list.mockId }">${list.mockYear }년도 ${list.mockGrade }학년 ${list.mockMonth }월 모의고사</option>
									</c:if>
								</c:forEach>
								<c:forEach var="list" items="${mockList }">
									<option id="mockName<%=k++ %>" value="${list.mockId }">${list.mockYear }년도 ${list.mockGrade }학년 ${list.mockMonth }월 모의고사</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 table-responsive">
							<div class="sub-title">
							 <span class="description"></span>
							</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th colspan="2" rowspan="2" >영역</th>
										<th colspan="2">원점수</th>
										<th colspan="2">표준점수</th>
										<th colspan="4">표준점수에 의한 석차/백분위/등급</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="2"></td>
										<td>배점</td>
										<td>득점</td>
										<td>범위</td>
										<td>득점</td>
										<td>학급석차</td>
										<td>학교석차</td>
										<td>전국백분위</td>
										<td>등급</td>
									</tr>
									
				<!-- 			성적표 예시 나중에 DB연동 			-->

									<tr>
										<c:forEach var="list" items="${mockScoreDetailList }">
											<c:if test="${list.mockId == mockId }"> 
												<c:if test="${list.languageType==null }">
												<td colspan="2">언어 </td>
												</c:if>
												<c:if test="${list.languageType!=null }">
												<td colspan="2">${list.languageType } </td>
												</c:if>
												<td>100</td>
												<td>${list.languageOriginalScore }</td>
												<td>200</td>
												<td>${list.languageStandardScore }</td>
												<td>3</td>
												<td>3</td>
												<td>${list.languagePercentile }</td>
												<td>
												<c:choose>
													<c:when test="${list.languagePercentile>=96 }">
														1
													</c:when>
													<c:when test="${list.languagePercentile>=89&&list.languagePercentile<96 }">
														2
													</c:when>
													<c:when test="${list.languagePercentile>=77&&list.languagePercentile<89 }">
														3
													</c:when>
													<c:when test="${list.languagePercentile>=60&&list.languagePercentile<77 }">
														4
													</c:when>
													<c:when test="${list.languagePercentile>=40&&list.languagePercentile<60 }">
														5
													</c:when>
													<c:when test="${list.languagePercentile>=23&&list.languagePercentile<40 }">
														6
													</c:when>
													<c:when test="${list.languagePercentile>=11&&list.languagePercentile<23 }">
														7
													</c:when>
													<c:when test="${list.languagePercentile>=4&&list.languagePercentile<11 }">
														8
													</c:when>
													<c:otherwise>
														9
													</c:otherwise>
												</c:choose>
												</td>
 											</c:if> 
 										</c:forEach>
									</tr>
									<tr>
										<c:forEach var="list" items="${mockScoreDetailList }">
											<c:if test="${list.mockId == mockId }"> 
												<c:if test="${list.mathType==null }">
												<td colspan="2">수리 </td>
												</c:if>
												<c:if test="${list.mathType!=null }">
												<td colspan="2">${list.mathType } </td>
												</c:if>
												<td>100</td>
												<td>${list.mathOriginalScore }</td>
												<td>200</td>
												<td>${list.mathStandardScore }</td>
												<td>3</td>
												<td>3</td>
												<td>${list.mathpercentile }</td>
												<td>
												<c:choose>
													<c:when test="${list.mathpercentile>=96 }">
														1
													</c:when>
													<c:when test="${list.mathpercentile>=89&&list.mathpercentile<96 }">
														2
													</c:when>
													<c:when test="${list.mathpercentile>=77&&list.mathpercentile<89 }">
														3
													</c:when>
													<c:when test="${list.mathpercentile>=60&&list.mathpercentile<77 }">
														4
													</c:when>
													<c:when test="${list.mathpercentile>=40&&list.mathpercentile<60 }">
														5
													</c:when>
													<c:when test="${list.mathpercentile>=23&&list.mathpercentile<40 }">
														6
													</c:when>
													<c:when test="${list.mathpercentile>=11&&list.mathpercentile<23 }">
														7
													</c:when>
													<c:when test="${list.mathpercentile>=4&&list.mathpercentile<11 }">
														8
													</c:when>
													<c:otherwise>
														9
													</c:otherwise>
												</c:choose>
												</td>
 											</c:if> 
 										</c:forEach>

									</tr>
									<tr>
										<td colspan="2">외국어</td>
										<c:forEach var="list" items="${mockScoreDetailList }">
											<c:if test="${list.mockId == mockId }"> 
												<td>100</td>
												<td>${list.englishOriginalScore }</td>
												<td>200</td>
												<td>${list.englishStandardScore }</td>
												<td>32</td>
												<td>10</td>
												<td>${list.englishpercentile }</td>
												<td>
												<c:choose>
													<c:when test="${list.englishpercentile>=96 }">
														1
													</c:when>
													<c:when test="${list.englishpercentile>=89&&list.englishpercentile<96 }">
														2
													</c:when>
													<c:when test="${list.englishpercentile>=77&&list.englishpercentile<89 }">
														3
													</c:when>
													<c:when test="${list.englishpercentile>=60&&list.englishpercentile<77 }">
														4
													</c:when>
													<c:when test="${list.englishpercentile>=40&&list.englishpercentile<60 }">
														5
													</c:when>
													<c:when test="${list.englishpercentile>=23&&list.englishpercentile<40 }">
														6
													</c:when>
													<c:when test="${list.englishpercentile>=11&&list.englishpercentile<23 }">
														7
													</c:when>
													<c:when test="${list.englishpercentile>=4&&list.englishpercentile<11 }">
														8
													</c:when>
													<c:otherwise>
														9
													</c:otherwise>
												</c:choose>
												</td>
 											</c:if> 
 										</c:forEach>
									</tr>
								
									<c:forEach items="${koreaHistroyScoreList }" var="list">
										<c:if test="${list.mockId == mockId }">
										<tr>
										<td colspan="2">한국사</td>
												<td>100</td>
												<td>${list.researchSubjectOriginalScore }</td>
												<td>200</td>
												<td>${list.researchSubjectStandardScore }</td>
												<td>32</td>
												<td>10</td>
												<td>${list.researchSubjectPercentile }</td>
												<td>
												<c:choose>
													<c:when test="${list.researchSubjectPercentile>=96 }">
														1
													</c:when>
													<c:when test="${list.researchSubjectPercentile>=89&&list.researchSubjectPercentile<96 }">
														2
													</c:when>
													<c:when test="${list.researchSubjectPercentile>=77&&list.researchSubjectPercentile<89 }">
														3
													</c:when>
													<c:when test="${list.researchSubjectPercentile>=60&&list.researchSubjectPercentile<77 }">
														4
													</c:when>
													<c:when test="${list.researchSubjectPercentile>=40&&list.researchSubjectPercentile<60 }">
														5
													</c:when>
													<c:when test="${list.researchSubjectPercentile>=23&&list.researchSubjectPercentile<40 }">
														6
													</c:when>
													<c:when test="${list.researchSubjectPercentile>=11&&list.researchSubjectPercentile<23 }">
														7
													</c:when>
													<c:when test="${list.researchSubjectPercentile>=4&&list.researchSubjectPercentile<11 }">
														8
													</c:when>
													<c:otherwise>
														9
													</c:otherwise>
												</c:choose>
												</td>
 										</tr>
										</c:if>
									
									</c:forEach>
						
									<tr>
										<td rowspan="2">탐구영역</td>
										<c:forEach items="${researchScoreList }" var="list">
											<c:if test="${list.memberId == studentId }">
												<c:forEach items="${researchSubjectList }" var="list1">
													<c:if test="${list1.researchSubjectId == list.researchSubjectId1  }">
														<td>${list1.researchSubjectName }</td>
													</c:if>
												
												</c:forEach>
												<td>50</td>
												<td>${list.researchSubjectOriginalScore1 }</td>
												<td>200</td>
												<td>${list.researchSubjectStandardScore1 }</td>
												<td>32</td>
												<td>10</td>
												<td>${list.researchSubjectPercentile1 }</td>
												<td>
												<c:choose>
													<c:when test="${list.researchSubjectPercentile1>=96 }">
														1
													</c:when>
													<c:when test="${list.researchSubjectPercentile1>=89&&list.researchSubjectPercentile1<96 }">
														2
													</c:when>
													<c:when test="${list.researchSubjectPercentile1>=77&&list.researchSubjectPercentile1<89 }">
														3
													</c:when>
													<c:when test="${list.researchSubjectPercentile1>=60&&list.researchSubjectPercentile1<77 }">
														4
													</c:when>
													<c:when test="${list.researchSubjectPercentile1>=40&&list.researchSubjectPercentile1<60 }">
														5
													</c:when>
													<c:when test="${list.researchSubjectPercentile1>=23&&list.researchSubjectPercentile1<40 }">
														6
													</c:when>
													<c:when test="${list.researchSubjectPercentile1>=11&&list.researchSubjectPercentile1<23 }">
														7
													</c:when>
													<c:when test="${list.researchSubjectPercentile1>=4&&list.researchSubjectPercentile1<11 }">
														8
													</c:when>
													<c:otherwise>
														9
													</c:otherwise>
												</c:choose>
												</td>
											</c:if>
										</c:forEach>
									</tr>
									<tr>
										<c:forEach items="${researchScoreList }" var="list">
											<c:if test="${list.memberId == studentId }">
												<c:forEach items="${researchSubjectList }" var="list1">
													<c:if test="${list1.researchSubjectId == list.researchSubjectId2  }">
														<td>${list1.researchSubjectName }</td>
													</c:if>
												
												</c:forEach>
												<td>50</td>
												<td>${list.researchSubjectOriginalScore2 }</td>
												<td>200</td>
												<td>${list.researchSubjectStandardScore2 }</td>
												<td>320</td>
												<td>100</td>
												<td>${list.researchSubjectPercentile2 }</td>
												<td>
												<c:choose>
													<c:when test="${list.researchSubjectPercentile2>=96 }">
														1
													</c:when>
													<c:when test="${list.researchSubjectPercentile2>=89&&list.researchSubjectPercentile2<96 }">
														2
													</c:when>
													<c:when test="${list.researchSubjectPercentile2>=77&&list.researchSubjectPercentile2<89 }">
														3
													</c:when>
													<c:when test="${list.researchSubjectPercentile2>=60&&list.researchSubjectPercentile2<77 }">
														4
													</c:when>
													<c:when test="${list.researchSubjectPercentile2>=40&&list.researchSubjectPercentile2<60 }">
														5
													</c:when>
													<c:when test="${list.researchSubjectPercentile2>=23&&list.researchSubjectPercentile2<40 }">
														6
													</c:when>
													<c:when test="${list.researchSubjectPercentile2>=11&&list.researchSubjectPercentile2<23 }">
														7
													</c:when>
													<c:when test="${list.researchSubjectPercentile2>=4&&list.researchSubjectPercentile2<11 }">
														8
													</c:when>
													<c:otherwise>
														9
													</c:otherwise>
												</c:choose>
												</td>
											</c:if>
										</c:forEach>
									</tr>
									<!-- 제2외국어 -->
									<c:forEach items="${mockScoreDetailList }" var="list">
										<c:if test="${list.mockId == mockId }">
											<c:if test="${(!(list.languageId eq 'secondLang00'))&&(list.languageId!=null)}">
												<tr>
													<td>제2외국어</td>
													<td>${list.languageSubjectName }</td>
													<td>100</td>
													<td>${list.secondLanguageOriginalScore }</td>
													<td>200</td>
													<td>${list.secondLanguageStandardScore }</td>
													<td>32</td>
													<td>10</td>
													<td>${list.secondLanguagePercentile }</td>
													<td>
													<c:choose>
													<c:when test="${list.secondLanguagePercentile>=96 }">
														1
													</c:when>
													<c:when test="${list.secondLanguagePercentile>=89&&list.secondLanguagePercentile<96 }">
														2
													</c:when>
													<c:when test="${list.secondLanguagePercentile>=77&&list.secondLanguagePercentile<89 }">
														3
													</c:when>
													<c:when test="${list.secondLanguagePercentile>=60&&list.secondLanguagePercentile<77 }">
														4
													</c:when>
													<c:when test="${list.secondLanguagePercentile>=40&&list.secondLanguagePercentile<60 }">
														5
													</c:when>
													<c:when test="${list.secondLanguagePercentile>=23&&list.secondLanguagePercentile<40 }">
														6
													</c:when>
													<c:when test="${list.secondLanguagePercentile>=11&&list.secondLanguagePercentile<23 }">
														7
													</c:when>
													<c:when test="${list.secondLanguagePercentile>=4&&list.secondLanguagePercentile<11 }">
														8
													</c:when>
													<c:otherwise>
														9
													</c:otherwise>
												</c:choose>
												</td>
 												</tr>
											</c:if>
										</c:if>
									
									</c:forEach>

			
								</tbody>
							</table>
						</div>
					</div>
						<!-- Chart JS -->
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">과목별 비교분석 차트 - 언어</div>
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
                                	<c:forEach var="list" items="${mockList }">
                                		<p id="mockScore<%=a++ %>"></p>
                                	</c:forEach>
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
                                	<c:forEach var="list" items="${mockList }">
                                		<p id="mockScore1<%=b++ %>"></p>
                                	</c:forEach>
                                </div>
                            </div>
                            <div>
                            	<div>
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
