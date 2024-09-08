<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>NURSE</title>
<link href="img_new/favicon.png" rel="icon">
<!-- Custom fonts for this template-->
<link href="admin/fontawesome-free/css/all.min.css" rel="stylesheet"type="text/css">
<!-- Custom styles for this template-->
<link href="css_pharmacy/sb-admin-2.css" rel="stylesheet">
<link href="admin/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link href="css_pharmacy/main.css" rel="stylesheet">
<link rel="stylesheet" href="css_pharmacy/jquery-ui.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<style>
.list-group_2 {
    width: 250px;
    padding: 0 2px;list-style-type: none!important;
    }

.input-group-append .btn {
	z-index: 1;
}
.c_select {
	border: 0 !important;
	font-weight: bold !important;
	/*color: black !important;*/
	appearance: none !important;
}

.toast {
	position: absolute;
	top: 226px;
	right: 45px;
	border: 1px solid rgb(40, 143, 158);
}

.modal {
	z-index: 9999;
}

.modal .close {
	color: #fff;
	opacity: 1
}

.n_head .close {
	color: #000 !important;
}

.higlightRow {
	border-bottom-left-radius: 10px;
    border-top-left-radius: 10px;
    border-bottom-right-radius: 10px;
    border-top-right-radius: 10px;
    background-color: #129aae4d;
}

 option:disabled {
    color: #b3b2b2;
} 


.popover{   max-width:none!important;}
</style>
</head>


<body id="page-top">
<jsp:include page="ControlPage.jsp"></jsp:include>
<jsp:include page="GenericPage.jsp"></jsp:include>

<!-- <script type="text/javascript" src="js/updateWithAuthenticate.js"></script> -->
	<!-- Page Wrapper -->
	<div id="wrapper">

		<jsp:include page="notificationSidebar.jsp"></jsp:include>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<div class="fixed-top">
					<!-- Topbar -->
					<jsp:include page="notificationHeader.jsp"></jsp:include>
					<!-- End of Topbar -->
					<ol class="breadcrumb bg-gradient-info">
						<!--bg-navy-->
						<li class="col-sm-4 text-left mt-2" style="color: #fff;"
							aria-current="page"><p id="locHeader"></p></li>
						<li class="col-sm-4 text-center phar_head" aria-current="page"><b><fmt:message
									key="label.nurse" /></b></li>
						<li class="col-sm-4 text-right newclss mt-2" style="color: #fff;"
							aria-current="page"><p id="nameHeader"></p></li>
						<!--text-right-->
					</ol>
				</div>

				<!-- Begin Page Content -->
<div class="container-fluid">

	<div class="row">

		<div class="col-lg-12">

			<div class="card">
				<div class="card-body px-2 py-2">
					<div class="tab" role="tabpanel">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li role="presentation"><a href="#search"
								class="nav-link" id="search-tab" aria-controls="search"
								role="tab" data-toggle="tab"><fmt:message
										key="label.searchpatient" /></a></li>
						</ul>

						<!-- Main Tab START -->
						<div class="tab-content" id="myTabContent1">
							<!-- Search tab START -->
							<div class="tab-pane active" id="search" role="tabpanel"
								aria-labelledby="search-tab">
								<div class="row mt-2">
									<div class="col-lg-11">

										<div class="card border-left-info shadow h-100">
											<div class="card-body pt-2 pb-0">
												<div class="row no-gutters align-items-center">


													<table width="100%" border="0" cellspacing="0" cellpadding="5">
														<tbody>
															<tr>
																<td colspan="6">

																	<table id="searchLabByID" width="100%" border="0"
																		cellspacing="0" cellpadding="5">
																		<tbody>
																		<tr>
																				<td scope="col" width="7%"><b>
																				<label class="col-form-label"> <fmt:message key="label.idType" />:<span class="red"
																							style="color: red;">*</span></label></b></td>
																				<td width="30%"><input type="radio"
																					name="searchOption" id="searchByCivilID"
																					value="C"> <label
																					style="color: #07535e;"> <fmt:message
																							key="label.civilid" /></label>&emsp;<input
																					type="radio" name="searchOption"
																					id="searchByPassportID" value="P"> <label
																					style="color: #07535e;" class="col-form-label">
																						<fmt:message key="passport" />
																				</label>&emsp;<input type="radio" name="searchOption"
																					id="searchByGCCID" value="G"> <label
																					style="color: #07535e;" class="col-form-label">
																						<fmt:message key="gcc" />
																				</label>&emsp;<input type="radio" name="searchOption"
																					id="searchByUnknownID" value="U"> <label
																					style="color: #07535e;" class="col-form-label">
																						<fmt:message key="unknown" />
																				</label></td>
																				<td width="8%"><b>
																				<label
																						class="col-form-label " id="searchLabel"></label></b>
																					<span class="red" style="color: red;">*</span>
																				</td>
																				<td><input type="text" id="searchByOption" class="form-control" /></td>
																				<td id="passportNationalityId" colspan="2" width="30%">&nbsp;

																					<div class="form-group row" style= "padding-left: 2rem;">
																						<b> <label class=" col-form-label">
																								<fmt:message key="label.nationality" /> :<span
																								class="red" style="color: red;">*</span>
																						</label></b>
																						<div class="col-sm-7" >
																							<select name="sel" id="nationalityPass"
																								class="form-control">
																								<option value=""><fmt:message
																										key="label.select" /></option>
																							</select>
																						</div>
																					</div>
																				
																			</td>	
																				
																		</tr>
																		<tr><td><div>&nbsp;</div></td>
																		</tr>
																		<tr>
																			<td colspan="5" class="text-center">
																				<span id="patNotExistErr" style="display:none;"> <b><font color="red"><fmt:message key="label.patNotExistErr" /></font></b></span> 
																																						
																				<span id="passMandatoryFieldErr" style="display:none;"> <b><font color="red"><fmt:message key="label.manField" /></font></b></span> 
																				<span id="passNotFound" style="display:none;"> <b><font color="red"><fmt:message key="label.passNotFound" /></font></b></span>
																				<span id="openNotification" style="display:none;"> <b><font color="red"><fmt:message key="label.opennotifyCreateAvailable" /></font></b></span>
																			<span id="notifyNo"></span>
																				</td>
																			<td class="text-right">
																				<input type="button" class="btn btn-info" value="Search" onclick="searchPatient()">&nbsp;
																					<input type="button" class="btn btn-green" id="createReqBtn" value="Create Request" onclick="createRequest()" style="display:none;">&nbsp;
																					<input type="button" class="btn btn-green" id="examDetailsBtn" value="Show Exam Details"  style="display:none;">&nbsp;
																					<input type="button" class="btn btn-danger" value="Clear" onclick="clearAllSearch()">
																				</td>
																		</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-8 mt-3"></div>
								</div>
		<div class="text-right col-lg-11">
		<input type="button" style="display: none;" id="saveRequestBtn" class="btn btn-info" value="Save" onclick="saveNotifRequest()">
		</div>	
		<div class="text-right col-lg-11">
		<span id="notifyReqCreated" style="display: none;"><b><font color="green"><fmt:message key="label.notifyReqCreated" /></font></b></span>
		<span id="notifyReqErr" style="display: none;"> <b><font
									color="red"><fmt:message key="label.reqError" /></font></b></span>	
		<span id="saveRequestErr" style="display:none;"> <b><font color="red"><fmt:message key="label.manField" /></font></b></span> 
		
		</div>
