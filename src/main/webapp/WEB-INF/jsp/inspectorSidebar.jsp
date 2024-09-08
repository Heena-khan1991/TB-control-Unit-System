<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<aside class="left-sidebar bg-sidebar">
			<div id="sidebar" class="sidebar ">
				<!-- Aplication Brand -->
				<div class="app-brand">
					<a href="#" title="Dashboard"> <img src="assets/img/LogoN1.png">
					</a>
				</div>
				<div class="text-center mt-1">
					<img src="assets/img/55-3.jpg" />
				</div>
				<!-- begin sidebar scrollbar -->
				<div class="" data-simplebar style="height: 100%;">
					<!-- sidebar menu -->
					<ul class=" nav sidebar-inner" id="sidebar-menu">
						<!--<li class="has-sub ">
                  <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#dashboard"
                    aria-expanded="false" aria-controls="dashboard">
                    <i class="mdi mdi-folder-multiple-outline"></i>
                    <span class="nav-text">Masters</span> <b class="caret"></b>
                  </a>

                  <ul class="collapse " id="dashboard" data-parent="#sidebar-menu">
                    <div class="sub-menu">
                      <li class="">
                        <a class="sidenav-item-link" href="index.html">
                          <span class="nav-text">Hospital List</span>
                        </a>
                      </li>

                      <li class="">
                        <a class="sidenav-item-link" href="analytics.html">
                          <span class="nav-text">Department List</span>
                         
                        </a>
                      </li>
					  <li class="">
                        <a class="sidenav-item-link" href="index.html">
                          <span class="nav-text">Sector Type</span>
                        </a>
                      </li>

                      <li class="">
                        <a class="sidenav-item-link" href="analytics.html">
                          <span class="nav-text">Wards</span>
                         
                        </a>
                      </li>
					  <li class="">
                        <a class="sidenav-item-link" href="analytics.html">
                          <span class="nav-text">Building Mapping</span>
                         
                        </a>
                      </li>
                    </div>
                  </ul>
                </li>-->



						<!-- <li class="section-title">
                  UI Elements
                </li> -->

						<li class=""><a class="sidenav-item-link" href="inspector">
								<i class="mdi mdi-account-box" aria-hidden="true"></i> <span
								class="nav-text">My Notification</span>
								<b class="caret"></b>
						</a></li>
						<li class=""><a class="sidenav-item-link" href="appointment">
								<i class="mdi mdi-book-multiple" aria-hidden="true"></i> <span
								class="nav-text">Appointment</span>
								<b class="caret"></b>
						</a></li>
						<!-- 	<li class=" "><a class="sidenav-item-link"
							href="hospital_settings.html"> <i class="mdi mdi-bell-ring "></i>
								mdi-file-account <span class="nav-text">All
									Notification</span> <b class="caret"></b>
						</a> <ul class="collapse " id="icons" data-parent="#sidebar-menu">
                    <div class="sub-menu">
                      <li class="">
                        <a class="sidenav-item-link" href="material-icon.html">
                          <span class="nav-text">Speciality</span>
                        </a>
                      </li>

                      <li class="">
                        <a class="sidenav-item-link" href="flag-icon.html">
                          <span class="nav-text">Sub speciality</span>
                        </a>
                      </li>
                    </div>
                  </ul></li> -->

						<!--
                <li class="active expand ">
                  <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#forms"
                    aria-expanded="false" aria-controls="forms">
                    <i class="mdi mdi-camera-account"></i>
                    <span class="nav-text">Users setting</span> <b class="caret"></b>
                  </a>

                  <ul class="collapse show" id="forms" data-parent="#sidebar-menu">
                    <div class="sub-menu">
                      <li class="active">
                        <a class="sidenav-item-link" href="new_user.html">
                          <span class="nav-text">New Users <i class="mdi mdi-chevron-double-right"></i></span>
                        </a>
                      </li>

                      <li class="">
                        <a class="sidenav-item-link" href="user_index.html">
                          <span class="nav-text">Users Index</span>
                        </a>
                      </li>

                      
                      
                    </div>
                  </ul>
				  
				  
				  
                </li>
-->
						<!-- <li class=" "><a class="sidenav-item-link"
							href="contacts_meeting.html"> <i
								class="mdi mdi-account-group "></i> mdi-file-account <span
								class="nav-text">Contacts Meeting</span> <b class="caret"></b>
						</a></li>
						<li class=" "><a class="sidenav-item-link" href=""> <i
								class="mdi mdi-account-clock"></i> mdi-file-account <span
								class="nav-text">Pending Contacts</span> <b class="caret"></b>
						</a></li> -->

					</ul>
				</div>


			</div>
		</aside>
		<script src="assets/plugins/jquery/jquery.min.js"></script>
		<script>
			jQuery(function ($) {
			    $("#sidebar-menu a")
			        .click(function(e) {
			            var link = $(this);
			 
			            var item = link.parent("li");
			            if (item.hasClass("active")) {
			                item.removeClass("active").children("a").removeClass("active");
			            } else {
			                item.addClass("active").children("a").addClass("active");
			            }
			 
			            if (item.children("ul").length > 0) {
			                var href = link.attr("href");
			                link.attr("href", "#");
			                setTimeout(function () { 
			                    link.attr("href", href);
			                }, 300);
			                e.preventDefault();
			            }
			        })
			        .each(function() {
			            var link = $(this);
			            if (link.get(0).href === location.href) {
			                link.addClass("active").parents("li").addClass("active");
			                return false;
			            }
			        });
			});
		</script>
</body>
</html>