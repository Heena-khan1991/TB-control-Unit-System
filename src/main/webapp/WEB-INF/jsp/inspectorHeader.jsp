<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header class="main-header " id="header">
				<nav class="navbar navbar-static-top navbar-expand-lg">
					<!-- Sidebar toggle button -->
					<button id="sidebar-toggler" class="sidebar-toggle">
						<span class="sr-only">Toggle navigation</span>
					</button>
					<!-- search form -->
					<div class="search-form d-none  d-lg-inline-block  text-center">
						<!-- <div class="float-left"> <img src="assets/img/1.gif" width="200" height="200"/></div>-->
						<span class="newarabfnt">وحدة مكافحة السل</span> <br /> <span
							class="head_eng"> TB Control Unit</span>
					</div>
					<div class="navbar-right ">
						<ul class="nav navbar-nav">
							<li class="right-sidebar-in right-sidebar-2-menu"><i
								class=""></i>AR</li>
							<li class="dropdown notifications-menu custom-dropdown">
								<button
									class="dropdown-toggle notify-toggler custom-dropdown-toggler"  onclick = "logout()">
									<i class="mdi mdi-power"></i>
								</button>
							</li>

							<!-- User Account -->
							<li class="dropdown user-menu">
								<button href="#" class="dropdown-toggle nav-link"
									data-toggle="dropdown">

									<span class="d-none d-lg-inline-block" id="nameHeader1"></span> <img
										src="assets/img/33.png" class="user-image" alt="User Image" />
								</button>
								<ul class="dropdown-menu dropdown-menu-right">
									<!-- User image -->
									<li class="dropdown-header">

										<div class="text-center">
											<!-- d-inline-block-->
											<i class="mdi mdi-account"></i> My Profile
										</div>
									</li>

									<li class="px-3  py-1 font-weight-normal font-size-14"><span
										class="text-dark float-left">Name : </span> <span id="nameHeader2"></span></li>
									<li class="px-3  py-1  font-weight-normal font-size-14"><span
										class="text-dark float-left">Hospital :</span> <span id="locHeader1"></span></li>
									<!-- <li class="px-3  py-1  font-weight-normal font-size-14"><span
										class="text-dark float-left">Department : </span> TB control</li> -->
									<li class="px-3  py-1  font-weight-normal font-size-14"><span
										class="text-dark float-left">Occupation : </span>
										<span id="role"></span></li>
									<!-- <li class="px-3  py-1  font-weight-normal font-size-14"><span
										class="text-dark float-left">IP Address : </span> 195.34.54.23
									</li> -->
									<!--<li>Name :   Rekha Anil                  </li>
						<li class="right-sidebar-in">
                        <a href="javascript:0"> <i class="mdi mdi-settings"></i> Setting </a>					  </li>-->

									<li class="dropdown-footer"><a href="${pageContext.request.contextPath}/login" data-toggle="modal"
									data-target="#logoutModal"> <i
											class="mdi mdi-logout"></i> Log Out
									</a></li>
								</ul>
							</li>

						</ul>
					</div>
				</nav>
				<div class="bg-new text-white p-2 breadcrumb-wrapper">
					<h5 id="locHeader">
						<div class="float-right" id="nameHeader"></div>
					</h5>
				</div>
			</header>
			
</body>
</html>