<!-- Navigation tab START -->
<div class="col-sm-12" id="patNavTab">
				<div class="card  border-bottom-grey mt-2 mb-2 p-2">
						<div class="tab" role="tabpanel" id="hideTab">
							<ul class="nav nav-tabs1 " id="myTab2" role="tablist">
								<li class="nav-item"><a class="nav-link  active"
									id="personalInfo_1" data-toggle="tab" href="#personalInfo1"
									role="tab" aria-controls="exam1"
									aria-selected="true"><fmt:message
														key="label.personalInfo" /></a></li>
								<%-- <li class="nav-item"><a class="nav-link" style="display:none;"
									id="info_1" data-toggle="tab" href="#info1"
									role="tab" aria-controls="info1"
									aria-selected="true"><fmt:message
														key="label.initialHospitalNotification" /></a></li> --%>
								<li class="nav-item"><a class="nav-link"
									id="lab_1" data-toggle="tab" href="#lab1"
									role="tab" aria-controls="lab1" style="display:none;"
									aria-selected="true"><fmt:message key="label.examinationTest" /></a></li>
								<%-- <li class="nav-item"><a class="nav-link"
									id="igra_1" data-toggle="tab" href="#igra1"
									role="tab" aria-controls="igra1"
									aria-selected="true"><fmt:message
														key="label.Igra" /></a></li> --%>
							</ul>
						
				 <div class="tab-content1  p-3" id="myTabContent2">
					<!-- Patient Personal Info STARt -->	
		<div class="tab-pane fade show active " id="personalInfo1" role="tabpanel" aria-labelledby="personalInfo_1">
			<div class="row mt-4">
						<div class="col-sm-4">
						<div class="form-group row">
							<label for="nameEn" class="col-sm-3 col-form-label"><fmt:message
									key="label.nameEn" /> :</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="nameEn" disabled="disabled">
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group row">
							<label for="nameAr" class="col-sm-3 col-form-label"><fmt:message
									key="label.nameAr" /> :</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="nameAr"
									disabled="disabled">
							</div>
						</div>
					</div>
				<div class="col-sm-4">
						<div class="form-group row">
							<label for="gender" class="col-sm-3 col-form-label"><fmt:message
									key="label.gender" />:<span class="red"
								style="color: red;">*</span></label>
							<div class="col-sm-9">
								<select class="form-control" id="gender"
									disabled="disabled">
									<option value=""><fmt:message key="label.select" />
									<option value="M"><fmt:message key="label.male" />
									<option value="F"><fmt:message key="label.female" />
								</select>
							</div>
						</div>
					</div> 
		</div>
						
		<div class="row mt-2">
			<div class="col-sm-4" >
				<div class="form-group row">
					<label for="nationality" class="col-sm-3 col-form-label"><fmt:message
							key="label.nationality" /> :</label>
					<div class="col-sm-9">
						<select name="sel" id="nationality"
							class="form-control" disabled="disabled">
							<option selected="selected" value=""><fmt:message
									key="label.select" /></option>
						</select>
					</div>
				</div>
			</div> 
						 
					<div class="col-sm-4">
						<div class="form-group row">
							<label for="dob" class="col-sm-3 col-form-label"><fmt:message
									key="label.dob" /> :</label>
							<div class="col-sm-9">
								<input type="text" class="form-control  datepicker"
									id="dob" disabled="disabled">
							</div>
						</div>
					</div> 
					<div class="col-sm-4">
						<div class="form-group row">
							<label for="bloodgroup" class="col-sm-3 col-form-label"><fmt:message
									key="label.bloodgroup" /> :</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="bloodgroup"
									disabled="disabled">
							</div>
						</div>
					</div>
					
				
		</div>
						
			<div class="row mt-2">
					<div class="col-sm-4" id="govPass">
					<div class="form-group row">
						<label for="governorate" class="col-sm-3 col-form-label"><fmt:message
								key="label.governorate" /> :</label>
						<div class="col-sm-9">
							<select name="sel" id="governorate" class="form-control" disabled="disabled">
								<option selected="selected" value=""><fmt:message
										key="label.select" /></option>
							</select>
						</div>
					</div>
				</div>
					<div class="col-sm-4" id="districtPass">
						<div class="form-group row">
							<label for="district" class="col-sm-3 col-form-label"><fmt:message
									key="label.district" /> : </label>
							<div class="col-sm-9">
								<select name="sel" id="district" class="form-control" disabled="disabled">
									<option selected="selected" value=""><fmt:message
											key="label.select" /></option>
								</select>
							</div>
						</div>
					</div>
						
					
					<div class="col-sm-4">
						<div class="form-group row">
							<label for="dob" class="col-sm-3 col-form-label"><fmt:message
									key="label.address" /> :</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="address"
									disabled="disabled">
							</div>
						</div>

					</div>
		</div>	
		
		<div class="row mt-2">
			
						<div class="col-sm-4">
						<div class="form-group row">
							<label for="mobile" class="col-sm-3 col-form-label"><fmt:message
									key="label.mobile" /> :</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="mobile" disabled="disabled">
							</div>
						</div>
					</div> 
		</div>												
	</div>

