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
<title>LAB</title>
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
.dropdown-item {  display: inline !important;background: rgb(224, 230, 233)!important;}
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
									key="label.lab" /></b></li>
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
									<div class="col-lg-12">

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
																					<input type="button" class="btn btn-green" id="examDetailsBtn" value="Show Exam Details"  style="display:none;">&nbsp;
																					<input type="button" class="btn btn-green" id="createReqBtn" value="New Request" onclick="createRequest()" style="display:none;">&nbsp;
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
		<div class="text-right col-lg-12">
		<input type="button" style="display: none;" id="saveRequestBtn" class="btn btn-info" value="Save" onclick="saveNotifRequest()">
		</div>	
		<div class="text-right col-lg-12">
		<span id="notifyReqCreated" style="display: none;"><b><font color="green"><fmt:message key="label.notifyReqCreated" /></font></b></span>
		<span id="notifyReqErr" style="display: none;"> <b><font
									color="red"><fmt:message key="label.manField" /></font></b></span>	
		<span id="saveRequestErr" style="display:none;"> <b><font color="red"><fmt:message key="label.manField" /></font></b></span> 
		<!-- Upload Doc Variable -->
		<input type="hidden" id="reqId"> <input
								type="hidden" id="regId"> 
		</div>
<!-- Navigation tab START -->
<div class="col-sm-12" id="patNavTab">
				<div class="card  border-bottom-grey mt-2 mb-2 p-2">
						<div class="tab" role="tabpanel" id="hideTab">
							<ul class="nav nav-tabs1 " id="myTab2" role="tablist">
								<li class="nav-item"><a class="nav-link  show active"
									id="personalInfo_1" data-toggle="tab" href="#personalInfo1"
									role="tab" aria-controls="personalInfo1"
									aria-selected="true"><fmt:message
														key="label.personalInfo" /></a></li>
								<li class="nav-item"><a class="nav-link" style="display:none;"
									id="info_1" data-toggle="tab" href="#info1"
									role="tab" aria-controls="info1"
									aria-selected="true"><fmt:message
														key="label.initialHospitalNotification" /></a></li>
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
		<div class="tab-pane show active " id="personalInfo1" role="tabpanel" aria-labelledby="personalInfo_1">
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
						
	<!-- Patient Personal Info END -->
	<!-- hospital info STRAt -->	
	<div class="tab-pane fade" id="info1"role="tabpanel" aria-labelledby="info_1">
				<div class="row">
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="hospCategory" class="col-sm-5  hospCat col-form-label">
						<fmt:message key="label.hospCat" />:<span class="red"
							style="color: red;">*</span></label>
						<div class="col-sm-7">
							<select name="sel" id="hospCategory" class="form-control">
								<option selected="selected" value="">
								<fmt:message key="label.select" /></option>
							</select> 
							<span id="hospCatError" style="display: none;"> <b><font
									color="red"><fmt:message key="label.reqError" /></font></b></span>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="fileNo" class="col-sm-5 col-form-label ">
						<fmt:message key="label.fileNo" />:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="fileNo" name="last_name">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6" id="gov">
					<div class="form-group row">
						<label for="hospGovName" class="col-sm-5 col-form-label">
						<fmt:message key="label.hospName" />:<span class="red" style="color: red;">*</span></label>
						<div class="col-sm-7">
							<select name="sel" id="hospGovName" class="form-control">
								<option selected="selected" value=""><fmt:message
										key="label.select" /></option>
							</select> <span id="hospNameErrorG" style="display: none;"> 
							<b><font color="red"><fmt:message key="label.reqError" /></font></b></span>
						</div>
					</div>
				</div>
				<div class="col-sm-6" id="private">
					<div class="form-group row">
						<label for="hospNameP"
							class="col-sm-5 col-form-label"><fmt:message
								key="label.hospName" />:<span
							class="red" style="color: red;">*</span></label>
						<div class="col-sm-7">
							<input type="text" class="form-control"id="hospNameP" onchange="senderlocchange()"> 
							<span id="hospNameErrorP" style="display: none;"> <b>
							<font color="red"><fmt:message key="label.reqError" /></font></b></span>
						</div>
					</div>
				</div>
				<div class="col-sm-6" id="govhospNameOther">
					<div class="form-group row">
						<label for="hospNameOther"
							class="col-sm-5 col-form-label"><fmt:message key="label.othersHospital" /></label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="hospNameOther">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="diagnosisMain" class="col-sm-5 col-form-label"><fmt:message key="label.diagnosis" />: 
						<span class="red" style="color: red;">*</span></label>
						<div class="col-sm-7">
							<select name="diagnosis1" id="diagnosisMain" class="form-control">
								<option selected="selected" value=""><fmt:message key="label.select" /></option>
							</select> <span id="diagError" style="display: none;"> <b><font color="red">
							<fmt:message key="label.reqError" /></font></b></span>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="subdiagnosisMain"
							class="col-sm-5 col-form-label"><fmt:message
								key="label.subdiagnosis" />:<span
								class="red" style="color: red;">*</span></label>
						<div class="col-sm-7">
							<select name="subdiagnosis1"
								id="subdiagnosisMain"
								class="form-control">
								<option value="0" selected><fmt:message
										key="label.select" />
							</select> <span id="subdiagnosisError"
								style="display: none;"> <b><font
									color="red"><fmt:message
											key="label.reqError" /></font></b></span>
						</div>
					</div>
				</div>
				<div class="col-sm-6" id="subdiagnosisother">
					<div class="form-group row">
						<label for="subdiagnosisother1"
							class="col-sm-5 col-form-label"><fmt:message
										key="label.otherSubDiagnosis" /></label>
						<div class="col-sm-7">
							<input type="text" class="form-control "
								id="subdiagnosisother1" name="last_name">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="referralDate"
							class="col-sm-5 col-form-label"><fmt:message
								key="label.referralDate" />:</label>
						<div class="col-sm-7">
							<input type="text"
								class="form-control"
								id="referralDate" name="last_name" readonly="readonly"   style="background:white;">
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="phyName"
							class=" col-sm-5 col-form-label"><fmt:message
								key="label.phyName" />:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control"
								id="phyName" name="hhhh">
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="phyNo"
							class=" col-sm-5 col-form-label"><fmt:message
								key="label.phyNo" />:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control "
								id="phyNo" name="last_name">
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="patPosition" class=" col-sm-5 col-form-label"><fmt:message key="label.patPosition" />:</label>
						<div class="col-sm-7">
							<select name="patPosition" id="patPosition" class="form-control">
								<option value=""><fmt:message key="label.select" />
							</select>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group row">
						<label for="riskFactorHos"
							class=" col-sm-5 col-form-label "><fmt:message key="label.riskFactor" />:</label>
						<div class="col-sm-7">
							<select id="riskFactorHos" class="form-control">
								<option value=""><fmt:message key="label.select" />
							</select>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6" id="riskFactorHosother">
					<div class="form-group row">
						<label for="riskFactorHosother1"
							class="col-sm-5 col-form-label"><fmt:message key="label.otherRiskFactor" /> </label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="riskFactorHosother1" name="last_name">
						</div>
					</div>
				</div>
				</div>
			<hr>
			
	<div class="col-sm-6"  id="uploadLabDocId">
		<div class="form-group row" >
			<label class="col-sm-3 col-form-label">
			<b class="text-info"><fmt:message key="label.uploadOtherDocuments" /></b></label>
			<div class="col-sm-9">
				<div class="input-group">
					<div class="input-group-append">
						<!-- <div class="input-group-append"
							style="display: block"> -->
							<button class="btn btn-info labUploadBtn" type="button" title="Add File">
							<i class="fas fa-plus"></i>
							</button>
							&nbsp;
							<a class="btn btn-info" id="labReuploadDocBtn"><i class="fa fa-upload"  onclick="uploadDoc()"></i></a>
							&nbsp; 
							<a class="btn btn-info" id="labViewDocBtn"><i class="fa fa-download"  onclick="viewDocument('notif')"></i></a>
							&nbsp;
							<span id="fileError_notif" style="color: red;"><fmt:message key="label.fileError" /></span>
						</div>
					</div>
				</div>
			</div>
			
		<div class="form-group row" id="uploadDoc1">
			<label for="fileCivilId_notif0" class="col-sm-3 col-form-label"></label>
			<div class="col-sm-9">
				<div class="input-group">
					<input name="fileUpload_notif" id="fileCivilId_notif0" type="file" class="form-control fileUpload_notif">
				</div>
				<span id="fileUploadSuccessImageName_n" style="color: green;"></span>
			</div>
			
		</div>
		</div>
