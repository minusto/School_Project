<%@page import="kosta.model.SchoolService"%>
<%@page import="kosta.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("UTF-8");
	String id=(String)session.getAttribute("id");
	SchoolService service=SchoolService.getInstance();
	Member member=service.memberDetailService(id);
	request.setAttribute("member", member);
	
	String modCheck=request.getParameter("modCheck");
	request.setAttribute("modCheck", modCheck);

%>
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
<input type="hidden" id="modCheck" value="${modCheck }">
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li class="active"><h3>&nbsp;&nbsp;&nbsp;비밀번호 변경</h3></li>
                        </ol>
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-th icon"></i>
                        </button>
                    </div>
                    
                </div>
            </nav>
            
            <!-- 메인 컨텐츠 -->
         <div class="container-fluid">
				<div class="side-body padding-top" id="content">
					<div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"><b>개인정보 보안을 위해 최초 로그인시 비밀번호를 반드시 변경하셔야 됩니다</b></div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form class="form-horizontal" action="logic/modPasswordOk.jsp?id=${member.memberId }" method="post">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">사용자ID</label>
                                            <div class="col-sm-5">
                                                <label for="inputEmail3" class="col-sm-2 control-label">${member.memberId }</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">이름</label>
                                            <div class="col-sm-5">
                                                <label for="inputEmail3" class="col-sm-2 control-label">${member.memberName }</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">비밀번호</label>
                                            <div class="col-sm-5">
                                                <input type="password" class="form-control" name="modPassword" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">비밀번호확인</label>
                                            <div class="col-sm-5">
                                                <input type="password" class="form-control" name="modPasswordCheck" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-default">비밀번호 변경</button>
                                            </div>
                                        </div>
                                        
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
            <!-- 메인 컨텐츠 끝 -->
             
            
            
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
            <script type="text/javascript">

            $(window.onload=function(){
            	var modCheck=$("#modCheck").attr('value');
        		if(modCheck=="fail"){
        			alert("비밀번호 및 비밀번호확인 칸을 동일하게 입력하세요");
        		}
            })
            </script>
</body>

</html>
​