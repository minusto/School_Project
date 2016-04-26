<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css"
	href="lib/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="lib/css/select2.min.css">
<!-- CSS App -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/themes/flat-blue.css">
</head>

<body class="flat-blue">
			 <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">게시판 글쓰기</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form class="form-inline">
                                        <div class="form-group">
                                            <label for="exampleInputName2">제목</label>
                                            <input type="text" class="form-control" id="exampleInputName2" placeholder="title">
                                            <label for="exampleInputEmail2">파일첨부</label>
                                        </div>
                                        <div class="form-group">
                                            <input type="file" id="exampleInputFile">
                                        </div>
                                        <div class="sub-title">글 공간</div>
                                    <div>
                                        <textarea class="form-control" rows="12" cols="170" ></textarea>
                                    </div>
                                    <br><br>
                                    <button type="button" class="btn btn-primary">등록</button>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            		<button type="button" class="btn btn-primary">취소 </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
	
</body>

</html>
​