</div>
	<!-- hospital info END -->
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
<script src="js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>	
<script type="text/javascript" src="js/updateWithAuthenticate.js"></script>
<script type="text/javascript" src="js/tokenValidator.js"></script>
<script src="js/sb-admin-2_d.js"></script>
<script src="js/printReport.js"></script>
<script src="admin/datatables/jquery.dataTables.min.js"></script>
<script src="admin/datatables/dataTables.bootstrap4.min.js"></script>
<script src="js/demo/datatables-demo.js"></script> 
<script>
		 var page = "lab";
		 var mapposition = [];
		 var mapoutcome = []; 
		 var gStatusList = [];
		 var countLab = 0;
		 var reqid ='';
		 var getLocationTypediv_data ='',lstpcrresultsdiv_data='',lstafbresultsdiv_data='',lstcultureresultsdiv_data='', nationality_divdData = '', gccNationality_divData='';
		 var mapaction = [],labtest=[];
		 var lstctscanresultsdiv_data='',lDrugSensitive ='';
		 var contactId = '', reqId='',idVal='',idType='',notifCd='', patCd='';
		 var fileType = "";  validImageTypes = ['gif', 'jpeg', 'png','pdf']; idTypeForUpload ="";
		 var lstIgraResult = '',countIgra=0, igraTestTypeList='',contactCd='',proctype1='';
		 var procid ='';
		 var proctype = '';
		 var xUploadDocLab = 1;
		 var yUploadDocLab = 0;
		 var labUploadBtn = $('.labUploadBtn');
		 var maxField = 10; //Input fields increment limitation
		 var uploadLabDocId = $('#uploadLabDocId');
		 var labDrugSensitiveDivData = '', labSpecimenTypeDivData = "";
		
		 
		//Hide & Show content 
		$("#patNavTab").hide();
		$('#addLabBtn').hide();
		$('#labReuploadDocBtn').hide();
		$('#passportNationalityId').hide();
		
	
		
		
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
			
			$('#createReqBtn').hide();
			
			$('#ppdTest1').removeClass('show active');
			$('#ppdTest_1').hide();
			
			$('#radTest1').removeClass('show active');
			$('#radTest_1').hide();
			
			$('#medHistTest1').removeClass('show active');
			$('#medHistTest_1').hide();
		/******************** ID Type ***********************/
			$("input[name='searchOption'][value='C']").attr("checked", true);
			$('#searchLabel').text('<fmt:message key="label.civilid"/>:');
			//Page Authentication Call
			
			getNationality();
			getGccNationality();
		
			$(':radio').click(function() { 
				$('#passportNationalityId').hide();
				$('#searchByOption').val('');
				clearPatientLabData();
				
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
		    		   $('#createReqBtn').show();
		    		   
		    		   $('#searchLabel').text('<fmt:message key="unknown"/>:');
		    	   }		    	   
		    	}) ;
			
			
		
			/******************** Get Nationality ***********************/  
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
		
			/******************** Disease List ***********************/ 	
			$.ajax({
		          type: "GET",
		          url:context+"/getlistresponse?method=lstldiseases",
					contentType : "application/json",
					headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					crossDomain : true,
					
					dataType : "json",		
		           success: function (datahere) {			                 
		          	 var response = JSON.parse(JSON.stringify(datahere));	
		             	$.each(response,function(i,response){
				   	      if(lang=='en'){
		       	           var div_data="<option value="+response.code+" >"+response.nameen+"</option>";
		       	          }else{
		       	        	var div_data="<option value="+response.code+" >"+response.namear+"</option>";
		   	       	     }
		                $(div_data).appendTo('#locDisease'); 
		              });
		           },
		        error : function(jqXHR, textStatus, errorThrown) {
						if (jqXHR.status == "401"){
					    }
				}
		    }); 
		
			/********************patient navigation Tab click ***********************/  
		 /* $('#patNavTab .nav-link').click(function(event) {
	      		$('#patNavTab .nav-link').removeClass('active');
	      	    $(this).addClass('active');
	      	    $('#myTabContent2 .tab-pane').removeClass('show active');
	      	    let activeTabId = $('#patNavTab .nav-link.active').attr('id');
	            if(activeTabId =='personalInfo_1'){ 
	                $("#personalInfo1").addClass('show active');
		 		}else if(activeTabId =='lab_1'){	
		 			$("#lab1").addClass('show active');
	            }else if(activeTabId =='info_1'){	
		 			$("#info1").addClass('show active');
	            } 
		 });   */
			
		
		/*  $('#examinationNavTab .nav-link').click(function(event) {
	      		//$('#examinationNavTab .nav-link').removeClass('active');
	      	    $(this).addClass('active');
	      	    //$('#examinationTab .tab-pane').removeClass('show active');
	      	    let activeTabId = $('#examinationNavTab .nav-link.active').attr('id');
	      	  //  alert(activeTabId);
	            if(activeTabId =='labTest_1'){ 
	                $("#labTest1").addClass('show active');
		 		}else if(activeTabId =='igraTest_1'){	
		 			$("#igraTest_1").addClass('show active');
	            }else if(activeTabId =='igraTest_1'){	
		 			$("#igraTest_1").addClass('show active');
	            } 
		 }); */
		 
			   
			 $.ajax({
		            type: "GET",
		            url:context+"/getlistresponse?method=getlocationtypes",
		 			contentType : "application/json",
		 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
		 			crossDomain : true,
		 			dataType : "json",		
		            success: function (datahere) {			                 
	         	        let response = JSON.parse(JSON.stringify(datahere));	
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
			 /******************** Patient Personal Info Tab List ***********************/ 
			 
			 $.ajax({
				type : "GET",
				url : context+"/getlistresponse?method=lstPatData",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
				success : function(response) {
					 var response = JSON.parse(response);
					 
					//list governorates
					 $.each(response.details.lstgovernorates,function(i,response){
	   	       	          if(lang=='en'){
	   	       	          		 var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	          }else{
	   	       	        		var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	      }
		                  $(div_data).appendTo('#governorate'); 
		            });
				},
				error : function(jqXHR, textStatus, errorThrown) {
 					if (jqXHR.status == "401"){
 					getToken(); 
 					}
 		   		}
   	  		});
			 
			 $("#governorate").change(function () {
		    	  let value = this.value;
			      let myJSONObj =JSON.stringify({"code": value});
			      if(value !=""){
				      getDistrictVal(myJSONObj,'','') ; 
					 }
			 });
			 

		     
			 /******************** Details Tab List ***********************/ 
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
		               $(lDrugSensitive).appendTo('#drugSensitive'); 
			        });
					
					//TB Diagnosis Main List
				$.each(response.details.lsttbdiagnosis,function(i,response){
		  	          if(lang=='en'){
		  	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		  	          }else{
		  	      		var div_data="<option value="+response.code+">"+response.namear+"</option>";
		      	     }
		             $(div_data).appendTo('#diagnosisMain');
				});
					
				//Patient Position List
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
				
				// list risk factor
				  $.each(response.details.lstriskfactors,function(i,response){  	                    
		   	          if(lang=='en'){
		   	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	          }else{
		   	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
		       	      }
		         	  $(div_data).appendTo('#riskFactorHos'); 
				      });
				},
				error : function(jqXHR, textStatus, errorThrown) {
						if (jqXHR.status == "401"){
						getToken(); 
						}
			         }
	  	        });
		     
		     
		    /******************** Lab Test details API call  ***********************/  
			    $.ajax({
				type : "GET",
				url : context+"/getlistresponse?method=lstTestData",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				crossDomain : true,
				success : function(response) {
					 var response = JSON.parse(response);
					
					 var labTestDetails = '', radiologyTestDetails = '', labslNo = 0 , radslNo = 0;
					 
					 //lstpcrresults
					 $.each(response.details.lstpcrresults,function(j,response){
	  		   	       	  if(lang=='en'){
	  		   	       	      lstpcrresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
	  		   	       	  }else{
	  		   	       	      lstpcrresultsdiv_data+="<option value="+response.code+">"+response.namear+"</option>";
	  		   	   	      }
	  	             });
					 
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
					
					//lstcultureresults
					 $.each(response.details.lstcultureresults,function(k,response)
	  	 		            	 {
	  		   	       	          if(lang=='en'){
	  		   	       	      lstcultureresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
	  		   	       	          }
	  		   	       	          else{
	  		   	       	      lstcultureresultsdiv_data+="<option value="+response.code+">"+response.namear+"</option>";
	  		   	   	       	          }
	  	                       });
					 
					//lstafbresults
					 $.each(response.details.lstafbresults,function(l,response){
	  		   	         if(lang=='en'){
	  		   	               lstafbresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
	  		   	       	 }else{
	  		   	       	      lstafbresultsdiv_data+="<option value="+response.code+">"+response.namear+"</option>";
	  		   	   	     }
	  	             });
					
					//Lab Drug Sensitive
					$.each(response.details.lstdrugsensitivetypes,function(j,response){
					   	  if(lang=='en'){
					   		  //alert(response.nameen);
					   		labDrugSensitiveDivData +="<option value="+response.code+">"+response.nameen+"</option>";
					   	  }else{
					   		labDrugSensitiveDivData +="<option value="+response.code+">"+response.namear+"</option>";
					   	  }
				       });
					
					$.each(response.details.lstspecimentypes,function(j,response){
					   	  if(lang=='en'){
					   		labSpecimenTypeDivData +="<option value="+response.code+">"+response.nameen+"</option>";
					   	  }else{
					   		labSpecimenTypeDivData +="<option value="+response.code+">"+response.namear+"</option>";
					   	  }
				       });
					
					//list IGRA				
					 $.each(response.details.lstigraresults,function(j,response){
			   	       if(lang=='en'){
			   	       	        	  
			   	       	        lstIgraResult+="<option value="+response.code+">"+response.nameen+"</option>";
			   	         }else{
			   	       	        lstIgraResult+="<option value="+response.code+">"+response.namear+"</option>";
			   	   	     }
		 		    });
					
					//list IGRA	Test type		
					 $.each(response.details.lstigratesttype,function(j,response){
						if(lang=='en'){
							igraTestTypeList+="<option value="+response.code+">"+response.nameen+"</option>";
						}else{
			   	       		igraTestTypeList+="<option value="+response.code+">"+response.namear+"</option>";
			   	   	    }
					});
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
						getToken(); 
					}
				}
			    });
		   
		   
		   
		   
		   /******************** Hospital  ***********************/
		   //Hospital category List
		   $.ajax({
                type: "GET",
                url:context+"/getlistresponse?method=getlocsector",
      			contentType : "application/json",
      			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
      			crossDomain : true,
      			dataType : "json",		
                success: function (datahere) {			                 
                 	 var response = JSON.parse(JSON.stringify(datahere));	
                    	
                    	  $.each(response,function(i,response){
      		   	                    
  		   	               var lang = '<%=response.getLocale().getLanguage()%>'; 
  		   	       	          if(lang=='en'){
  		   	       	           var div_data="<option value="+response.code+">"+response.result+"</option>";
  		   	       	          }
  		   	       	          else{
  		   	       	        var div_data="<option value="+response.code+">"+response.result+"</option>";
  		   	   	       	          }
  	 		                  $(div_data).appendTo('#hospCategory'); 
  	                       });
                    	
                  },
                 error : function(jqXHR, textStatus, errorThrown) {               				
         				if (jqXHR.status == "401"){}
         			}
             });
		   
		   $("#hospCategory").change(function () {
			   $('#saveRequestErr').hide();
				 var value = this.value;
				 $("#hospGovName option").remove();
				  $("#hospGovName").append($("<option></option>")
		                    .attr("value", "0")
		                    .text("Select"));
				 var myJSONObj =JSON.stringify({"type":value});
				 if(value != ""){
					getHospitalName(myJSONObj,'');
				}
	 		});
		   
		 //Hospital Name List
		   function getHospitalName(myJSONObj,phval){
				 $.ajax({
						type : "POST",
	  				url : context+"/apiResponse?method=findHospitalsByType",
	  				contentType : "application/json",
	  				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	  				crossDomain : true,
	  				data:myJSONObj,	
	  				dataType : "json",	
	  				success : function(datahere) {			                 
			          	 var response = JSON.parse(JSON.stringify(datahere));	
			             	  $.each(response,function(j,response)
      		            	 {
      	   	       	          if(lang=='en'){
      	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
      	   	       	          }
      	   	       	          else{
      	   	       	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
      	   	   	       	          }
      		                 $(div_data).appendTo('#hospGovName');
                           });
			             	  
	             	  if(phval !=null && phval!=''){
	             		  $('#hospGovName').val(phval);
	             	  }
	          		 },
		             error : function(jqXHR, textStatus, errorThrown) {
		     				if (jqXHR.status == "401"){
		     				    }
		     			}
		         });
			}
		   
		   $("#hospGovName").change(function () {
				 $('#hospNameOther').val('');
				 var value = this.value;
				if(value == "22"){
		  			 $('#govhospNameOther').show();         
				} else {
					$('#govhospNameOther').hide();    
				}
			});
		 
		   $("#hospCategory").change(function() {
				var value = this.value;
				$('#hospNameOther').val('');
				$("#hospGovName").val('');
				$('#hospNameP').val('');
				$('#govhospNameOther').hide();
				if (value == "U") {
					$('#private').show();
					$('#gov').hide();
					$("#hospNameP").attr('disabled', true);
				} if (value == "G") {
					$('#gov').show();
					$('#private').hide();
					$("#hospGovName").attr('disabled', false);
				}
				if (value == "P") {
					$("#hospNameP").attr('disabled', false);
					$('#gov').hide();
					$('#private').show();
				}
				
				if (value == "U") {
					$('#gov').show();
					$("#hospNameP").attr('disabled', true);
				}
			});
		   
		   $("#hospGovName").on('change', function() {
				$('#hospNameErrorG').hide();
			});
		   
		   $("#hospCategory").on('change', function() {
				$('#hospCatError').hide();
			});
		   
		   function senderlocchange() {
				$("#hospNameErrorP").hide();
				if ($("#hospNameP").val() == '' || $("#hospNameP").val() == null) {
					$("#hospNameErrorP").show();
				}
				else {
					$("#hospNameErrorP").hide();
				}
			}
		   
		   
		   /******************** Risk factor  ***********************/
		   $("#riskFactorHos").change(function () {
			 $('#riskFactorHosother1').val('');			
			 var value = this.value;
			if(value == "17"){
	  			 $('#riskFactorHosother').show();         
			} else {
				$('#riskFactorHosother').hide();    
			}
			});
		   
		    /*  $('#searchByOption').on('change', function() {
		    			    	 clearPatientLabData();
			  
		    	
		    	
	         });  */
		    /******************** Document Upload Code ***********************/
		    $(labUploadBtn).click(function() {
			 	//Check maximum number of input fields
			 	if (xUploadDocLab < maxField) {
			 		xUploadDocLab++; //Increment field counter
			 		yUploadDocLab++;
			 		var fieldHTML = '<div class="form-group row"><label for="inputPassword" class=" col-sm-3 col-form-label"></label><div class="col-sm-9" id=fileId' + yUploadDocLab + '><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="file" class="form-control fileUpload_notif" name="fileUpload_notif" id=fileCivilId_notif' + yUploadDocLab + '  value=""/><span id=fileError_notif' + yUploadDocLab + ' style="color: red;display:none;"><div class="input-group-append"><div id=downlodcivil' + yUploadDocLab + ' style="display:none"><img src="img/down.png" onclick="downloadAsPDFCivil()" style="height: 38px;"></div><span id=civilFileUploadError' + yUploadDocLab + '  style="display:none"> <b><font color="red"><fmt:message key="label.FileUploadError" /></font></b></span> <span style="display:none;" id=civilFileExtError' + yUploadDocLab + '  style="display:none;"> <b><font color="red"><fmt:message key="label.FileExtError" /></font></b></span></td><td><a href="javascript:void(0);" class="labUploadRemoveBtn" title="delete" title="Delete"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>';
			 		$(uploadLabDocId).append(fieldHTML); //Add field html
			 	}
			 });
			
			 $(uploadLabDocId).on('click', '.labUploadRemoveBtn', function(e) {
					e.preventDefault();
					$(this).closest("div.row").remove();
					xUploadDocLab--; //Decrement field counter
			 });
			
			 function downloadAsPDFCivil(){
				 downloadfile(base64StringCivil);
		     }
			 
			 function downloadfile(base64String){
				 var myJSONObj =JSON.stringify({"civilData": base64String});
			   	 $.ajax({
		    	        url: context+"/getFileUploaded",
		    	        type: "POST",
		    	        data:myJSONObj,	
		    	        contentType: "application/json;charset=UTF-8",
		    	        success: function (data) {
		    	        	   var context = "${pageContext.request.contextPath}" 
		    	        	  window.open( context+"/getFile", "_blank") || window.location.replace(context+"/getFile");
		    	            },
		    	            error: function(request,status,errorThrown) {
		    	         }
		    	    });
			}  
		     
		    	
		    //File Upload
		    $("input[name='fileUpload_notif']").change(function() {
				myfile = $(this).val();
				fileType = myfile.split('.').pop().toLowerCase();
				proctype1 = "notif";

			});
		    
		    //Diagnosis On change function
		    $("#subdiagnosisMain").change(function () {
		    	$('#saveRequestErr').hide();
				 $('#subdiagnosisother1').val('');			
				 var value = this.value;
				if(value == "12"){
		  			 $('#subdiagnosisother').show();         
	 			} else {
	 				$('#subdiagnosisother').hide();   
	 				
	 			}
	 		});
		    
		    $("#diagnosisMain").change(function () {
		    	 $("#subdiagnosisMain").attr('disabled', false);
		    	 $('#diagError').hide();
				 $('#subdiagnosisother1').val('');
			     $('#subdiagnosisother').hide();
				 $('#sourceTB').hide();
			        var value = this.value;
			        var myJSONObj =JSON.stringify({"type": value});
			        getSubdiagnosis('Main',myJSONObj,'') ;  
	                  if(value=='1'){
	                	  pulmonarytbcase=true;
	                	  $('#sourceTB').show();
	                  }
	                  if(value=='2'){
	                	  extrapulmonarytbcase=true;
	                	  $('#sourceTB').show();
	                  }
	                  if(value=='3'){
	                	  $("#subdiagnosisMain").attr('disabled', true);
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
     				if (jqXHR.status == "401"){
     				    }
     			}
         });
			}
		 });	//Document.ready END Here
		
   	  
	     
   	function getPassportInfo(idVal,Idtype){
			$('#patNavTab').show();
		 let nationalityPass=$('#nationalityPass').val();
		 var myJSONObjPass =JSON.stringify({
										 "idtype":Idtype,
										 "passportnumber":idVal,
										  "nationality":nationalityPass,
										 "civilidnumber":"",});
		  if(nationalityPass==''){
			 // $('#pass1').show();
			  $('#manField').show();
				$('#patNavTab').hide();
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
		 
		function enableTabAndField(){
			$('#patNavTab').show();
     		$('#personalInfo_1').addClass('active');
			$('#personalInfo1').addClass('show active');
			$('#info_1').show();			
       	 	$('#info_1').removeClass('active');
       	    $('#info1').removeClass('show active');
       	    $('#lab_1').show();
			$('#lab_1').removeClass('active');
			$('#lab1').removeClass('show active');
			$('#igraTest1').removeClass('show active');
			$('#igraTest_1').hide();
     		
     		$('#saveRequestBtn').show();
     		 $('#addLabBtn').show();
     		 $('#dataUnavailable').hide();
     		 $("#govhospNameOther").hide();	
     		 $('#riskFactorHosother').hide();
     		 $("#private").hide();
     		 $("#gov").hide();
	    	 $("#addLabTest1").find("tbody tr").remove();
		     $("#contIgraTest").find("tbody tr").remove();
		     $('#passMandatoryFieldErr').hide();
		     labtest = [];
		     labtest.length = 0;
		     $("#aIgraTable").hide();
		     $('#reuploadButton1').hide();
		 	 $('#labViewDocBtn').hide();	
		}
		
		
		
	     function createRequest(){
	    	$('#patNotExistErr').hide();
		  		enableTabAndField();
		  		idVal =  $('#searchByOption').val();
				 idType = $('input[name="searchOption"]:checked').val();
				 if(idType =='U' ){
					 enabledpersonalInfoField();
					 $('#saveRequestBtn').show();
				 }
				 if(idType =='G' && idVal != ''){
					 enabledpersonalInfoField();
					 $('#saveRequestBtn').show();
				 }
				 getToken();
			}
			//Notif Request	   
			var genderCd ='';
	      	function saveNotifRequest(){
	      		$('#notifyReqErr').hide();
	      		idVal =  $('#searchByOption').val();
			  	idType = $('input[name="searchOption"]:checked').val();
	      		let nameAr = $('#nameAr').val();
	      		let nameEn =  $('#nameEn').val();
	      		var	phonesVal =[]; 
	      		let mobile = $('#mobile').val();
	      		phonesVal.push(mobile);
              	let bloodGroup = $('#bloodgroup').val();
	      		let nationality= $('#nationality').val();
	      		let nat = $('#nationality').text();
	      		let gender = $('#gender').val(); 
	      		genderCd ='';
	      		if(gender=="Male"){
	      			genderCd="M";
	      		}else{
	      			genderCd="F";
	      		}
  	   	        let dob = $('#dob').val();
  	   	   		let address= $('#address').val();
  	   	        let hosCategory = $('#hospCategory').val();
  	   	   		let fileNo = $('#fileNo').val();
		   	   	let hosName = $('#hospGovName').val();
		   		let priHosName =  $('#hospNameP').val();
		   		let othHosName = $('#hospNameOther').val();
		       	let diagHos = $('#diagnosisMain').val();
		   		let subDiagHos= $('#subdiagnosisMain').val();
		   		let othSubDiagHos = $('#subdiagnosisother1').val(); 
		   	    let referredDtTemp = $('#referralDate').datepicker('getDate');
		   	    let referredDt = $.datepicker.formatDate('dd/mm/yy', referredDtTemp);
	   	   		let physName = $('#phyName').val();
	   	   		let physNum = $('#phyNo').val();
	   	   		let hosStay = $('#patPosition').val(); 
	   	   		let riskFact = $('#riskFactorHos').val();
	   	   		let riskFactOth = $('#riskFactorHosother1').val();
		   	   	if(hosCategory=='G'){
				    var notifsender = hosName;
				}
				if(hosCategory=='P'){
 				   var notifsender = $('#hospNameP').val();
 				}
			let notiflocationtype = $('#hospCategory').val();
			
			if(($('#diagnosisMain').val())==''){		
				$('#diagError').show();
			}
			if(($('#hospCategory').val())==''){		
				$('#hospCatError').show();
			}
			if(($('#hospCategory').val()=='G')&&($('#hospGovName').val()=='')){		
				$('#hospNameErrorG').show();
			}
			if(($('#hospCategory').val()=='P')&&($('#hospNameP').val()=='')){		
				$('#hospNameErrorP').show();
			}
	   	   	jsonObj = {
				    "patcd":patCd,
				    "fileno":fileNo,
				    "notiftype":"E", 
				    "notifcategory":"1", //Need to check with tancy
				  	"riskfactor":riskFact,
				  	"riskfactorOther":riskFactOth,
				  	"position":hosStay,
				  	"physicname":physName,
				  	"physicphone":physNum,
				  	"autoapproval":"N",
				  	"source":"B",
				  	"notiflocationtype":notiflocationtype,
					"notifsender":notifsender,
				      "patient":{
				    	"idnumber":idVal,
				  		"idtype":idType,
				  		"ptcd":patCd,
				  		"nameen":nameEn,
				  		"namear":nameAr,
				  		"nationality":nationality,
				  		"gender":genderCd,
				  		"address":address,
				  		"birthdate":dob,
				  		"refnumber":"",
				  		"bloodgroup":bloodGroup,
				  		"patphone":phonesVal
				  		},
				      "diagnosis":[],
				      "lab":[]
			 };
	   	 callCreateNotifRequestApi(jsonObj); 
	   	getToken();
	 }
			
		function callCreateNotifRequestApi(jsonObj){
				if($('#diagnosisMain').val()!=''){									
				    let diag = {}
				    diag.code = $('#diagnosisMain').val();
				    diag.subcode = $('#subdiagnosisMain').val();
				    diag.extype='D';
				    diag.isprc='N';
				    diag.doctorname='';
				    diag.subOtherCodeName = $('#subdiagnosisother1').val();
				   jsonObj.diagnosis.push(diag);
			  	} 
		   	 $("#addLabTest1 tr:not(:first)").each(function (i, value) {
				  // let labtest = {};
	               let self = $(this);
	             //  labtest = addLabNewRow(self)
				  
				   jsonObj.lab.push(addLabNewRow(self));
				 
	            });
		   	requestInputObj =JSON.stringify(jsonObj);
		   	
		   	if((idType == 'G' || idType == 'P' || idType == 'C')  && ( $('#nameAr').val() == '' || $('#nameEn').val() == '' || $('#nationality').text() == '' || $('#dob').val() == '') ){
		   		$('#notifyReqErr').show();
		   		return;
		   	}
		   	
		   	if((idType == 'U')  &&  $('#gender').val() == ''  ){
		   		$('#notifyReqErr').show();
		   		return;
		   	}
		   	
		   	if((($('#diagnosisMain').val()!='') && ($('#hospCategory').val()!='')) ){ 
		   	$.ajax({
	            type: "POST",
	            url:context+"/apiResponse?method=createnotifrequest",
	            headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				contentType : "application/json",
				crossDomain : true,
				data:requestInputObj,	
				dataType : "json",		
	            success: function (data) {	
	                if(data.code=="1"){
	                	reqId=data.details.requestcd;
	                	if(reqId != ''){
	                		$("#reqId").val(reqId);
	                		$("#regId").val(data.details.patientcd)
	                		uploadDoc();
	                	$("#reqId").val('');
	                	$("#regId").val('')
	                	}
	                	if(data.details.patientcd != ''){
	                		patCd = data.details.patientcd;
	                		if(patCd != ''){
	    						getIgraDetails(patCd);
	    						getLabDetails(patCd);
	    					}
	                		$('#personalInfo_1').addClass('active');
	        				$('#personalInfo1').addClass('show active');
	        				$('#info_1').hide();				
	        	       	 	$('#info_1').removeClass('active');
	        	       	    $('#info1').removeClass('show active');
	        	       	    $('#lab_1').show();
	        				$('#lab_1').removeClass('active');
	        				$('#lab1').removeClass('show active');
	                		disablePersonalInfoField();
	        				$('#saveRequestBtn').hide();
	                	}
	                	if(idType == 'U'){
	                		$('#searchByOption').val(data.details.idnumber);	
	                	}
	                	$('#notifyReqCreated').show();
	              }
	            },
			     error : function(jqXHR, textStatus, errorThrown) {
			 	     if (jqXHR.status == "401"){
			 	     }
			      }
	                
			  });
			}else{
				//$('#saveRequestErr').show();
				$('#notifyReqErr').show();
			}	
		   	getToken();
			}

		function getInfo(patientObj){
		 	 let idNumTemp = $('#searchByOption').val();
		     idVal=idNumTemp;
		     idType = $('input[name="searchOption"]:checked').val();
		     if(idType =='P'){
		    	$('#passportNationalityId').show();
		     }else{
		    	 $('#passportNationalityId').hide();
		     }
		     var reg='C';
			 let myJSONObj =JSON.stringify({"idnumber": idNumTemp,"idtype":idType});
			 if(idNumTemp != ""){
			 $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=verifyopennotifs",
	               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	                success: function (data) {			                 
		                    if(data.code=="1"){
		                    	 $('#createReqBtn').hide();
		                    	 $('#openNotification').show();
		                    	 $('#notifyNo').text(data.result);
		                    }else{
		                    	 $('#createReqBtn').show();		                    	 
		                    }
		                    addSearchPatDetailsToFields(patientObj);
		             },
		             error : function(jqXHR, textStatus, errorThrown) {
					        if (jqXHR.status == "401"){
					       	 getToken(); 
					        }
					}
		        }); 
			}
		} 
			function searchPatient(){		
				clearPatientLabData();
				$('#addLabBtn').hide();
				
				 let gender ="";
				  	 idVal =  $('#searchByOption').val();
				  	 idType = $('input[name="searchOption"]:checked').val();
				  	//alert(idVal);	 
				  	if(idType =='P' || idType =='C' || idType =='G' || idType =='U'){
				  		//$('#createReqBtn').attr('disabled',true);
				  		if(idVal != ""){
				  			var myJSONObj = JSON.stringify({"idnumber":idVal,"idtype":idType});
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
											getInfo(data);	
										}
										//Patient Not Found then create patient
										if(data.code == '-2'){
											 clearPatientLabData();
											 $('#patNotExistErr').show();
											 if(idType=='U'){
												 $('#createReqBtn').show();
											 }
											 if(idType=='G'){
												 $('#createReqBtn').show();
											 }
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
				  		}
				  		
				  	}
				}
			
			$('#examDetailsBtn').on('click',function(){
				$('#personalInfo_1').addClass('active');
				$('#personalInfo1').addClass('show active');
				$('#info_1').hide();				
	       	 	$('#info_1').removeClass('active');
	       	    $('#info1').removeClass('show active');
	       	    $('#lab_1').show();
				$('#lab_1').removeClass('active');
				$('#lab1').removeClass('show active');
				//alert(patCd);	
					if(patCd != ''){
						getIgraDetails(patCd);
						getLabDetails(patCd);
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
		   	   		countLab =0;
		   	   		countIgra = 0;
		   	   		
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
					                    //$('#personalInfo1').show();
					                    addSearchPatDetailsToFields(data);  
     			                    }
     			                    if(data.code=="-3"){
     			                    }
     			                    if(data.code=="-2"){
     			                      $('#patNotExistErr').show();
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
			 
			 	
			 function getIgraDetails(patCd){
				 $('#contIgraTest tbody tr').remove();
				 $('#aIgraTable').show();
				 let userDetails = '';
				 var myJSONObj =JSON.stringify({"ptcd": patCd});
				 $.ajax({
						type:"POST",
						url: context+"/apiResponse?method=lstpatigrabyloc",
						contentType: "application/json",
						headers:{"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						crossDomain:true,
						data:myJSONObj,
						dataType:"json",
						success:function(data) {
							for (let i = 0; i < data.details.length; i++) {								
								$('#igraRequesterTh').hide();
								$('#igraNoteTh').hide();
								$('#igraDeleteTh').hide();
						    	 let item = data.details[i];
						    	 contactCd = item.contactcd;
					        	  countIgra++;
					        	  let count=countIgra;
					        	  let resenter='';igra = 'igra',testRequestedBy='',testRequestedOn='';
					              let resdate='';
					              let logInputObj = JSON.stringify({"reqid": item.reqid,"regid": patCd,"procid":item.exid,"proctype":igra});
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
										'patCd' : patCd,
										'procType':'igra',
										'isPatient':'Y',
										'contId':'',
										'notifId':''
										
										});          
					              userDetailsIgra = '<tr id=igrarow'+countIgra+'>';
					              //userDetailsIgra += '<td width=5%>'+item.reqid+'</td>';
					        	  userDetailsIgra += '<td width:20%><select  class="form-control" disabled id="exTypeName'+count+'"> <option selected="selected" value="">Select</option></select></td>';
					        	  userDetailsIgra += '<td width:10%><select class="form-control" id="resultName'+count+'"> <option selected="selected" value="0">Select</option></select></td>';
					        	  userDetailsIgra += '<td width:10%><input type="text" class="form-control igradatepicker" readonly="readonly"   style="background:white;"  id="igraexdate'+count+'"></td>';
					        	  userDetailsIgra += '<td width:22%><textarea class="form-control" maxlength="300"  id="notesIgra'+count+'"  rows="2" cols="50"></textarea></td>';
					        	  userDetailsIgra += '<td width:10% class="hidden"><select class="form-control" id="requesterIgra'+count+'"> <option selected="selected" value="">Select</option></select></td>';
					              /* if(status=="create"){
					           	   userDetailsIgra += '<td width=0%></td>';	
					           	   userDetailsIgra += '<td width=0%></td>';
					           	   userDetailsIgra += '<td width=0%></td>';
					              }else{
					               userDetailsIgra += '<td><div class="float-right"><img src="img/information.png" id="popover_info_igra'+count
									                   +'" data-placement="top"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_igra'
									                   +count+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'
									                   + testRequestedBy +'</span></li><li class=" listyle ml-3" >Test Requested On :'
									                   + testRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'
									                   + resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'
									                   + resdate +'</span></li></ul><br/></td>';
					               userDetailsIgra += '<td width:4% class="float-center"><a href="javascript:void(0)"  class="c_point" examData=\''+JSON.stringify(igraRowData)+'\' onclick="printIgra($(this),'+count+')"><img src="img/p.png" title="print"></a></td>';	
					           	   userDetailsIgra += '<td width:4% ><a href="javascript:void(0)"  class="update_buttonRad c_point" examData=\''+JSON.stringify(igraRowData)+'\' onclick="updateWithData(this)"><img src="img/update.png" title="update"></a></td>';
					              } */
					              //userDetailsIgra += '<td width:4% class="hidden"><a href="javascript:void(0)" class="remove_buttonRad c_point"  examData=\''+JSON.stringify(igraRowData)+'\' onclick ="deleteIgra_row(this)"><img src="img_new/delete.png" title="delete"></a></td>';
					              //userDetailsIgra += '<td class="hidden" width:4%><a href="javascript:void(0)" class="remove_buttonRad c_point"  onclick ="deleteIgra_row($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
					              userDetailsIgra += '<td class="hidden" width:0%>' +count+ '</td>'; //5
					              userDetailsIgra += '<td class="hidden" width:0%>' +item.exid+ '</td>'; //6
					              userDetailsIgra += '<td class="hidden" width:0%>' +item.result+ '</td>';//7
					              userDetailsIgra += '<td class="hidden" width:0%>' +item.extype+ '</td>';//8
					              /* if(status=="create"){
					            	  userDetailsIgra += '<td width=0%></td>';	 
					              }else{
					                  userDetailsIgra += '<td width=10%><a href="javascript:void(0)" class="c_point" ><a class="btn btn-info"><i class="fa fa-upload" title="upload" examData=\''+JSON.stringify(igraRowData)+'\' onclick="uploadfiles(this)"/></i></a>'
						              userDetailsIgra += '&nbsp;<a class="btn btn-info"><i class="fa fa-download" title="download" examData=\''+JSON.stringify(igraRowData)+'\' onclick="viewfiles(this)"/></i></a></i></a></td>';

					              } */
					             // userDetailsIgra += '<td width:0%>' +item.testrequestedon+ '</td>'; 
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
							            	 $('#popover_content_info_igra'+count).append(getLogsForUpdate(logInputObj,'trIgraRow'+count));
							                  return $('#popover_content_info_igra'+count).html();
							             }
									});
							      $('#igraexdate'+count).val(item.exdate);
					              $('#notesIgra'+count).val(item.notes);
					              //getIgraRequester(count,item.requester);
					              getIgraResult(count,item.result);
					              getIgraTestType(count,item.extype);
						       }
						       $(".igradatepicker").datepicker({
						      		changeMonth: true,
						      		changeYear: true,
						      		yearRange: "1930:2060",
						      		dateFormat: 'dd/mm/yy',
						      		maxDate: '+0d'
						 	    });
						},
						error: function(jqXHR, textStatus,errorThrown) {
							if (jqXHR.status == "401") {
								 getToken();
							}
						}
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
	      		
			 function getLabDetails(patCd){
				 	$('#addLabTest1 tbody tr').remove();
				    labtest =[];
			        labtest.length = 0;
		  		    countLab = 0;
				 let myJSONObj =JSON.stringify({"ptcd": patCd});
				 $.ajax({
						type:"POST",
						url: context+"/apiResponse?method=lstpatlabsbyloc",
						contentType: "application/json",
						headers:{"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						crossDomain:true,
						data:myJSONObj,
						dataType:"json",
						success:function(data) {
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
			    		  			    resultenteredby:id.resultenteredby,
			    		  			  	specimenType:id.specimen,
						  			    labNo:id.exno,
						  			    inoculationDate: id.inoculationdate,
			    		  				testrequestedon:id.testrequestedon,
			    		  			  	testRequestedBy:labRequestedBy,
			    		  			    testRequestedOn:labRequestedOn,
			    		  			    resultTypeId:id.typecode,
			    		  			    exId:id.exid,
			    		  			   	exDate:id.exdate,
			    		  			  	reqId:id.reqid
			    		  		});
			               });
							createTableLab(labtest,"update");	
						},
						error: function(jqXHR, textStatus,errorThrown) {
							if (jqXHR.status == "401") {
								 getToken();
							}
						}
					});
				
				
				 
			 }
			 
			 function multipleCheck(){
				// $('#addLabTest1 tbody tr').remove();
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
			  			    specimenType:'',
			  			    labNo:'',
			  			    inoculationDate: '',
			  			    resultTypeId:$(this).attr("lctype"),
			  			    exId:'',
			  			    exDate:'',
			  			    reqId:''
			  			  });
			  		});		
				 	verifyExistingLabAndAdd(labtest1);
				}
				
				 function verifyExistingLabAndAdd(labtest1){			 
					$('#addLabTest1 tbody tr').each(function() {
						   let exId = $(this).find("td:eq(1)").text().trim();
			               let testNameId = $(this).find("td:eq(0)").text().trim();
			               let rowNo = $(this).find("td:eq(10)").text().trim();
			               let resultNameId = $('#tstLabResults'+rowNo).val();
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
					 if(status =='create'){
						 $('#hReqId').hide();
						 $('#hDrugSensitiveLab').hide();
						 $("#hTestCreatedDt").hide();
						 $("#updateLabIcon").hide();
						 $("#hDeleteLab").show();
						 $("#requesterId").show();
						 $('#updateInfoIcon').hide();
						 $('#updatePrintIcon').hide();
						 $('#hDocs').hide();
						 $('#addLabBtn').show();
					 }else{
						 $('#hReqId').show();
						 $('#hDrugSensitiveLab').show();
						 $("#hTestCreatedDt").show();
						 $("#updateLabIcon").show();
						 $("#requesterId").hide();
						 $('#updateInfoIcon').show();
						 $('#updatePrintIcon').show();
						 $('#hDocs').show();
						 $("#hDeleteLab").hide();
						 $('#addLabBtn').hide();
					 }
					  let  userDetails='';	
					  $.each(labTempObj, function(i, item) {			        	  
			       	 	  countLab++;//total number of rows in the lab table, if we delete also
					      let rowNum=countLab;
						  let lab="lab";
						  let labRowData =[];
							 labRowData.push({
								'exId' : item.exId,
								'reqId' :item.reqId,
								'rowNum' : rowNum,
								'testId': item.testId,
								'testName':item.value,
								'specimenType':item.specimenType,
								'labNo':item.labNo,
								'patCd' : patCd,
								'procType':'lab',
								'isPatient':'Y',
								'contId':'',
								'notifId':''
								});  
						  let logInputObj = JSON.stringify({"reqid": item.reqId,"regid": patCd,"procid":item.exId,"proctype":lab});
						  let resenter='',resdate='',resUpdatedBy='',labRequestedBy='',labRequestedOn='' ;			            	
		                   if(item.resultenteredby != null){
		                       resenter=item.resultenteredby; 
		                   }if(item.resultentereddt != null){
		                       resdate=item.resultentereddt;
		                   }
		                   if(item.testRequestedby != null){
		                	   labRequestedBy=item.testRequestedby;
		                   }
		                   if(item.testrequestedon != null){
		                	   labRequestedOn=item.testrequestedon;
		                   }	
		                   userDetails = '<tr id=labrow'+ countLab+'>';
		                   userDetails += '<td class="hidden">' +item.testId + '</td>'; //code //0
		                   userDetails += '<td class="hidden">' +rowNum + '</td>';  
		                   userDetails += '<td class="hidden">' +item.exId+ '</td>'; //exid  //2
		                   userDetails += '<td width="15%">' + item.value  + '</td>';
		            	   userDetails += '<td><select class="form-control lSpecimenType" id="lSpecimenType' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
		            	   userDetails += '<td><input  type="number" min ="0"  maxlength = "20" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" class="form-control numberonly" style="background:white;"  id="lLabNo' + rowNum + '""></td>';
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
							if(status=="create"){
								userDetails += '<li class="dropdown-item">'
								userDetails += '<a class="btn btn-info c_point" examData=\''+JSON.stringify(labRowData)+'\' onclick="delete_labrow(this)"><i class="fa fa-trash" title="delete"/></i>&nbsp;Delete</a>'
								userDetails += '</li>'
							}else{
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
					            	 $('#popover_content_info_lab'+rowNum).append(getLogsForUpdate(logInputObj,'trLabRow'+ rowNum));
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
			                  getLabDrugResistance(rowNum,item.drugsensitive);
			                  getSpecimenType(rowNum,item.specimenType);
			                  $('#labDate'+rowNum).val(item.exDate);
			                  $('#lInoculationDate'+rowNum).val(item.inoculationDate);
			                  $('#lLabNo'+rowNum).val(item.labNo);
					   });
			     }
				 
				 function getLabRequester(rowNumLab,requesterVal,drugResistVal){
		            $(getLocationTypediv_data).appendTo("#requester"+rowNumLab);
				   if(requesterVal!=''){
		  				$("#requester"+rowNumLab).val(requesterVal);
		  	  		}
			     }
			 
				function delete_labrow(dataObj){
					let examObj = JSON.parse(dataObj.getAttribute('examData'));
					let exId = examObj[0].exId; 
					let lrow = examObj[0].rowNum;
					$('#labRowNo').val(examObj[0].rowNum);
					$('#labIDNew').val(examObj[0].exId);
					labtestName = examObj[0].testName;
					if(exId==''){
						$('#labrow'+lrow).remove();
						labtest= $.grep(labtest, function(dt) {
						//alert(dt.value);
						  return dt.value != labtestName;
					});
					}
				   if(exId!=''){
				    $('#deleteLabData').modal('show');	
				    $( "#deleteLabBtn" ).attr( "disabled", false ); 
				    }
			}
				
			function getLabDrugResistance(rowNumLab,drugVal){	
				 //alert(rowNumLab,drugVal);
		           $(labDrugSensitiveDivData).appendTo('#drugSensitive'+rowNumLab); 
		           if(drugVal!=''){
		          		$("#drugSensitive"+rowNumLab).val(drugVal);          	  }
			   }
		
			function getSpecimenType(rowNumLab,speciVal){	
				 //alert(rowNumLab,drugVal);
		           $(labSpecimenTypeDivData).appendTo('#lSpecimenType'+rowNumLab); 
		           if(speciVal!=''){
		          		$("#lSpecimenType"+rowNumLab).val(speciVal);          	  }
			   }
			
		function getLabResult(rowNum, resultVal, arr) {
			if (arr == 'P') {
				var value = "";
				$(lstpcrresultsdiv_data).appendTo("#tstLabResults" + rowNum);
				if (resultVal != '') {
					$("#tstLabResults" + rowNum).val(resultVal);
				}
			}
			if (arr == 'C') {
				var value = "";
				$(lstcultureresultsdiv_data).appendTo("#tstLabResults" + rowNum);
				if (resultVal != '') {
					$("#tstLabResults" + rowNum).val(resultVal);
				}
			}
			if (arr == 'A') {
				var value = "";
				$(lstafbresultsdiv_data).appendTo("#tstLabResults" + rowNum);
				if (resultVal != '') {
					$("#tstLabResults" + rowNum).val(resultVal);
				}
			}
		}

		$("input[name='fileUpload_n']").change(function(){
			   myfile= $( this ).val();
			   fileType = myfile.split('.').pop();
			   $('#fileError').show();
			   
		 });
		
		function disablePersonalInfoField(){
			 	$('#nameAr').prop('disabled', true);
	      		$('#nameEn').prop('disabled', true);
	      		$('#nationality').prop('disabled', true);
	      		$('#gender').prop('disabled', true);
	      		$('#dob').prop('disabled', true);
	      		$('#address').prop('disabled', true);
	      		$('#mobile').prop('disabled', true);
	      		$('#bloodgroup').prop('disabled', true);
	      		$('#governorate').prop('disabled', true);
	      		$('#district').prop('disabled', true);
		 }
		 
     	function enabledpersonalInfoField(){
     		$('#saveRequestBtn').hide();	
     		$('#nameAr').prop('disabled', false);
     		$('#nameEn').prop('disabled', false);
     		$('#nationality').prop('disabled', false);
     		$('#gender').prop('disabled', false);
     		$('#dob').prop('disabled', false);
     		$('#address').prop('disabled', false);
     		$('#mobile').prop('disabled', false);
     		$('#bloodgroup').prop('disabled', false);
     		$('#governorate').prop('disabled', false);
			$('#district').prop('disabled', false);
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
			countLab = 0;
			countIgra = 0;
			patCd='';
			$('#examDetailsBtn').hide();
			$('#createReqBtn').hide();
       	 	$('#saveRequestBtn').hide();
			$("#addLabTest1").find("tbody tr").remove();
			$("#contIgraTest").find("tbody tr").remove();
			$("#searchListByIDType").find("tr:gt(0)").remove();
			$('#fileCivilId_notif0').val('');
			$('#contactNameHide').hide('');
			$('#patNotExistErr').hide();
			$('#openNotification').hide();
       	 	$('#notifyNo').text('');
       	 	$('#patNavTab').hide();
       	 	$('#notifyReqErr').hide();
       	 	$('#notifyReqCreated').hide();
       	 	
       	 	$('#personalInfo_1').addClass('active');
			$('#personalInfo1').addClass('show active');
       	 	$('#info_1').removeClass('active');
       	    $('#info1').removeClass('show active');
			$('#info_1').hide();
			$('#lab_1').removeClass('active');
			$('#lab1').removeClass('show active');
			$('#lab_1').hide();
       		
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
</script>

</body></html>