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
<title>PRC Unit</title>
<link href="img_new/favicon.png" rel="icon">
<!-- Custom fonts for this template-->
<link href="admin/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">



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
</style>
</head>


<body id="page-top">
<jsp:include page="ControlPage.jsp"></jsp:include>
	<!-- Page Wrapper -->
	<div id="wrapper">

		<jsp:include page="notificationSidebar.jsp"></jsp:include>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<div class="fixed-top">
					<!-- Topbar -->
					<jsp:include page="PrcHeader.jsp"></jsp:include>
					<!-- End of Topbar -->
					<ol class="breadcrumb bg-gradient-info">
						<!--bg-navy-->
						<li class="col-sm-4 text-left mt-2" style="color: #fff;"
							aria-current="page"><p id="locHeader"></p></li>
						<li class="col-sm-4 text-center phar_head" aria-current="page"><b><fmt:message
									key="label.prc" /></b></li>
						<li class="col-sm-4 text-right newclss mt-2" style="color: #fff;"
							aria-current="page"><p id="nameHeader"></p></li>
						<!--text-right-->
					</ol>
				</div>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="row">

						<div class="col-lg-12">

							<div class="card mb-4 border-bottom-secondary">
								<!--border-bottom-blue-->

								<div class="card-body">

									<div class="row mb-2">

										<div class="col-lg-12 mt-2">
										<div class="tab" role="tabpanel">

												<ul class="nav nav-tabs" id="prcTabType" role="tablist">
													<li class="nav-item"><a class="nav-link active"
														id="patReferralListTab" data-toggle="tab" href="#patientReferralList" role="tab"
														aria-controls="patientReferralList" aria-selected="true"><fmt:message
														key="label.patientRefferal" /></a></li>
													<li class="nav-item"><a class="nav-link "
														id="contactListtab" data-toggle="tab" href="#contactReferralList"
														role="tab" aria-controls="contactReferralList" aria-selected="false" onclick="getContactList()"><fmt:message
														key="label.contactList" /></a></li>
												</ul> 
							<!-- PRC Page START -->					
							<div class="tab-content" id="prcTabContent">
							<!-- Patient Referral Tab STARt -->
							<div class="tab-pane show active" id="patientReferralList" role="tabpanel" aria-labelledby="patReferralListTab">
						     <div id="accordion_prc_list">
									<div class="card border-bottom-info">
										<div class="card-header bg-gradient-info"
											id="heading_prc_list">
											<h5 class="mb-0 panel-title_plus ">
												<a class="btn-link  text-white opencollapsed"
													data-toggle="collapse"
													data-parent="#accordion_prc_list"
													href="#collapse_prc_list" aria-expanded="true"
													aria-controls="collapse_prc_list">Patient Referral
													list</a>
												<div class="float-right ">
													<button type="button" class="btn btn-light "
														title="Refresh" id="refresh"
														onclick="refreshContactData()">
														<i class="fa fa-sync"></i>
													</button>
													<span class="m-0 font-weight-bold text-white  hdd"
														id="roomID"></span>
												</div>
											</h5>
										</div>
										<div id="collapse_prc_list" class="collapse show"
											aria-labelledby="heading_prc_list"
											data-parent="#accordion_prc_list">
											<div class="card-body pt-2">
												<div class="row">
													<div class="col-sm-12">
														<div class="table-responsive">
															<table width="100%" border="0" id="patRefList"
																cellspacing="0" cellpadding="5"
																class="text-dark table table-striped table-bordered">
																<thead>
																	<tr>
																		<th class="bg-table"><fmt:message key="sl.No" /></th>
																		<th class="bg-table hidden"><fmt:message
																		key="label.reqId" /></th>
																		<th class="bg-table hidden" ><fmt:message
																				key="label.patCd" /></th>
																		<th class="bg-table hidden"><fmt:message
																				key="label.patAction" /></th>
																		<th class="bg-table"><fmt:message
																		key="label.IDNum" /></th>
																		<th class="bg-table"><fmt:message
																				key="label.name" /></th>
																		<th class="bg-table"><fmt:message
																				key="label.prcReferralDt" /></th>	
																		<th class="bg-table"><fmt:message
																				key="label.notificationNo" /></th>
																		<th class="bg-table"><fmt:message
																			key="label.view" /></th>		
																	</tr>
																</thead>
																<tbody></tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Patient Referral Tab END -->
							<!-- Contact Tab START -->
							<div class="tab-pane fade" id="contactReferralList" role="tabpanel" aria-labelledby="contactListtab">
							 <div id="accordion_contact_list" >
									<div class="card border-bottom-info">
										<div class="card-header bg-gradient-info"
											id="heading_contact_list">
											<h5 class="mb-0 panel-title_plus ">
												<a class="btn-link  text-white opencollapsed"
													data-toggle="collapse"
													data-parent="#accordion_contact_list"
													href="#collapse_contact_list" aria-expanded="true"
													aria-controls="collapse_contact_list">Contact list</a>
												<div class="float-right ">
													<button type="button" class="btn btn-light "
														title="Refresh" id="refresh"
														onclick="refreshContactData()">
														<i class="fa fa-sync"></i>
													</button>
													<span class="m-0 font-weight-bold text-white  hdd"
														id="roomID"></span>
												</div>
											</h5>
										</div>
										<div id="collapse_contact_list" class="collapse show"
											aria-labelledby="heading_contact_list"
											data-parent="#accordion_contact_list">
											<div class="card-body pt-2">
												<div class="row">
													<div class="col-sm-12">
														<div class="table-responsive">
															<table width="100%" border="0" id="contactListTable"
																cellspacing="0" cellpadding="5"
																class="text-dark table table-striped table-bordered">
																<thead>
																<tr>
																	<th class="bg-table"><fmt:message key="sl.No" /></th>
																	<th class="bg-table hidden"><fmt:message
																	key="label.reqId" /></th>
																	<th class="bg-table hidden" ><fmt:message
																			key="label.patCd" /></th>
																	<th class="bg-table hidden"><fmt:message
																			key="label.patAction" /></th>
																	<th class="bg-table"><fmt:message
																	key="label.IDNum" /></th>
																	<th class="bg-table"><fmt:message
																			key="label.name" /></th>
																	<th class="bg-table"><fmt:message
																			key="label.referredBy" /></th>		
																	<th class="bg-table"><fmt:message
																			key="label.prcReferralDt" /></th>	
																	<th class="bg-table"><fmt:message
																			key="label.notificationNo" /></th>
																	<th class="bg-table"><fmt:message
																			key="label.status" /></th>
																						
																	</tr>
																</thead>
																<tbody></tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Contact Tab END -->
							</div>
							<!-- PRC Page END -->
							</div>
								<!-- PRC Referred Patient data -->
	<div class="modal fade" id="viewPRCReferredPat" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitleUpdate">
						<fmt:message key="label.updatePRCData" />
					</h5>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group row higlightRow">
												<label for="fileNoPRC1" class="col-sm-5 col-form-label "><fmt:message
														key="label.fileNo" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="fileNoPRC1"
														name="last_name">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="addmitedDate1" class="col-sm-5 col-form-label"><fmt:message
														key="label.addmitedDate" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control datepicker"
														readonly="readonly" style="background: white;"
														id="addmitedDate1">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="patPositionPRC1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.patPosition" />:</label>
												<div class="col-sm-7">
													<select name="patPosition" id="patPositionPRC1"
														class="form-control">
														<option value=""><fmt:message key="label.select" />
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="phyNamePRC1" class="col-sm-5 col-form-label"><fmt:message
														key="label.phyName" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="phyNamePRC1"
														name="phyName">
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="daignosisHos1" class="col-sm-5 col-form-label"><fmt:message
														key="label.diagnosis" />:</label>
												<div class="col-sm-7">
													<select class="form-control" id="daignosisHos1"
														name="diagnosis">
														<option value=""><fmt:message key="label.select" />
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="subdiagnosisHos11" class="col-sm-5 col-form-label"><fmt:message
														key="label.subdiagnosis" />:</label>
												<div class="col-sm-7">
													<select name="subdiagnosis" id="subdiagnosisHos11"
														class="form-control">

														<option value="0"><fmt:message key="label.select" />
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-6" id="subdiagnosisHosother1">
											<div class="form-group row">
												<label for="subdiagnosisPRCother11" class="col-sm-5 col-form-label"><fmt:message
														key="label.otherSubDiagnosis" /></label>
												<div class="col-sm-7">
													<input type="text" class="form-control"
														id="subdiagnosisPRCother11" name="last_name">
												</div>
											</div>
										</div>
									</div>
									<div class="row">

										<div class="col-sm-6">
											<div class="form-group row">
												<label for="startDoseDt1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.startDoseDate" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control datepicker"
														readonly="readonly" style="background: white;"
														id="startDoseDt1">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="enddosesDate1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.enddosesDate" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control datepicker"
														readonly="readonly" style="background: white;"
														id="enddosesDate1" name="last_name">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="treatCat1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.treatCat" />:</label>
												<div class="col-sm-7">
													<select name="sel" id="treatCat1" class="form-control">
														<option value=""><fmt:message key="label.select" />
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="treatOutcome1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.treatOutcome" />:</label>
												<div class="col-sm-7">
													<select name="sel" id="treatOutcome1" class="form-control">
														<option value=""><fmt:message key="label.select" />
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="medResistance1" class="col-sm-5 col-form-label"><fmt:message
														key="label.medResistance" />:</label>
												<div class="col-sm-7">
													<select name="medResistance" id="medResistance1"
														class="form-control">
														<option value=""><fmt:message key="label.select" />
													</select>
												</div>
											</div>
										</div>


										<div class="col-sm-6">
											<div class="form-group row">
												<label for="disDate1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.disDate" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control datepicker"
														readonly="readonly" style="background: white;"
														id="disDate1">
												</div>
											</div>
										</div>

										<div class="col-sm-6">
											<div class="form-group row">
												<label for="nextapp1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.nextapp" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control datepicker"
														readonly="readonly" style="background: white;"
														id="nextapp1">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="diagnotes1" class=" col-sm-5 col-form-label"><fmt:message
														key="label.comments" />:</label>
												<div class="col-sm-7">
													<textarea id="diagnotes1" maxlength="300" cols="" rows=""
														class="form-control"></textarea>
												</div>
											</div>
										</div>
										<div class="col-sm-6" style="display: none;">
											<div class="form-group row">
												<label for="prclocation1" class="col-sm-5 col-form-label"><fmt:message
														key="label.prclocation" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="prclocation1"
														name="prclocation" value="5">
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="ppdupdate" style="display: none;"><b><font
								color="green"><fmt:message key="label.ppdupdate" /></font></b></span>
					</div>
					<input type="button" class="btn btn-blue" id="addppd" value="Add">
					<input type="button" id="updateppdbutton1" class="btn btn-blue"
						value="Update">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">
						<fmt:message key="label.close" />
					</button>
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
<script type="text/javascript" src="js/tokenValidator.js"></script>
<script>
		var page = "PRC";
		var mapposition = [];
		var mapoutcome = []; 
		var gStatusList = [];
		$(document).ready(function(){
		
			
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
			//1.Master List for Details Tab
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
					 
					//1.1 list patient position
				  	$.each(response.details.lstpatposition,function(i,response){
	   	       	       if(lang=='en'){
	   	       	          var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			   	       	  mapposition.push({
       	        	        code: response.code, 
       	                    nameen: response.nameen
			              });
			   	       }else{
			   	       	  var div_data="<option value="+response.code+">"+response.namear+"</option>";
			   	   	   }
	                 $(div_data).appendTo('#patPositionPRC1'); 
	                });
					
					
					//1.2 Main Diagnosis List
				  	$.each(response.details.lsttbdiagnosis,function(i,response){
			   	       if(lang=='en'){
			   	       	  var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			   	       }else{
			   	       	  var div_data="<option value="+response.code+">"+response.namear+"</option>";
			   	   	   }
				       $(div_data).appendTo('#daignosisHos1'); 
				    });
					
					//1.3 list treatment category
					 $.each(response.details.lsttreatcategory,function(i,response){
		              if(lang=='en'){
   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	          }else{
   	       	           var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	      }
		              $(div_data).appendTo('#treatCat1'); 
		            });
					
					//1.4 list medical resistance
					 $.each(response.details.lstmedresistance,function(j,response){
				   	   if(lang=='en'){
   	       	            var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	           }else{
   	       	             var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	       }
		               $(div_data).appendTo('#medResistance1'); 
			         });
					
					 //1.5 list treatment outcome 
			 		 $.each(response.details.lsttreatoutcome,function(i,response){
	   	       	        if(lang=='en'){
	   	       	          var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	          mapoutcome.push({
  	        	          code: response.code, 
  	                      nameen: response.nameen
                         });
	   	       	       }else{
	   	       	         var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	   }
         	 		   $(div_data).appendTo('#treatOutcome1');
			 		 });  
				},
		         error : function(jqXHR, textStatus, errorThrown) {
		 				if (jqXHR.status == "401"){
		 				 
		 				    }
		 			}
		     });
			
			//2. referred status List
			$.ajax({
				type : "GET",
				url : context+"/getlistresponse?method=lstDetailsData",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
				success : function(response) {
					 let tempResponse = JSON.parse(response);
					 let statusList = tempResponse.details.refstatus;
					 $.each(statusList,function(item,response){
					 gStatusList.push({
        	          code: response.code, 
                      nameen: response.nameen,
                      namear:response.namear
	                  }); 
					 });
				},
				error : function(jqXHR, textStatus, errorThrown) {
	 				if (jqXHR.status == "401"){
	 				 
	 				    }
	 			}
	        });
				
			
	function getSubdiagnosis(val,myJSONObj,subdiagVal){
				  $("#subdiagnosis"+val+" option").remove();
				  $("#subdiagnosis"+val).append($("<option></option>")
		                    .attr("value", "0")
		                    .text("Select")); 
	 $.ajax({
            type: "POST",
            url:context+"/apiResponse?method=getsubfortbdiagnosis",
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
     	          }
     	          else{
     	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
 	       	      }
              $(div_data).appendTo('#subdiagnosis'+val); 
    	     });
            if(subdiagVal != ''){
	           $('#subdiagnosis'+val).val(subdiagVal);
            }
			                  	
			},
			error : function(jqXHR, textStatus, errorThrown) {
			     	if (jqXHR.status == "401"){}
			}
			});
			}
			
	
	$("#subdiagnosisMain").change(function () {
		 $('#subdiagnosisother1').val('');			
		 var value = this.value;
		if(value == "12"){
 			 $('#subdiagnosisother').show();         
		} else {
			$('#subdiagnosisother').hide();   
			
		}
	});
	getpatientReferredList(); 
	getContactList();
					 
		})/* Documet.ready END */
		
		
		
		
		function getpatientReferredList(){
	  	  $.ajax({
	  		type: "POST",
	           url:context+"/postlistresponse?method=lstprcreferrals",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
			    success : function(datahere) { 
				var response = JSON.parse(datahere);
				var outputDetails = response.details;
				if(outputDetails.length >0){
					let userDetails = '';
					let slNo =1;
					var idname='';
					let idnumber='';
					$.each(outputDetails, function(i, item) {
						 let notificationNo =item.notifid !=null? item.notifid:'';
						 let prcreferraldt= item.prcreferraldt != null ?item.prcreferraldt :'';
			            if(item.idtype =='U'){
			            	idname = item.idnumber;
			            	idnumber = item.idnumber + " (Unknown)";
			            }
			            else{
			            	let idDesc ="";
			            	if(item.idtype =='G'){
			            		idDesc = " (GCC) ";
			            	}else if(item.idtype =='P'){
			            		idDesc = " (Passport) "
			            	}else{
			            		
			            	}
			            	idnumber = item.idnumber + idDesc;
			            	idname=item.patientnamear;
			            }
			         userDetails += '<tr id=patRefRow'+slNo+'>';
					 userDetails += '<td>' +slNo + '</td>';
	                 userDetails += '<td class="hidden">' +item.requestid   + '</td>';
	                 userDetails += '<td class="hidden">' +item.patcd   + '</td>';
	                 userDetails += '<td class="hidden">' +item.pataction   + '</td>';
	                 userDetails += '<td >' +idnumber + '</td>';
	                 if(item.idtype !='U'){
		                 userDetails += '<td><a title="update" ">' +idname  +'<br/>' +item.patientnameen   +'</a></td> ';
				      }else{
		                 userDetails += '<td><a title="update" ">' +idname +'</a></td> ';
		             }
	                 userDetails += '<td>'+prcreferraldt+'</td>';
	                 userDetails += '<td >' +notificationNo+ '</td>';
	                 if(item.requestid != null && item.requestid != 'null' && item.requestid != ''){
	                	 userDetails += '<td><a href="javascript:void(0)" class="c_point"  onclick ="viewContactDetails($(this))"><img src="img/1 1.png" title="view"></a></td>'; 
	                 }else{
	                	 userDetails += '<td></td>'; 
	                 }
	                 userDetails += '</tr>';
			             $('#patRefDate'+slNo).val(item.prcreferraldt);
			             slNo =slNo + 1;	
					});
					$('#patRefList').DataTable().destroy();
	                $('#patRefList tbody tr').remove();
	                var prcTable = $('#patRefList').append(userDetails);                   
	                prcTable.dataTable({
	                 autoWidth: false , columns: [{ width: '1%' }, { width: '0%' }, { width: '0%' }, { width: '0%' }, { width: '8%' }, 
	                 { width: '10%' }, { width: '8%' }, { width: '5%' }, { width: '1%' }]
	                });
	                
	               }
				
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				
				}
			}
		 });
	       getToken();
		}
		
		function getContactList(){
			console.log("Inside getContactList");
				 $.ajax({
			  		type: "POST",
		            url:context+"/postlistresponse?method=lstcontactprcreferrals",
		 			contentType : "application/json",
		 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
		 			crossDomain : true,
					success : function(datahere) { 
					console.log("Inside getContactList1");
					let tempResponse = JSON.parse(datahere);
					let outputDetails = tempResponse.details;
					let userDetails = '';
					let slNo =1;
					 
					$.each(outputDetails, function(i, item) {
					  let notificationNo =item.refnotifid !=null? item.refnotifid:'';
					  let referraldt= item.referraldt != null ?item.referraldt :'';
					 /*  let statusName = '';
					  $.each(gStatuList, function(i, item1) {
						  if(item1.code == item.)
					  }); */
					  if(item.idtype =='U'){
		            	idname = item.idnumber;
		            	idnumber = item.idnumber + " (Unknown)";
				      }else{
		            	let idDesc ="";
		            	if(item.idtype =='G'){
		            	  idDesc = " (GCC) ";
		            	}else if(item.idtype =='P'){
		            	  idDesc = " (Passport) "
		            	}else{
		            		
		            	}
		            	idnumber = item.idnumber + idDesc;
		            	idname=item.namear;
				      }	
					  
					 userDetails += '<tr id=contRefRow'+slNo+'>';
					 userDetails += '<td>' +slNo + '</td>';
		             userDetails += '<td class="hidden">' +item.referralid   + '</td>';
		             userDetails += '<td class="hidden">' +item.regcd   + '</td>';
		             userDetails += '<td class="hidden">' +item.status   + '</td>';
		             userDetails += '<td >' +idnumber + '</td>';
		             
		             if(item.idtype !='U'){
			          userDetails += '<td><a title="update" ">' +idname  +'<br/>' +item.nameen   +'</a></td> ';
					 }else{
			          userDetails += '<td><a title="update" ">' +idname +'</a></td> ';
			         }	
		             userDetails += '<td>'+item.referredbylocnameen+'</td>';
		             userDetails += '<td>'+referraldt+'</td>';
	                 userDetails += '<td >'+notificationNo+ '</td>';
	                 userDetails += '<td >' +item.statusname + '</td>';
	                 userDetails += '</tr>';
	                 slNo =slNo + 1;	
					});
					$('#contactListTable').DataTable().destroy();
	                $('#contactListTable tbody tr').remove();
	                var contactTable = $('#contactListTable').append(userDetails);                   
	                contactTable.dataTable({
	                  autoWidth: false , columns: [{ width: '1%' }, { width: '0%' }, { width: '0%' }, { width: '0%' }, { width: '8%' }, 
	                 { width: '15%' }, { width: '10%' }, { width: '8%' }, { width: '8%' }, { width: '10%' }]
	                });
				},
				error:function(jqXHR, textStatus, errorThrown){
					if(jqXHR.status == "401"){
						
					}
				}
				
			});
		}
		
		function viewContactDetails(){
			$('#viewPRCReferredPat').modal('show');
			
		}
		</script>
		<script src="js/sb-admin-2_d.js"></script>
		<script src="js/printReport.js"></script>
		<script src="admin/datatables/jquery.dataTables.min.js"></script>
		<script src="admin/datatables/dataTables.bootstrap4.min.js"></script>
		<script src="js/demo/datatables-demo.js"></script>

		</body></html>