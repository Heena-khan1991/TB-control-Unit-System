<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword" content="PCIS,kuwait">
<title>TB unit</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<!--  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">-->

<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap_${lang}.min.css"
	rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="css/style_${lang}.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<div id="login-page">
		<div class="container">


			<div class=" form-login2">


				<br />
				<br />


				<div class="logo">
					<!--<img src="img/MOH_Logo120.png" class="newlogo">-->

					<div class=" imgnew">
						<img src="img/MOH_Logo120.png" class="newlogo">
					</div>

					<span class="logohd"><b>TB Control Unit System <br>
						<span class="headfont">وحدة مكافحة الدرن</span>
					</b></span>
					<!--<img src="img/logo1.png"  class="newlogo" style="border: 1px dotted #388ddf;">-->


					<!--PCIS-Clinic Statistics</h1>-->
				</div>


				<!--	 <br/><br/>-->


				<div class="form-login">


					<h2 class="form-login-heading label-new ">
						<i class="fa fa-lg fa-fw fa-user"></i> <b>Sign In</b>
						<!--<hr style="margin-bottom:0px"/>-->
					</h2>
					<div class="login-wrap">
						<span class="pull-right"> <a href="login_ar.html"
							class="langcls">Arabic</a></span> <br>
						<br> <input type="text" id="username" class="form-control"
							placeholder="UserName" autofocus> <span id="userIdBlank"
							style="display: none;"><font color="red"><fmt:message
									key="label.userIdBlank" /></font></span> <span id="invaliduser"
							style="display: none;"> <font color="red"> <b><fmt:message
										key="label.invaliduser" /></b></font></span> <br>
						<div class=" has-feedback">
							<input type="password" id="pwd" class="form-control"
								placeholder="Password"> <span id="togglePassword"
								class="fa fa-eye form-control-feedback" aria-hidden="true"></span>
						</div>
						<span id="PwdBlank" style="display: none;"><font
							color="red"><fmt:message key="label.PwdBlank" /></font></span> <span
							id="invalidpwd" style="display: none;"> <font color="red">
								<b><fmt:message key="label.invalidpwd" /></b>
						</font></span>




						<!-- <select name="select" class="form-control"><option>Select Location</option></select>-->
						<label class="checkbox"> <!-- <input type="checkbox" value="remember-me"> Remember me-->
							<span class="mb-10 pull-right"> <a
								href="${pageContext.request.contextPath}/forgotpass"> <b>Change
										Password?</b></a></span></label>

						<button class="btn btn-primary btn-block" type="button"
							onClick="validateform()">
							<i class="fa fa-lock"></i> &nbsp;SIGN IN
						</button>
						<span id="credentialError" style="display: none;"> <font
							color="red"> <b><fmt:message key="label.userAuth" /></b></font></span>
						<span id="noAccess" style="display: none;"> <font
							color="red"> <b><fmt:message key="user.unavailable" /></b></font></span>
						<span id="userAuth"> <font color="red"> <b><fmt:message
										key="label.userAuth" /></b></font></span> <span id="usernotregist"
							style="display: none;"> <font color="red"> <b><fmt:message
										key="user.userNotRegistered" /></b></font></span>
						<hr style="margin-bottom: 10px">

						<div class="registration">
							Don't have an account?<a
								href="${pageContext.request.contextPath}/registerUser"
								class="text-center"> <b>New Registration</b></a>
						</div>

					</div>

				</div>

			</div>
		</div>
	</div>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="lib/app.js" type="text/javascript"></script>
	<!--BACKSTRETCH-->
	<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
	<script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>

	<script type="text/javascript">
    $.backstretch("img/7.jpg", {
      speed: 500
    });
	
    $(document).ready(function(){
 
 	   var lang = '<%=response.getLocale().getLanguage()%>';
           var context = '${pageContext.request.contextPath}';
 	   var myDate = new Date();
 	  $('#userLogged').hide();
	    $('#userAuth').hide();
			$('#userIdBlank').hide();
			$('#invaliduser').hide();
			$('#PwdBlank').hide();
			$('#invalidPwd').hide();
			$('#credentialError').hide();
			$('#noAccess').hide();
			$('#usernotregist').hide();
			$("#invaliduser").hide();
			$("#invalidpwd").hide(); 
 			if (lang == 'en') {
 				$('#arabic').show();
 				$('#english').hide();
 			} else {
 				$('#arabic').hide();
 				$('#english').show();
 			}
 			$('#arabic').click(function() {
 				$(this).hide();
 				$('#english').show();
 			});
 			$('#english').click(function() {
 				$(this).hide();
 				$('#arabic').show();
 			});
 			
 			$.ajax({
 					type : "POST",
 					url : "getADuser",
 					contentType : "application/json",
 					crossDomain : true,
 					success : function(response) {
 						var aduser = response;																	
 						if (aduser != "NA") {
 							var email=aduser+"@moh.gov.kw";
 							var myJSONObject =JSON.stringify({"username": email,"password":""});
 							$.ajax({
 								type : "POST",
 								url : context+"/postgetResponse?method=loginEmail",
 								contentType : "application/json",
 								crossDomain : true,
 								data : myJSONObject,
 									success: function (datahere) {
           		                    	var response = JSON.parse(JSON.stringify(datahere));	
           		                    	 if(response.code=="1"){           		                    		 
           		                    	 sessionStorage.setItem("tbcid", response.result);
           		                    	 sessionStorage.setItem("type", response.type);
           		                    	 var usernameUpper = response.type.toUpperCase();
           		                    	 sessionStorage.setItem("username", usernameUpper);
           		              		var myJSONObject =JSON.stringify({"usercd":sessionStorage.getItem('username')});	
           		         	      $.ajax({
           		                       type: "POST",
           		                       url:context+"/apiResponse?method=getuserinfo",
           		        				contentType : "application/json",
           		        				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
           		        				crossDomain : true,
           		        				data:myJSONObject,	
           		        				dataType : "json",		
           		                        success: function (datahere) {			                 
           		                       	    var response = JSON.parse(JSON.stringify(datahere));	
           		                             sessionStorage.setItem("namear", response.namear);
           		                             sessionStorage.setItem("nameen", response.nameen);
           		                             sessionStorage.setItem("locar", response.locnamear);
           		                             sessionStorage.setItem("locen", response.locnameen);
           		                             sessionStorage.setItem("roleen", response.rolenameen);
           		                             sessionStorage.setItem("rolear", response.rolenamear);
           		                          
           		                            if(response.rolecode==1){
           		                          	 window.location = context+'/admin';
           		                          	 }
           		                            if(response.rolecode==3 && response.loctype==6){
           		                        	 window.location =context+'/newNotification';
           		                          	 } 
           		                 
           		                          if(response.rolecode==2){
           		                        	window.location = context+'/supervisor';
           		                          	 }
           		                        },
           		                     error : function(jqXHR, textStatus, errorThrown) {
           		        	 				
           		        	 				if (jqXHR.status == "401"){
           		        	 					
           		        	 				   
           		        	 				    }
           		        	 			}
           		                 });
           		        			
           		                    	 
           		                   }
           		                    	 if(response.code==-2){
           		                    		$('#credentialError').show(); 
                                                                 $('#noAccess').hide(); 
           		                    	 }
           		                    	  if(response.code==-3){
           		                    		$('#noAccess').show();
                                                               $('#credentialError').hide();  
           		                    	 }
           		                    	  if(response.code==-4){
           		                    		$('#noAccess').hide();
                                                               $('#credentialError').hide(); 
                                             $('#usernotregist').show();                   
           		                    	 }
										},
										error : function(jqXHR,	textStatus, errorThrown) {
											$('#credentialError').show();
										}
									});		
 								}
 								
 	 
 							},
 						error : function(jqXHR, textStatus, errorThrown) {
							}
 						});
 					
    });
  </script>
	<script type="text/javascript">
		var context = "${pageContext.request.contextPath}"
		var language = "${pageContext.response.locale.language}"
			$("#pwd").keypress(function(event) {
                             $('#PwdBlank').hide(); 
				if (event.keyCode === 13) {
					var username = $('#username').val();
					var pwd = $('#pwd').val();
					var usernameUpper = username.toUpperCase();
					validateform();
				}
			});
			
			$("#username").keypress(function(event) {
                             $('#userIdBlank').hide(); 
				var username = $('#username').val();
				var usernameUpper = username.toUpperCase();		
				var pwd = $('#pwd').val();
				if(usernameUpper!=null && pwd!=null && usernameUpper!='' && pwd!='' ){
				if (event.keyCode === 13) {
					
					validateform();
				}
				}
			});
		
		
		
		function validateform() {
			var userName = "";
			var pwd = "";
			var username = $('#username').val();
			var pwd = $('#pwd').val();
			var usernameUpper = username.toUpperCase();
			if (username == null || username == '') {
			
				 $('#userIdBlank').show(); 
				event.preventDefault();
			}
			if (pwd == null || pwd == '') {
				 $('#PwdBlank').show(); 
				event.preventDefault();
			}
			
			var encodedpwd = btoa(pwd);
			var myJSONObject =JSON.stringify({"username":usernameUpper,"password":encodedpwd});	
						if (username != null && username != '' && encodedpwd != null	&& encodedpwd != '') {
											$.ajax({
												
														type : "POST",
														url :context+"/postgetResponse?method=loginuser",
														contentType : "application/json",
														crossDomain : true,
														data : myJSONObject,
														dataType : 'json',
														  success: function (datahere) {
			                       							  
			                       		                    	var response = JSON.parse(JSON.stringify(datahere));	
			                       		                    	 if(response.code==1){
			                       		                    	 sessionStorage.setItem("tbcid", response.result);
			                       		                    	 sessionStorage.setItem("type", response.type);
			                       		                    	 sessionStorage.setItem("username", usernameUpper);
			                       		                    	  
			                       		              		var myJSONObject =JSON.stringify({"usercd":sessionStorage.getItem('username')});	
			                       		         	      $.ajax({
			                       		                       type: "POST",
			                       		                       url:context+"/apiResponse?method=getuserinfo",
			                       		        				contentType : "application/json",
			                       		        				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			                       		        				crossDomain : true,
			                       		        				data:myJSONObject,	
			                       		        				dataType : "json",		
			                       		                        success: function (datahere) {			                 
			                       		                       	    var response = JSON.parse(JSON.stringify(datahere));	
			                       		                             sessionStorage.setItem("namear", response.namear);
			                       		                             sessionStorage.setItem("nameen", response.nameen);
			                       		                             sessionStorage.setItem("locar", response.locnamear);
			                       		                             sessionStorage.setItem("locen", response.locnameen);
			                       		                             sessionStorage.setItem("roleen", response.rolenameen);
			                       		                             sessionStorage.setItem("rolear", response.rolenamear);
			                       		                          
			                       		                            if(response.rolecode==1){
			                       		                          	 window.location = context+'/admin';
			                       		                          	 }
			                       		                            if(response.rolecode==3 && response.loctype==6){
			                       		                        	 window.location =context+'/newNotification';
			                       		                          	 } 
			                       		                 
			                       		                          if(response.rolecode==2){
			                       		                        	window.location = context+'/supervisor';
			                       		                          	 }
			                       		                        },
			                       		                     error : function(jqXHR, textStatus, errorThrown) {
			                       		        	 				
			                       		        	 				if (jqXHR.status == "401"){
			                       		        	 					
			                       		        	 				   
			                       		        	 				    }
			                       		        	 			}
			                       		                 });
			                       		        			
			                       		                    	 
			                       		                   }
			                       		                    	 if(response.code==-2){
			                       		                    		$('#credentialError').show(); 
                                                                                         $('#noAccess').hide(); 
			                       		                    	 }
			                       		                    	  if(response.code==-3){
			                       		                    		$('#noAccess').show();
                                                                                       $('#credentialError').hide();  
			                       		                    	 }
			                       		                    	  if(response.code==-4){
			                       		                    		$('#noAccess').hide();
                                                                                       $('#credentialError').hide(); 
                                                                     $('#usernotregist').show();                   
			                       		                    	 }
																},
																error : function(jqXHR,	textStatus, errorThrown) {
																	$('#credentialError').show();
																}
															});		
														
						}// close of if	
				
		}// close of form validation
  
  
			  </script>

</body>

</html>
