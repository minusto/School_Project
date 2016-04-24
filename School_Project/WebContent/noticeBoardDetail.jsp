<%@page import="kosta.model.NoticeBoard"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%
	request.setCharacterEncoding("utf-8");
	int noticeBoardNum = 0;
	String num = request.getParameter("noticeBoardNum");
	if(num != null) {
		noticeBoardNum = Integer.parseInt(num);
	}
	
	SchoolService service=SchoolService.getInstance();
	
	service.addHitcountService(noticeBoardNum);
	
	NoticeBoard detail = service.noticeBoardDetailService(noticeBoardNum);
 	request.setAttribute("detail", detail);
	


%>
<!DOCTYPE html>
<html>

<head>
<title>빈칸</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->

<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'rel='stylesheet' type='text/css'>
<!-- CSS Libs -->

<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
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
<style type="text/css">



tbody th{
	background: rgba(38, 185, 154, 0.11);
	color: black;
}

</style>
</head>

<body class="flat-blue">
					<div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">공지사항 상세보기</div>
                                    </div>
                                </div>
                                		<div class="card-body table-responsive col-lg-8">
                                		<!-- Table -->
                                		<table class="table table-bordered">
												<tr height="30">
													<th width="150">글번호</th>
													<td width="150">${detail.noticeBoardNum}</td>
													<th width="150">조회수</th>
													<td width="150">${detail.noticeBoardHitcount}</td>
												</tr>
												<tr height="30">
													<th width="150">작성자</th>
													<td width="150">${detail.noticeBoardTitle }</td>
													<th width="150">작성일</th>
													<td width="150">
														<fmt:formatDate value="${detail.noticeBoardDate}" pattern="yyyy-MM-dd"/>
													</td>
												</tr>
												<tr height="30">
													<th width="150">제목</th>
													<td colspan="3">${detail.noticeBoardTitle }</td>
												</tr>
												<tr height="30">
													<th width="150">파일</th>
													<td colspan="3">
														<a href="download.jsp?filename=${detail.noticeBoardFileName}">${detail.noticeBoardFileName}</a>		
													</td>
												</tr>
												<tr height="150">
													<td colspan="4">${detail.noticeBoardContent}</td>
												</tr>
												<!--  -->
<!-- 												<tr height="30"> -->
<!-- 													<td colspan="4" align="center"> -->
<!-- 														<a href="#"><button class="btn btn-primary">수정</button></a> -->
<!-- 														<a href="#"><button class="btn btn-primary">삭제</button></a> -->
<!-- 													</td> -->
<!-- 												</tr> -->
											</table>
                                		<button class="btn btn-primary" onclick="javascript :history.back(); location.reload();">목록보기</button>
                                	

                                		
                 
									
				
								</div>

                            </div>
                        </div>
                    </div>
	
</body>

</html>
​
