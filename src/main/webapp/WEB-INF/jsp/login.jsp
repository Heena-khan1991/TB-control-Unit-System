<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<!DOCTYPE html>
<html lang="">
<head>
<style>
.has-feedback {
	position: relative
}

.form-control-feedback {
	position: absolute;
	top: 10px;
	right: 0;
	z-index: 2;
	display: block;
	width: 34px;
	height: 34px;
	line-height: 34px;
	text-align: center;
	color: #000; /*pointer-events:none*/
}
</style>
<!-- <meta charset="utf-8" />
 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="TB control unit">
<title>TB control unit</title>

<!-- GOOGLE FONTS -->

<!-- SLEEK CSS -->
<link id="sleek-css" rel="stylesheet" href="assets/css/sleek_6.css" />
<link rel="stylesheet" href="assets/css/login.min.css" />

<link rel="stylesheet" type="text/css"
	href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- FAVICON -->
<link href="assets/img/favicon.png" rel="shortcut icon" />

</head>
<body class="newbg_class" id="body">
	<div class="container d-flex align-items-center justify-content-center vh-80">
		<div class="row justify-content-center">

			<div class="col-lg-6 col-md-10">
				<div class="text-center">
					<h3 class="text-white mb-4 text-center font-weight-bold"
						style="line-height: 35px;">
						<span class="newarabfnt">وحدة مكافحة الدرن</span><br>TB
						Control Unit System</span>
					</h3>
				</div>
				<div class="card" style="background-color: #ffffff2b; border: 0px">

					<div class="card-header ">
						<div class=" text-center">
							<a href="#" class=""> <img src="assets/img/LogoN1_e1.png"
								alt="Moh Logo" />
							</a>
						</div>
					</div>
					<div class="card-body p-5">
						<!--           <h3 class="text-white mb-4 text-center">TB Control Unit</h3>            -->
						<form>
							<div class="row">

								<div class="form-group col-md-12 mb-4 px-0">
									<input class="input100" type="text" name="username"
										id="username" placeholder="Username"> <span
										class="focus-input100"></span> <span class="symbol-input100">
										<i class="fa fa-user" aria-hidden="true"></i>
									</span>
								</div>
								<span id="userIdBlank" style="display: none;"><font
									color="red"><fmt:message key="label.userIdBlank" /></font></span> <span
									id="invaliduser" style="display: none;"> <font
									color="red"> <b><fmt:message key="label.invaliduser" /></b>
								</font></span>
								<div class="form-group col-md-12 px-0">
									<div class=" has-feedback">
										<input class="input100" type="password" id="password"
											name="password" placeholder="Password"> <span
											class="focus-input100"></span> <span class="symbol-input100">
											<i class="fa fa-lock" aria-hidden="true"></i>
										</span> <span id="togglePassword"
											class="fa fa-eye form-control-feedback" aria-hidden="true"></span>
									</div>
								</div>
								<span id="PwdBlank" style="display: none;"><font
									color="red"><fmt:message key="label.PwdBlank" /></font></span> <span
									id="invalidpwd" style="display: none;"> <font
									color="red"> <b><fmt:message key="label.invalidpwd" /></b>
								</font></span>

								<div class="col-md-12">
									<div class="d-flex mb-2 justify-content-between">
										<div class="d-inline-block mr-3 mb-3">
											<a class="txt2"
												href="${pageContext.request.contextPath}/registerUser">Sign
												Up</a>
										</div>
										<p>
											<a class="txt2"
												href="${pageContext.request.contextPath}/forgotpass"">Change
												Password?</a>
										</p>
									</div>
									<button type="button" class="login100-form-btn mb-4"
										onClick="validateform()">Login</button>
									<span id="credentialError" style="display: none;"> <font
										color="red"> <b><fmt:message key="label.userAuth" /></b></font></span>
									<span id="noAccess" style="display: none;"> <font
										color="red"> <b><fmt:message key="user.unavailable" /></b></font></span>
									<span id="userAuth"> <font color="red"> <b><fmt:message
													key="label.userAuth" /></b></font></span> <span id="usernotregist"
										style="display: none;"> <font color="red"> <b><fmt:message
													key="user.userNotRegistered" /></b></font></span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Javascript -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="lib/app.js" type="text/javascript"></script>
	<script type="text/javascript">
	var lang = '<%=response.getLocale().getLanguage()%>';
    var context = '${pageContext.request.contextPath}';
    $(document).ready(function(){
 	  
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
    });
  </script>
	<script type="text/javascript">
		
			$("#password").keypress(function(event) {
                             $('#PwdBlank').hide(); 
				if (event.keyCode === 13) {
					var username = $('#username').val();
					var pwd = $('#password').val();
					var usernameUpper = username.toUpperCase();
					validateform();
				}
			});
			
			$("#username").keypress(function(event) {
                             $('#userIdBlank').hide(); 
				var username = $('#username').val();
				var usernameUpper = username.toUpperCase();		
				var pwd = $('#password').val();
				if(usernameUpper!=null && pwd!=null && usernameUpper!='' && pwd!='' ){
				if (event.keyCode === 13) {
					validateform();
				}
				}
			});
		
		function validateform() {
			//alert("Inisde validate")
			var userName = "";
			var pwd = "";
			var username = $('#username').val();
			var pwd = $('#password').val();
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
			                       		                             sessionStorage.setItem("loccode", response.loccode);
			                       		                          	 sessionStorage.setItem("loctype", response.loctype);
			                       		                             sessionStorage.setItem("roletitle", response.roletitle);
			                       		                             sessionStorage.setItem("rolePrivilege", response.privilege);
			                       		                             
			                       		                             /* success(data){
			                       		                            	window.location = context+'/'+data;
			                       		                             } */
			                       		                            var inputObj = {
			                       		                            		"locType":sessionStorage.getItem("loctype"),
			                       		                            		"roleTiitle":sessionStorage.getItem("roletitle"),
			                       		                            		"rolePrivilege":sessionStorage.getItem("rolePrivilege")
			                       		                            } 
			                       		                           var myJSONObj = JSON.stringify(inputObj);
				                       		                          $.ajax({
					                       		                   		type: "POST",
					                       		                   		url: context + "/Pagelogin",
					                       		                   		data: myJSONObj,
					                       		                   	contentType : "application/json",
					                       		                   		//dataType: "json",
					                       		                   		success: function(page) {
					                       		                   		sessionStorage.setItem("page", page);
					                       		                   			//alert(context+'/'+page);
					                       		                   			window.location = context+'/'+page;
					                       		                   			
					                       		                   		},
						                       		                   	error: function(jqXHR, textStatus, errorThrown) {
						                       		         			if (jqXHR.status == "401") {
						                       		         			logout();
						                       		         			}
						                       		         			}
						                       		         		});
			                       		                            /* if(response.roletitle=='ROLE_ADMIN'){
			                       		                          		window.location = context+'/admin';
			                       		                          	 }
			                       		                            if(response.roletitle=='ROLE_DOCTOR' && response.loctype==6 && response.privilege != '3'){
			                       		                        	 	window.location =context+'/newNotification';
			                       		                          	 }
			                       		                         if(response.roletitle=='ROLE_DOCTOR' && response.loctype==6 && response.privilege == '3'){
			                       		                        	 	window.location =context+'/contactNotifDetails';
			                       		                          	 }
			                       		                            
			                       		                         	if(response.roletitle=='ROLE_SUPERVISOR' && response.loctype==6){
						           		                        		window.location = context+'/inspector';
						           		                          	 }
			                       		                         	
			                       		                             if(response.roletitle=='ROLE_DOCTOR' && response.loctype==5){
						           		                        		window.location = context+'/PRC';
						           		                          	 }
			                       		                             
			                       		                          if(response.roletitle=='ROLE_LAB'){
						           		                        		window.location = context+'/lab';
						           		                          	 }
			                       		                          
			                       		                       if(response.roletitle=='ROLE_NURSE'){
					           		                        		window.location = context+'/nurse';
					           		                          	 } */
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