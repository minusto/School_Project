<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="logic/schoolAdminSessionCheck.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String insert=request.getParameter("insert");
	request.setAttribute("insert", insert);
%>
<!DOCTYPE html>
<html>
<head>
<title>빈칸</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->
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
</head>

<body class="flat-blue">
<input type="hidden" id="insertOk" value="${insert }">
   <div class="app-container">
      <div class="row content-container">
         <jsp:include page="schoolAdminMenu.jsp"/>
         <!-- 메인 컨텐츠 -->
         <div class="container-fluid">
            <div class="side-body padding-top" id="content">
               <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">학교등록</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form class="form-horizontal" action="logic/insertSchoolOk.jsp" method="post">
                                    <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">학교ID</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="schoolId" placeholder="schoolId">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">학교명</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="schoolName" placeholder="schoolName">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">주소</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="schoolAddress" placeholder="schoolAddress">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">전화번호</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="schoolTel" placeholder="schoolTel">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-default">등록</button>
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
   <script type="text/javascript">
   	$(window.onload=function(){
   		var insertOk=$("#insertOk").attr('value');
   		if(insertOk=='fail'){
   			alert("관리자에게 문의하세요");
   		}
   	})
   </script>
</body>

</html>
​