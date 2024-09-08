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
<meta name="keyword" content="Dashboard">
<title>TB Unit</title>

<!-- Favicons -->
<link href="img_admin/favicon.png" rel="icon">
<link href="img_admin/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="lib_admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="lib_admin/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="css_admin/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
	href="lib_admin/gritter/css/jquery.gritter.css" />
<!-- Custom styles for this template -->
<link href="css_admin/style.css" rel="stylesheet">
<link href="css_admin/style-responsive.css" rel="stylesheet">
<link href="css_res_admin/main.css" rel="stylesheet">
<link href="admin/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">


<!-- <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />  -->


<!--  <script src="lib/chart-master/Chart.js"></script>-->

<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<style>
.vertical-alignment-helper {
	display: table;
	height: 100%;
	width: 100%;
	pointer-events: none;
}

.vertical-align-center {
	/* To center vertically */
	display: table-cell;
	vertical-align: middle;
	pointer-events: none;
}

.modal-content {
	/* Bootstrap sets the size of the modal in the modal-dialog class, we need to inherit it */
	width: inherit;
	max-width: inherit;
	/* For Bootstrap 4 - to avoid the modal window stretching full width */
	height: inherit;
	/* To center horizontally */
	margin: 0 auto;
	pointer-events: all;
}
</style>
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->

		<jsp:include page="adminHeader.jsp"></jsp:include>




		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<jsp:include page="adminSidebar.jsp"></jsp:include>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">





			<section class="wrapper ">
				<!--pd_lr0-->

				<nav aria-label="breadcrumb " class="row">

					<ol class="breadcrumb ">
						<li class="breadcrumb-item active" aria-current="page">
							<p id="role"></p>
						</li>
						<li class="breadcrumb-item active pull-right" aria-current="page">
							<p id="loc"></p> <i class="fa fa-user"></i>&nbsp;<span
							id="userName"></span>
						</li>
					</ol>

				</nav>

				<!--CUSTOM CHART START -->
				<!-- <div class="border-head">
              <h3>CREATE NEW USER </h3>
            </div>-->

				<!--custom chart end-->
				<div class="row mt">
					<div class="col-lg-12">
						<!-- SERVER STATUS PANELS -->

						<div class="form-horizontal style-form">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#home" data-toggle="tab"
									id="home1"><fmt:message key="label.createUser" /></a></li>
								<li class=""><a href="#profile" data-toggle="tab"
									id="profile1"><fmt:message key="label.userList" /></a></li>

							</ul>

							<div class="tab-content">
								<div class="tab-pane fade active in" id="home">

									<div class="row">

										<div class="col-md-12 pd_lr10 ">


											<div class="panel panel-default">
												<div class="bg-navy panel-heading">
													<fmt:message key="label.createUser" />
												</div>
												<div class="panel-body">


													<div class="form-group">
														<label class="control-label col-md-3 text-right"><fmt:message
																key="label.civilid" />:</label>
														<div class="col-md-4 col-xs-11">
															<input type="text" name="civil" id="civilid"
																placeholder="<fmt:message key="label.entercivilid" />"
																class="form-control" onChange="civilIdCheck()">
															<span id="userAlreadyRegistered" style="display: none;"><font
																color="red"><fmt:message
																		key="label.AlreadyRegistered" /></font></span> <span
																id="userUnAvailable" style="display: none;"><font
																color="red"><fmt:message key="user.unavailable" /></font></span>
															<span id="civilIdErr" style="display: none;"><font
																color="red"><fmt:message key="label.civilIdErr" /></font></span>
															<span id="civilIdChk" style="display: none;"><font
																color="red"><fmt:message key="label.civilIdChk" /></font></span>

														</div>
													</div>

													<div id="hid">


														<div class="col-sm-12">

															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="namear" class="col-sm-4 col-form-label"><fmt:message
																			key="label.nameAr" />:<span class="red" style="color: red;">*</span></label>
																	<div class="col-sm-10">
																		<input type="text" class="form-control" name="namear"
																			id="namear"
																			placeholder="<fmt:message key="label.nameAr" />"
																			placeholder="Name"> <span id="usernameErr"
																			style="display: none;"><font color="red"><fmt:message
																					key="label.usernameErr" /></font></span>
																	</div>
																</div>
															</div>



															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="nameen" class="col-sm-4 col-form-label"><fmt:message
																			key="label.nameEn" />:<span class="red" style="color: red;">*</span></label>
																	<div class="col-sm-10">
																		<input type="text" class="form-control" id="nameen"
																			name="nameen"
																			placeholder="<fmt:message key="label.nameEn" />"
																			placeholder="Name"> <span id="usernameArErr"
																			style="display: none;"><font color="red"><fmt:message
																					key="label.usernameErr" /></font></span>
																	</div>
																</div>
															</div>



														</div>


														<div class="col-sm-12">

															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="email"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.mailId" /> :<span class="red" style="color: red;">*</span></label>
																	<div class="col-sm-10">
																		<input type="text" class="form-control" id="email"
																			autocomplete="off"
																			placeholder="<fmt:message key="label.mailId" /> ">
																		<span id="mailIdErr" style="display: none;"><font
																			color="red"><fmt:message key="label.mailIdErr" /></font></span>
																		<span id="mailIdEr" style="display: none;"><font
																			color="red"><fmt:message key="label.mailIdEr" /></font></span>
																		<span id="mailIdWithMOHErr" style="display:none;"><font
																			color="red"><fmt:message key="label.mailIdWithMOHErr" /></font></span>
																	</div>
																</div>
															</div>



															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="mobile"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.mobile" /> :</label>
																	<div class="col-sm-10">
																		<input type="text" class="form-control" id="mobile"
																			autocomplete="off"
																			placeholder="<fmt:message key="label.mobile" />">
																		<span id="mobileErr" style="display: none;"><font
																			color="red"><fmt:message key="label.mobileErr" /></font></span>
																		<span id="validMob" style="display: none;"><font
																			color="red"><fmt:message key="label.validMob" /></font></span>
																	</div>
																</div>
															</div>


														</div>



														<div class="col-sm-12">

															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="userRole"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.role" /> :</label>
																	<div class="col-sm-10">
																		<select name="sel" id="userRole" class="form-control">
																		</select> <span id="roleErr" style="display: none;"><font
																			color="red"><fmt:message key="label.roleErr" /></font></span>
																	</div>
																</div>
															</div>



															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="userloc"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.loc" /> :</label>
																	<div class="col-sm-10">
																		<select name="sel" id="userloc" class="form-control">
																		</select> <span id="userlocErr" style="display: none;"><font
																			color="red"><fmt:message
																					key="label.userlocErr" /></font></span>
																	</div>
																</div>
															</div>

														</div>

														<div class="col-sm-12">

														
															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="userType"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.userType" /> :</label>
																	<div class="col-sm-10">
																		<select name="sel" id="userType" class="form-control">
																			<option value="0"><fmt:message
																					key="label.select" />
																			<option value="P"><fmt:message
																					key="label.permanent" />
																			<option value="T"><fmt:message
																					key="label.temporary" />
																		</select> <span id="userTypeErr"><font color="red"><fmt:message
																					key="label.userTypeErr" /></font></span>
																	</div>
																</div>
															</div>
															
															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="userPrivilege"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="lable.Privilege" /> :</label>
																	<div class="col-sm-10">
																	
																		<select name="sell" id="userPrivilege"
																						class="form-control">
																						<option selected="selected" value=""><fmt:message
																									key="label.select" /></option>
																					</select> <span id="notifyCatError" style="display: none;"><b><font
																							color="red"><fmt:message
																									key="label.userPrivilegeErr" /></font></b></span>			
																	</div>
																</div>
															</div>
														</div>
														<div class="col-sm-12">

															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="userID"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.userID" />:</label>
																	<div class="col-sm-10">
																		<input type="text" class="form-control" id="userID"
																			name="userID"
																			placeholder="<fmt:message key="label.userID" />"
																			placeholder="Name" disabled>
																	</div>

																</div>
															</div>


														</div>


													</div>
												</div>

											</div>
											<!-- end panel-body-->
											<div class="panel-footer text-center">
												<button class="btn btn-success" id="update"
													onclick="update()" disabled>
													<fmt:message key="label.update" />
												</button>
												<button class="btn btn-success" id="saveUser" onclick="save()"
													disabled>
													<fmt:message key="label.save" />
												</button>
												<button class="btn btn-primary" id="clear"
													onclick="clearData()">
													<fmt:message key="label.clear" />
												</button>
												<span id="userUpdated"><b><font color="green"><fmt:message
																key="label.userUpdated" /></font></b></span> <span id="userNotAvailable"><b><font
														color="red"><fmt:message key="label.unavailable" /></font></b></span>
												<span id="userCreate" style="display: none;"><b><font
														color="green"><fmt:message key="label.userCreate" /></font></b></span>
												<span id="failed" style="display: none;"><b><font
														color="red"><fmt:message key="label.techError" /></font></b></span>
												<span id="exist" style="display: none;"><b><font
														color="red"><fmt:message key="label.exist" /></font></b></span> <span
													id="updateRecord" style="display: none;"><b><font
														color="green"><fmt:message key="label.updateRecord" /></font></b></span>
												<span id="RecNotFound" style="display: none;"><b><font
														color="red"><fmt:message key="label.RecNotFound" /></font></b></span>
												<span id="dbError" style="display: none;"><b><font
														color="red"><fmt:message key="label.dbErr" /></font></b></span>
											</div>
										</div>
									</div>
								</div>
								
								<div class="tab-pane fade" id="profile">

									<div class="row mt">
										<div class="col-lg-12">

											<div class="panel panel-default">
												<!--<div class="bg-navy panel-heading">CREATE NEW USER </div>-->
												<div class="panel-body">
													<table class="table table-striped table-bordered no-wrap"
														id="listOfUsersTable" style="width: 100%">
														<thead>
															<tr>
																<th><fmt:message key="label.sl.No" /></th>
																<th><fmt:message key="label.username" /></th>
																<th><fmt:message key="label.civilid" /></th>
																<th><fmt:message key="label.nameEn" /></th>
																<th><fmt:message key="label.nameAr" /></th>
																<th><fmt:message key="label.Role" /></th>
																<th><fmt:message key="label.email" /></th>
																<th><fmt:message key="label.OTP" /></th>
																<th><fmt:message key="label.mobile" /></th>
																<th><fmt:message key="label.createdBy" /></th>
																<th><fmt:message key="label.active" /></th>
																<th><fmt:message key="label.Action" /></th>
																<th><fmt:message key="label.edit" /></th>
																<th style="display: none;"><fmt:message key="label.roleID" /></th>
																<th style="display: none;"><fmt:message key="label.loc" /></th>
																<th style="display: none;"><fmt:message key="label.type" /></th>
																<th style="display: none;"><fmt:message key="label.Privilege" /></th>
															</tr>
														</thead>
														<tbody id="usrlisttbody">
														</tbody>
													</table>
												</div>
											</div>

										</div>
									</div>


								</div>
							</div>

						</div>

					</div>

				</div>
			</section>
		</section>
		<!--main content end-->
		<!--footer start-->
		<jsp:include page="adminFooter.jsp"></jsp:include>
		<!--footer end-->
	</section>
	<script type="text/javascript" src="js/authentication.js"></script>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
	<!-- <script src="lib/jquery/jquery-3.6.0.js"></script> -->
	<script src="lib/jquery.scrollTo.min.js"></script>
	<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="lib/jquery.sparkline.js"></script>
	<script src="admin/datatables/jquery.dataTables.min.js"></script>
	<!--   <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>   -->
	<!--common script for all pages-->
	<script src="lib/common-scripts.js"></script>
	<!--  <script src="lib/bootbox.min.js"></script> -->
	<!--  <script src="lib/jquery/jquery-2.1.3.js"></script>
	<script src="lib/jquery/jquery-ui.js"></script>   -->
	<!--<script language="javascript">
		
		 $('#zero_config').DataTable({/*"bLengthChange":     false *//*"dom": 'lrtip',"bFilter" : true,
		}) */
		
		 <!--"dom": '<"top"i>rt<"bottom"flp><"clear">'-->
		
	<!--</script>-->




	<script type="text/javascript">
  /*   $.backstretch("img/7.jpg", {
      speed: 500
    }); */
	var page = "admin";
    $(document).ready(function(){
 	   var lang = '<%=response.getLocale().getLanguage()%>';
           var requestContextPath = '${pageContext.request.contextPath}';
 	   var myDate = new Date();
 	 		 $('#mailIdWithMOHErr').hide();
 	         $('#civilIdErr').hide();
 	         $('#civilIdChk').hide();
 	         $('#mailIdErr').hide();
 	         $('#mailIdEr').hide();
 	         $('#mobileErr').hide();
	         $('#validMob').hide();
	         $('#roleErr').hide();
	         $('#userlocErr').hide();
	         $('#genderErr').hide();
	         $('#exist').hide();
	         $('#updateRecord').hide();
	         $('#RecNotFound').hide();
	         $('#dbError').hide();
	         $('#userTypeErr').hide();
	         $('#usernameErr').hide();
	         $('#usernameArErr').hide();
	         $('#exdateErr').hide();
	         $('#failed').hide();
	         $('#userCreate').hide();
	         $('#userAlreadyRegistered').hide();
	         $('#userNotAvailable').hide();
	         $('#userUpdated').hide();
	         $('#userUnAvailable').hide();
	           
 			if (lang == 'en') {
 				$('#arabic').show();
 				$('#english').hide();
 				$('#name').append(sessionStorage.getItem('namear'));
 			} else {
 				$('#arabic').hide();
 				$('#english').show();
 				$('#name').append(sessionStorage.getItem('namear'));
 			}
 			$('#arabic').click(function() {
 				$(this).hide();
 				$('#english').show();
 			});
 			$('#english').click(function() {
 				$(this).hide();
 				$('#arabic').show();
 			});
 			
 			
 			
 			
 			var myJSONObject =JSON.stringify({"usercd":sessionStorage.getItem('username')});	
  	      $.ajax({
                type: "POST",
                url: requestContextPath+"/apiResponse?method=getuserdetails",
 				contentType : "application/json",
 				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
 				crossDomain : true,
 				data:myJSONObject,	
 				dataType : "json",		
                 success: function (datahere) {			                 
                	 var response = JSON.parse(JSON.stringify(datahere));	
                   	 if(response.code==1){
                   		$('#userrole').val(sessionStorage.getItem('type'));
                   		$('#userName').append(response.details.usernameen);
                   		
                   	 }
                   	
                 },
              error : function(jqXHR, textStatus, errorThrown) {
 	 				
 	 				if (jqXHR.status == "401"){
 	 					
 	 				   
 	 				    }
 	 			}
          });
 			
 		//Get Privilege Details	
 		/*  var value2="";
         var select2= "<fmt:message key="label.select"/>";
         var privilegeDivData="<option value="+value2+">"+select2+"</option>";
         $(privilegeDivData).appendTo('#userPrivilege'); */
  	    $.ajax({
            type: "GET",
            url: requestContextPath+"/getlistresponse?method=getprivileges",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
				dataType : "json",
                success: function (datahere) {			                 
            	 let response = JSON.parse(JSON.stringify(datahere));	
               	
               		//$('#userrole').val(sessionStorage.getItem('type'));
               		  $.each(response,function(i,item){
               			var lang = '<%=response.getLocale().getLanguage()%>'; 
	   	       	          if(lang=='en'){
	   	       	           var privilegeDivData="<option value="+item.code+">"+item.nameen+"</option>";
	   	       	          }else{
	   	       	          var privilegeDivData="<option value="+item.code+">"+item.namear+"</option>";
	   	   	       	      }
	   	       	       $(privilegeDivData).appendTo('#userPrivilege');
               		  } ); 
               		
               	 
               	
             },
          error : function(jqXHR, textStatus, errorThrown) {
	 				
	 				if (jqXHR.status == "401"){
	 		}
	 	}
      });	
		getuserList();
  	    $("#userRole option").remove();
         var value="";
         var select= "<fmt:message key="label.select"/>";
         var div_data="<option value="+value+">"+select+"</option>";
         $(div_data).appendTo('#userRole'); 
  	    
  	    $.ajax({
           type: "GET",
           url:requestContextPath+"/getlistresponse?method=getroles",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
            success: function (datahere) {			                 
           	 var response = JSON.parse(JSON.stringify(datahere));	
              	  $.each(response,function(i,response)
	 		            	 {
		   	                    
		   	               var lang = '<%=response.getLocale().getLanguage()%>'; 
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.rolecd+">"+response.rolenameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.rolecd+">"+response.rolenamear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#userRole'); 
	 		                
	 		    		  
	                       });
              	
            },
         error : function(jqXHR, textStatus, errorThrown) {
 				
 				if (jqXHR.status == "401"){
 					
 				   
 				    }
 			}
     });
  	    
  	  var value1="";
      var select1= "<fmt:message key="label.select"/>";
      var div_data1="<option value="+value+">"+select1+"</option>";
      $(div_data1).appendTo('#userloc'); 
	    
  	    
  	    $.ajax({
           type: "GET",
           url:requestContextPath+"/getlistresponse?method=getlocations",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
            success: function (datahere) {			                 
           	 var response = JSON.parse(JSON.stringify(datahere));	
              	  $.each(response,function(i,response)
	 		            	 {
		   	                    
		   	               var lang = '<%=response.getLocale().getLanguage()%>'; 
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.locationcd+">"+response.locationnameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.locationcd+">"+response.locationnamear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#userloc'); 
	 		                
	 		    		  
	                       });
              	
            },
         error : function(jqXHR, textStatus, errorThrown) {
 				
 				if (jqXHR.status == "401"){
 					
 				   
 				    }
 			}
           
  	    
  	    });
  	    
  	});	
	
  </script>
	<script type="text/javascript">
		var context = "${pageContext.request.contextPath}"
		var language = "${pageContext.response.locale.language}"
                var requestContextPath = '${pageContext.request.contextPath}';
	/* 		function schangeSelDate(){		
			 var dateType = $('#sdatepickerVal'). datepicker('getDate');
			 var dateTypeVar=$.datepicker.formatDate('dd/mm/yy', dateType);
			 $('#edatepickerVal').val('');
		} */	
		
			
		$("#profile1").click(function() {
			getuserList();
		});	
		
		
		$("#email").change(function() { 
			$('#mailIdWithMOHErr').hide();
			var val = "moh.gov.kw";
			 if (this.value.indexOf(val) == -1) {
				 $('#mailIdWithMOHErr').show();
			 }
		});
		
		
		 
	function getuserList(){
        $.ajax({
			type : "GET",
			url : requestContextPath+"/getlistresponse?method=getallusers",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			success : function(response) {
				var lang = '<%=response.getLocale().getLanguage()%>'; 
				$("#listOfUsersTable tr").slice(1).remove();  
				 var userDetails = '',activeVal="";	
				 var slNo =1;	role="";
				$.each(JSON.parse(response), function(i, item) {
		
				if (item.active == "N"
						&& lang == "en")
					activeVal = "Deactivated";
				if (item.active == "Y"
						&& lang == "ar")
					activeVal = "Active";
				if (item.active == "N"
						&& lang == "ar")
					activeVal = "Deactivated";
				
				if (lang == "en")
					role = item.rolenameen;
			
				if (lang == "ar")
					role = item.rolenamear;
				
				let checkPrivilege = '';
				
				if(checkPrivilege ){
					
				}
					userDetails += '<tr>';
					userDetails += '<td>' +slNo + '</td>';
                  
                    userDetails += '<td class="userName">' +item.usercd  + '</td>';
                    userDetails += '<td>' +item.civilid   + '</td>';
                    userDetails += '<td>' +item.usernameen   + '</td>';
                    userDetails += '<td>' +item.usernamear   + '</td>';
                    userDetails += '<td>' +role + '</td>';
                    userDetails += '<td>' +item.email + '</td>';
                    userDetails += '<td>' +item.otp + '</td>';
                    userDetails += '<td>' +item.mobile  + '</td>';
                    userDetails += '<td>' +item.createdby   + '</td>';
                     if (item.active == "Y"
						&& lang == "en"){
					activeVal = "Active";
                    userDetails += '<td class="status">' +activeVal + '</td>';
                    userDetails += '<td>' +'<button class="btn btn-primary"  type="button"  onclick="deactivate($(this));"><fmt:message key="deactivate" /></button>' + '</td>';
                    }
                     if (item.active == "N"
 						&& lang == "en"){
 					 activeVal = "Deactivated";
                     userDetails += '<td class="status">' +activeVal + '</td>';
                     userDetails += '<td>' +'<button class="btn btn-primary"   type="button"  onclick="activate($(this));"><fmt:message key="activate" /></button>' + '</td>';
                     }
                    userDetails += '<td> <img src="img_new/edit1.png" onclick="editUsers($(this))"> </td>';
                    userDetails += '<td style="display:none;">' +item.role   + ' </td>';
                    userDetails += '<td style="display:none;">' +item.center   + ' </td>';
           			userDetails += '<td style="display:none;">' +item.type   + ' </td>';
           			userDetails += '<td style="display:none;">' +item.privilege   + ' </td>';//16
  					userDetails += '</tr>';
                    slNo =slNo + 1;	
				});
						
  	           $('#usrlisttbody').empty();
				table1 = $('#listOfUsersTable').append(userDetails);
				table1.dataTable();	
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				
				}
			}
			
	 });
  }

function civilIdCheck(){
 $('#saveUser').removeAttr("disabled");
 $('#update').attr('disabled', 'true');	
			$('#namear').val('');
	         $('#nameen').val('');
	         $('#email').val('');
	         $('#mobile').val('');
	         $('#userRole').val('');
	         $('#userloc').val('');
	         $('#userID').val('');			
			 $('#civilid').removeAttr("disabled");
			 $('#userAlreadyRegistered').hide();
             $('#userUnAvailable').hide();
			 
			     var civilid = $('#civilid').val();
			 
				var myJSONObj =JSON.stringify({"civilid": civilid});
		
		
				$.ajax({
		               type: "POST",
		               url:requestContextPath+"/apiResponse?method=finduser",
		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {	                 
		            	  
			                    if(data.code=="1"){
									$('#namear').attr('disabled', 'true');
									$('#nameen').attr('disabled', 'true');	
			                    	$('#update').attr('disabled', 'true');
			                    	$('#saveUser').removeAttr("disabled");
			                    	$('#namear').val(data.details.namear);  
									if(data.details.namear ==null || data.details.namear==''){
										$('#namear').removeAttr("disabled");
									}
			                    	$('#nameen').val(data.details.nameen); 
									if(data.details.nameen ==null || data.details.nameen==''){
										$('#nameen').removeAttr("disabled");
									}
			                    	$('#mobile').val(data.details.patphone);   
			                     	//$('#gender').val(data.details.gender);  
			                     	
			                     	    }
			                    
			                    if(data.code=="-2"){
			                    	 $('#update').attr('disabled', 'true');
                                     $('#saveUser').attr('disabled', 'true');
			                        $('#userAlreadyRegistered').show();
			                        $('#userUnAvailable').hide();
			                    	$('#userID').val(data.result);   
			                    	 $('#dbError').hide();
			                    	 
			                    
			                    
			                    }
			                    
			                   if(data.code=="-3"){
			                	   $('#update').attr('disabled', 'true');
			                	  $('#saveUser').attr('disabled', 'true');
			                       $('#userUnAvailable').show();
			                       $('#userAlreadyRegistered').hide();
			                    	
			                       $('#dbError').hide();
			                     
 			        		        
     			                 
     			        		/* 
     			        				$.ajax({
     			        		               type: "POST",
     			        		               url:requestContextPath+"/apiResponse?method=getpatinfo",
     			        		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
     			        						contentType : "application/json",
     			        						crossDomain : true,
     			        						data:myJSONObj,	
     			        						dataType : "json",		
     			        		                success: function (data) {			                 
     			        		            	  
     			        			                    if(data.code=="1"){
     			        			              
     			        			                    	$('#namear').text(data.details.namear); 
     			          			                    	$('#nameen').val(data.details.nameen); 
     			          			                    	$('#gender').text(data.details.gender);
     			          			                    	
     			        			                     }
     			        			                    
     			        			                    if(data.code=="-2"){
     			        			                       $('#update').attr('disabled', 'false');
     			        			                	   $('#save').attr('disabled', 'false');
     			        			                       $('#userUnAvailable').show();
     			        			                       $('#userAlreadyRegistered').hide();
     			                                           
     			        			                   }
     			        			                        
     			        			                    
     			        			                   if(data.code=="-3"){
     			        			                	  
     			        			                    	}
     			        			                    
     			                                              },
     			                             error : function(jqXHR, textStatus, errorThrown) {

     			                       if (jqXHR.status == "401"){
     			        	

     			                       }
     			                       }
     			                       }); 
			                    */
			                   
			                   
			                   
			                   
			                   }
			                   if(data.code=="-4"){
			                	   $('#update').attr('disabled', 'false');
			                	  $('#saveUser').attr('disabled', 'false');
			                       $('#userUnAvailable').hide();
			                       $('#userAlreadyRegistered').hide();
			                       $('#dbError').show();
			                   }
			                    
                                      },
                     error : function(jqXHR, textStatus, errorThrown) {

               if (jqXHR.status == "401"){
	

               }
               }
               }); 
				getToken();	 
		}
		 
		 
		 function deactivate(currentElement){
			 
			 var userName = currentElement.closest("tr").find('td:eq(1)').text();
			
			
			 var myJSONObj =JSON.stringify({"usercd": userName});
				
				
				$.ajax({
		               type: "POST",
		               url:requestContextPath+"/apiResponse?method=deactivateuser",
		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
		            	  
			                    if(data.code=="1"){
			                    	 $(currentElement).text("<fmt:message key="activate" />");
			                    	     currentElement.closest("tr").find('td:eq(9)').text("<fmt:message key="inactive"/>");
				   			   	        $(currentElement).off('click'); 
				   			   	        $(currentElement).click(function(){
				   				        activate(currentElement)
				   			            });
			                     	    }
			                    
			                    
			                    if(data.code=="-4"){
			                    	 
			                    }
			                     	    },
			                    
			          error : function(jqXHR, textStatus, errorThrown) {

            if (jqXHR.status == "401"){
	

            }
            }
            }); 
				getToken();	 
		 }
		
		
         function activate(currentElement){
			 
			 var userName = currentElement.closest("tr").find('td:eq(1)').text();
			
	
			 var myJSONObj =JSON.stringify({"usercd": userName});
				
				
				$.ajax({
		               type: "POST",
		               url:requestContextPath+"/apiResponse?method=activateuser",
		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
		            	  
			                    if(data.code=="1"){
			                    	    $(currentElement).text("<fmt:message key="deactivate" />");
			                    	    currentElement.closest("tr").find('td:eq(9)').text("<fmt:message key="active"/>");
				   			   	        $(currentElement).off('click'); 
				   			   	        $(currentElement).click(function(){
				   				        activate(currentElement)
				   			            });
			                     	    }
			                    
			                 
                                   },
                  error : function(jqXHR, textStatus, errorThrown) {

            if (jqXHR.status == "401"){
	

            }
            }
            });
				getToken();	
			 
		 }
		
		
		 function AddButtonClick(){ 
		      //change text from add to Update
		      $("#AddButton").text('Update');
		    }
		
		
		
		
		
			var code='';

      function  editUsers(currentElement){ 
    	 // alert(currentElement.closest("tr").find('td:eq(16)').text().trim());
			        $('#update').removeAttr("disabled");
			        $('#saveUser').attr('disabled', 'true');
			        $('#mailIdWithMOHErr').hide();
				code = currentElement.closest("tr").find('td:eq(1)').text();
                    $('#userID').val(currentElement.closest("tr").find('td:eq(1)').text());			
				$('#civilid').val(currentElement.closest("tr").find('td:eq(2)').text());				
				$('#namear').val(currentElement.closest("tr").find('td:eq(4)').text());			
				$('#nameen').val(currentElement.closest("tr").find('td:eq(3)').text());
                $('#email').val(currentElement.closest("tr").find('td:eq(6)').text());
                $('#userType').val(currentElement.closest("tr").find('td:eq(15)').text().trim());
                 $('#userloc').val(currentElement.closest("tr").find('td:eq(14)').text().trim());
                 $('#userRole').val(currentElement.closest("tr").find('td:eq(13)').text().trim());
          		$('#mobile').val(currentElement.closest("tr").find('td:eq(8)').text());
          		$('#userPrivilege').val(currentElement.closest("tr").find('td:eq(16)').text().trim());
                getuserList();
                               
				$("#home1").trigger("click");
				$('#civilid').attr('disabled', 'true');
				
				}

			function save() {
				//$('#userCreate').hide();   
				$('#saveUser').show();
				$('#mailIdWithMOHErr').hide();
				    var civilid = $('#civilid').val();
					var namear = $('#namear').val();
					var nameen = $('#nameen').val();
					var mobile = $('#mobile').val();
					var email = $('#email').val();
					var role = $('#userRole').val();
					var userloc = $('#userloc').val();
					//var gender = $('#gender').val();
					var userType = $('#userType').val();
					
					let userPrivilege = $('#userPrivilege').val();
					var expirydate = '05/12/2033';
					

					if (civilid == null || civilid == '') {
						$('#civilIdErr').show();
					}  
					if (nameen == null || nameen == '') {
						$('#usernameErr').show();
					}
					if (namear == null || namear == '') {
						$('#usernameArErr').show();
					}
					if (role == null ||  role == "0") {
						$('#roleErr').show();
					} 
					if (email == null ||  email == "") {
						$('#mailIdEr').show();
					} 
				
					if (userloc == null ||  userloc == "0") {
						$('#userlocErr').show();
					} 
					/* 
					if (gender == null ||  gender == "0") {
						$('#genderErr').show();
					}  */
					
					
					if (mobile == null ||  mobile == '') {
						$('#mobileErr').show();
					} 
					
				
					
					if (userType == null ||  userType == "0") {
						$('#userTypeErr').show();
					}
					if (userPrivilege == null ||  userPrivilege == "0") {
						$('#userTypeErr').show();
					}
					
					//after save
					var myJSONObj =JSON.stringify({"civilid": civilid,"usernameen": nameen,"usernamear": namear,
						"email": email,"mobile": mobile,"rolecd":role,"locationcd": userloc,"expirydate":expirydate,"usertype":userType,"privilege":userPrivilege});

				if(civilid != null &&  civilid != '' && namear!= null && nameen != '' && mobile != '' && userloc != null && userloc != '0' && role != null && role != '0'&& mobile!=null ){
					
					$.ajax({
			               type: "POST",
			               url:requestContextPath+"/apiResponse?method=createuser",
			               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
							contentType : "application/json",
							crossDomain : true,
							data:myJSONObj,	
							dataType : "json",		
			               success: function (data) {
				                    if(data.code=="1"){
				                    	$('#userCreate').show();        
				                    	$('#userID').val(data.result);       
										var myJSONObj1 =JSON.stringify({"usercd": data.result});
										var OTP=data.type;
										var mobno='';
										$.ajax({
										   type: "POST",
										   url:context+"/apiResponse?method=userdtls",		              
											contentType : "application/json",
											crossDomain : true,
											data:myJSONObj1,	
											dataType : "json",		
											success: function (data) {	
													if(data.code=="1" && OTP !=''){
														//$('#otp').val(data.result);
														mobno=data.details.mobile;
														var message="TBControl User , "+data.details.usernameen +","+" Username: "+data.details.usercd+" -otp: "+OTP;
														var myJSONObjotp =JSON.stringify({"mobile": mobno,"message":message });
														$.ajax({
															type: "POST",
															url:  context+"/sendmsg",			                            
															crossDomain : true,
															data:myJSONObjotp,	
															contentType : "application/json",
															dataType : "json",
															success : function(response) {	
																 },
																 error : function(xhr, status, error) {			                                  
															}
														 });
												}
													 $('#saveUser').attr('disabled', 'true');
											}
										});
					}
},
error : function(jqXHR, textStatus, errorThrown) {
	
	if (jqXHR.status == "401"){
		
	   
	    }
}

}); 
				
					getToken();	
				}
			}
		
		
		
		
			   function getToken(){
					 
					$.ajax({
				        type: "POST",
				     
				        url:requestContextPath+"/postlistresponse?method=gettbtoken",
				        contentType : "application/json",
					    headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					    crossDomain : true,
				        success: function (datahere) {
					      
					    var data = JSON.parse(datahere);
				        if(data.code=='1'){
				        	 window.sessionStorage.removeItem('tbcid');
				        	 sessionStorage.setItem("tbcid", data.result);
					      }
				           
					 },
                    error : function(jqXHR, textStatus, errorThrown) {
                   logout();
               
               }
				      }); 
				 
   	 }	
		
		
		
		
			// save 
			function update() {
					
				 //var sdateType = $('#sdatepickerVal'). datepicker('getDate');
				// var sdateTypeVar=$.datepicker.formatDate('dd/mm/yy', sdateType);
				$('#userUpdated').hide();        
				$('#userNotAvailable').hide();      
				
				    var civilid = $('#civilid').val();
					var namear = $('#namear').val();
					var nameen = $('#nameen').val();
					var mobile = $('#mobile').val();
					var email = $('#email').val();
					var role = $('#userRole').val();
					var userloc = $('#userloc').val();
					//var gender = $('#gender').val();
					var userType = $('#userType').val();
					var usercd = $('#userID').val();
					let userPrivilege = $('#userPrivilege').val();
					var expirydate = '05/12/2033';
					

					if (civilid == null || civilid == '') {
						$('#civilIdErr').show();
					} else  $('#civilIdErr').hide();
					if (nameen == null || nameen == '') {
						$('#usernameErr').show();
					} else  $('#usernameErr').hide();
					if (namear == null || namear == '') {
						$('#usernameArErr').show();
					} else  $('#usernameArErr').hide();
					if (role == null ||  role == "0") {
						$('#roleErr').show();
					}  else  $('#roleErr').hide();
				
					if (userloc == null ||  userloc == "0") {
						$('#userlocErr').show();
					} 
					 else  $('#userlocErr').hide();
					
					if (mobile == null ||  mobile == '') {
						$('#mobileErr').show();
					} 
					 else  $('#mobileErr').hide();
					if (email == null ||  email == '') {
						$('#mailIdEr').show();
					}  else $('#mailIdEr').hide();
					
					if (userType == null ||  userType == "0") {
						$('#userTypeErr').show();
					} 
					 else  $('#userTypeErr').hide();
					
					if(userPrivilege == null || userPrivilege=="0"){
						$('#label.userPrivilegeErr').show();	
					}else $('#label.userPrivilegeErr').show();
					//after save
					var myJSONObj =JSON.stringify({"civilid": civilid,"usernameen": nameen,"usernamear": namear,
						"email": email,"mobile": mobile,"rolecd":role,"locationcd": userloc,"expirydate":expirydate,"usertype":userType,"usercd":usercd,"privilege":userPrivilege});

				if(civilid != null &&  civilid != '' && namear!= null && nameen != '' && mobile != '' && userloc != null && userloc != '0' && role != null && role != '0'&& email != null && email != ''){
					
					$.ajax({
			               type: "POST",
			               url:requestContextPath+"/apiResponse?method=updateuser",
			               //headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
							contentType : "application/json",
							crossDomain : true,
							data:myJSONObj,	
							dataType : "json",		
			               success: function (data) {			                 
			            	  
				                    if(data.code=="1"){
				                    	$('#userUpdated').show();        
				                    	$('#userNotAvailable').hide();
				                    			                    	
							               }
				                    
				                    
				                    if(data.code=="-2"){
				                    	$('#userNotAvailable').show();        
				                          $('#userUpdated').hide();       
							               }
				                 
               
               
},
error : function(jqXHR, textStatus, errorThrown) {
	
	if (jqXHR.status == "401"){
		
	   
	    }
}
}); 
				}
			}
			
			function logout(){
				$.ajax({
			        type: "POST",
			     
			        url:requestContextPath+"/postlistresponse?method=tblogout",
			        contentType : "application/json",
				    headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			        success: function (datahere) {
				      
				    var data = JSON.parse(datahere);
			        if(data.code=='1'){

				      }
			            }
			      });

			         window.sessionStorage.removeItem('tbcid');
			         window.sessionStorage.removeItem('namear');
			         window.sessionStorage.removeItem('nameen');
			         window.sessionStorage.removeItem('locar');
			         window.sessionStorage.removeItem('locen');
			         window.sessionStorage.removeItem('type');
			         window.sessionStorage.removeItem('username');
			      
			 		 var context = "${pageContext.request.contextPath}"
			 	     window.location.href = context+"/login";
			}	
			
		function clearData(){
			
			 $('#civilIdErr').hide();
	         $('#civilIdChk').hide();
	         $('#mailIdErr').hide();
	         $('#mailIdEr').hide();
	         $('#mobileErr').hide();
	         $('#validMob').hide();
	         $('#roleErr').hide();
	         $('#userlocErr').hide();
	         $('#genderErr').hide();
	         $('#exist').hide();
	         $('#updateRecord').hide();
	         $('#RecNotFound').hide();
	         $('#dbError').hide();
	         $('#userTypeErr').hide();
	         $('#usernameErr').hide();
	         $('#usernameArErr').hide();
	         $('#exdateErr').hide();
	         $('#failed').hide();
	         $('#userCreate').hide();
	         $('#userAlreadyRegistered').hide();
	         $('#userNotAvailable').hide();
	         $('#userUpdated').hide();
	         $('#userUnAvailable').hide();
	         $('#userType').val('');
	         $('#civilid').val('');
	         $('#namear').val('');
	         $('#nameen').val('');
	         $('#email').val('');
	         $('#mobile').val('');
	         $('#userRole').val('');
	         $('#userloc').val('');
	         $("#userPrivilege").val('');
	         $('#userID').val('');
	         $('#namear').removeAttr("disabled");
	         $('#nameen').removeAttr("disabled");
	         $('#saveUser').attr('disabled', 'true');
		    //$('#saveUser').removeAttr("disabled");
			 $('#update').attr('disabled', 'true');	
			 $('#civilid').removeAttr("disabled");
			
		}	
		
</script>

</body>
</html>