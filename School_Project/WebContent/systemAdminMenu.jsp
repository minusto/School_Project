<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-default navbar-fixed-top navbar-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-expand-toggle">
				<i class="fa fa-bars icon"></i>
			</button>
			<ol class="breadcrumb navbar-breadcrumb">
				<li class="active">${path }</li>
			</ol>
			<button type="button"
				class="navbar-right-expand-toggle pull-right visible-xs">
				<i class="fa fa-th icon"></i>
			</button>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<button type="button"
				class="navbar-right-expand-toggle pull-right visible-xs">
				<i class="fa fa-times icon"></i>
			</button>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false"><i
					class="fa fa-comments-o"></i></a>
				<ul class="dropdown-menu animated fadeInDown">
					<li class="title">알림 <span class="badge pull-right">0</span>
					</li>
					<li class="message">알림 없음</li>
				</ul></li>

			<li class="dropdown profile"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false">시스템관리자<span
					class="caret"></span></a>
				<ul class="dropdown-menu animated fadeInDown">
					<li class="profile-img"><img
						src="img/profile/picjumbo.com_HNCK4153_resize.jpg"
						class="profile-img"></li>
					<li>
						<div class="profile-info">
							<h4 class="username">${systemAdmin.systemAdminId }</h4>
							<p>system@korea.com</p>
							<div class="btn-group margin-bottom-2x" role="group">
								<button type="button" class="btn btn-default">
									<i class="fa fa-user"></i> 프로필
								</button>
								<button type="button" class="btn btn-default"
									onclick="location.href='logic/logoutOk.jsp'">
									<i class="fa fa-sign-out" onclick="location.href='logic/logoutOk.jsp'"></i> 로그아웃
								</button>
							</div>
						</div>
					</li>
				</ul></li>
		</ul>
	</div>
</nav>
<div class="side-menu sidebar-inverse">
	<nav class="navbar navbar-default" role="navigation">
		<div class="side-menu-container">
			<div class="navbar-header">
				<a class="navbar-brand" href="systemAdminMain.jsp">
					<div class="icon fa fa-book"></div>
					<div class="title">학사관리</div>
				</a>
				<button type="button"
					class="navbar-expand-toggle pull-right visible-xs">
					<i class="fa fa-times icon"></i>
				</button>
			</div>
			<ul class="nav navbar-nav">
				<li class="panel panel-default dropdown"><a
					data-toggle="collapse" href="#dropdown-element"> <span
						class="icon fa fa-university"></span><span class="title">학교관리</span>
				</a> <!-- Dropdown level 1 -->
					<div id="dropdown-element" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="nav navbar-nav">
								<li><a href="systemInsertSchoolAdminForm.jsp">학교관리자 등록</a></li>
								<li><a href="schoolAdminList.jsp">학교관리자 목록</a></li>
							</ul>
						</div>
					</div></li>
			</ul>
		</div>
	</nav>
</div>
