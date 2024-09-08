<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
  <link href="lib/bootstrap/css/bootstrap_${lang}.min.css" rel="stylesheet">
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
	
	
	  <br/><br/>
	
	
	<div class="logo">
        <!--<img src="img/MOH_Logo120.png" class="newlogo">-->
		
		<div class=" imgnew" ><img src="img/MOH_Logo120.png" class="newlogo"></div>

<span class="logohd"><b>TB Control Unit System <br><span class="headfont" >وحدة مكافحة الدرن</span> </b></span> <!--<img src="img/logo1.png"  class="newlogo" style="border: 1px dotted #388ddf;">-->
		
		
		<!--PCIS-Clinic Statistics</h1>-->
      </div>
	
	
<!--	 <br/><br/>-->
	  
		
      <div class="form-login" >
	  
	
        <h2 class="form-login-heading label-new "><i class="fa fa-lg fa-fw fa-user"></i> <b>REGISTER</b>
		<!--<hr style="margin-bottom:0px"/>--></h2>
        <div class="login-wrap">
		 <span class="pull-right"> <a href="login_ar.html" class="langcls">Arabic</a></span>
		<br><br>
		 <div class=" has-feedback">
							<input type="text" id="civilid" class="form-control"
								placeholder="Civil Id" autofocus="">
		 </div><br> 
          <input type="text" id="username" class="form-control" placeholder="UserName" autofocus onchange="validateUsername()">
             <span id="userIdBlank" style="display:none;"><font color="red"><fmt:message
										key="label.userIdBlank" /></font></span>
		  <span id="invaliduser" style="display:none;"> <font color="red"> <b><fmt:message
										key="label.invaliduser" /></b></font></span>
  <span id="notActive" style="display:none;"> <font color="red"> <b><fmt:message
										key="label.useInactive" /></b></font></span>		  		 
          <br>     
          <div class=" has-feedback">
          <input type="text" id="otp" class="form-control" placeholder="OTP" >
		  		  </div>
		  
			<br>      
		   <div class=" has-feedback">
          <input type="password" id="pwd" class="form-control" placeholder="Password" onchange="validatePassword()">
		  <span id="togglePassword" class="fa fa-eye form-control-feedback" aria-hidden="true"></span>		  </div>
		   <span id="pwdBlank" style="display:none;"><font color="red"><fmt:message
										key="label.PwdBlank" /></font></span>
		  <span id="invalidpwd" style="display:none;"> <font color="red"> <b><fmt:message
										key="label.invalidpwd" /></b></font></span>
		  
		  <br>
		   <div class=" has-feedback">
          <input type="password" id="cnpwd" class="form-control" placeholder="Confirm Password" onchange="validateConfirmPassword()">
		 	  </div>
		   <span id="cnPwdBlank" style="display:none;"><font color="red"><fmt:message
										key="label.PwdBlank" /></font></span>
		  <span id="mismatchpwd" style="display:none;"> <font color="red"> <b><fmt:message
										key="label.mismatchpwd" /></b></font></span>
										<br>
		  
		 <!-- <select name="select" class="form-control"><option>Select Location</option></select>-->               
			
          <button class="btn btn-primary btn-block"  type="button" onClick="registerUser()"><i class="fa fa-lock"></i>  &nbsp;<fmt:message
										key="label.register" /></button>
              <span id="userRegisteredSuccess" style="display:none;"> <font color="green"> <b><fmt:message
										key="label.userRegistered" /></b></font></span>
          <span id="userAlreadyRegistered" style="display:none;"> <font color="red"> <b><fmt:message
										key="label.userRegisteredAlready" /></b></font></span>
          <span id="userNotRegistered" style="display:none;"> <font color="red"> <b><fmt:message
										key="user.userNotRegistered" /></b></font></span>
	
          <hr style="margin-bottom:10px">
          
         <div class="registration">
            <a href="${pageContext.request.contextPath}/login"  class="text-center"> <b>Back to Login</b></a>             
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
  var context = '${pageContext.request.contextPath}';
    $.backstretch("./assets/img/b1-6.jpg", {
      speed: 500
    });
	
    $(document).ready(function(){
 	   var lang = '<%=response.getLocale().getLanguage()%>';
           var context = '${pageContext.request.contextPath}';
 	   var myDate = new Date();
 	   
 	
 	        $('#userRegisteredSuccess').hide();
 		    $('#userAlreadyRegistered').hide();
 		    $('#userNotRegistered').hide();
			$('#userIdBlank').hide();
			$('#invaliduser').hide();
			$('#pwdBlank').hide();
			
			
			$('#cnPwdBlank').hide();
			
 	   
 	  
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
	
 
		
   var lang = '<%=response.getLocale().getLanguage()%>';
			
		
			
		 


	      function validateUsername(){
var username = $('#username').val();
			if(username==null || username==''){
				$('#userIdBlank').show();
$('#notActive').hide(); 
				}
                           else{
               $('#userIdBlank').hide();
$('#notActive').hide(); 
   }





       }



	      function validatePassword(){
				var pwd = $('#pwd').val();
						
		if(pwd==null || pwd==''){
				$('#pwdBlank').show();
				}
                         else{
                   $('#pwdBlank').hide();
                       }





       }







	      function validateConfirmPassword(){
				var pwd = $('#pwd').val();
		         var cnpwd = $('#cnpwd').val();
				
				
				if(cnpwd==null || cnpwd==''){
				$('#cnPwdBlank').show();
				}
                         else{
                          $('#pwdBlank').hide();
                          if(cnpwd==pwd){
$('#mismatchpwd').hide();

}
else{
$('#mismatchpwd').show();

                       }
  }

}

/* 		
			function getOTPRegister(){
				$('#notActive').hide();
 				$('#UnabletoFetch').hide();
 				$('#otpErrorMessage').hide();
				var username = $('#username').val();
				let civilid = $('#civilid').val();
			if(username==null || username==''){
				$('#userIdBlank').show();
				}
                           else{
                     $('#userIdBlank').hide();
				$('#UnabletoFetch').hide();
				var myJSONObj =JSON.stringify({"usercd": username,"civilid": civilid});
				var OTP='';
				var mobno='';
				$.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=getotp",
		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
		            	  
			                    if(data.code=="1"){
			                    	//$('#otp').val(data.result);
			                    	OTP=data.result;
			                     	    
			                    	 $.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=userdtls",
		              
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
		            	  
			                    if(data.code=="1"){
			                    	//$('#otp').val(data.result);
			                    	mobno=data.details.mobile; 	     	    
			                    		$('#notActive').hide(); 
										$('#UnabletoFetch').hide();
										$('#otpErrorMessage').hide();
										$.ajax({
			                             type: "GET",
			                            url:  context+"/sendSMS?&mobile="+mobno+"&OTP="+OTP,
			                            
			                             dataType: 'text',
			                             success : function(response) {
			                          
			                           	    
			                                 },
			                                 error : function(xhr, status, error) {
			                                  
			                                 }
			                         });
			                    


	 
			                  }
                                       if(data.code=="-3"){
                                    	   $('#notActive').show(); 
                                           $('#UnabletoFetch').hide();
                                           $('#otpErrorMessage').hide();
			                    	
			                         	    
			                    	 	 
			                  }	
	    
			                 },
			                    
			                    
                  error : function(jqXHR, textStatus, errorThrown) {

            if (jqXHR.status == "404"){
            	$('#UnabletoFetch').show() ;
                $('#notActive').hide();
                $('#otpErrorMessage').hide();
            }
            }
        
            });
			                    	
			                    	
			                    	
			                    	
			                    	
			                    	
			                    	
			                    
			                    
			                    
			                    
			                    
			                    
			                    
			                 }
			                    
			                    if(data.code=="-2"){
			                    	$('#UnabletoFetch').hide() ;
			                        $('#notActive').hide();
			                    	$('#otpErrorMessage').show();
			                    	
			                         }
			                    
			                   if(data.code=="-3"){
			                	   $('#UnabletoFetch').hide() ;
			                        $('#notActive').hide();
			                	   $('#otpErrorMessage').show(); 
			                   }
			                   if(data.code=="-5"){
			                	   $('#UnabletoFetch').hide() ;
			                        $('#notActive').hide();
			                	   $('#otpErrorMessage').show(); 
			                   }
                                   },
                  error : function(jqXHR, textStatus, errorThrown) {

            if (jqXHR.status == "401"){
	

            }
            }
            });
				
				
			   }	
				
			} */
			
		function registerUser() {
			$('#userIdBlank').hide();
            $('#pwdBlank').hide();
            var civilid = $('#civilid').val();
			var username = $('#username').val();
			var pwd = $('#pwd').val();
			var otp = $('#otp').val();
            var pwdEncoded=btoa(pwd);
            if(username==null || username==''){
				$('#userIdBlank').show();
				}
			if(pwd==null || pwd==''){
				$('#pwdBlank').show();
				}
			var myJSONObject =JSON.stringify({"usercd":username,"password":pwdEncoded,"otp":otp,"civilid":civilid});	
						if (username != null && username != '' && pwd != null	&& pwd != ''&& otp != null	&& otp != '') {
											$.ajax({
														type : "POST",
														url :context+"/apiResponse?method=registeruser",
														contentType : "application/json",
														crossDomain : true,
														data : myJSONObject,
														dataType : 'json',
														  success: function (datahere) {
			                       		                    	var response = JSON.parse(JSON.stringify(datahere));	
			                       		                    	 if(response.code==1){
			                       		                    		$('#userRegisteredSuccess').show();
			                       		                    		$('#userAlreadyRegistered').hide();
			                       		                    		$('#userNotRegistered').hide();
			                       		                         }
			                       		                    	 if(response.code==-2){
			                       		                    		$('#userRegisteredSuccess').hide();
			                       		                    		$('#userAlreadyRegistered').show();
			                       		                    		$('#userNotRegistered').hide();
			                       		                    	 }
			                       		                    	  if(response.code==-3){
			                       		                    		$('#userRegisteredSuccess').hide();
			                       		                    		$('#userAlreadyRegistered').hide();
			                       		                    		$('#userNotRegistered').show();
			                       		                    	 }
																},
																error : function(jqXHR,	textStatus, errorThrown) {
																	
																}
															});		
														
						}
				
		}
  
  
			  </script>
  
</body>

</html>
