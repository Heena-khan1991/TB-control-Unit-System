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
<title>TB Unit</title>
<link href="img_new/favicon.png" rel="icon">
<!-- Custom fonts for this template-->
<link href="admin/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template-->
<link href="css_pharmacy/sb-admin-2.css" rel="stylesheet">
<link href="admin/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link href="css_pharmacy/main.css" rel="stylesheet">
<link rel="stylesheet" href="css_pharmacy/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/select2.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<style>
#updatePPDTestDate1, #updatePPDReadingDate1, #updatePPDTestDate2,
	#updatePPDReadingDate2 {
	z-index: 99999 !important;
}

 

#igraExamDt {
	z-index: 99999 !important;
}

 

.rounded {
	border-radius: 15px;
}

.highlight {
	background-color: lightyellow !important;
}

.input-group-append .btn {
	z-index: 1;
}

.selected {
	color: red;
	background-color: yellow;
}

.list-group_2 {
	width: 250px;
	padding: 0 2px;
	list-style-type: none !important;
}

.toast {
	position: absolute;
	top: 226px;
	right: 45px;
	border: 1px solid rgb(40, 143, 158);
}

.displayNone {
	display: none !important;
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

.displayhidden {
	display: block !important;
}

.c_select {
	border: 0 !important;
	font-weight: bold !important;
	color: black !important;
	appearance: none !important;
}

.popover{max-width:none!important;}
.dropdown-item {  display: inline !important;background: rgb(224, 230, 233)!important;}
</style>
</head>

<body id="page-top">
    <jsp:include page="ControlPage.jsp"></jsp:include>
    <jsp:include page="GenericPage.jsp"></jsp:include>
	<!-- Page Wrapper -->
	<div id="wrapper">

		<jsp:include page="notificationSidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->

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
									key="label.TBunit" /></b></li>
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
											<%-- RoomList modal START --%>
											<div class="modal fade" id="roomModal" tabindex="-1"
												role="dialog" aria-labelledby="roomListModal"
												aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered modal-xl"
													role="document">
													<!--modal-xl-->
													<div class="modal-content">
														<div class=" modal-header bg-gradient-info text-white ">
															<h5 class="modal-title" id="roomListModal">
																<b>Rooms</b>
															</h5>
															<button class="close " type="button" aria-label="Close"
																id="closeBtn">
																<span>×</span>

															</button>
														</div>
														<div class="modal-body">
															<div class="form-group row ">
																<label class="col-sm-4 col-form-label">Name :<span
																	class="text-danger">*</span>
																</label>
																<div class="col-sm-8 ">
																	<div class="input-group">
																		<select name="roomList"
																			class="form-control selectVal3 col-sm-8"
																			id="roomList">
																			<option value="0"><fmt:message
																					key="label.select" /></option>
																		</select>
																	</div>
																	<span id="emptyRoomIdErr" style="display: none;"><b><font
																			color="red"><fmt:message
																					key="label.roomIdEmpty" /></font></b></span>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<%-- RoomList modal END --%>
											<div class="tab-content pl-2 pr-2" id="myTabContent">
												<!-- Notification List START  -->
												<div id="accordion_notif_list" id="notificationList">
													<div class="card border-bottom-info">
														<div class="card-header bg-gradient-info"
															id="heading_notif_list">
															<h5 class="mb-0 panel-title_plus ">
																<a class="btn-link  text-white opencollapsed"
																	data-toggle="collapse"
																	data-parent="#accordion_notif_list"
																	href="#collapse_notif_list" aria-expanded="true"
																	aria-controls="collapse_notif_list">Notification
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
														<div id="collapse_notif_list" class="collapse show"
															aria-labelledby="heading_notif_list"
															data-parent="#accordion_notif_list">
															<div class="card-body pt-2">
																<div class="row">
																	<div class="col-sm-12">
																		<div class="table-responsive">
																			<table width="100%" border="0" id="notificationList"
																				cellspacing="0" cellpadding="5"
																				class="text-dark table table-striped table-bordered">
																				<thead>
																					<tr>
																						<th class="bg-table"><fmt:message key="sl.No" /></th>
																						<th class="bg-table"><fmt:message
																								key="label.notificationNo" /></th>
																						<th class="bg-table"><fmt:message
																								key="label.IDNum" /></th>
																						<th class="bg-table"><fmt:message
																								key="label.name" /></th>
																						<th class="bg-table"><fmt:message
																								key="label.edit" /></th>
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
												<!-- Notification List END  -->
												<hr>
												<!-- Profile Tab START -->
												<div class="tab-pane fade" id="home" role="tabpanel"
													aria-labelledby="home-tab">
													<div class="row ">
														<!-- SAVE, UPDATE, REFRESH -->
														<div class="col-xl-12 col-md-12 mb-1 ">

															<div class="text-right">
																<span id=saveContReq style="display:none"><b><font color="green"><fmt:message
																				key="label.notifyCreated" /></font></b></span>
															</div>

															<!-- Notification Number Tab END-->
															<div id="contactTab">
																<div class="row">
																	<!-- Personal Info Tab -->
																	<div class="col-lg-5">
																		<div class="card shadow border-left-info">

																			<div class="card-header  d-flex bg-gradient-light">
																				<h6 class="m-0 font-weight-bold text-info  hdd">
																					<fmt:message key="label.personalInfo" />
																				</h6>

																				<div
																					class=" text-green  font-weight-bold text-center col-sm-6"></div>
																			</div>
																			<div class="card-body pt-1 pb-1">
																				<table width="100%" border="0" cellspacing="0"
																					cellpadding="5" class="text-dark">
																					<tr>
																						<td colspan="2"><fmt:message key="label.name" />
																							: <b><span id="nameEn"></span></b></td>

																						<td colspan="2"><b><span id="nameAr"></span></b>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="2"><fmt:message
																								key="label.nationality" /> : <b><span
																								id="nationality"></span></b></td>

																						<td colspan="2"><fmt:message
																								key="label.gender" /> : <b><span
																								id="gender"></span></b></td>
																					</tr>
																					<tr>
																						<td colspan="2"><fmt:message
																								key="label.mobile" />: <b><span id="mobile"
																								name="phonenumber"></span> </b></td>
																						<td colspan="2"><fmt:message key="label.dob" />:
																							<b><span id="dob"></span> </b></td>

																					</tr>

																					<tr>
																						<td colspan="2"><fmt:message
																								key="label.bloodgroup" />: <b><span
																								id="bloodgroup"></span> </b></td>
																						<td colspan="2"><fmt:message
																								key="label.address" /> : <b><span
																								id="address"></span> </b></td>

																					</tr>
																				</table>

																				<!--start waiting List-->
																			</div>
																		</div>
																	</div>
																<div class="col-lg-7">
																		<div class="card shadow border-left-info">

																			<div class="card-header  d-flex bg-gradient-light">
																				<h6 class="m-0 font-weight-bold text-info  hdd">
																					<fmt:message key="label.contactInfo" />
																				</h6>

																				<div
																					class=" text-green  font-weight-bold text-center col-sm-6"></div>
																			</div>
																			<div class="card-body pt-1 pb-1">
																				<table width="100%" border="0" cellspacing="0"
																					cellpadding="5" class="text-dark">
																					<tbody>
																						<tr>
																							<td width="50%">&nbsp; <fmt:message
																									key="label.reference" /> : <b> <select
																									name="reference" id="reference"
																									class="c_select col-sm-6" disabled>
																										<option value="0" style="display: none;"><fmt:message
																												key="label.select" />
																								</select></b>
																							</td>
																							<td width="50%">&nbsp; <fmt:message
																									key="label.riskFactor" /> : <select
																								name="riskFactorPRC" id="riskFactorPRC"
																								class="c_select col-sm-6" disabled>
																									<option value="0" style="display: none;"><fmt:message
																											key="label.select" />
																							</select> <b> <span id="riskFactorOther"></span>
																							</b>
																							</td>
																						</tr>

																						<tr>
																							<td width="50%">&nbsp; <fmt:message
																									key="label.comorbodities" /> <select
																								name="comorbodities" id="comorbodities"
																								class="c_select col-sm-6" disabled>
																									<option value="0" style="display: none;"><fmt:message
																											key="label.select" />
																							</select> <b><span id="comorboditiesOther"></span></b>
																							</td>
																							<td width="50%">&nbsp; 
																							<fmt:message key="label.relation" />
																		                        <select class="form-control " id="relation" multiple='multiple' name="relation" disabled ></select> 
																									
																							
																							</td>
																						</tr>
																						<tr>
																							<td colspan="2">


																								<table width="100%" border="0" cellspacing="0"
																									cellpadding="5">
																									<tbody>
																										<tr>
																											<td width="25%"
																												style="border-bottom-left-radius: 10px; border-bottom-left-radius: 10px; border-top-left-radius: 10px; background-color: #129aae4d"><label><b>
																														<fmt:message key="label.contDocStat" />
																												</b></label></td>
																											<td width="75%"
																												style="background-color: #129aae4d; border-top-right-radius: 10px; border-bottom-right-radius: 10px;"><select
																												name="contDocStat" id="contDocStatus"
																												class="form-control">
																													<option value=""><fmt:message
																															key="label.select" />
																											</select></td>
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


																	<!-- Contact Notification Info -->
																	<div class="col-lg-12">
																		<div class="text-right mt-2">
																			<button type="button" class="btn btn-green" id="saveContactNotify" onclick="saveContactRequest()" title="Save">
																				<fmt:message key="label.save" />

																			</button>
																			&nbsp;
																			<button type="button" class="btn btn-danger status-badge1" onclick="clearContNotificationData()" title="Clear">
																				<fmt:message key="label.clear" />
																			</button>
																			<div>
																				<span id="contSaveMsg" style="display: none"><b><font color="green"> <fmt:message
																								key="label.saveRecord" /></font></b></span>
																			</div>
																		</div>
																	</div>

																	<!-- Examination List tab START-->
																</div>
																<div class="col-sm-12">
																	<jsp:include page="examinationDetails.jsp"></jsp:include>
																</div>
															</div>
															<!-- 8888888 -->
														</div>
														<!-- HOME END -->
													</div>
												</div>
												<!--card body-->
											</div>
											<!--card-->
										</div>
									</div>
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- End of Main Content -->

							<!-- Footer -->
							<jsp:include page="notificationFooter.jsp"></jsp:include>
							<!-- End of Footer -->
						</div>
						<!-- End of Content Wrapper -->
						<!-- End of Page Wrapper -->
						<!-- Scroll to Top Button-->
						<!-- <a class="scroll-to-top rounded" href="#page-top"> <i
							class="fas fa-angle-up"></i>
						</a> -->
						<!--start waiting List-->
						<!--end waiting list-->

						<!-- start Disease Modal-->
						<!-- end of Disease Modal-->
						<!-- start Disease Modal-->
						<div class="modal fade" id="waiting_list_3" tabindex="-1"
							role="dialog" aria-labelledby="tit" aria-hidden="true">
							<div class="modal-dialog  modal-lg" role="document">
								<!--modal-dialog-centered-->
								<div class="modal-content">
									<div class="modal-header bg-gradient-info text-white">
										<h5 class="modal-title" id="exampleModalLongTitle">
											<fmt:message key="label.disease" />
										</h5>
										<button type="button" class="close" onclick="clearcheck()"
											data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">

										<div class="row">
											<div class="col-lg-12">
												<div class="card shadow mb-4">

													<div class="card-body">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0" id="diseaselist1"
															class="table  table-striped table-bordered bdrr1">
															<tbody>

															</tbody>
														</table>
													</div>
												</div>

											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-blue" id="pcrdisease">
											Add</button>
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal" onclick="clearcheck()">
											<fmt:message key="label.close" />
										</button>

									</div>

								</div>
							</div>
						</div>

						<!-- Logout Modal-->
						<div class="modal fade" id="logoutModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">
											<fmt:message key="label.readytoLeave" />
										</h5>
										<button class="close" type="button" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">×</span>
										</button>
									</div>
									<div class="modal-body">
										<fmt:message key="label.logoutMsg" />
									</div>
									<div class="modal-footer">
										<button class="btn btn-secondary" type="button"
											data-dismiss="modal">
											<fmt:message key="label.cancel" />
										</button>
										<a class="btn btn-primary" onclick="logout()"><fmt:message
												key="label.logout" /></a>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="contactOpenPopUp" tabindex="-1"
							role="dialog" aria-labelledby="tit" aria-hidden="true"
							data-backdrop="static" data-keyboard="false">
							<div class="modal-dialog modal-dialog-centered modal-lg"
								role="document">
								<div class="modal-content">
									<div class="modal-header bg-gradient-info text-white">
					
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-lg-12">
												<div class="card shadow mb-4">
													<div class="card-body">
														<input type="hidden" id="conctOpenMsgId"> <input
															type="hidden">
														<fmt:message key="label.contactOpenMsg" />
													</div>
												</div>
											</div>
										</div>
									</div>
									<%-- <div class="modal-footer">
										<div class="col-sm-12 text-center">
											<span id="igradeletesuccess"><font color="green"><fmt:message
														key="label.igraDeleteSuccess" /></font></span>
										</div>
										<input value="Yes" type="button" id="deleteIgraBtn"
											class="btn btn-green" onclick="deleteIgra()">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal" onclick="clearMsgIgra()">
											<fmt:message key="label.cancel" />
										</button>
					
									</div> --%>
								</div>
							</div>
	</div>
						<!--end notification-->
						<!--Patient info modal-->
					</div>
				</div>

				<!-- Bootstrap core JavaScript-->
				<script type="text/javascript" src="js/authentication.js"></script>
				<script src="admin/jquery/jquery.min.js"></script>
				<script src="admin/bootstrap/js/bootstrap.bundle.min.js"></script>
				<script src="admin/jquery-easing/jquery.easing.min.js"></script>
				<script src="js/jquery-ui.js"></script>
				<script src="js/icd11windows.js"></script>
				<script type="text/javascript" src="js/common.js"></script>
				<script type="text/javascript" src="js/updateWithAuthenticate.js"></script>
				<script type="text/javascript" src="js/tokenValidator.js"></script>
				<script src="js/sb-admin-2_d.js"></script>
				<script src="js/printReport.js"></script>
				<script src="admin/datatables/jquery.dataTables.min.js"></script>
				<script src="admin/datatables/dataTables.bootstrap4.min.js"></script>
				<script src="js/demo/datatables-demo.js"></script>
				<script src="js/jquery.nicescroll.min.js"></script>
				<script src="js/select2.min.js"></script>
				<script type="text/javascript">
				var page = "contactNotifDetails";
	var medResponse=''; lstxrayresultsdiv_data = '' ; lstctscanresultsdiv_data = ''; lstafbresultsdiv_data = ''; lstMedTreatTypediv_data = '';
	var lstabnormalresultsdiv_data = ''; lstcultureresultsdiv_data = ''; lstpcrresultsdiv_data = ''; getLocationTypediv_data = ''; getSubDaignosisdiv_data = '';
	var lDrugSensitive ='', getMultiRelationDivData = '', labDrugSensitiveDivData ='';
	var roomName =''; val='';
	var roomId ='';
	var regDetails='';
	var BCGTest = "", vaccinationList = "";
	var mapaction =[]; 
	var mapoutcome = []; 
	var mapposition = [];
	var base64StringCivil='';
	var base64StringPass='';	
	var Idtype=''; 
    var idVal='';
    var idValOther='';
    var pulmonarytbcase=false;
    var extrapulmonarytbcase=false;
    //var ptcd='';
    var reqid='';
	var labtest = []; 
	var phone = []; 
	var radtest = []; 
	//var ppdInArr = [];
	var igraTestData =[];
	var civilbasestring='';
	  var nationality='';
	  var district='';
	  var residency='';
	  var governorate='';
	  var gender='';
	  var marital='';
	  var nationalitycd='';
	  var governoratecd='';
	  var gendercd='';
	  var maritalcd='';
	  var notifcd='';
	  var districtcd='';
	  var recidencycd='';
	  var occupationcd = '';
	  var historyold=''; 
	  var oldnotify='';
	  var lang = '<%=response.getLocale().getLanguage()%>';
	  var context = '${pageContext.request.contextPath}';
	  var updateppd = null;
	  var contactId ='';	  
	  var fileType = "";  validImageTypes = ['gif', 'jpeg', 'png','pdf']; idTypeForUpload ="";
	  var inspectorList ='';
	  var riskfactorDetails ='';
	  var labOutput =0;var radOuput =0;var ppdOutput=0; igraOutput =0; var contDocStat =0;
	  var docStatus = '';
	  var regId ='';
	  var lstIgraResult = '';
	  var igraTestTypeList = '';
	  var igraResponse='';
	  var igraTest = [];
	  var labRequestedBy ='',labRequestedOn='',radRequestedBy ='',radRequestedOn='',ppdRequestedBy ='',ppdRequestedOn='',igraRequestedBy ='',igraRequestedOn='';
	  var patObj ='';
	  var igraArray = [];
	  var getRadCount = 0;
	  var getLabCount = 0;
	  var countRad=0;
	  var countIgra = 0;
	 var isContactOpen = false;
	 var isContact = true;
	 var notifId = '';
	 var contId = '';
	 var relationdatalst='';
	 var labDrugSensitiveDivData = '',labSpecimenTypeDivData='';
	  
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
 			 $('#relation').select2({
 	            placeholder: 'Select an option',
 	            allowClear: true
 	        }); 
 			$('#home').show();
 			$('#labOutMsg').hide();
 			$('#labOutErrMsg').hide();
 			$('#radOutMsg').hide();
 			$('#radOutErrMsg').hide();
 			$('#ppdOutMsg').hide();
 			$('#ppdOutErrMsg').hide();
 			$('#contSaveMsg').hide();
 			$('#igraOutErrMsg').hide();
 			$('#igraOutMsg').hide();
 			$('#resultErr1').hide(); 
 			 $('#labdeletesuccess').hide();
 			$('#raddeletesuccess').hide();
 			$('#ppddeletesuccess').hide();
 			//$('#resultErr2').hide(); 
 			//$('#resultErr3').hide(); 
 			$('#resultErr4').hide();
 			$('#aIgraTable').show(); 
 			$('#aPPDTable').show(); 
 			$('#aRadTable').show();
 			$('#iRequesterTh').removeClass('hidden');
 			$('#igraAddBtn').show();
 			
 			$('#medHistTest1').removeClass('show active');
			$('#medHistTest_1').hide();
 			
 			
 			$.ajax({
 		         type: "GET",
 		         url:context+"/getlistresponse?method=lstinpectordata",
 					contentType : "application/json",
 					headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
 					crossDomain : true,
 					dataType : "json",		
 		          	success: function (datahere) {	
 		          	var response = JSON.parse(JSON.stringify(datahere));
 		          	
 		          	$.each(response.details.relation,function(i,response){
 		          		let div_data='';
		   	       	    if(lang=='en'){
		   	       	       div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	    }else{
		   	       	           div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	}
		   	       	    relationdatalst=relationdatalst+div_data;
		   	       	    //$(div_data).appendTo('#relation'); 
	                });
 		          	
 		          	$.each(response.details.reference,function(i,response){
 		          		let div_data='';
   	       	          if(lang=='en'){
   	       	            div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	          } else{
   	       	            div_data="<option value="+response.code+">"+response.namear+"</option>";
 		   	   	     }
 			           $(div_data).appendTo('#reference'); 
 	                });
 		          	
 		          	$.each(response.details.comorbodities,function(i,response){
 		          		let div_data='';
   	       	          if(lang=='en'){
   	       	            div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	          }else{
   	       	        	 div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	     }
   	       	          $(div_data).appendTo('#comorbodities'); 
 	                });
 		          	
 		          riskFactorDetails=response.details.riskfactor;
 		          
 	        	  $.each(response.details.riskfactor,function(i,response){
   	       	          if(lang=='en'){
   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	          }else{
   	       	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	      }
		              $(div_data).appendTo('#riskFactorPRC'); 
 	              });
 	        	  
 	        	 $.each(response.details.contactdocstatus,function(i,response){
 	        		if(lang=='en'){
	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	     }else{
	   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	 }
 	        		$(div_data).appendTo('#contDocStatus'); 
	              });
 		          },
 		          	error : function(jqXHR, textStatus, errorThrown) {				
 						if (jqXHR.status == "401"){
 		  				}
 					}
 	 		});	
 			
	    //Room List API Call	
 		$.ajax({
	         type: "GET",
	         url:context+"/getlistresponse?method=lstconsultationrooms",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
				dataType : "json",		
	          	success: function (datahere) {	
	          	roomList = JSON.parse(JSON.stringify(datahere));
	        	let rooms = roomList.details;
	        	
	        	$.each(roomList.details,function(i,response){   
	       		if(lang=='en'){
	       			var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	    	   	 }else{
	    	   	     var div_data="<option value="+response.code+">"+response.namear+"</option>";
	    	   	 }
	    		   $(div_data).appendTo('#roomList'); 
	    		 }); 
	        	//$("#roomModal").modal("show");
	        	$("#myTabContent").hide();
	     		
	        	
	        	
	        if(rooms.length == 1){
	        	$("#roomList option[value=1]").attr('selected', 'selected');
	        	$('#roomID').text(rooms[0].nameen); 	
	        	roomId = rooms[0].code;
	        	$('#roomList').val(roomId);
	        	$("#myTabContent").show();
	        	$("#roomModal").modal("hide");
	      		getprofiletabdata(); 
	        }
	        else {
	        	$("#roomModal").modal("show");
	        }
	        
	        $('#roomList').on('change', function() {
	        	$("#roomModal").modal("hide");
	      		$("#myTabContent").show();
    		       roomName = $("#roomList option:selected").text();		 
    			   roomId = $(this).val();
    			   $('#roomID').text(roomName);	
    			   getprofiletabdata(); 
    		});
	        
	      },
	      error : function(jqXHR, textStatus, errorThrown) {				
					if (jqXHR.status == "401"){
	  				}
				}
		 });
	    
 		//Inspector List API Call	
 		
	    
	    //Lab Test details API call 
	    $.ajax({
		type : "GET",
		url : context+"/getlistresponse?method=lstTestData",
		contentType : "application/json",
		headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
		crossDomain : true,
		success : function(response) {
			 var response = JSON.parse(response);
			
			 var labTestDetails = '', radiologyTestDetails = '', labslNo = 0 , radslNo = 0;
			 // radiology test list 
			$.each(response.details.lstradiologytests, function(i, item) {
				radiologyTestDetails += '<tr>';
				radiologyTestDetails += '<td width="12%" style="border-right:0px;" >' +item.nameen + '</td>';
				radiologyTestDetails += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="radtestcheck" dataid="'+item.code+'" id=radchk"'+item.code+'" value="'+item.nameen +'" class="chk"></td>';
				radiologyTestDetails += '</tr>';
				labslNo =labslNo + 1;
			});
			radiologyTestDetails +=' <td colspan="10" align="right"></td>';
			table1 = $('#radTestlist').append(radiologyTestDetails);
			
			 //list labtests
			 $.each(response.details.lstlabtests, function(i, item) {
					if ((i)% 4 == 0 ){
						labTestDetails += '<tr>';
                 	}
					labTestDetails += '<td width="12%" style="border-right:0px;" >' +item.nameen + '</td>';
					labTestDetails += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="labtestcheck" lctype="'+item.typecode+'" dataid="'+item.code+'" id="'+item.code+'"  value="'+item.nameen +'" class="chk"></td>';
                    radslNo =radslNo + 1;
                    
				});
			 		labTestDetails +=' <td colspan="10" align="right"></td>';
					table1 = $('#labTestlist').append(labTestDetails);
				
				//list IGRA	Test type		
				 $.each(response.details.lstigratesttype,function(j,response){
					if(lang=='en'){
						igraTestTypeList+="<option value="+response.code+">"+response.nameen+"</option>";
						
						var div_data="<option value="+response.code+">"+response.nameen+"</option>";
					}else{
		   	       	igraTestTypeList+="<option value="+response.code+">"+response.namear+"</option>";
		   	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	    }
					
					$(div_data).appendTo('#igraTypeOfTest');
				});
				
				
				//list IGRA				
				 $.each(response.details.lstigraresults,function(j,response){
					
		   	       if(lang=='en'){
		   	       	        	  
		   	       	        lstIgraResult+="<option value="+response.code+">"+response.nameen+"</option>";
		   	         }else{
		   	       	        lstIgraResult+="<option value="+response.code+">"+response.namear+"</option>";
		   	   	     }
	 		    });
				
				 $(lstIgraResult).appendTo('#igraResult');
				
				//list PPDTestType				
				 $.each(response.details.lstPPDTestType,function(j,response){
					
		   	       	 if(lang=='en'){
		   	       	      var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	 }else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	     }
	 		         $(div_data).appendTo('#typeoftest');
	 		         $(div_data).appendTo('#updatetypeoftest');
	              });
				// list doctor interpretation
				 $.each(response.details.lstdocInterpretations,function(j,response){
   	       	        if(lang=='en'){
   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	        }else{
   	       	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	     }
	                  $(div_data).appendTo('#ppd1docinterpret');
	                  $(div_data).appendTo('#ppd2docinterpret');
	             });
				
				//lstcultureresults
				 $.each(response.details.lstcultureresults,function(k,response){
  		   	       	if(lang=='en'){
  		   	       	     lstcultureresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	       	}else{
  		   	       	      lstcultureresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	   	    }
  	             });
				
				//lsAbnormalResults
				$.each(response.details.lsAbnormalResults,function(j,response){
  	   	       	        if(lang=='en'){
  	   	       	        	lstabnormalresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  	   	       	        }else{
  	   	       	        	lstabnormalresultsdiv_data+="<option value="+response.code+">"+response.namear+"</option>";
  	   	   	       	    }
                 });
				//lstctscanresults
				 $.each(response.details.lstctscanresults,function(k,response){
   	       	        if(lang=='en'){
   	       	        	lstctscanresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
   	       	        }else{
   	       	        	lstctscanresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
   	   	       	    }
	              });
				
				//lstpcrresults
				 $.each(response.details.lstpcrresults,function(j,response){
  		   	       	 if(lang=='en'){
  		   	       	      lstpcrresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	       	 }else{
  		   	       	      lstpcrresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	   	     }
  	              });
				//list TestReasons
				 $.each(response.details.lstTestReasons,function(j,response){
   	       	         if(lang=='en'){
   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	         }else{
   	       	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	     }
	                  $(div_data).appendTo('#reasonoftest');
	                  $(div_data).appendTo('#updatereasonoftest');
	              });
				//list xrayresults
				$.each(response.details.lstxrayresults,function(j,response){
 	       	          if(lang=='en'){
 	       	         	lstxrayresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
 	       	          }else{
 	       	        	lstxrayresultsdiv_data+="<option value="+response.code+">"+response.namear+"</option>";
 	   	       	      }
                 });
				
				//lstafbresults
				 $.each(response.details.lstafbresults,function(l,response){
  		   	          if(lang=='en'){
  		   	               lstafbresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	       	  }else{
  		   	       	      lstafbresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	   	      }
  	              });
				
				 
					//Lab Drug Sensitive
					$.each(response.details.lstdrugsensitivetypes,function(j,response){
					   	  if(lang=='en'){
					   		  //alert(response.nameen);
					   		labDrugSensitiveDivData +="<option value="+response.code+">"+response.nameen+"</option>";
					   	  }else{
					   		labDrugSensitiveDivData +="<option value="+response.code+">"+response.nameen+"</option>";
					   	  }
				 		   //$(lDrugSensitive).appendTo('#medResistance'); 
				         });
					
					//Specimen List
					   $.each(response.details.lstspecimentypes,function(j,response){
						   	  if(lang=='en'){
						   		labSpecimenTypeDivData +="<option value="+response.code+">"+response.nameen+"</option>";
						   	  }else{
						   		labSpecimenTypeDivData +="<option value="+response.code+">"+response.namear+"</option>";
						   	  }
					   });
				
				//lstMedTreatType		 
				 $.each(response.details.lstMedTreatType,function(i,response){
  	       	         if(lang=='en'){
  	       	        	lstMedTreatTypediv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  	       	         }else{
  	       	        	lstMedTreatTypediv_data+="<option value="+response.code+">"+response.namear+"</option>";
  	   	       	     }
	             });
			      var medoptions="";
                  $(lstMedTreatTypediv_data).appendTo('#medicalExaminationType');
                  medoptions+=lstMedTreatTypediv_data;
                  medResponse=medoptions;
				
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {
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
				// list risk factor
				riskfactorDetails = response.details.lstriskfactors;
				
				
				// list tb diagnosis
			  	  $.each(response.details.lsttbdiagnosis,function(i,response){   
   	       	         if(lang=='en'){
   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	         }else{
   	       	           var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	     }
	                  $(div_data).appendTo('#diagnosisMain'); 
	                  $(div_data).appendTo('#daignosisHos'); 
			                
			    		  
	                    });
				// list patient action
			  	  $.each(response.details.lstpataction,function(i,response){
  	       	          if(lang=='en'){
  	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
  	       	           mapaction.push({
  	       	        	code: response.code, 
  	       	            nameen: response.nameen
  	                   });
  	       	          }else{
		   	       	     var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	      }
			          $(div_data).appendTo('#action'); 
	                });
	       	
				// list patient position
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
	                  $(div_data).appendTo('#patPosition'); 
	                  $(div_data).appendTo('#patPositionPRC'); 
	                  $(div_data).appendTo('#searchByStatusList'); 
	                    });
				
				//list treatment outcome 
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
                  $(div_data).appendTo('#treatOutcome'); 
                });
				
				//list treatment category
				 $.each(response.details.lsttreatcategory,function(i,response){
	             	if(lang=='en'){
	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	       	         }else{
	       	           var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	       	     }
                 $(div_data).appendTo('#treatCat'); 
                });
				
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
				if (jqXHR.status == "401") {
				
				}
			}
	 });
	   
	   
	    $.ajax({
			type : "GET",
			url : context+"/getlistresponse?method=lstPatData",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			success : function(response) {
				 var response = JSON.parse(response);
				  // occupation list 
				 $.each(response.details.lstOccupations,function(j,response){
	  	       	     if(lang=='en'){
	  	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	  	       	     }else{
	  	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
	  	   	       	 }
		                 $(div_data).appendTo('#occupationOther');
		                 $(div_data).appendTo('#occupationReg');
	                });
				 //list nationality
				 getGccNationality();
				
				 //list governorates
				 $.each(response.details.lstgovernorates,function(i,response){
		   	       	if(lang=='en'){
		   	       	 var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	}else{
		   	       	 var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	    }
			        $(div_data).appendTo('#governorateReg'); 
			        $(div_data).appendTo('#governorateOther'); 
	              });
				 
				 //list notification category
				 $.each(response.details.lstnotifcategory,function(i,response){
	   	            if(lang=='en'){
	   	       	     var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	   }else{
	   	       	     var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       }
			       $(div_data).appendTo('#notifycat'); 
			     });
				 
				 //list marital status
				 $.each(response.details.lstmaritalstats,function(j,response){	                  
      	           if(lang=='en'){
      	            var div_data="<option value="+response.code+">"+response.nameen+"</option>";
      	           }else{
      	           var div_data="<option value="+response.code+">"+response.namear+"</option>";
  	       	       }
                   $(div_data).appendTo('#maritalReg'); 
                   $(div_data).appendTo('#maritalOther'); 
              });
				 
				 //list residency status
				 $.each(response.details.lstresidencystats,function(j,response){
  	       	       if(lang=='en'){
  	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
  	       	          }else{
  	       	       		 var div_data="<option value="+response.code+">"+response.namear+"</option>";
  	   	       	      }
                  	  $(div_data).appendTo('#recidencyReg');
                 	$(div_data).appendTo('#recidencyOther'); 
	               });
				},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
					getToken(); 
				}
			}
	 });
	     getNationality("Reg"); 
	     $("#closeBtn").click(function(){
	         if($("#roomList").val() == "0"){
	        	 $('#emptyRoomIdErr').show();
	         }
	    }); 

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
	     
		});	//document.ready END 
    function refreshContactData(){
    	$('#contactTab').hide();
    	isContactOpen = false;
    	getprofiletabdata();
    }
    
 	function getprofiletabdata(){
 	  
 	  var myJSONObj = JSON.stringify({"room": roomId});
 		  	  $.ajax({
 		  		type: "POST",
 	            url:context+"/apiResponse?method=lstcontactsinroom",
 	 			contentType : "application/json",
 	 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
 	 			crossDomain : true,
 				data:myJSONObj,
 				crossDomain : true,
 				success : function(datahere) { 
 					var response = JSON.parse(datahere);
 					var outputDetails = response.details;
 					if(outputDetails.length >0){
 						var userDetails = '';
 						var slNo =1;
 						var idname='';
 						let idnumber='';
 						$.each(outputDetails, function(i, item) {
 				            if(item.idtype =='U'){
 				            	idname = item.idnumber;
 				            	idnumber = item.idnumber + "(Unknown)";
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
 				            	idname=item.contactnamear;
 				            }
 						 userDetails += '<tr id=notifRow'+slNo+'>';
 						 userDetails += '<td>' +slNo + '</td>';
 		                 userDetails += '<td>' +item.tbnotifId   + '</td>';
 		                 userDetails += '<td>' +idnumber + '</td>';
 		                 if(item.idtype !='U'){
 		                 userDetails += '<td><a href="#home" title="update" onclick="editNotification($(this),'+slNo+')">' +idname  +'<br/>' +item.contactnameen   +'</a></td> ';
 				         }
 		                 else{
 		                 userDetails += '<td><a  href="#home" title="update" onclick="editNotification($(this),'+slNo+')">' +idname +'</a></td> ';
 		                 }
	 		                userDetails += '<td> <a  href="#home" ><img src="img_new/edit1.png" title="update" class="c_point" onclick="editNotification($(this),'+slNo+')"></img></a> </td>';
	 		                userDetails += '<td  style="display:none;"><input  type="text" class="c_point">'+item.contId +'</td>';
	 		                userDetails += '<td  style="display:none;"><input  type="text" class="c_point">'+item.idtype +'</td>';
	 		                userDetails += '<td  style="display:none;"><input  type="text" class="c_point">'+item.requestid +'</td>';
	 		                userDetails += '</tr>';
	 		                slNo =slNo + 1;	
 						});
 						
 						 $('#notificationList').DataTable().destroy();
 		                 $('#notificationList tbody tr').remove();
 		                 var notificationListTable = $('#notificationList').append(userDetails);
 		                 notificationListTable.dataTable({
 		               	 autoWidth: false , columns: [{ width: '10%' }, { width: '20%' }, { width: '30%' }, { width: '40%' }, { width: '20%' }, { width: '20%' }, { width: '20%' }, { width: '20%' }]
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
	
 	function editNotification(currentElement,slNo){
 			if(isContactOpen == true){
 				$('#contactOpenPopUp').modal('show');
 				return;
 			}
 			clearContPageData();
 			$('#contactTab').show();
 			$("#saveContactNotify").prop('disabled', false);
 			$("#notificationList tbody tr").removeClass("highlight");
            $("#notifRow"+slNo).addClass("highlight");
            $('#labOutMsg').hide();
 		 	$('#labOutErrMsg').hide();
 		 	$('#radOutMsg').hide();
 			$('#radOutErrMsg').hide();
 		 	$('#ppdOutMsg').hide();
 			$('#ppdOutErrMsg').hide();
 		 	$('#home').addClass('show active').fadeIn();
 		    $('#myTabContent').show();
 		   	$('#divColapseBarHistoryold').empty();
 			$('#divColapseBarHistoryDiagonsis').empty();
 			$('#divColapseBarHistoryLab').empty();
 			$('#divColapseBarHistoryRadiology').empty();
 			isContactOpen= true;
 			 let id = currentElement.closest("tr").find('td:eq(1)').text();
 		     notifcd=id;
 		     let idNumberWithDesc = currentElement.closest("tr").find('td:eq(2)').text();
 		     let idNumberArr = idNumberWithDesc.split("(");
 		     let idnumber = idNumberArr[0];
 		     var idType = currentElement.closest("tr").find('td:eq(6)').text();
 		     reqid = currentElement.closest("tr").find('td:eq(7)').text();
 		     contactId = currentElement.closest("tr").find('td:eq(5)').text();
 		     patObj =JSON.stringify({"notifid": notifcd,"contactid":contactId});
 		     var regInfo = JSON.stringify({"idnumber": idnumber,"idtype": idType});
 		     labtest = [];
 			 radtest =[];
 			 ppdtestdata = [];
 			 igraTestData =[];
 			 labtest.length = 0; 
 	     	 radtest.length = 0;
 	     	 igraTestData.length =0;
 	     	 countLab = 0;
 	    	 countpd =0;
 	    	 getPersonalInfo(patObj,regInfo);
 		     getLabDetails(patObj);
 		     getRadiologyDetails(patObj);
 		     getPpdDetails(patObj);
 		     getIgraDetails(patObj);
 		     resetTabAccordion();
 		     isContactOpen = true; 			
			 getToken();			 
 	     }
	
		 function getRadRequester(rowNumRad,requesterVal){	
            $(getLocationTypediv_data).appendTo('#requesterRad'+rowNumRad); 
            if(requesterVal!=''){
           		$("#requesterRad"+rowNumRad).val(requesterVal);          	  }
          }
	
	    function getRadResult(count,resultVal,arr){
	    	if(arr[0]=='1'){
	 	     let value=""; 	  
	 	     $(lstxrayresultsdiv_data).appendTo('#radresults'+count);  
	 		 if(resultVal!=''){
	   			$("#radresults"+count).val(resultVal);
	   	  	  }
	 	    } 
        
		      if(arr[0]=='2'){
		      let value="";
			  $(lstctscanresultsdiv_data).appendTo('#radresults'+count);
			  if(resultVal!=''){
				$("#radresults"+count).val(resultVal);
		  	   }
			  } 
    	 }
 
		
  
  function  getNationality(val){
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
    	          var div_data="<option value="+response.code+">"+response.nameen+"</option>";
    	       }else{
    	         var div_data="<option value="+response.code+">"+response.namear+"</option>";
	       	   }
    	       $(div_data).appendTo('#nationality'+val); 
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
              $.each(response,function(i,response){
		   	         if(lang=='en'){
 	             var div_data="<option value="+response.code+">"+response.nameen+"</option>";
 	             }else{
 	             var div_data="<option value="+response.code+">"+response.namear+"</option>";
     	         }
                  $(div_data).appendTo('#nationalityOther'); 
               });
              	
            },
         error : function(jqXHR, textStatus, errorThrown) {
 		   if (jqXHR.status == "401"){
 			}
 		}
     }); 
   }

    
   function getPersonalInfo(myJSONObj,regInfo){
	   clearContactRegInfo();
	   $.ajax({
               type: "POST",
               url:context+"/apiResponse?method=findpatient",
               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				contentType : "application/json",
				crossDomain : true,
				data:regInfo,	
				dataType : "json",		
                success: function (data) {	
                	regDetails = data;
                	regId = regDetails.details.ptcd;
                	if(lang=='en'){
	   	       	           nationality=regDetails.details.natnameen;
	   	       	           governorate=regDetails.details.govnameen;
	   	       	           district=regDetails.details.distnameen;
	   	       	     	$('#nameEn').text(regDetails.details.nameen);
	   	       	  $("#name"+val+"En").val(regDetails.details.nameen); 
	   	       	    }else{
	   	       	           nationality=regDetails.details.natnamear;
	   	       	           governorate=regDetails.details.govnamear;
	   	       	           district=regDetails.details.distnamear;
	   	       	     	$('#nameAr').text(regDetails.details.namear); 
	   	       	  $("#name"+val+"Ar").val(regDetails.details.namear);
	   	       	     	  
	   	   	       }
                	
                 	$('#district').text(district); 
                    	$("#district"+val).val(regDetails.details.district);
                    	$('#nationality').text(nationality);
                    	$("#nationality"+val).val(regDetails.details.nationality); 
                    	nationalitycd=regDetails.details.nationality;
                    	Idtype=regDetails.details.idtype;
                   	
                   	districtcd=regDetails.details.district;
                	
                },
                error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
	   });
	   
		
		
	   //Contact Info API call
        $.ajax({
            type: "POST",
            url:context+"/apiResponse?method=getcontactnotifinfo",
            headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			contentType : "application/json",
			crossDomain : true,
			data:myJSONObj,	
			dataType : "json",		
            success: function (data) {			                 
           	        if(data.code=="1"){
	               	$('#contact-tab1').show(); 
	               	notifId = data.details.NotifcationInfo.tbnotifId;
	               	contId = data.details.NotifcationInfo.contId;
	              	$('#reference').val(data.details.NotifcationInfo.reference);
	              	if(data.details.NotifcationInfo.riskfactor == 17){
		              	$('#riskFactorOther').text(data.details.NotifcationInfo.otherriskfactor);
		              	$('#riskFactorPRC').hide();
		            }else{
	              		$('#riskFactorPRC').show();
	              		$('#riskFactorPRC').val(data.details.NotifcationInfo.riskfactor);
	              	}
	                if(data.details.NotifcationInfo.comorbidities == 6){
	                  	 $('#comorboditiesOther').text(data.details.NotifcationInfo.othercomorbidities);
	                  	 $('#comorbodities').hide();
	                }else{
	                  	$('#comorbodities').show();
	                  	$('#comorbodities').val(data.details.NotifcationInfo.comorbidities);
	                }
	                
	                 $('#contDocStatus').val(data.details.NotifcationInfo.docStatus);
	                 
	                 $(relationdatalst).appendTo('#relation'); 
	                 if(data.details.NotifcationInfo.multirelation != null && data.details.NotifcationInfo.multirelation != "")
			          {	
	                	  var selectedOptions = data.details.NotifcationInfo.multirelation.split(",");
			               for(var i in selectedOptions) {
			                   var optionVal = selectedOptions[i];
			                   $("#relation").find("option[value="+optionVal+"]").prop("selected", "selected");
			               }
		              }	 else { 
		            	  $('#relation').val(data.details.NotifcationInfo.multirelation);
		              }
			          $('#relation').select2().trigger('change');
	                 
	                 //$('#relation').val(data.details.NotifcationInfo.multirelation);
	                 if (data.details.ContactInfo.register.gender == "F"){
                      gender='Female';
                   	 }
                   	 if (data.details.ContactInfo.register.gender == "M"){
                         gender='Male';
                     }
                   	let mobileStr = data.details.ContactInfo.register.patphone != null? data.details.ContactInfo.register.patphone.toString():"";
                    let mobile = String(mobileStr);
                   	$('#mobile').text(mobile);
                    $("#gender").text(gender); 
                    $('#dob').text(data.details.ContactInfo.register.birthdate);
                   	$("#address").text(data.details.ContactInfo.register.address);
                    $("#bloodgroup").text(data.details.ContactInfo.register.bloodgrp);
                    	                    	
                   	$('#edit').show();
                    }else{
                    }
                 },
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 });
	 } //findPatient end
   
	 
     function resetTabAccordion(){
    	   $('#hideTab').find('.nav-item').children().removeClass('.nav-link active'); 
		   $('#profile1').addClass('active show');   
		   $('#profile-tab1').addClass('active show');
		   $('.hideshow1').addClass('show');
    	   $('.opencollapsed1').removeClass('collapsed');
    	   $('.hideshow').removeClass('show');
    	   $('.opencollapsed').addClass('collapsed');    	   
     }
       
		$("#typeoftest").change(function () {			
			var value = this.value;
			if(value == "")
	  		  $('#typeoftestError').show();         
			else $('#typeoftestError').hide();    
			if(value == "1"){
	  		  $('#ppd2').show();         
			} else {
			  $('#ppd2').hide();    
			}
		});
		
		$("#updatetypeoftest").change(function () {
			$('#updatetypeoftestError').hide(); 
			 var value = this.value;
			 if(value == "")
	  			 $('#updatetypeoftestError').show();         
			else $('#updatetypeoftestError').hide();    
			if(value == "1"){
	  			 $('#hideppd2').show();         
			} else {
				$('#hideppd2').hide();    
			}
		});
		
		$("#updatereasonoftest").change(function () {
			$('#updatereasonoftestError').hide();
			 var value = this.value;
			 if(value == "")
	  			 $('#updatereasonoftestError').show();         
			else $('#updatereasonoftestError').hide();    
			
		});
		
		$("#medicalExaminationType").change(function () {
			$('#medicalExaminationTypeError').hide();  
			 var value = this.value;
			 if(value == "")
	  			 $('#medicalExaminationTypeError').show();         
			else $('#medicalExaminationTypeError').hide();    
			
		});
		
		$("#recidencyOther").change(function () {
			$('#residencyOther1').val('');			
			var value = this.value;
			if(value == "5"){
	  			 $('#residencyOtherPass').show();
	  			 $('#recidency').val('residencyOther1');
			} else {
				$('#residencyOtherPass').hide();
				$('#recidency').val('recidencyOther');
			}
		});
		
		
		 $('#contRadTest').on('change', '.abnormalList', function(){
			 var row = $(this).closest('tr');
		      var cellValue =  row.find('td:eq(9)').text();
			 $("#otherabnormaldiseasevalue"+cellValue).val('');
			  var selectedValue = $(this).find('option:selected').text();
			  var selectedKey = $(this).find('option:selected').val();		     
		      if(selectedKey == "4" || selectedValue == "others"){
		    	  $("#otherabnormaldiseasevalue"+cellValue).prop('disabled', false);
		    	  } else {
		    	  $("#otherabnormaldiseasevalue"+cellValue).prop('disabled', true);
			}
		});
				
		 $('#contRadTest').on('change', '.radresults', function(){
		  var selectedValue = $(this).find('option:selected').text();
		     var row = $(this).closest('tr');
		      var cell1Value = row.find('td:eq(9)').text();
			  $("#otherabnormaldiseasevalue"+cell1Value).val('');
		      $("#abnormallist"+cell1Value).prop('disabled', false);
		      $("#abnormallist"+cell1Value+" option").remove();
			  $("#abnormallist"+cell1Value).append($("<option></option>")
						                    .attr("value", "")
						                    .text("Select"));
   	      if(selectedValue == "Abnormal"){
     	      getAbnormalList(cell1Value);
   	      }
   		  else {
   			$("#abnormallist"+cell1Value).prop('disabled', true);
    	    $("#otherabnormaldiseasevalue"+cell1Value).prop('disabled', true);
   		  }
   	    });
		
		$("#contDocStatus").click(function () {
			let value = this.value;
			docStatus = value;
		}); 
		
		function getAbnormalList(countAbnormal){	
			$(lstabnormalresultsdiv_data).appendTo('#abnormallist'+countAbnormal);
		   
		}

		
		function getAbnormalResult(countAbnormal,abnormallist,abnormalresult){	
			$(lstabnormalresultsdiv_data).appendTo('#abnormallist'+countAbnormal);
			 if(abnormallist != '' && abnormalresult != ''){
               	 $('#abnormallist'+countAbnormal).val(abnormalresult);
           	 }
		    
		}		

		/**************** LAB Add, Update, Delete START  ***************/
  		
  		var countLab = 0; 
  		
  		function getLabDetails(patObj){
  			$('#addLabTest1 tbody tr').remove();
	        labtest =[];
	        labtest.length = 0;
  		    countLab = 0;
  			 
		   $.ajax({
	           type: "POST",
	           url:context+"/apiResponse?method=lstcontactlabs",
	           headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				contentType : "application/json",
				crossDomain : true,
				data:patObj,	
				dataType : "json",		
	            success: function (data) {
	            	if(data.code=='1' && data.details.length >0){
	            		
	            	$.each(data.details, function(index, item) {
	            		var id = data.details[index];
	            		reqid=id.reqid;
	            		let labRequestedBy =id.testRequestedby;
	            		let labRequestedOn=id.testrequestedon;
	            		labtest.push({
	    		  			    value: id.name,
	    		  				testId:id.code,
	    		  			    requester: id.requester,
	    		  			  	drugSensitive:id.drugsensitive,
	    		  			    resultId: id.result,
	    		  			    requestedBy:id.resultenteredby,
	    		  			   	requestedDate:id.resultentereddt,
	    		  			  	testRequestedBy:labRequestedBy,
	    		  			    testRequestedOn:labRequestedOn,
	    		  			    resultTypeId:id.typecode,
	    		  			    exId:id.exid,
	    		  			   	exDate:id.exdate,
	    		  			   	reqId:id.reqid,
	    		  			  	specimenType:id.specimen,
	    		  			    labNo:id.exno,
	    		  			    inoculationDate: id.inoculationdate
	    		  		});
	               });
	            	createTableLab(labtest,"update");
	              }	
	            },
		        error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
						
					}
				}
			   });
		 
	 }
  		
		function multipleCheck(){
			$('#labOutMsg').hide();
			$('#contSaveMsg').hide();
		  	let labtest1=[];			  	
		 	$("input:checkbox[name='labtestcheck']:checked").each(function(){
		 		labtest1.push({
	  				value: $(this).attr("value"), //testname
	  			    testId: $(this).attr("dataid"), //testId 
	  			  	requester: '',
	  			  	resultId:'',
	  			    requestedBy:'',
	  			    requestedDate:'',
	  			    drugSensitive:'',
	  			    resultTypeId:$(this).attr("lctype"),
	  			    exId:'',
	  			    exDate:'',
	  			    reqId:'',
	  			  	specimenType:'',
	  			    labNo:'',
	  			    inoculationDate: ''
	  			    
	  			  });
	  		});		
		 	verifyExistingLabAndAdd(labtest1);
		}
		
		 function verifyExistingLabAndAdd(labtest1){			 
			$('#addLabTest1 tbody tr').each(function() {
				   let exId = $(this).find("td:eq(2)").text().trim();
	               let testNameId = $(this).find("td:eq(0)").text().trim();
	               let rowNo = $(this).find("td:eq(1)").text().trim();
	               let resultNameId = $('#pcrlabresults'+rowNo).val();
	               let duplicateTestId = labtest1.findIndex(obj => obj.testId == testNameId);	 
	               if(duplicateTestId != -1){		            	  
	            	   if(exId == null || exId=='null'  || exId==''){
	            		  labtest1.splice(duplicateTestId,1);
	            	   }
	            	   if(exId != null || exId != 'null'|| exId==''){
	            		   if(resultNameId == null || resultNameId == 'null'|| resultNameId == ''){
	            			 labtest1.splice(duplicateTestId,1);
	  	            	  }
	            	   }	            	   
	               }              
	             }); 
				createTableLab(labtest1,"create");	
			 } 
		
		
	function createTableLab(labTempObj,status){			 
		  let  userDetails='';	
		  $.each(labTempObj, function(i, item) {			        	  
       	  countLab++;
       	  let rowNum=countLab; lab ='lab';
       	  let logInputObj = JSON.stringify({"reqid": reqid,"regid": regId,"procid":item.exId,"proctype":lab});
          let resenter='',resdate='',labRequestedBy='', labRequestedOn='';
          let labRowData =[];
			 labRowData.push({  
				 				'exId' : item.exId,
								'reqId' :item.reqId,
								'rowNum' : rowNum,
								'testId': item.testId,
								'patCd' : regId,
								'procType':'lab',
								'testName':item.value,
								'isPatient':'N',
								'notifId':notifcd,
								'contId':contactId
							});  
                   if(item.requestedBy != null){
                       resenter = item.requestedBy;
                   }if(item.requestedDate != null){
                       resdate=item.requestedDate;
                   }
                   if(item.testRequestedBy != null){
                	   labRequestedBy=item.testRequestedBy;
                   }
                   if(item.testRequestedOn != null){
                	   labRequestedOn=item.testRequestedOn;
                   }
                   userDetails = '<tr id=labrow'+ countLab+'>';
                   userDetails += '<td class="hidden">' +item.testId + '</td>'; //code //0
                   userDetails += '<td class="hidden">' +rowNum + '</td>';  
                   userDetails += '<td class="hidden">' +item.exId+ '</td>'; //exid  //2
                   userDetails += '<td width="15%">' + item.value  + '</td>';
            	   userDetails += '<td><select class="form-control lSpecimenType" id="lSpecimenType' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
            	   userDetails += '<td><input  type="text" class="form-control" style="background:white;"  id="lLabNo' + rowNum + '""></td>';
	               userDetails +=  '<td><input  type="text" class="form-control inodtpicker" readonly="readonly" style="background:white;"  id="lInoculationDate' + rowNum + '""></td>';
	               userDetails +=  '<td><input  type="text" class="form-control labdtpicker" readonly="readonly" style="background:white;"  id="labDate' + rowNum + '""></td>';
            	   userDetails += '<td><select class="form-control" id="tstLabResults' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
			       userDetails += '<td><select class="form-control" id="drugSensitive' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>'; 
	               userDetails += '<td><select class="form-control" id="requester' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
	               userDetails += '<td><div><img src="img/information.png" id="popover_info_lab'+rowNum
			                   +'" data-placement="top"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_lab'
			                   +rowNum+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'
			                   + labRequestedBy +'</span></li><li class=" listyle ml-3" >Test Requested On :'
			                   + labRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'
			                   + resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'
			                   + resdate +'</span></li></ul><br/></div></td>';

                   userDetails += '<td class="text-center">'
				   userDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
				   userDetails += '<span class="cpoint" style="color: #2196F3;font-size: 32px;" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">...</span>'
				   userDetails += '<ul class="dropdown-menu dropdown-menu-right uiClass" aria-labelledby="dropdown-recent-order1">'
				   userDetails += '<li class="dropdown-item">'
				   userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(labRowData)+'\' onclick="delete_labrow(this)"><i class="fa fa-trash" title="delete"/></i>&nbsp;Delete</a>'
				   userDetails += '</li>'
				    if(status != "create"){
					userDetails += '<li class="dropdown-item">'
					userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(labRowData)+'\' onclick="updateWithData(this)"><i class="fa fa-edit" title="update"/></i>&nbsp;Update</a>'
					userDetails += '</li>'
					userDetails += '<li class="dropdown-item">'
					userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(labRowData)+'\' onclick="uploadfiles(this)"><i class="fa fa-upload" title="upload"/></i>&nbsp;Upload</a>'
					userDetails += '</li>'
					userDetails += '<li class="dropdown-item">'
					userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(labRowData)+'\' onclick="viewfiles(this)"><i class="fa fa-download" title="download"/></i>&emsp;View</a>'
					userDetails += '</li>'
					userDetails += '<li class="dropdown-item">'
					userDetails += '<a class="btn btn-info c_point" onclick="printLab($(this),'+rowNum+')"><i class="fa fa-print" title="print"/></i>&emsp;Print</a>'
					userDetails += '</li>'
				    }
					userDetails += ' </ul>'
					userDetails += ' </div></td>';
                    userDetails += '</tr>';				                 
                  $('#addLabTest1').append(userDetails); 
                  $('#popover_info_lab'+rowNum).popover({
			             html: true, trigger: 'hover',   sanitize: false,
			             content: function() {
			            	 $('#popover_content_info_lab'+rowNum).append(getLogsForUpdate(logInputObj,'trLabRow'+rowNum));
			                  return $('#popover_content_info_lab'+rowNum).html();
			             }
					});
                  $(".labdtpicker").datepicker({
						changeMonth: true,
						changeYear: true,
						yearRange: "1930:2060",
						dateFormat: 'dd/mm/yy',
						maxDate: '+0d'
					});
		             $(".inodtpicker").datepicker({
							changeMonth: true,
							changeYear: true,
							yearRange: "1930:2060",
							dateFormat: 'dd/mm/yy',
							maxDate: '+0d'
					  });
                  getLabRequester(rowNum,item.requester);
                  getLabResult(rowNum,item.resultId,item.resultTypeId);
                  getLabDrugResistance(rowNum,item.drugSensitive);
                  getSpecimenType(rowNum,item.specimenType);
                  $('#labDate'+rowNum).val(item.exDate);
                  $('#lInoculationDate'+rowNum).val(item.inoculationDate);
                  $('#lLabNo'+rowNum).val(item.labNo);
                  
           });		            		          
	}
		 
		 function getLabRequester(rowNumLab,requesterVal){
	         $(getLocationTypediv_data).appendTo("#requester"+rowNumLab);
			 if(requesterVal!=''){
	  			$("#requester"+rowNumLab).val(requesterVal);
	  	  	 }
		}
		 function getLabDrugResistance(rowNumLab,drugVal){	
	           $(labDrugSensitiveDivData).appendTo('#drugSensitive'+rowNumLab); 
	           if(drugVal!=''){
	          		$("#drugSensitive"+rowNumLab).val(drugVal);          	  }

		   }
		 
		 function getLabResult(rowNum,resultVal,arr){
			   if(arr=='P'){
	     	     var value="";
	     	     $(lstpcrresultsdiv_data).appendTo("#tstLabResults"+rowNum); 
	     	     if(resultVal!=''){
		           $("#tstLabResults"+rowNum).val(resultVal);
		         }
	  		   }
	        	if(arr=='C'){
	     	      var value="";
	     	    
	     	      $(lstcultureresultsdiv_data).appendTo("#tstLabResults"+rowNum); 
	     	    if(resultVal!=''){
	           		$("#tstLabResults"+rowNum).val(resultVal);
	           	   }
	  			}      
	              if(arr=='A'){
	     	      var value="";
	     	      $(lstafbresultsdiv_data).appendTo("#tstLabResults"+rowNum); 
	     	     if(resultVal!=''){
		           		$("#tstLabResults"+rowNum).val(resultVal);
		           	  }
	  			}       
		   }
		 
		 function getSpecimenType(rowNumLab,speciVal){	
			 //alert(rowNumLab,drugVal);
	           $(labSpecimenTypeDivData).appendTo('#lSpecimenType'+rowNumLab); 
	           if(speciVal!=''){
	          		$("#lSpecimenType"+rowNumLab).val(speciVal);          	  }
		   }
		  function deleteLab(){
			 $('#labdeletesuccess').hide();
			let code= $('#labIDNew').val();
			let rowno= $('#labRowNo').val();
			let myJSONObj =JSON.stringify({"contactid":contactId,"pid":code});
			 $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deletecontactlab",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#labdeletesuccess').show();
					 $('#labrow'+rowno).remove();
					 $( "#deleteLabBtn" ).attr( "disabled", true ); 
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
		 }); 
		} 	
		 
		 /**************** LAB Add, Update, Delete END  ***************/
		 
		 /**************** RADIOLOGY Add, Update, Delete START  ***************/
		 
	function getRadiologyDetails(patObj){		
        $('#contRadTest tbody tr').remove();
        radtest =[];
		countRad = 0;
	    $.ajax({
           type: "POST",
           url:context+"/apiResponse?method=lstcontactradiology",
           headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			contentType : "application/json",
			crossDomain : true,
			data:patObj,	
			dataType : "json",		
            success: function (data) {
            	if(data.code == "1"){
            	if(data.details.length >0){
            	for(var j = 0; j < data.details.length; j++){ 
            	  	  var raddata= data.details[j];
            	  	  reqid = raddata.reqid;
            	  	
            	  	  var type=raddata.code+","+raddata.exid;
            	  		radtest.push({
            			  			    value: raddata.name,
            			  			    type: type,
            			  				requester: raddata.requester,
            		  			    	result: raddata.result,
            		  			    	abnormalResult:raddata.abnormalResult,
            		  			    	requestedBy: raddata.resultenteredby,
            		  			    	requestedDate: raddata.resultentereddt,
            		  			    	radRequestedBy:raddata.testRequestedby,
            		  			    	radRequestedOn:raddata.testrequestedon,
            		  			    	testCode:raddata.code,
            		  			    	exId:raddata.exid,
            		  			    	notes:raddata.notes,
            		  			    	exdate:raddata.exdate,
            		  			    	abnormalOth:raddata.abnormalOth,
            		  			    	resultName:raddata.resultname,
            		  			    	reqId:raddata.reqid
            			  			  });
            	 }
            	createTableRad(radtest,"update");
            	}
            }
		},
            error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				
				}
			}
	   });    
   }
		 
	     function multipleCheckRad(){
			 $('#radOutMsg').hide();
			 $('#contSaveMsg').hide();
	    		let radtestData1=[];
	    		radtestData1.length=0;
		  		$("input:checkbox[name='radtestcheck']:checked").each(function(){
		  		
		  		radtestData1.push({		  			 
		  			    value: $(this).attr("value"), //testName
		  			    type: $(this).attr("dataid"), //testNameID
		  			 	testCode:$(this).attr("dataid"),	  			    	
		  			  	requester:'',
	  			    	result: '',
	  			    	abnormalResult:'',
	  			    	requestedBy:'',
	  			    	exId:'',
	  			    	notes:'',
	  			    	exdate:'',
	  			    	abnormalOth:'',
	  			    	resultName:'',
	  			    	reqId:''
		  	       });		  		
		  	    });
		  		verifyExistingRad(radtestData1);			  		
		  		$('#radTestModel').modal('hide');
	    }
		 
		 function verifyExistingRad(radtestData1){						 
			$('#contRadTest tbody tr').each(function() {
				   let exId = $(this).find("td:eq(1)").text().trim();
	               let testNameId = $(this).find("td:eq(0)").text().trim();
	               let rowNo = $(this).find("td:eq(9)").text().trim();
	               let resultNameId = $('#radresults'+rowNo).val();
	               let duplicateTestNameId = radtestData1.findIndex(obj => obj.testCode == testNameId);	 
	               if(duplicateTestNameId !=-1){
	            	   if(exId == null || exId=='null'  || exId==''){
	            		  radtestData1.splice(duplicateTestNameId,1);
	            	   }
	            	   if(exId != null || exId != 'null' || exId==''){ 	  
	            		   if(resultNameId == null || resultNameId == 'null'|| resultNameId == ''){
	            			radtestData1.splice(duplicateTestNameId,1);
	  	            	  }
	            	   }	            	   
	               }              
	             }); 
			 createTableRad(radtestData1,"create");	
		 }
		
		 function createTableRad(tempRadObj,status){
				  var userDetails1='';
			      $.each(tempRadObj, function(i, item) {
			    	  countRad++;
				      let count=countRad;
				      let resenter='',resdate=''; rad='rad',testRequestedBy='',testRequestedOn='';
				      let radRowData =[];
				      radRowData.push({
				    	  	'exId' : item.exId,
							'reqId' :item.reqId,
							'rowNum' : count,
							'testId': item.testCode,
							'patCd' : regId,
							'procType':'rad',
							'testName':item.value,
							'isPatient':'N',
							'notifId':notifcd,
							'contId':contactId
							}); 
				      if(item.requestedBy != null){
	                    resenter=item.requestedBy;
	                  }if(item.requestedDate != null){
	                    resdate=item.requestedDate;
	                  }
	  			      if(item.radRequestedBy != null){
	  			    		testRequestedBy=item.radRequestedBy;
		              }
	                  
	                  if(item.radRequestedOn != null){
	                	  testRequestedOn=item.radRequestedOn;
		              }
	                  let logInputObj = JSON.stringify({"reqid": reqid,"regid": regId,"procid":item.exId,"proctype":rad});
	            	   userDetails1 = '<tr id=radrw'+countRad + '>'
	            	   userDetails1 += '<td class="hidden"  width:0%>' +item.testCode+ '</td>';//testId 0
	            	   userDetails1 += '<td class="hidden"  width:0%>' +item.exId+ '</td>';//exid 1
	            	   userDetails1 += '<td width:10%>' +item.value  + '</td>';
	                   if (item.value == "Other"){
	                	   userDetails1 += '<td width:9%><input  type="text" class="form-control radresults" name ="radresults" id="radresults'+count+'"></td>'; 
	                   }else {
	                	   userDetails1 += '<td width:9%><select class="form-control radresults"  name ="radresults" id="radresults'+count+'"> <option selected="selected" value="">Select</option></select></td>';
	                   }
	                   userDetails1 += '<td width:10%><select class="form-control abnormalList" name= "abnormalList" id="abnormallist'+count+'"><option selected="selected" value="">Select</option></select></td>';
	                   userDetails1 += '<td width:10%><input  type="text" class="form-control" name ="radresults"  id="otherabnormaldiseasevalue'+count+'"></td>';
	                   userDetails1 += '<td width:15%><textarea  class="form-control"  maxlength="300" id="notesRad'+count+'"  rows="2" cols="50"></textarea></td>';
	                   userDetails1 += '<td width:9%><input  type="text" class="form-control  raddatepicker"  readonly="readonly" style="background:white;" id="radDate'+count+'"></td>';
	                   userDetails1 += '<td width:20%><select class="form-control" id="requesterRad'+count+'"> <option selected="selected" value="">Select</option></select></td>';
	                   userDetails1 += '<td class="hidden">' +count+ '</td>';
	                   userDetails1 += '<td><div><img src="img/information.png" id="popover_info_rad'+count+'" data-placement="left"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_rad'+count+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'+ testRequestedBy +'</span></li><li class=" listyle ml-3" >TestRequested On :'+ testRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'+ resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'+ resdate +'</span></li> </ul></div></td>';
	                   userDetails1 += '<td class="text-center">'
	                	userDetails1 += '<div class="dropdown show d-inline-block widget-dropdown">'
	                	userDetails1 += '<span class="cpoint" style="color: #2196F3;font-size: 32px;" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">...</span>'
	                	userDetails1 += '<ul class="dropdown-menu dropdown-menu-right uiClass" aria-labelledby="dropdown-recent-order1">'
	                	userDetails1 += '<li class="dropdown-item">'
	                	userDetails1 += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(radRowData)+'\' onclick="delete_radrow(this)"><i class="fa fa-trash" title="delete"/></i>&nbsp;Delete</a>'
	                	userDetails1 += '</li>'
	                	if(item.exId != null && item.exId != ""){
	    				userDetails1 += '<li class="dropdown-item">'
	    				userDetails1 += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(radRowData)+'\' onclick="updateWithData(this)"><i class="fa fa-edit" title="update"/></i>&nbsp;Update</a>'
	    				 userDetails1 += '</li>'
	    				 userDetails1 += '<li class="dropdown-item">'
	    				 userDetails1 += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(radRowData)+'\' onclick="uploadfiles(this)"><i class="fa fa-upload" title="upload"/></i>&nbsp;Upload</a>'
	    				userDetails1 += '</li>'
	    				userDetails1 += '<li class="dropdown-item">'
	    				 userDetails1 += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(radRowData)+'\' onclick="viewfiles(this)"><i class="fa fa-download" title="download"/></i>&emsp;View</a>'
	    				 userDetails1 += '</li>'
	    				userDetails1 += '<li class="dropdown-item">'
	    				userDetails1 += '<a class="btn btn-info c_point" onclick="printRad($(this),'+count+')"><i class="fa fa-print" title="print"/></i>&emsp;Print</a>'
	    				userDetails1 += '</li>'
	    				    }
	                	userDetails1 += ' </ul>'
	                	userDetails1 += ' </div></td>';
	                   userDetails1 += '</tr>';
	                  
	                   $('#contRadTest').append(userDetails1); 
	                   getRadRequester(count,item.requester);			                  
	                   getRadResult(count,item.result,item.testCode);
	                   getAbnormalResult(count,"abnormallist",item.abnormalResult);
	                   $('#radDate'+count).val(item.exdate);
	                   $('#notesRad'+count).val(item.notes);
	                   if(item.resultname != "Abnormal"){
		                    // $("#abnormallist"+count).attr('disabled', true);
	                 	  $("#otherabnormaldiseasevalue"+count).attr('disabled', true);
	                   }
	                   if(item.testCode == "3"){
	                	  $("#radresults"+count).val(item.result); 
		                  $("#abnormallist"+count).attr('disabled', true);
	                 	  $("#otherabnormaldiseasevalue"+count).attr('disabled', true);
	                   }
	                   if(item.resultName == "Abnormal" && item.abnormalResult !="4"){
    			        $("#otherabnormaldiseasevalue"+count).attr('disabled', true);
					   }else{
						   $("#otherabnormaldiseasevalue"+count).attr('disabled', false);  
					   }
	                   if(item.abnormalResult == "4"){
		                    $('#otherabnormaldiseasevalue'+count).val(item.abnormalOth);
	                   }
	                                            
	                   $('#popover_info_rad'+count).popover({
				             html: true, trigger: 'hover',   sanitize: false,
				             content: function() {
				            	
				            	 $('#popover_content_info_rad'+count).append(getLogsForUpdate(logInputObj,'trRadRw'+count));
				                  return $('#popover_content_info_rad'+count).html();
				             }
						});
					});
		            $(".raddatepicker").datepicker({
						changeMonth: true,
						changeYear: true,
						yearRange: "1930:2060",
						dateFormat: 'dd/mm/yy',
						maxDate: '+0d'
				   });
		   }
		 
         function delete_radrow(rowData){
        	 let examObj = JSON.parse(rowData.getAttribute('examData'));
			 let exId = examObj[0].exId; 
			 let rowNo = examObj[0].rowNum;
			 let radtestName = examObj[0].testName;
        	 $('#radOutMsg').hide();
			 $('#contSaveMsg').hide();
			 $('#radID').val(examObj[0].exId);
			 $('#radRowNo').val(examObj[0].rowNum);
			 if(exId==''){
			 $('#radrw'+rowNo).remove();
			 }
			 if(exId!=''){
			 $('#deleteRadData').modal('show');
			 $('#deleteRadBtn').attr('disabled', false);
		    }
		} 
         $("#requesterRad").on('click',function(){
			 var currentRow=$(this).closest("tr");			
		});
		 
		 function deleteRad(){
				 $('#raddeletesuccess').hide();
				 let code= $('#radID').val();
				 let rowNo= $('#radRowNo').val();
			     let myJSONObj =JSON.stringify({"contactid":contactId,"pid":code});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deletecontactrad",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#raddeletesuccess').show();
					 $('#radrw'+rowNo).remove(); 
					 $('#deleteRadBtn').attr('disabled', true);
					 }
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			 }); 
			}
		 
		 /**************** RADIOLOGY Add, Update, Delete END  ***************/
		 
		 /**************** PPD Add, Update, Delete START  ***************/		 
		 
		  function getPpdDetails(patObj){
           ppdtestdata =[];
           ppdtestdata.length = 0;
            $.ajax({
	              type: "POST",
	              url:context+"/apiResponse?method=lstcontactppd",
	              headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
                  contentType : "application/json",
                  crossDomain : true,
                  data:patObj,      
                  dataType : "json",                            
                  success: function (data) {
                     $('#ppdtestResult tbody tr').remove();
                     for(let i=0; i<data.details.length;i++){
                      let ppdObj = data.details[i];
                      ppdtestdata.push(ppdObj);                                        
                     }                
                     createTablePPD(ppdtestdata,"update");
                  },
                  error : function(jqXHR, textStatus, errorThrown) {
	                      if (jqXHR.status == "401") {
	                      }
                  }
              });    
         }
		 
        var  ppdtest ={}
          $("#addppd").on('click',function() {
                   $('#ppdOutMsg').hide();
                   $('#contSaveMsg').hide();
                   $('#ppdupdate').hide(); 
            if( ($('#updatetypeoftest').val() == '') || ($('#updatereasonoftest').val() == '')){
                   $('#updatetypeoftestError').show();
                   $('#updatereasonoftestError').show(); 
            } else{
                   $('#updatetypeoftestError').hide();
                   $('#updatereasonoftestError').hide(); 
           var ppdtest=[];
                   jsonObj = {
                       "testTypeName":$('#updatetypeoftest').find(":selected").text(),
                       "testReasonName":$('#updatereasonoftest').find(":selected").text(),
                       "ppd1TestDate":$('#updatePPDTestDate1').val(),
                       "ppd2TestDate":$('#updatePPDTestDate2').val(),
                       "ppd1ReadingDate":$('#updatePPDReadingDate1').val(),
                       "ppd2ReadingDate":$('#updatePPDReadingDate2').val(),
                       "ppd1Reading":$('#updateppdreading1').val(), 
                       "ppd2Reading": $('#updateppdreading2').val(),
                       "ppd1Result":$('#updateppdresult1').val(),
                       "ppd2Result":$('#updateppdresult2').val(),
                       "ppd1Notes":$('#updateppdnotes1').val(),
                       "ppd2Notes":$('#updateppdnotes2').val(),
                       "ppdId":null,
                       "testType":$('#updatetypeoftest').val(),
                       "testReasonId":$('#updatereasonoftest').val(),
                       "ppd1docinterpret":$('#ppd1docinterpret').val(),
				       "ppd2docinterpret":$('#ppd2docinterpret').val(),
				       "reqId":''
                    }
                  ppdtest.push(jsonObj);
                                  createTablePPD(ppdtest,status);
                                  $('#update_ppdtest').modal('hide');
                                  clearPPDVal();
                  }
           
           });
        
        
          var countpd=0;
          function createTablePPD(ppdtest,status){
            let  userDetails='';
           $.each(ppdtest, function(i, item) {
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
               let ppdRowData =[];
               ppdRowData.push({
            	    'exId' : item.ppdId,
					'reqId' :item.reqId,
					'rowNum' : countPPD,
					'testId': item.testType,
					'testName':item.testTypeName,
					'patCd' : regId,
					'procType':'ppd',
					'isPatient':'N',
					'notifId':notifcd,
					'contId':contactId
					});  
               let logInputObj = JSON.stringify({"reqid": ppdRowData[0].reqId,"regid": ppdRowData[0].patCd,"procid":ppdRowData[0].exId,"proctype":ppdRowData[0].procType});
                userDetails = '<tr id=ppdrow'+countPPD+'>';
                userDetails += '<td  id=testtypeval'+countPPD+' width=20%>' +item.testTypeName  + '</td>';
                userDetails += '<td id=testReasonNameval'+countPPD+' width=10%>' +item.testReasonName  + '</td>';
                userDetails += '<td ><a href="javascript:void(0)" class="c_point float-center" examData=\''+JSON.stringify(ppdRowData)+'\' onclick ="viewppdtest($(this),this)"><img src="img/1 1.png" title="view"></a></td>';
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
                userDetails += '<td  class="hidden" id=testTypeval'+countPPD+'>' +item.testType+ '</td>'; //13
                userDetails += '<td  class="hidden" id=testReasonIdval'+countPPD+'>' +item.testReasonId+ '</td>';
                userDetails += '<td  class="hidden" id=ppdIdval'+countPPD+'>' +item.ppdId+ '</td>';
                userDetails += '<td  class="hidden">' +countPPD+ '</td>'; //16
                /*  if(item.ppdId == '' || item.ppdId =='null' || item.ppdId == null){
                 userDetails += '<td ></td>';
                 userDetails += '<td ></td>';

                }else{
                   userDetails += '<td><div><img src="img/information.png" id="popover_info_ppd'+countPPD
				                   +'" data-placement="top"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_ppd'
				                   +countPPD+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'
				                   + testRequestedBy +'</span></li><li class=" listyle ml-3" >Test Requesetd On :'
				                   + testRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'
				                   + resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'
				                   + resdate +'</span></li></ul><br/></td>'; 
                  userDetails += '<td class="float-center"><a href="javascript:void(0)"  class="c_point" examData=\''+JSON.stringify(ppdRowData)+'\' onclick="printContPPD($(this),'+countPPD+')"><img src="img/p.png" title="print"></a></td>';
                  
                } */
                userDetails += '<td  class="hidden" id=ppd1docinterpret'+countPPD+'>' +item.ppd1docinterpret+ '</td>';
                userDetails += '<td  class="hidden" id=ppd2docinterpret'+countPPD+'>' +item.ppd2docinterpret+ '</td>';
                
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
							userDetails += '<li class="dropdown-item">'
							userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(ppdRowData)+'\' onclick="deleteppdtest(this)"><i class="fa fa-trash" title="delete"/></i>&nbsp;Delete</a>'
							userDetails += '</li>'
						if(item.ppdId != null && item.ppdId != ""){
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
 		            	 
 		            	 $('#popover_content_info_ppd'+countPPD).append(getLogsForUpdate(logInputObj,'trPpdRw'+countPPD));
 		                  return $('#popover_content_info_ppd'+countPPD).html();
 		             }
 				});
                  
                });
               }
              var radtestName='';
       function viewppdtest(row,rowData){
    	   var examObj = JSON.parse(rowData.getAttribute('examData'));
			 $('#trPpdRw' + examObj[0].rowNum + ' table').remove();
				$('#trPpdRw' + examObj[0].rowNum + ' thead').remove();
				$('#trPpdRw' + examObj[0].rowNum).find("tr:gt(0)").remove();
    	       //let examObj = JSON.parse(rowData.getAttribute('examData'));
    	       //alert(examObj[0].rowNum+": "+row.closest("tr").find('td:eq(13)').text() );
    	       //alert("ppd1docinterpret"+row.closest("tr").find('td:eq(20)').text()=='null'?'':row.closest("tr").find('td:eq(20)').text());
    	        $('#updatetypeoftest').prop('disabled', true);
			 $('#updatereasonoftest').prop('disabled', true);
               $('#ppdOutMsg').hide();
               $('#contSaveMsg').hide();
               $('#update_ppdtest').modal('show');
               $('#updateppdbutton').show();
               $('#rowppdid').val(row.closest("tr").find('td:eq(16)').text());
               var ppdid =  $('#ppdid').val(row.closest("tr").find('td:eq(15)').text());
               $('#exampleModalLongTitleUpdate').show();
               $('#exampleModalLongTitleAdd').hide();
               $('#addppd').hide();$('#ppdupdate').hide();
               $('#updateTest').val(procType);
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
          if(ppdId!='null' && ppdId != null){
          $('#deletePpdData').modal('show');
          $('#deletePpdBtn').attr('disabled', false);
          }
 }
      
  function deletePpd(){
       $('#ppdOutMsg').hide();
       $('#contSaveMsg').hide();
       $('#ppddeletesuccess').hide();
       let code= $('#ppdID').val();
       let rowdeleteppd= $('#ppdRowNo').val();
       let myJSONObj =JSON.stringify({"contactid":contactId,"pid":code});
       $.ajax({
             type : "POST",
             url : context+"/apiResponse?method=deletecontactppd",
             contentType : "application/json",
             headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
             crossDomain : true,
             data:myJSONObj,            
             dataType : "json",            
             success : function(response) {
                          if(response.code=='1'){
	                          $('#ppddeletesuccess').show();
	                          $('#deletePpdBtn').attr('disabled', true);
	                          $('#ppdrow'+rowdeleteppd).remove();
                          }
             },
             error : function(jqXHR, textStatus, errorThrown) {
                             if (jqXHR.status == "401") {
                             }
             }
      }); 
      }
		 
		 /**************** PPD Add, Update, Delete END  ***************/
		 
		 /**************** IGRA Add, Update, Delete START  ***************/
	
	function getIgraDetails(patObj){	 
		$('#contIgraTest tbody tr').remove();
		igraTestData = [];
		countIgra=0;
	      $.ajax({
           type: "POST",
           url:context+"/apiResponse?method=lstcontactigra",
           headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			contentType : "application/json",
			crossDomain : true,
			data:patObj,	
			dataType : "json",		
            success: function (data) {
            if(data.code =='1' && data.details.length >0){
            	for(var i=0; i<data.details.length;i++){
  	            	let igraObj = data.details[i];
  	            	reqid = igraObj.reqid;
  	            	igraTestData.push(igraObj);
  	            }
		        createTableIgra(igraTestData,"update");
            }
		    },
            error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				
				}
			}
	   });    
   }

	$("#requesterIgra").on('click',function(){
		 var currentRow=$(this).closest("tr");
	});
		 
	function addNewIgraRow(){
		igraArray = [];
		igraArray.length=0;
		$('#igraOutMsg').hide();
    	$('#contSaveMsg').hide();
	   
   	  if($('#igraTypeOfTest').val() == '' ){
   		$('#resultErr1').show();
   		$('#resultErr2').hide();
   		$('#resultErr3').hide();
   		$('#resultErr4').hide();
   	  }else{
   		$('#resultErr1').hide();
   		$('#resultErr2').hide();
   		$('#resultErr3').hide();
   		$('#resultErr4').hide();
	   	  let igraObj = {}; 
	      igraObj.result= $('#igraResult').val();
	   	  igraObj.exdate = $('#igraExamDt').val();
	      igraObj.resultName =$('#igraResult').find(":selected").text();
	      igraObj.exTypeName =$('#igraTypeOfTest').find(":selected").text();
	      igraObj.extype = $('#igraTypeOfTest').val();
	      igraObj.locationtype = "E";
	   	  igraObj.location = sessionStorage.getItem("loccode");
	   	  igraObj.notes =$('#igraNote').val();
	   	  igraObj.exid='',
	   	  igraObj.reqid='';
	      igraArray.push(igraObj);
	      if(igraArray.length >0){
	  	  createTableIgra(igraArray,"create");
		  $('#igraTestModel').modal("hide");
		  clearIgraVal(); 
	      }
   	  }
   }
	 
    function createTableIgra(tempIgraObj,status){
    	  var  userDetailsIgra='';
	       $.each(tempIgraObj, function(i, item) {
        	  countIgra++;
        	  let count=countIgra;
        	  let resenter='';igra = 'igra',testRequestedBy='',testRequestedOn='';
              let resdate='';
              let logInputObj = JSON.stringify({"reqid": reqid,"regid": regId,"procid":item.exid,"proctype":igra});
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
              let igraRowData =[];
              igraRowData.push({
            	    'exId' : item.exid,
					'reqId' :item.reqid,
					'rowNum' : count,
					'testId': item.extype,
					'testName':item.exTypeName,
					'patCd' : regId,
					'procType':'igra',
					'isPatient':'N',
					'notifId':notifcd,
					'contId':contactId
					});             
              userDetailsIgra = '<tr id=igrarow'+countIgra+'>';
        	  userDetailsIgra += '<td width:20%><select  class="form-control" disabled id="exTypeName'+count+'"> <option selected="selected" value="">Select</option></select></td>';
        	  userDetailsIgra += '<td width:10%><select class="form-control" id="resultName'+count+'"> <option selected="selected" value="0">Select</option></select></td>';
        	  userDetailsIgra += '<td width:10%><input type="text" class="form-control igradatepicker" readonly="readonly"   style="background:white;"  id="igraexdate'+count+'"></td>';
        	  userDetailsIgra += '<td width:22%><textarea class="form-control" maxlength="300"  id="notesIgra'+count+'"  rows="2" cols="50"></textarea></td>';
        	  userDetailsIgra += '<td width:10%><select class="form-control" id="requesterIgra'+count+'"> <option selected="selected" value="">Select</option></select></td>';
			  userDetailsIgra += '<td class="hidden" width:0%>' +count+ '</td>'; //5
              userDetailsIgra += '<td class="hidden" width:0%>' +item.exid+ '</td>'; //6
              userDetailsIgra += '<td class="hidden" width:0%>' +item.result+ '</td>';//7
              userDetailsIgra += '<td class="hidden" width:0%>' +item.extype+ '</td>';//8
              userDetailsIgra += '<td><div class="float-right"><img src="img/information.png" id="popover_info_igra'+count
              +'" data-placement="top"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_igra'
              +count+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'
              + testRequestedBy +'</span></li><li class=" listyle ml-3" >Test Requested On :'
              + testRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'
              + resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'
              + resdate +'</span></li></ul><br/></td>';
              userDetailsIgra += '<td class="text-center">'
            	  userDetailsIgra += '<div class="dropdown show d-inline-block widget-dropdown">'
            		  userDetailsIgra += '<span class="cpoint" style="color: #2196F3;font-size: 32px;" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">...</span>'
            			  userDetailsIgra += '<ul class="dropdown-menu dropdown-menu-right uiClass" aria-labelledby="dropdown-recent-order1">'
					   userDetailsIgra += '<li class="dropdown-item">'
							userDetailsIgra += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(igraRowData)+'\' onclick="deleteIgra_row(this)"><i class="fa fa-trash" title="delete"/></i>&nbsp;Delete</a>'
						userDetailsIgra += '</li>'
					if(status!="create"){
			           	userDetailsIgra += '<li class="dropdown-item">'
			           		userDetailsIgra += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(igraRowData)+'\' onclick="updateWithData(this)"><i class="fa fa-edit" title="update"/></i>&nbsp;Update</a>'
							userDetailsIgra += '</li>'
							userDetailsIgra += '<li class="dropdown-item">'
								userDetailsIgra += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(igraRowData)+'\' onclick="uploadfiles(this)"><i class="fa fa-upload" title="upload"/></i>&nbsp;Upload</a>'
								userDetailsIgra += '</li>'
									userDetailsIgra += '<li class="dropdown-item">'
							userDetailsIgra += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(igraRowData)+'\' onclick="viewfiles(this)"><i class="fa fa-download" title="download"/></i>&emsp;View</a>'
						userDetailsIgra += '</li>'
							userDetailsIgra += '<li class="dropdown-item">'
							userDetailsIgra += '<a class="btn btn-info c_point" onclick="printIgra($(this),'+count+')"><i class="fa fa-print" title="print"/></i>&emsp;Print</a>'
						userDetailsIgra += '</li>'	
					}else {
						userDetailsIgra +='<li></li>'
							 userDetailsIgra +='<li></li>'
								 userDetailsIgra +='<li></li>'
					}
						userDetailsIgra += ' </ul>'
						userDetailsIgra += ' </div></td>';
              userDetailsIgra += '</tr>';
              $('#contIgraTest').append(userDetailsIgra);
              $('#popover_info_igra'+count).popover({
		             html: true, trigger: 'hover',   sanitize: false,
		             content: function() {
		            	 
		            	 $('#popover_content_info_igra'+count).append(getLogsForUpdate(logInputObj,'trRadRw'+count));
		                  return $('#popover_content_info_igra'+count).html();
		             }
				});
		      $('#igraexdate'+count).val(item.exdate);
              $('#notesIgra'+count).val(item.notes);
              getIgraRequester(count,item.requester);
              getIgraResult(count,item.result);
              getIgraTestType(count,item.extype);
	       });
	       $(".igradatepicker").datepicker({
	      		changeMonth: true,
	      		changeYear: true,
	      		yearRange: "1930:2060",
	      		dateFormat: 'dd/mm/yy',
	      		maxDate: '+0d'
	 	    });
	      }
    
    function getIgraResult(rowNum,resultVal){
    	$(lstIgraResult).appendTo('#resultName'+rowNum); 
        if(resultVal!=''){
       		$("#resultName"+rowNum).val(resultVal);          	  
       	}
   }
   
   function getIgraTestType(rowNum,typeVal){
	 $(igraTestTypeList).appendTo('#exTypeName'+rowNum); 
       if(typeVal!=''){
      		$("#exTypeName"+rowNum).val(typeVal);          	  
      	}
    }
   
   function getIgraRequester(rowNumIgra,requesterVal){	
       $(getLocationTypediv_data).appendTo('#requesterIgra'+rowNumIgra); 
       if(requesterVal!=''){
      		$("#requesterIgra"+rowNumIgra).val(requesterVal);          	  
     	}
	}
    
    //Delete IGRA row
    function deleteIgra_row(rowData){
    	let examObj = JSON.parse(rowData.getAttribute('examData'));
    	$('#igraOutMsg').hide();
    	$('#contSaveMsg').hide();
		$('#igradeletesuccess').hide();
		let exId = examObj[0].exId; 
		let rowNo = examObj[0].rowNum;
		$('#igraId').val(examObj[0].exId);			
		$('#igraRowNo').val(examObj[0].rowNum);
		
		
		if(exId=='null' || exId=='undefined' || exId == ""){
			$('#deleteIgraData').modal('hide');
			$('#igrarow'+rowNo).remove();
		}else{
			 $('#deleteIgraData').modal('show');
			 $('#deleteIgraBtn').attr('disabled', false);
		}
	}
   
    //deleteIgra()
    function deleteIgra(){
    	$('#igraOutMsg').hide();
    	$('#contSaveMsg').hide();
		 $('#igradeletesuccess').hide();
		 let code = $('#igraId').val();
		 let rowNo = $('#igraRowNo').val();
		 let myJSONObj =JSON.stringify({"contactid":contactId,"pid":code});
	  $.ajax({
			type : "POST",
			url : context+"/apiResponse?method=deletecontactigra",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			data:myJSONObj,	
			dataType : "json",	
			success : function(response) {
				if(response.code=='1'){
				 $('#igradeletesuccess').show();
				 $('#igrarow'+rowNo).remove();
				 $('#deleteIgraBtn').attr('disabled', true);
				 }
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				}
			}
	 }); 
	}
		 
		 /**************** IGRA Add, Update, Delete END  ***************/
		 
		 /********************* FILE FUNCTION *********************/
		 
		 
		 var procid ='';
		 var proctype = '';
		$("input[name='fileUpload_n']").change(function(){
			   myfile= $( this ).val();
			   fileType = myfile.split('.').pop();
			   $('#fileError').show();
			   
		 });
		  
			/******************************** SAVE COntact Details *********************/
		 
	function saveContactRequest(){
		$('#labOutMsg').hide();
		$('#radOutMsg').hide();
		$('#ppdOutMsg').hide();
		$('#igraOutMsg').hide();
		isContactOpen=false;
			if(docStatus.length >0 && contactId != null){
				updateContDocStatus(docStatus);
			}
			// Add Lab
			let contLabJson = {  
		 			"contactid":contactId,
					"notifid":notifcd,
				     "lab":[
					]
				  }; 
			  
			$("#addLabTest1 tr:not(:first)").each(function (i, value) {
				 let self = $(this);
				   let exid = self.find("td:eq(2)").text().trim();
				   if(exid=="null" || exid=="" || exid==null){
					   contLabJson.lab.push(addLabNewRow(self));
				  }
             });
			
			if(contLabJson.lab.length>0){
			  addLabDetails(contLabJson);
			}

			//Add Radiology
			var contRadJson = {  
		 			"contactid":contactId,
					"notifid":notifcd,
				     "radiology":[
					]
			};
			
			$("#contRadTest tr:not(:first)").each(function (i, value) {
		    	   let radtest = {}
		    	   let self = $(this);
		    	   let exId = self.find("td:eq(1)").text().trim();
		    	   let rowcount=self.find("td:eq(9)").text().trim();
		    	   radtest.code = self.find("td:eq(0)").text().trim();
				   if(radtest.code == "3"){
					   radtest.result=$('#radresults'+rowcount).val();
				   }else{
					   radtest.result=$('#radresults'+rowcount).val();
				   }
				   radtest.abnormalResult=$('#abnormallist'+rowcount).val();
				   radtest.abnormalOth=$('#otherabnormaldiseasevalue'+rowcount).val();
				   radtest.locationtype='E';
				   radtest.requester=$('#requesterRad'+rowcount).val();
				   radtest.notes=$('#notesRad'+rowcount).val();
				   radtest.location=sessionStorage.getItem("loccode");
				   let radddt = $('#radDate'+rowcount).datepicker('getDate');
				   let radDate=$.datepicker.formatDate('dd/mm/yy', radddt); 
				   radtest.exdate=radDate;
				   radtest.doctorname='';
				   if(exId==""){
					   contRadJson.radiology.push(radtest);
				   }
			});
			
			if(contRadJson.radiology.length>0){
			 addRadiologyDetails(contRadJson);
			 radtest.length = 0;
			}
			
			//Add PPD
			var contPpdJson = {
					"contactid":contactId,
					"notifid":notifcd,
				     "ppdTest":[
					]
				};
			
			$("#ppdtestResult tr:not(:first)").each(function (i, value) {
	         	    let ppd = {}
	         	    var self = $(this);
				    var rowcount=self.find("td:eq(16)").text().trim();
                    ppd.ppd1TestDate= self.find("td:eq(3)").text().trim();  
                    ppd.ppd2TestDate=self.find("td:eq(4)").text().trim();
                    ppd.ppd1ReadingDate=self.find("td:eq(5)").text().trim();
                    ppd.ppd2ReadingDate=self.find("td:eq(6)").text().trim();
					ppd.ppd1Reading = self.find("td:eq(7)").text().trim();  
					ppd.ppd1Result =self.find("td:eq(9)").text().trim();
					ppd.ppd1Notes = self.find("td:eq(11)").text().trim();
					ppd.ppd2Reading = self.find("td:eq(8)").text().trim();
					ppd.ppd2Result =self.find("td:eq(10)").text().trim(); 
					ppd.ppd2Notes = self.find("td:eq(12)").text().trim();
					ppd.testType = self.find("td:eq(13)").text().trim();
					ppd.testReasonId = self.find("td:eq(14)").text().trim();
					ppd.ppdId =  self.find("td:eq(15)").text().trim();
					ppd.ppd1docinterpret =  self.find("td:eq(17)").text().trim();
					ppd.ppd2docinterpret =  self.find("td:eq(18)").text().trim();
					ppd.location=sessionStorage.getItem("loccode");
					ppd.sendSms = "";
		            if(ppd.ppdId == '' ||  ppd.ppdId == "null" || ppd.ppdId == null){
		            contPpdJson.ppdTest.push(ppd);
		            
		            }
				   
	           });
			
			if(contPpdJson.ppdTest.length>0){
				addPpdDetails(contPpdJson);
				}
			
			//Add IGRA
			var contIgraJson = {
					"contactid":contactId,
					"notifid":notifcd,
				     "igra":[
					]
				};
			
			$("#contIgraTest tr:not(:first)").each(function (i, value) {
         	   let igraObj = {}
         	   let self = $(this);
         	   
         	   let rowCount = self.find("td:eq(5)").text().trim();
         	  let igraResult = $('#resultName'+rowCount).val();
         	   let exid = self.find("td:eq(6)").text().trim();
         	   let igraDate = $('#igraexdate'+rowCount).datepicker('getDate');
			   let finalIgraDate=$.datepicker.formatDate('dd/mm/yy', igraDate);
		       igraObj.exdate = finalIgraDate;
			   //igraObj.result = self.find("td:eq(11)").text().trim();
			   if(igraResult=='0'){
				   igraObj.result='';
			   }else{
				   igraObj.result=$('#resultName'+rowCount).val();
			   }
			   
			   igraObj.extype = self.find("td:eq(8)").text().trim();
			   igraObj.locationtype ="E";
			   igraObj.notes =  $('#notesIgra'+ rowCount).val();
			   igraObj.location =sessionStorage.getItem("loccode");;
			   igraObj.requester =$('#requesterIgra'+rowCount).val();
			   if(exid == "" || exid == "null"  || exid=='undefined'){
				   contIgraJson.igra.push(igraObj);
				}
	           });
			
			if(contIgraJson.igra.length>0){
				addIgraDetails(contIgraJson);
		     }
			if(labOutput>0 || radOuput>0 || ppdOutput>0 || igraOutput>0 || contDocStat>0){
				$('#contSaveMsg').show();
			}
			
		}
		
		
		function updateContDocStatus(docStatus){
			var contDocJson = {  
		 			"contactid":contactId,
					"notifid":notifcd,
				     "status":docStatus
		   }; 
			  
			$.ajax({
	                type: "POST",
	                url:context+"/apiResponse?method=updatecontactdocstatus",
	                headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:JSON.stringify(contDocJson),	
					dataType : "json",
					 async: false,
	                success: function (data) {
	            	  if(data.code=="1"){
	            		  contDocStat = 1;
	            	  }
	            	}, 
	              error : function(jqXHR, textStatus, errorThrown) {
	                   if (jqXHR.status == "401"){
	                    }
	              }
	            });
			
		}
		
			function addIgraDetails(contIgraJson){
				$.ajax({
		              type: "POST",
		              url:context+"/apiResponse?method=createcontactigra",
		              headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					  contentType : "application/json",
					  crossDomain : true,
					  data:JSON.stringify(contIgraJson),	
					  dataType : "json",
					  async: false,
		              success: function (data) {
		            	  
	            	  if(data.code=="1"){
	            		  igraOutput = 1;
	            		  igraTestData.length=0;
	            		  getIgraDetails(patObj);
	            		  $('#igraOutMsg').show();
	            	  }else{
	            		  $('#igraOutErrMsg').show();
	            	  }
		            }, 
		              error : function(jqXHR, textStatus, errorThrown) {
		                   if (jqXHR.status == "401"){
		                    }
		              }
		            });  
			}
	  
	  function addLabDetails(contTestJson){
		 $.ajax({
              type: "POST",
              url:context+"/apiResponse?method=createcontactlab",
              headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			  contentType : "application/json",
			  crossDomain : true,
			  data:JSON.stringify(contTestJson),	
			  dataType : "json",
			  async: false,
              success: function (data) {
            	  
            	  if(data.code=="1"){
            		  labOutput = 1;
          	          labtest.length=0; 
            		  getLabDetails(patObj);
            		  if(data.details.failurelist.length > 0){
            			  $('#labOutErrMsg').show(); 
            		  }else{
            		  $('#labOutMsg').show();
            		  }
            	  }else{
            		  $('#labOutErrMsg').show();
            	  }
            	  
            	 
              }, 
              error : function(jqXHR, textStatus, errorThrown) {
                   if (jqXHR.status == "401"){
                    }
              }
            });  
	  }
	  
	  function addRadiologyDetails(contRadJson){
		  $.ajax({
              type: "POST",
              url:context+"/apiResponse?method=createcontactradiology",
              headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			  contentType : "application/json",
			  crossDomain : true,
			  data:JSON.stringify(contRadJson),	
			  dataType : "json",
			  async: false,
              success: function (data) {
           	  if(data.code=="1"){
           		  radtest.length = 0;
           		  getRadiologyDetails(patObj);
           		  radOuput=1;
           		  $('#radOutMsg').show();
           	  }else{
           		 $('#radOutErrMsg').show();
           	  }
            	  
              }, 
              error : function(jqXHR, textStatus, errorThrown) {
                   if (jqXHR.status == "401"){
                    }
              }
            });
		  
	  }
	  
	  function addPpdDetails(contPpdJson){
		 $.ajax({
              type: "POST",
              url:context+"/apiResponse?method=createcontactppd",
              headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			  contentType : "application/json",
			  crossDomain : true,
			  data:JSON.stringify(contPpdJson),	
			  dataType : "json",
			  async: false,
              success: function (data) {
            	  if(data.code=="1"){
            		  ppdOutput=1;
            		  getPpdDetails(patObj);
            		 
            		 $('#ppdOutMsg').show();	
            	  }else{
            		  $('#ppdOutErrMsg').show();
            	  }
              }, 
              error : function(jqXHR, textStatus, errorThrown) {
                   if (jqXHR.status == "401"){
                    }
              }
            }); 
	  }
	  
	  function clearContPageData() {
		  	regId = '';
		  	$('#labTest_1').addClass('active');
			$('#labTest1').addClass('show active');
			$('#radTest_1').removeClass('active');
			$('#radTest1').removeClass('show active');
			$('#ppdTest_1').removeClass('active');
			$('#ppdTest1').removeClass('show active');
			$('#igraTest_1').removeClass('active');
			$('#igraTest1').removeClass('show active');
			$('#edit').hide();
			$('#patientHistory').hide();
			$('#contact-tab1').hide();
			$('#openNotifyModel').modal('hide');
			$("#saveContactNotify").prop('disabled', true);
			clearContall();
			clearppd();
			clearMedical();
			clearIgra();
			resetTabAccordion();
			clearAddMore();
			$('#nameOtherEn').val('');
			$('#riskFactorPRCother1').val('');
			$('#contDocStatus').val('');
			$('#occupationOther1').val('');
			$('#hospNameOther').val('');
			$('#nameOtherAr').val('');
			$('#nationalityOther').val('');
			$('#genderOther').val('');
			$('#mobileOther').val('');
			$('#dobOther').val('');
			$('#bloodgroupOther').val('');
			$('#occupationOther').val('');
			$('#worplaceOther').val('');
			$('#diagnotes').val('');
			$('#governorateOther').val('');
			$('#recidencyOther').val('');
			Array.prototype.slice.call(document.querySelectorAll('[id^="mobileId"]'), 1)
				.forEach(elt => elt.parentNode.removeChild(elt))
			$('#patMobile0').val('');
			$('#riskFactorPRC').val('');
			$('#riskFactorOther').text('');
			$('#reference').val('');
			$('#comorbodities').val('');
			$('#comorboditiesOther').text('');
			$('#contDocStatus').val('');

		}
	  function clearContactRegInfo() {
			//alert("clearcontact")
			$('#district').val('');
			$('#nameAr').val('');
			$('#nameEn').val('');
			$('#patMobile').val('');
			$('#mobile').val('');
			$('#gender').val('');
			$('#nationality').val('');
			$('#address').val('');
			$('#dob').val('');
			$('#bloodgroup').val('');
			$('#governorate').val('');
			var labtest = {};
			var radtest = {};
			labtestdata = [];
			radtestData = [];
		}
	  function clearContNotificationData() {
			isContactOpen = false;
			$('#contactTab').hide();
			$('#history').hide();
			$('.bs-popover-left').removeClass('show');
			clearContPageData();
		}
	  
	  function clearContall() {

			//pooja
			labtest = [];
			radtest = [];
			ppdtestdata = [];
			igraTestData = [];

			labtest.length = 0;
			radtest.length = 0;
			igraTestData.length = 0;

			countLab = 0;
			countRad = 0;
			countpd = 0;
			countIgra = 0;

			labtestdata = [];
			radtestData = [];
			historyold = '';
			$("#ppdtestResult").find("tr:gt(0)").remove();

			clearDetailsBasic();
			//Pooja
			$("#ppdtestResult").find("tr:gt(0)").remove();
			$("#addLabTest1").find("tr:gt(0)").remove();
			$("#contRadTest").find("tr:gt(0)").remove();
			$("#contIgraTest").find("tr:gt(0)").remove();
			$('#ppdOutMsg').hide();
			$('#ppdOutErrMsg').hide();
			$('#saveContReq').hide();
			$('#igraOutMsg').hide();
			$('#igraOutErrMsg').hide();
			$('#radOutMsg').hide();
			$('#radOutErrMsg').hide();
			$('#labOutMsg').hide();
			$('#labOutErrMsg').hide();
			$('#contSaveMsg').hide();
			$("#notificationList tbody tr").removeClass("highlight");
			$('#relation').text('');
			igraTestData.length = 0;
			igraArray.length = 0;
		}
	 
	 </script>
</html>