<!-- lab STRAt -->	
<div class="tab-pane fade" id="lab1" role="tabpanel" aria-labelledby="lab_1">
<jsp:include page="examinationDetails.jsp"></jsp:include>
</div>
<!-- lab END -->
</div>
	</div>
	</div>
	</div>	
<!-- Navigation tab END -->		
</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		
		
	</div>
</div>

		</div>
	</div>
</div>
<script type="text/javascript" src="js/authentication.js"></script>
<script src="admin/jquery/jquery.min.js"></script>
<script src="admin/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="admin/jquery-easing/jquery.easing.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/sb-admin-2_d.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>	
<script type="text/javascript" src="js/updateWithAuthenticate.js"></script>
<script type="text/javascript" src="js/tokenValidator.js"></script>
<script>
        var page = "nurse";
		var mapposition = [];
		var mapoutcome = []; 
		var gStatusList = [];
		var countpd =0;
		var reqId ='';
		var getLocationTypediv_data ='',lstpcrresultsdiv_data='',lstafbresultsdiv_data='',lstcultureresultsdiv_data='';
		var lstctscanresultsdiv_data='',lDrugSensitive ='';
		var contactId = '', reqiId='',idVal='',idType='',notifCd='', patCd="";
		var fileType = "";  validImageTypes = ['gif', 'jpeg', 'png','pdf']; idTypeForUpload ="";
		var BCGTest = "", vaccinationList = "";
		var idVal='',idType='';
		var gender = '';
		var gccNationality_divData = '',nationality_divdData = '';
		
	$(document).ready(function(){
		$("#patNavTab").hide();
		$('#addLabBtn').hide();
		$('#labReuploadDocBtn').hide();
		$('#passportNationalityId').hide();	
		$("#exContent").hide();
		$("#addPpdBtn").hide();
		
		$('#addLabBtn').hide();
		$('#aLabTable').hide();
		$('#examinationList').hide();
		$('#passportNationalityId').hide();
		
		$('#labTest1').removeClass('show active');
		$('#labTest_1').hide();
		
		$('#radTest1').removeClass('show active');
		$('#radTest_1').hide();
		
		$('#igraTest1').removeClass('show active');
		$('#igraTest_1').hide();
		
		$('#medHistTest1').removeClass('show active');
		$('#medHistTest_1').hide();
		
		 var lang = '<%=response.getLocale().getLanguage()%>';
		 var context = '${pageContext.request.contextPath}';
		 var myDate = new Date();
		 if (lang == 'en') {
				$('#arabic').show();
				$('#english').hide();
				$('#nameHeader').append(sessionStorage.getItem('nameen'));
				$('#locHeader').append(sessionStorage.getItem('locen'));
				$('#role').text(sessionStorage.getItem('roleen'));
				
		} else {
				$('#arabic').hide();
				$('#english').show();
				$('#nameHeader').append(sessionStorage.getItem('namear'));
				$('#locHeader').append(sessionStorage.getItem('locar'));
				$('#role').text(sessionStorage.getItem('rolear'));
		}
			$('#arabic').click(function() {
				$(this).hide();
				$('#english').show();
			});
			$('#english').click(function() {
				$(this).hide();
				$('#arabic').show();
			});
			
			
			/* $('#patNavTab .nav-link').click(function(event) {
     			 
	      		$('#patNavTab .nav-link').removeClass('active');
	      	    $(this).addClass('active');
	      	    $('#myTabContent2 .tab-pane').removeClass('show active');
	      	    let activeTabId = $('#patNavTab .nav-link.active').attr('id');
	      	    
	            if(activeTabId =='personalInfo_1'){ 
	                $("#personalInfo1").addClass('show active');
		 		}else if(activeTabId =='lab_1'){	
		 			$("#lab1").addClass('show active');
	                
	            } 
		 }); */  
			
			   $("input[name='searchOption'][value='C']").attr("checked", true);
			$('#searchLabel').text('<fmt:message key="label.civilid"/>:');
			
			getNationality();
			getGccNationality();
			
			$(':radio').click(function() { 
				clearPatientLabData();
				$('#passportNationalityId').hide();
				$('#patNotExistErr').hide();
				$('#searchByOption').val('');
				
				
				$('#nationality').html('');				
				$('#nationality').append($('<option>', { 
				        value: "",
				        text : "Select"
				    }));
				$(nationality_divdData).appendTo('#nationality');
				
				   if($('input[name="searchOption"]:checked').val() =='C'){
					  $('#searchLabel').text('<fmt:message key="label.civilid"/>:');
		    	   }
		    	   if($('input[name="searchOption"]:checked').val() =='P'){
		    		   $('#passportNationalityId').show();
		    		   $('#nationalityPass').html('');
						$('#nationalityPass').append($('<option>', { 
						        value: "",
						        text : "Select"
						    }));	
						$(nationality_divdData).appendTo('#nationalityPass');
		    		   $('#searchLabel').text('<fmt:message key="passport"/>:');
		    	   }
		    	   if($('input[name="searchOption"]:checked').val() =='G'){
		    		   $('#nationality').html('');				
						$('#nationality').append($('<option>', { 
						        value: "",
						        text : "Select"
						    }));
						$(gccNationality_divData).appendTo('#nationality');
		    		   $('#searchLabel').text('<fmt:message key="gcc"/>:');
		    	   }
		    	   if($('input[name="searchOption"]:checked').val() =='U'){
		    		   $('#searchLabel').text('<fmt:message key="unknown"/>:');
		    	   }		    	   
		    	}) ;
		
	function  getNationality(){
		   $.ajax({
               type: "GET",
               url:context+"/getlistresponse?method=lstnationality",
    			contentType : "application/json",
    			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
    			crossDomain : true,
    			
    			dataType : "json",		
                success: function (datahere) {			                 
               	 var response = JSON.parse(JSON.stringify(datahere));	
                  	  $.each(response,function(i,response){
 		   	       	          if(lang=='en'){
 		   	       	            nationality_divdData+="<option value="+response.code+">"+response.nameen+"</option>";
 		   	       	          }else{
 		   	       	         nationality_divdData+="<option value="+response.code+">"+response.namear+"</option>";
 		   	   	       	          }
 		   	       	});
                },
             error : function(jqXHR, textStatus, errorThrown) {
     				if (jqXHR.status == "401"){
     				    }
     			}
         });
	}
			
		function  getGccNationality(){
     	    $.ajax({
                  type: "GET",
                  url:context+"/getlistresponse?method=lstGccNationality",
       			contentType : "application/json",
       			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
       			crossDomain : true,
       			dataType : "json",		
                   success: function (datahere) {			                 
                  	 var response = JSON.parse(JSON.stringify(datahere));	
                     	  $.each(response,function(i,response)
       	 		            	 {
       		   	       	          if(lang=='en'){
       		   	       	            gccNationality_divData+="<option value="+response.code+">"+response.nameen+"</option>";
       		   	       	          }
       		   	       	          else{
       		   	       	     gccNationality_divData+="<option value="+response.code+">"+response.namear+"</option>";
       		   	   	       	          }
       	 		                  
       	                       });
                   },
                error : function(jqXHR, textStatus, errorThrown) {
        				if (jqXHR.status == "401"){
        				    }
        			}
            }); 
     	}   
		 $.ajax({
	            type: "GET",
	            url:context+"/getlistresponse?method=getlocationtypes",
	 			contentType : "application/json",
	 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	 			crossDomain : true,
	 			dataType : "json",		
	            success: function (datahere) {			                 
	         	        var response = JSON.parse(JSON.stringify(datahere));	
	            	     $.each(response,function(j,response){
	 		   	      	   if(response.loctypecode=='1'||response.loctypecode=='2'||response.loctypecode=='3'||response.loctypecode=='4') { 
	 		   	       		if(lang=='en'){
	 		   	       			getLocationTypediv_data+="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
	 		   	       		}else{
	 		   	       			getLocationTypediv_data+="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
	 		   	   	   	    }
	 	 		          }		
	 	                 });
	          
	           },
	      	   error : function(jqXHR, textStatus, errorThrown) {
	 					if (jqXHR.status == "401"){
	 					getToken(); 
	 					}
	 		   }
	   	  });
	     
	   //Details Tab List
	    $.ajax({
			type : "GET",
			url : context+"/getlistresponse?method=lstDetailsData",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			success : function(response) {
				 var userDetailsHos = ''; userDetailsPcr = '';
				 var slNo =1;
				 var response = JSON.parse(response);
				// list medical resistance
				$.each(response.details.lstmedresistance,function(j,response){
			   	  if(lang=='en'){
			     	   lDrugSensitive +="<option value="+response.code+">"+response.nameen+"</option>";
  	       	          }else{
  	       	           	lDrugSensitive +="<option value="+response.code+">"+response.nameen+"</option>";
  	   	       	      }
	               $(lDrugSensitive).appendTo('#medResistance'); 
		        });
			},
			error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401"){
					getToken(); 
					}
		         }
  	        });
	     
	     
	   //Lab Test details API call 
		    $.ajax({
			type : "GET",
			url : context+"/getlistresponse?method=lstTestData",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			success : function(response) {
				 var response = JSON.parse(response);
				//list PPDTestType				
				 $.each(response.details.lstPPDTestType,function(j,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	        	  
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	         
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#typeoftest');
	 		                  $(div_data).appendTo('#updatetypeoftest');
	                       });
				// list doctor interpretation
				 $.each(response.details.lstdocInterpretations,function(j,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	        	  
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	         
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#ppd1docinterpret');
	 		                  $(div_data).appendTo('#ppd2docinterpret');
	                       });
				
				//list TestReasons
				 $.each(response.details.lstTestReasons,function(j,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	        	  
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	         
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#reasonoftest');
	 		                  $(div_data).appendTo('#updatereasonoftest');
	                       });
				 
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
					getToken(); 
				}
			}
		    });
		    /* $('#searchByOption').on('change', function() {
		    	clearPatientLabData();
	         });*/
      		}); 	//Document.ready END Here
      		
		 function searchPatient(){
			 //$('#dataUnavailable').hide();
			 clearPatientLabData();
			$('#addLabBtn').hide();
			//$('#lab_1').hide();
			
		 	idVal =  $('#searchByOption').val();
			idType = $('input[name="searchOption"]:checked').val();
			let myJSONObj = JSON.stringify({"idnumber":idVal,"idtype":idType});
			if(idType =='P' || idType =='C' || idType =='G' || idType =='U'){
				  	
				 if(idVal != ""){
					 
				  $.ajax({
						type : "POST",
						url : context+"/apiResponse?method=findpatient",
						contentType : "application/json",
						headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						crossDomain : true,
						data : myJSONObj,	
						dataType : "json",	
						success : function(data) {
							if(data.code == '1'){
							addSearchPatDetailsToFields(data);
						}
							if(data.code == '-2'){
								 clearPatientLabData();
								 $('#patNotExistErr').show();
								 
								 if(idType=='C'){
									 $('#patNotExistErr').hide();
									 getCivilIdInfo(idVal,idType);	 
								 }
								 if(idType =='P'){
									$('#patNotExistErr').hide();
							  		$('#passportNationalityId').show();
							  		getPassportInfo(idVal,idType); 
								}
							}
						
						},
						error : function(jqXHR, textStatus,errorThrown) {
							if (jqXHR.status == "401") {
								 getToken();
							}
						}
					});
				 }else{
			  			$('#passMandatoryFieldErr').show();
			  			$('#patNavTab').hide();
			  			//$('#createReqBtn').attr('disabled',true);
			  }
				 }
				 
		  }
		 function getPassportInfo(idVal,Idtype){
			$('#patNavTab').show();
			 let nationalityPass=$('#nationalityPass').val();
			 var myJSONObjPass =JSON.stringify({
											 "idtype":Idtype,
											 "passportnumber":idVal,
											  "nationality":nationalityPass,
											 "civilidnumber":"",});
			  if(nationalityPass==''){
				  $('#pass1').show();
				  $('#manField').show();
			  }
			if(idVal!=''&& nationalityPass!=''){
				 $('#manField').hide();
			      $.ajax({
			               type: "POST",
			               url:context+"/apiResponse?method=getmoipatinfo",
			               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
							contentType : "application/json",
							crossDomain : true,
							data:myJSONObjPass,	
							dataType : "json",		
			                success: function (data) {			                 
				                    if(data.code=="1"){				          			        			                    	
				                    	addSearchPatDetailsToFields(data);
				                    }
				                    if(data.code=="-1"){
				                    	  $('#passNotFound').show();
				                    	  $('#IDName').text('<fmt:message key="label.civilid"/>:');
				                    	  $('#docName').text('<fmt:message key="label.uploadCivilID"/>');
				                          $('#civilid').val('');
				                          $('#civilid').val('');
				                          $('#patNavTab').hide();
				                     }
				                   if(data.code=="-3"){
				                   }
	                         },
	                   		error : function(jqXHR, textStatus, errorThrown) {
						             if (jqXHR.status == "401"){
						             }
	             			}
	             }); 
	           }else{
	        	   //show error message
	        	   $('#passportNationalityId').show();
	        	   $('#passMandatoryFieldErr').show();
	        	   
	           }
			}
		  
			 function getCivilIdInfo(idVal,idType){
					let idNumber = idVal;
	                let inputPatObj =JSON.stringify({"civilid": idNumber});
	                $.ajax({
   		               type: "POST",
   		               url:context+"/apiResponse?method=getpatinfo",
   		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
   						contentType : "application/json",
   						crossDomain : true,
   						data:inputPatObj,	
   						dataType : "json",		
   		                success: function (data) {
   			                   if(data.code=="1"){
				                    $('#patNavTab').show();
				                    addSearchPatDetailsToFields(data);  
   			                    }
   			                    if(data.code=="-3"){

   			                    }
   			                    if(data.code=="-2"){
   			                	  $('#saveRequestBtn').attr('disabled', 'true');		 
   			                      $('#dataUnavailable').show(); 
   			                       $('#patNavTab').hide();
                                }
   			                    
							    if(data.code=="-4"){
  			                	 	$('#dbError').show();  
                                     $('#dataUnavailable').hide();
	   			                }
	                     },
	                     error : function(jqXHR, textStatus, errorThrown) {
	                    if (jqXHR.status == "401"){
	                    }
	                    }
	                    });
					 
				 }
			 
			 $('#examDetailsBtn').on('click',function(){
					$('#personalInfo_1').addClass('active');
					$('#personalInfo1').addClass('show active');
					$('#lab_1').show();
					$('#lab_1').removeClass('active');
					$('#lab1').removeClass('show active');
					$('#aPPDTable').show();
						if(patCd != ''){
							getPPDDetails(patCd);
							
						}
				});
			 
			 function addSearchPatDetailsToFields(data){
					$('#patNavTab').show();
					$('#private').hide();
					$('#examDetailsBtn').show();	
					$('#govhospNameOther').hide();
					$('#riskFactorHosother').hide(); 
						$('#nameAr').val(data.details.namear);
			         	$('#nameEn').val(data.details.nameen); 
			          	if(data.details.idtype=='U'){
			        		 $('#IDName').text('<fmt:message key="unknown"/>:');
			        		 $('#civilid').val(data.details.idnumber); 
	        	 			}
			        	 if(data.details.idtype=='P'){
			        		 $('#IDName').text('<fmt:message key="passport"/>:');
			        		 $('#civilid').val(data.details.idnumber); 
			        	 }
			        	 if(data.details.idtype=='G'){
			        		 $('#IDName').text('<fmt:message key="gccID"/>:');
			        		 $('#civilid').val(data.details.idnumber); 
			        	 }  
			       	    nationality=data.details.nationality;
			   	        $('#nationality').val(nationality);
			         	patCd=data.details.ptcd; 
			         	idVal=data.details.idnumber;
					    idType=data.details.idtype;
					    notifCd = data.details.notifcd;
			  			var phonenumber= []
			         	let mobileStr = data.details.patphone != null? data.details.patphone.toString():"";
			            phonenumber.push(mobileStr);
			           	$('#mobile').val(phonenumber);
			          	$('#bloodgroup').val(data.details.bloodgroup);
			        	$('#gender').val(data.details.gender); 
			   	        $('#dob').val(data.details.birthdate);
			   	   		$('#address').val(data.details.address);
			   	   		 $('#governorate').val(data.details.governorate);
			   	        let myJSONObj =JSON.stringify({"code": data.details.governorate});
			   	  		getDistrictVal(myJSONObj,'',data.details.district) ; 
			   	   		countpd = 0;
			   	   		
				}
			 
		 function getPPDDetails(patCd){
			 $("#exContent").show();
			 $("#ppdtestResult").find("tbody tr").remove();
			 $('#aLabTable').hide();
			 $('#aPPDTable').show();
			 $("#addPpdBtn").hide();
			 let userDetails = '';
			 
			 var myJSONObj =JSON.stringify({"ptcd": patCd});
			$.ajax({
				type:"POST",
				url: context+"/apiResponse?method=lstpatppdbyloc",
				contentType: "application/json",
				headers:{"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain:true,
				data:myJSONObj,
				dataType:"json",
				success:function(data) {
					 
					for (let i = 0; i < data.details.length; i++) {
						let item =  data.details[i];
			                countpd++;
			                let countPPD = countpd;
			                let resenter=''; ppd='ppd',testRequestedBy='',testRequestedOn='';
			                let resdate='';
			               if(item.resultenteredby != null){
			            	   resenter=item.resultenteredby;
			               }if(item.resultentereddt != null){
			            	   resdate=item.resultentereddt;
			               }
			               if(item.testRequestedby != null){
			            	   testRequestedBy=item.testRequestedby;
			               }
			               if(item.testrequestedon != null){
			            	   testRequestedOn=item.testrequestedon;
			               }
			              // alert("patCd: "+ patCd);
			               reqId = item.reqId;
			               let ppdRowData =[];
							 ppdRowData.push({
								 'exId' : item.ppdId,
									'reqId' :item.reqId,
									'rowNum' : countPPD,
									'testId': item.testType,
									'testName':item.testTypeName,
									'patCd' : patCd,
									'procType':'ppd',
									'isPatient':'Y',
									'notifId':'',
									'contId':''
								});
			               let logInputObj = JSON.stringify({"reqid": item.reqId,"regid": patCd,"procid":item.ppdId,"proctype":ppd});
			                userDetails = '<tr id=ppdrow'+countPPD+'>';
			                userDetails += '<td  id=testtypeval'+countPPD+' width=20%>' +item.testTypeName  + '</td>';//0
			                userDetails += '<td id=testReasonNameval'+countPPD+' width=10%>' +item.testReasonName  + '</td>'; //1
			                userDetails += '<td ><a href="javascript:void(0)" class="c_point float-center" examData=\''+JSON.stringify(ppdRowData)+'\'  onclick ="viewppdtest($(this),this)"><img src="img/1 1.png" title="view"></a></td>';
			                userDetails += '<td  class="hidden" id=ppd1TestDateval'+countPPD+'>' +item.ppd1TestDate+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd2TestDateval'+countPPD+'>' +item.ppd2TestDate+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd1ReadingDateval'+countPPD+'>' +item.ppd1ReadingDate+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd2ReadingDateval'+countPPD+'>' +item.ppd2ReadingDate+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd1Readingval'+countPPD+'>' +item.ppd1Reading+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd2Readingval'+countPPD+'>' +item.ppd2Reading+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd1Resultval'+countPPD+'>' +item.ppd1Result+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd2Resultval'+countPPD+'>' +item.ppd2Result+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd1Notesval'+countPPD+'>' +item.ppd1Notes+ '</td>';
			                userDetails += '<td  class="hidden" id=ppd2Notesval'+countPPD+'>' +item.ppd2Notes+ '</td>';
			                userDetails += '<td  class="hidden" id=testTypeval'+countPPD+'>' +item.testType+ '</td>';
			                userDetails += '<td  class="hidden" id=testReasonIdval'+countPPD+'>' +item.testReasonId+ '</td>';
			                userDetails += '<td  class="hidden" id=ppdIdval'+countPPD+'>' +item.ppdId+ '</td>';
			                userDetails += '<td  class="hidden">' +countPPD+ '</td>'; //16
			             	userDetails += '<td  class="hidden" id=ppd1docinterpret'+countPPD+'>' +item.ppd1docinterpret+ '</td>';//20
			                userDetails += '<td  class="hidden" id=ppd2docinterpret'+countPPD+'>' +item.ppd2docinterpret+ '</td>';//21
			                userDetails += '<td class="text-center"><div><img src="img/information.png" id="popover_info_ppd'+countPPD
			                +'" data-placement="top"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_ppd'
			                +countPPD+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'
			                + testRequestedBy +'</span></li><li class=" listyle ml-3" >Test Requesetd On :'
			                + testRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'
			                + resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'
			                + resdate +'</span></li></ul><br/></td>'; 
								userDetails += '<td class="text-center">'
								   userDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
								   userDetails += '<span class="cpoint" style="color: #2196F3;font-size: 32px;" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">...</span>'
								   userDetails += '<ul class="dropdown-menu dropdown-menu-right uiClass" aria-labelledby="dropdown-recent-order1">'
										/* userDetails += '<li class="dropdown-item">'
										userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(ppdRowData)+'\' onclick="deleteppdtest(this)"><i class="fa fa-trash" title="delete"/></i>&nbsp;Delete</a>'
										userDetails += '</li>' */
									if(item.ppdId != null && item.ppdId != ""){
										userDetails +='<li></li>'
										userDetails += '<li class="dropdown-item">'
										userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(ppdRowData)+'\' onclick="uploadfiles(this)"><i class="fa fa-upload" title="upload"/></i>&nbsp;Upload</a>'
										userDetails += '</li>'
										userDetails += '<li class="dropdown-item">'
										userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(ppdRowData)+'\' onclick="viewfiles(this)"><i class="fa fa-download" title="download"/></i>&emsp;View</a>'
										userDetails += '</li>'
										userDetails += '<li class="dropdown-item">'
										userDetails += '<a class="btn btn-info c_point" onclick="printPPD($(this),'+countPPD+')"><i class="fa fa-print" title="print"/></i>&emsp;Print</a>'
										userDetails += '</li>'	
									}else {
											userDetails += '<li class="dropdown-item">'
											userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(ppdRowData)+'\' onclick="deleteppdtest(this)"><i class="fa fa-trash" title="delete"/></i>&nbsp;Delete</a>'
											userDetails += '</li>'
										userDetails +='<li></li>'
										userDetails +='<li></li>'
										userDetails +='<li></li>'
									}
									userDetails += ' </ul>'
									userDetails += ' </div></td>';
			                        userDetails += '</tr>';
			                  $('#ppdtestResult').append(userDetails);
			                  $('#popover_info_ppd'+countPPD).popover({
			 		             html: true, trigger: 'hover',   sanitize: false,
			 		             content: function() {
			 		            	 
			 		            	 $('#popover_content_info_ppd'+countPPD).append(getLogsForUpdate(logInputObj,'trPpdRow'+countPPD));
			 		                  return $('#popover_content_info_ppd'+countPPD).html();
			 		             }
			 				});
			                  
			                }
					
				},
				error: function(jqXHR, textStatus,errorThrown) {
					if (jqXHR.status == "401") {
						 getToken();
					}
				}
			}); 
			 
		 }
		 
		 function viewppdtest(row,rowData){
			   var examObj = JSON.parse(rowData.getAttribute('examData'));
				 $('#trPpdRow' + examObj[0].rowNum + ' table').remove();
					$('#trPpdRow' + examObj[0].rowNum + ' thead').remove();
					$('#trPpdRow' + examObj[0].rowNum).find("tr:gt(0)").remove();
             $('#ppdOutMsg').hide();
             $('#contSaveMsg').hide();
             $('#updatetypeoftest').attr("disabled","true");
             $('#updatereasonoftest').attr("disabled","true");
             $('#update_ppdtest').modal('show');
             $('#updateppdbutton').show();
             $('#updateTest').val(procType);
             $('#rowppdid').val(row.closest("tr").find('td:eq(16)').text());
             var ppdid =  $('#ppdid').val(row.closest("tr").find('td:eq(15)').text());
             $('#exampleModalLongTitleUpdate').show();
             $('#exampleModalLongTitleAdd').hide();
             $('#addppd').hide();$('#ppdupdate').hide();                         
             var test =  $('#updatetypeoftest').val(row.closest("tr").find('td:eq(13)').text());
             $('#updatereasonoftest').val(row.closest("tr").find('td:eq(14)').text());
             $('#updatePPDTestDate1').val(row.closest("tr").find('td:eq(3)').text() == 'null'?'':row.closest("tr").find('td:eq(3)').text());
             $('#updatePPDTestDate2').val(row.closest("tr").find('td:eq(4)').text()== 'null'?'':row.closest("tr").find('td:eq(4)').text() );
             $('#updatePPDReadingDate1').val(row.closest("tr").find('td:eq(5)').text()=='null'? '':row.closest("tr").find('td:eq(5)').text());
             $('#updatePPDReadingDate2').val(row.closest("tr").find('td:eq(6)').text()== 'null'?'':row.closest("tr").find('td:eq(6)').text());
             $('#updateppdreading1').val(row.closest("tr").find('td:eq(7)').text()== 'null'?'':row.closest("tr").find('td:eq(7)').text());
             $('#updateppdreading2').val(row.closest("tr").find('td:eq(8)').text()== 'null'?'':row.closest("tr").find('td:eq(8)').text());
             $('#updateppdresult1').val(row.closest("tr").find('td:eq(9)').text()== 'null'?'':row.closest("tr").find('td:eq(9)').text());
             $('#updateppdresult2').val(row.closest("tr").find('td:eq(10)').text()== 'null'?'':row.closest("tr").find('td:eq(10)').text());
             $('#updateppdnotes1').val(row.closest("tr").find('td:eq(11)').text()== 'null'?'':row.closest("tr").find('td:eq(11)').text());
             $('#updateppdnotes2').val(row.closest("tr").find('td:eq(12)').text()== 'null'?'':row.closest("tr").find('td:eq(12)').text());
             $('#ppd1docinterpret').val(row.closest("tr").find('td:eq(17)').text()=='null'?'':row.closest("tr").find('td:eq(17)').text());
			   $('#ppd2docinterpret').val(row.closest("tr").find('td:eq(18)').text()=='null'?'':row.closest("tr").find('td:eq(18)').text());
             if($('#updatetypeoftest').val() == "1"){
                $('#hideppd2').show();         
             } else {
                $('#hideppd2').hide();    
             }
             
            // alert(examObj[0].patCd + ": " +examObj[0].reqId);
         	$('#updateCount').val(examObj[0].rowNum);
   			$('#updateExid').val(examObj[0].exId);
   			$('#updateCode').val(examObj[0].testId);
   			$('#updateTest').val(examObj[0].procType);
   			$('#updateReqId').val(examObj[0].reqId);
   			$('#updatePatient').val(examObj[0].isPatient);
   			$('#updatePatCd').val(examObj[0].patCd);
   			$('#updateNotifId').val(examObj[0].notifId);
   			$('#updateContId').val(examObj[0].contId);
		 }
		 
		 function deleteppdtest(rowData){  
			  let p_ppdObj = JSON.parse(rowData.getAttribute('examData'));
		       $('#ppdOutMsg').hide();
		       $('#contSaveMsg').hide();
		       let ppdId = p_ppdObj[0].exId;
		       let rowNo = p_ppdObj[0].rowNum;
		       $('#ppdID').val(p_ppdObj[0].exId);
		       $('#ppdRowNo').val(p_ppdObj[0].rowNum);
		          if(ppdId=='null' || ppdId == null){
		            $('#ppdrow'+rowNo).remove();
		          }
		 }
		 
			 function  getDistrictVal(myJSONObj,districtcomp,districtval){		   
				   $("#district option").remove();
				   $("#district").append($('<option>', {value: " ",text:'<fmt:message key="label.select" />'}));
	        	$.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=lstgovdistricts",
		    			contentType : "application/json",
		    			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
		    			crossDomain : true,
		    			data:myJSONObj,
		    			dataType : "json",		
		                success: function (datahere) {			                 
		               	 var response = JSON.parse(JSON.stringify(datahere));	
		                  	   $.each(response,function(i,response){
			   	       	          if(lang=='en'){
			   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			   	       	          }else{
			   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
			   	   	       	      }
		 		                  $(div_data).appendTo($("#district")); 
		    	               });
		                  	 $('#district').val(districtval);
		                   /* if(districtcomp != '' && districtval != ''){
			                  	 $('#'+districtcomp).val(districtval);
		                  	 } */
		                },
		             error : function(jqXHR, textStatus, errorThrown) {
		     				
		     				if (jqXHR.status == "401"){
		     					
		     				    }
		     			}
		         }); 
			   }
			 
			 function clearAllSearch() {
					document.querySelector('input[name="searchOption"][value="C"]').checked = true;
					$('#searchLabel').text('<fmt:message key="label.civilid"/>:');
					$('#searchByOption').val('');
					$('#passportNationalityId').hide();
		       	 	$('#nationalityPass').val('');
					clearPatientLabData();
				}
			 function clearPatientLabData() {
				    countpd = 0;
					patCd='';
					$('#examDetailsBtn').hide();
					$('#createReqBtn').hide();
		       	 	$('#saveRequestBtn').hide();
					$("#ppdtestResult").find("tbody tr").remove();
					//$("#contIgraTest").find("tbody tr").remove();
					$("#searchListByIDType").find("tr:gt(0)").remove();
					$('#fileCivilId_notif0').val('');
					$('#contactNameHide').hide('');
					$('#patNotExistErr').hide();
					$('#openNotification').hide();
		       	 	$('#notifyNo').text('');
		       	 	$('#patNavTab').hide();
		       	 	$('#notifyReqErr').hide();
		       	 	$('#notifyReqCreated').hide();
		       	 	$('#personalInfo_1').show();
		       	 	$('#personalInfo_1').addClass('active');		       		
		       		//$('#personalInfo_1').addClass('active');
					$('#personalInfo1').addClass('show active');
					$('#lab_1').hide();
					$('#lab_1').removeClass('active');
					$('#lab1').removeClass('show active');
		       	 	$('#passMandatoryFieldErr').hide();
		       	 	$('#passNotFound').hide();
					$('#nationality').val('');
					$('#mobile').val('');
					$('#bloodgroup').val('');
					$('#dob').val('');
					$('#address').val('');
					$('#nameAr').val('');
					$('#governorate').val('');
					$('#district').val('');
					$('#nameEn').val('');
					$('#gender').val('');
					$("#hospGovName").attr('disabled', false);
			    	 $("#hospNameP").attr('disabled', false);
			    	 $("#subdiagnosisMain").attr('disabled', false);
			    	 $('#hospCategory').val('');
						$('#hospGovName').val('');
						$('#hospNameOther').val('');
						$('#fileNo').val('');
						$('#hospNameP').val('');
						$('#diagnosisMain').val('');
						$('#subdiagnosisMain').val('');
						$('#referralDate').val('');
						$('#phyName').val('');
						$('#phyNo').val('');
						$('#patPosition').val('');
						$('#riskFactorHos').val('');
						$('#action').val('');
						$('#riskFactorHosother1').val('');
						$('#pcrdate').val('');
						$('#isolateddateref').val('');
				}
			 
		 /* function  getMedicalHistoryByVaccination(patcd){
			 vaccinationList='';
			 			var jsonObj = {  
			   					"patcd":patcd}
			 			var myJSONObj =JSON.stringify(jsonObj);
			 		   	$.ajax({
			                 url:context+"/apiResponse?method=medicalHistByVaccination",
			     			contentType : "application/json",
			     			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			     			crossDomain : true,
			     			type: "POST",
			      	        data:myJSONObj,	
			                 success: function (datahere) {			                 
			                	 var response = JSON.parse(datahere);	
			                   	  $.each(response,function(i,result)
			     	 		               {
			                   		  let tedate=(result.TestDate==null||result.TestDate=='')?'':result.TestDate;
			                   		vaccinationList += result.testName + " (" + tedate + ") " ;
			                   		if(i < response.length - 1){
			                   			vaccinationList  += ", " ;
			                   		}
			                   		 if(result.testName == "BCG"){
			                   		  	BCGTest = "Yes";
			                   		 }
			     	                       });
			                 },
			              error : function(jqXHR, textStatus, errorThrown) {
			      				if (jqXHR.status == "401"){
			      				    }
			      			}
			         	 });
			 		 } */
		
		
		</script>
		<script src="js/sb-admin-2_d.js"></script>
		<script src="js/printReport.js"></script>
		<script src="admin/datatables/jquery.dataTables.min.js"></script>
		<script src="admin/datatables/dataTables.bootstrap4.min.js"></script>
		<script src="js/demo/datatables-demo.js"></script>

		</body></html>