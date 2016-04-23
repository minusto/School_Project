<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="logic/studentSessionCheck.jsp" %>
<%
	request.setAttribute("path", "진학시뮬레이션 > 수시시뮬레이션");
%>
<!DOCTYPE html>
<html>

<head>
    <title>수시 시뮬레이션</title>
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
            <jsp:include page="studentMenu.jsp"/>
<!--			메인 컨텐츠 -->
            <div class="container-fluid">
                <div class="side-body padding-top">
					<div id="compareToHopUniversityTotalExam" class="row">
	                    <div class="table-responsive col-md-8 col-md-offset-2">
                    	<h3>목표대학과의 비교</h3>
	                    	<table id="hopeUniversityTable" class="table table-bordered">
	                    		<tr>
	                    			<th>현재 내신 평균</th>
	                    			<th>목표대학</th>
	                    			<th>목표학과</th>
	                    			<th>수시 커트라인</th>
	                    			<th>점수 차이</th>
	                    		</tr>
	                    		<tr>
	                    			<td>4.3</td>
	                    			<td><a id="hopeUniversityName" href="universityEntranceInfo.jsp">서울대학교</a></td><!-- 목표대학 목표학과의 상세 페이지를 보여준다. -->
	                    			<td><a id="hopeUniversityMajor" href="universityEntranceInfo.jsp">국어국문학과</a></td>
	                    			<td>3.9</td>
	                    			<td>0.4</td>
	                    		</tr>
	                    	</table>
	                    </div>
                    </div>
                    
                    <div id="recommendContainer" class="row">
                    	<div class="col-md-8 col-md-offset-2">
                    		<h3>추천 대학</h3>
                    		<div id="recommendUniversityDiv">
                    			<ul class="list-unstyled list-inline">
                    				<li id="firstRecommend"><a href="universityEntranceInfo.jsp">
                    					<img id="SeoulUniversityMark" alt="서울대학교마크" src="img/SeoulUniversityMark.jpg">
                    					<span id="firstRecommendUniversityName" class="recommendUniversityName">서울대학교</span>
                    					<span id="firstRecommendMajorName" class="recommendMajorName">국어국문학과</span>
                    				</a></li>
                    				<li id="secondRecommend"><a href="#">
                    					<img id="YonseiUniversityMark" alt="연세대학교마크" src="img/YonseiUniversityMark.jpg">
                    					<span id="secondRecommendUniversityName" class="recommendUniversityName">연세대학교</span>
                    					<span id="secondRecommendMajorName" class="recommendMajorName">국어국문학과</span>
                    				</a></li>
                    				<li id="thirdRecommend"><a href="#">
                    					<img id="KoreaUniversityMark" alt="고려대학교마크" src="img/KoreaUniversityMark.jpg">
                    					<span id="thirdRecommendUniversityName" class="recommendUniversityName">고려대학교</span>
                    					<span id="thirdRecommendMajorName" class="recommendMajorName">국어국문학과</span>
                    				</a></li>
                    			</ul>
                    		</div>
                    	</div>
					</div>
                    
					<div class="row">
                    	<div class="col-md-8 col-md-offset-2">
                    		<h3>대학 검색</h3>
                    		<div>
                    			<div id="searchUniversity" class="checkbox-round">
                    				<form id="searchUniversityForm" action="studentTotalExamSimulation.jsp" method="post">
                    					<input type="checkbox" id="selectUniversityName" name="area">
                    						<label id="la" for="selectUniversityName">학교이름</label>
                    					<input type="checkbox" id="selectUniversityMajor" name="area">
                    						<label id="la" for="selectUniversityMajor">학과이름</label>
                    					<input type="text" name="searchKey" id="searchKey" size="20"/>
                    					<input type="submit" value="검색" id="submitButton"/>
                    				</form>	
                    			</div>
                    			<div id="searchUniversityResult" class="row">
	                    			<div class="table-responsive col-md-12">
	                    				<table id="searchResultTable" class="table table-bordered table-striped">
	                    					<tr>
	                    						<th>학교 이름</th>
	                    						<th>학과 이름</th>
	                    						<th>수시 커트라인</th>
	                    						<th>모집인원</th>
	                    					</tr>
	                    					<!-- 검색된리스트가 들어갈 부분 -->
	                    					<tr>
	                    						<td>
	                    							<img class="tableUniversityMark" alt="서울대학교마크" src="img/SeoulUniversityMark.jpg">
	                    							<a id="hopeUniversityName" href="universityEntranceInfo.jsp">서울대학교</a>
	                    						</td>
	                    						<td><a id="hopeUniversityMajor" href="universityEntranceInfo.jsp">국어국문학과</a></td>
	                    						<td>3.9</td>
	                    						<td>10</td>
	                    					</tr>
	                    					<tr>
	                    						<td>
	                    							<img class="tableUniversityMark" alt="서울대학교마크" src="img/SeoulUniversityMark.jpg">
	                    							<a id="hopeUniversityName" href="universityEntranceInfo.jsp">서울대학교</a>
	                    						</td>
	                    						<td><a id="hopeUniversityMajor" href="universityEntranceInfo.jsp">국어국문학과</a></td>
	                    						<td>3.9</td>
	                    						<td>10</td>
	                    					</tr>
	                    					<!-- 여기까지 -->
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