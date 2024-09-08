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
<link href="admin/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link href="css_pharmacy/main.css" rel="stylesheet">
<link rel="stylesheet" href="css_pharmacy/jquery-ui.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<jsp:include page="notifModal.jsp"></jsp:include>
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
    /*  background-color: #e5e3e3; */
     color: #b3b2b2;
} 
.popover{   max-width:none!important;}
</style>
</head>
<body id="page-top" class="sidebar-toggled">
	<!-- Page Wrapper -->
	<jsp:include page="ControlPage.jsp"></jsp:include>
	<jsp:include page="GenericPage.jsp"></jsp:include>
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
											<div class="tab" role="tabpanel">
												<ul class="nav nav-tabs" id="myTab" role="tablist">
													<li class="nav-item"><a class="nav-link active"
														id="home-tab" data-toggle="tab" href="#home" role="tab"
														aria-controls="home" aria-selected="true"><fmt:message
														key="label.newNotificationRequest" /></a></li>
													<li class="nav-item"><a class="nav-link "
														id="profile-tab" data-toggle="tab" href="#profile"
														role="tab" aria-controls="profile" aria-selected="false"><fmt:message
														key="label.notificationList" /></a></li>
													<li class="nav-item"><a class="nav-link "
														id="pendingrequest-tab" data-toggle="tab" href="#pendingrequest"
														role="tab" aria-controls="profile" aria-selected="false"><fmt:message
														key="label.pendingrequest" /></a></li>
													<li class="nav-item"><a class="nav-link "
														id="notif-Alert-tab" data-toggle="tab" href="#alert"
														role="tab" aria-controls="search" aria-selected="false"><fmt:message
														key="label.alert" /></a>
													</li>
													<li class="nav-item"><a class="nav-link "
														id="search-tab" data-toggle="tab" href="#search"
														role="tab" aria-controls="search" aria-selected="false"><fmt:message
														key="label.search" /></a>
													</li>
													
												</ul>
												<div class="tab-content pl-2 pr-2" id="myTabContent">
													<div class="tab-pane fade show active" id="home"
														role="tabpanel" aria-labelledby="home-tab">
														<div class="row ">
															<div class="col-xl-7 col-md-7 mb-1 ">
																<div class="card border-left-info shadow h-100">
																	<div class="card-body pt-2 pb-2">
																		<div class="row no-gutters align-items-center">
																			<table width="100%" border="0" cellspacing="0"
																				cellpadding="0" class="">
																				<tr><td><label class="col-form-label" id="IDName"><fmt:message
																					key="label.civilID" /> </label></td>
																					<td><input name="civilid" id="civilid"
																						type="text" class="form-control"
																						onchange="getInfo()"> <span
																						id="dataUnavailable" style="display: none;"><b><font
																								color="red"><fmt:message
																										key="label.unAvailable" /></font></b></span> <span id="dbError"
																						style="display: none;"><b><font
																								color="red"><fmt:message
																										key="label.dbfetchError" /></font></b></span></td>
																					<td width="5%"></td>
																					<td width="30%"><img src="img_new/w2.png"
																						width="51px" />
																						<button type="button"
																							class="btn btn-blue  status-badge1"
																							data-toggle="modal" onclick="otherIDpop()"
																							data-target="#waiting_list" title="Add Patient"><fmt:message key="label.otherID" /></button></td>
																					<td width="10%">
																						<button type="button"
																							class="btn btn-danger status-badge1"
																							onclick="clearNotificationData()" title="Clear">
																							<fmt:message key="label.clear" />
																						</button>
																					</td>
																					</td>
																					<td width="15%" id="saveNoti">
																						<button type="button" class="btn btn-green"
																							id="saveNotify" onclick="saveRequest()"
																							title="Save">
																							<fmt:message key="label.save" />
																						</button>
																					</td>
																					<td width="15%" id="updateNoti"
																						style="display: none;">
																						<button type="button" class="btn btn-green"
																							title="Update" id="updateNotify"
																							onclick="updateNotify()">
																							<fmt:message key="label.update" />
																						</button>
																					</td>
																				</tr>
																				<tr>
																					<td></td>
																				<td class="text-right"><span id="notifyCreate"
																						style="display: none;"><b><font
																								color="green"><fmt:message
																										key="label.notifyCreated" /></font></b></span></td> 
																					<td></td>
																				<td colspan="4" class="text-right"><span id="notifyUpdate"
																						style="display: none;"><b><font
																								color="green"><fmt:message
																										key="label.notifyUpdated" /></font></b></span></td> 
																				</tr>
																			</table>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-xl-3  mb-1 ">
																<div class="card  bg-gradient-info shadow h-100">
																	<div class="card-body ">
																		<div class="row no-gutters align-items-center">
																			<table width="55%" border="0" cellspacing="0"
																				cellpadding="0">
																				<tr>
																					<td class="text-white "><b><fmt:message
																								key="label.notifNo" /></b></td>
																					<td class="text-white"><b><span
																							class="notifyIDShow" id="notifyID"></span></b></td>
																				</tr>
																			</table>
																		</div>
																	</div>
																</div>
															</div>
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
																				<td colspan="2"><fmt:message key="label.gender" />
																					: <b><span id="gender"></span></b></td>
																			</tr>
																			<tr>
																				<td colspan="2"><fmt:message key="label.mobile" />:
																					<b><span id="mobile" name="phonenumber"></span>
																				</b></td>
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
															<div class="col-lg-6">
																<div class="card shadow border-left-info">
																	<div class="card-header  d-flex bg-gradient-light">
																		<h6 class="m-0 font-weight-bold text-info  hdd">
																			<fmt:message key="label.residencyInfo" />
																		</h6>
																	</div>
																	<div class="card-body pt-1 pb-1">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="5" class="text-dark">
																			<tr>
																				<td width="" colspan="2"><fmt:message
																						key="label.entryDate" /> : <b><span
																						id="entryDate"></span></b></td>
																				<td colspan="2"><fmt:message
																						key="label.occupation" /> : <b><span
																						id="occupation"></span></b></td>
																			</tr>
																			<tr>
																				<td colspan="2"><fmt:message
																						key="label.sponsor" /> : <b><span
																						id="sponsor"></span></b></td>
																				<td colspan="2"><fmt:message
																						key="label.recidency" />: <b><span
																						id="recidency"></span></b></td>
																			</tr>
																			<tr>
																				<td colspan="2"><fmt:message
																						key="label.marital" />: <b><span id="marital"></span>
																				</b></td>
																				<td colspan="2"><fmt:message
																						key="label.worplace" /> : <b><span
																						id="worplace"></span> </b></td>
																			</tr>
																			<tr>
																				<td colspan="2"><fmt:message
																						key="label.governorate" /> : <b><span
																						id="governorate"></span></b></td>
																				<td colspan="2"><fmt:message
																						key="label.district" /> : <b><span
																						id="district"></span> </b></td>
																				<td>&nbsp;</td>
																				<td width="19%" align="right"><a href="#"
																					id="edit" data-toggle="modal"
																					onclick="populatebasicdata()"
																					title="Edit Patient Details"
																					data-target="#waiting_list_1"
																					class="font-weight-bold text-green"
																					style="text-decoration: underline"> <fmt:message
																							key="label.edit" /></a></td>
																			</tr>
																		</table>
																	</div>
																</div>
															</div>
															<div class="col-xl-12  pl-0 pt-1">
																<div class="col-xl-11 col-md-7 mb-1 pr-1">
																	<div class="card border-left-info shadow h-100">
																		<div class="card-body pt-4 pb-2">
																			<div class="form-group row">
																				<label for="notifycat"
																					class="col-sm-3 col-form-label text-navy"><b><fmt:message
																							key="label.notifytype" /> :</b> <span class="red"
																					style="color: red;">*</span> </label>
																				<div class="col-sm-4">
																					<select name="notifycat" id="notifycat"
																						class="form-control">
																						<option selected="selected" value=""><fmt:message
																									key="label.select" /></option>
																					</select> <span id="notifyCatError" style="display: none;"><b><font
																							color="red"><fmt:message
																									key="label.reqError" /></font></b></span>
																				</div>
																			</div>
																			<div class="form-group row">
																				<label for="locDisease"
																					class="col-sm-3 col-form-label text-navy"><b><fmt:message
																							key="label.disease" /> :</b> </label>
																				<div class="col-sm-4">
																					<!-- 								<select name="sell" id="locDisease" class="form-control"  disabled="disabled"> -->
																					<select name="locDisease" id="locDisease"
																						class="form-control">
																						<option selected="selected" value=""><fmt:message
																									key="label.select" /></option>
																					</select>
																				</div>
																			</div>
																			<div class=" text-navy  font-weight-bold text-right" id="patientHistory"><fmt:message
																									key="label.patientHistory" /> &nbsp;
																			<a href="#" data-original-title="Patient History <a href=&quot;#&quot; class=&quot;close&quot; id=&quot;close_p&quot; data-dismiss=&quot;alert&quot; >×</a>" data-placement="left"><img onclick="callHistory()" src="img/v1.png" /></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-sm-12">
															<div class="card  border-bottom-grey mt-2 mb-2 p-2">
																	<div class="tab" role="tabpanel" id="hideTab">
																		<ul class="nav nav-tabs1 " id="myTab1" role="tablist">
																			<li class="nav-item"><a class="nav-link  active"
																				id="profile-tab1" data-toggle="tab" href="#profile1"
																				role="tab" aria-controls="profile1"
																				aria-selected="false"><fmt:message
																									key="label.details" /></a></li>
																			<li class="nav-item"><a class="nav-link"
																				id="contact-tab1" data-toggle="tab" href="#contact1"
																				role="tab" aria-controls="contact1"
																				aria-selected="false"><fmt:message
																									key="label.examinationTest" /></a></li>
																		</ul>
																		<div class="tab-content1  p-3" id="myTabContent1">
																			<div class="tab-pane fade show active " id="profile1"
																				role="tabpanel" aria-labelledby="profile-tab1">
																				<div class="row mt-2">
																					<div class="col-sm-6 pl-0">
																						<div id="accordion3">
																							<div class="card border-bottom-info">
																								<div class="card-header bg-gradient-info"
																									id="headingTwo">
																									<!--border-top-primary-->
																									<h5 class="mb-0 panel-title_plus ">
																										<a
																											class="btn-link collapsed text-white opencollapsed1"
																											data-toggle="collapse"
																											data-parent="#accordion3" href="#collapseTwo"
																											aria-expanded="true"
																											aria-controls="collapseTwo"> <fmt:message
																									key="label.initialHospitalNotification" /></a>
																									</h5>
																								</div>
																								<div id="collapseTwo"
																									class="collapse show hideshow1"
																									aria-labelledby="headingTwo"
																									data-parent="#accordion3">
																									<div class="card-body">
																										<div class="row">
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="hospCat"
																														class="col-sm-5  hospCat col-form-label"><fmt:message
																															key="label.hospCat" />:<span class="red"
																														style="color: red;">*</span></label>
																													<div class="col-sm-7">
																														<select name="sel" id="hospCat"
																															class="form-control">
																															<option selected="selected" value=""><fmt:message
																																	key="label.select" /></option>
																														</select> <span id="hospCatError"
																															style="display: none;"> <b><font
																																color="red"><fmt:message
																																		key="label.reqError" /></font></b></span>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="fileNo"
																														class="col-sm-5 col-form-label "><fmt:message
																															key="label.fileNo" />:</label>
																													<div class="col-sm-7">
																														<input type="text" class="form-control"
																															id="fileNo" name="last_name">
																													</div>
																												</div>
																											</div>
																										</div>
																										<div class="row">
																											<div class="col-sm-6" id="gov">
																												<div class="form-group row">
																													<label for="hospName"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.hospName" />:<span
																														class="red" style="color: red;">*</span></label>
																													<div class="col-sm-7">
																														<select name="sel" id="hospName"
																															class="form-control">
																															<option selected="selected" value=""><fmt:message
																																	key="label.select" /></option>
																														</select> <span id="hospNameErrorG"
																															style="display: none;"> <b><font
																																color="red"><fmt:message
																																		key="label.reqError" /></font></b></span>
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
																														<input type="text" class="form-control"
																															id="hospNameP"
																															onchange="senderlocchange()"> <span
																															id="hospNameErrorP"
																															style="display: none;"> <b><font
																																color="red"><fmt:message
																																		key="label.reqError" /></font></b></span>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6" id="govhospNameOther">
																												<div class="form-group row">
																													<label for="hospNameOther"
																														class="col-sm-5 col-form-label"><fmt:message
																																		key="label.othersHospital" /></label>
																													<div class="col-sm-7">
																														<input type="text" class="form-control"
																															id="hospNameOther">
																													</div>
																												</div>
																											</div>
																										</div>
																										<div class="row">
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="diagnosisMain"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.diagnosis" />: <span
																													class="red" style="color: red;">*</span></label>
																													<div class="col-sm-7">
																														<select name="diagnosis1"
																															id="diagnosisMain" class="form-control">
																															<option selected="selected" value=""><fmt:message
																																	key="label.select" /></option>
																														</select> <span id="diagError"
																															style="display: none;"> <b><font
																																color="red"><fmt:message
																																		key="label.reqError" /></font></b></span>
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
																													<label for="patPosition"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.patPosition" />:</label>
																													<div class="col-sm-7">
																														<select name="patPosition"
																															id="patPosition" class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="riskFactorPRC"
																														class=" col-sm-5 col-form-label "><fmt:message
																															key="label.riskFactor" />:</label>
																													<div class="col-sm-7">
																														<select id="riskFactorPRC"
																															class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="action"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.action" />:</label>
																													<div class="col-sm-7">
																														<select name="sel" id="action"
																															class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6" id="riskFactorPRCother">
																												<div class="form-group row">
																													<label for="riskFactorPRCother1"
																														class="col-sm-5 col-form-label"><fmt:message
																																	key="label.otherRiskFactor" /> </label>
																													<div class="col-sm-7">
																														<input type="text" class="form-control "
																															id="riskFactorPRCother1" name="last_name">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6" id="pcrdate">
																												<div class="form-group row">
																													<label for="pcrdateref"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.pcrdateref" />:</label>
																													<div class="col-sm-7">
																														<input type="text"
																															class="form-control datepicker" readonly="readonly"   style="background:white;"
																															id="pcrdateref">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6" id="isolateddate">
																												<div class="form-group row">
																													<label for="isolateddateref"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.isolateddate" />:</label>
																													<div class="col-sm-7">
																														<input type="text"
																															class="form-control datepicker" readonly="readonly"   style="background:white;"
																															id="isolateddateref">
																													</div>
																												</div>
																											</div>
																										</div>
																										<div class="row">
																											<div class="col-sm-6" id="field_wrapper">
																												<div class="form-group row" id="phoneId0">
																													<label for="patPhone0"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.patPhone" />:</label>
																													<div class="col-sm-7">
																														<div class="input-group">
																															<input type="text"
																																class="form-control phone_name"
																																id="patPhone0">
																															<div class="input-group-append">
																																<button class="btn btn-info add_button"
																																	type="button" title="Add">
																																	<i class="fas fa-plus"></i>
																																</button>

																															</div>
																														</div>
																													</div>
																												</div>
																											</div>
																											<div class="col-xl-12  pl-0 pt-0">
																												<hr />
																												<div class=" pb-3 pt-2 px-2 ">
																													<h6	class="m-0 font-weight-bold text-info  hdd">
																														<fmt:message
																															key="label.otherCommunicableDisease"/>																														
																													</h6>
																													<div class="float-right">
																															<button type="button"
																																class="btn btn-blue btn-sm status-badge1"
																																data-toggle="modal"
																																data-target="#waiting_list_2"
																																title="Add Disease">
																																<i class="fas fa-plus"></i> <fmt:message
																															key="label.diseases"/>
																															</button>
																														</div>
																													<div
																														class=" text-green  font-weight-bold text-center col-sm-6"></div>
																												</div>
																												<div class="card-body pt-2 pb-2">
																													<div class="row" id="field_wrapperICD">
																														<div class="col-sm-6">
																															<table id="diseasetablehos"
																																class="display table table-bordered"
																																style="width: 100%">
																																<thead>
																																	<tr>
																																		<th style="display: none;"><fmt:message
																																	key="label.disrow"/></th>
																																		<th><fmt:message
																																	key="label.diseaseName"/></th>
																																		<th><fmt:message
																																	key="label.delete"/></th>
																																		<th style="display: none;"><fmt:message
																																	key="label.rowCount"/></th>
																																		<th style="display: none;"><fmt:message
																																	key="label.discode"/></th>
																																	</tr>
																																</thead>
																																<tbody>

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
																						<div id="accordion44">
																							<div class="card border-bottom-info mt-2">
																								<div class="card-header bg-gradient-info"
																									id="heading44">
																									<h5 class="mb-0 panel-title_plus">
																										<a
																											class=" btn-link collapsed text-white opencollapsed"
																											data-toggle="collapse"
																											data-parent="#accordion44" href="#collapse44"
																											aria-expanded="false"
																											aria-controls="collapse44"> <fmt:message
																												key="label.uploadDocuments" />
																										</a>
																									</h5>
																								</div>
																								<div id="collapse44" class="collapse show hideshow1"
																									aria-labelledby="heading44"
																									data-parent="#accordion44">
																									<div class="card-body">
																										<div class="row">
																											<div class="col-sm-12" id="field_wrapper2">
																											<div id="field_wrapper3">
																														<div class="form-group row">
																													<label
																														class="col-sm-3 col-form-label"><b
																														class="text-info"><fmt:message
																																				key="label.uploadCivilID" /></b></label>
																													<div class="col-sm-9">
																														<div class="input-group">
																															<!-- <input name="fileupload" type="file" class="form-control fileUpload" id="fileCivilId0"> -->
																															<div class="input-group-append">
																																<div class="input-group-append"
																																	style="display: block">
																																	<button
																																		class="btn btn-info add_button3"
																																		type="button" title="Add File">
																																		<i class="fas fa-plus"></i>
																																	</button>
																																	&nbsp; <!-- <img class="c_point"
																																		src="img/u8.png" id="reuploadButton1"
																																		title="Upload File" onclick="uploadfiles('0','')"/>&nbsp; <img
																																		class="c_point" src="img/v1.png"
																																		id="viewDocumentButton1"
																																		title="View File"
																																		onclick="viewDocument()" /> -->
																																		<a class="btn btn-info" id="reuploadButton"><i class="fa fa-upload"  onclick="uploadDoc()"></i></a>
																																		&nbsp; <a class="btn btn-info" id="viewDocumentButton"><i class="fa fa-download"  onclick="viewDocument('')"></i></a>
																																</div>&nbsp;
																																<span id="fileError_n" style="color: red;"><fmt:message key="label.fileError" /></span>
																																<%-- <span id="fileUploadSuccess"
																																	style="display: none;"> 
																																<b><font color="green"><fmt:message
																																	key="label.fileUploadSuccess" /> </font></b></span> <span
																																	id="fileUploadSuccessImageName"
																																	style="display: none;"></span> <span
																																	id="fileUploadError"
																																	style="display: none;"> <b><font
																																		color="red"> <fmt:message
																																				key="label.fileUploadError" /> <span
																																			id="fileUploadErrorImageName"
																																			style="display: none;"></span></font></b></span> --%>
																															</div>
																														</div>
																													</div>
																												</div>
																												<div class="form-group row" id="uploadDoc0">
																													<label for="fileCivilId0"
																														class="col-sm-3 col-form-label"></label>
																													<div class="col-sm-9">
																														<div class="input-group">
																															<input name="fileUpload_n" type="file"
																																class="form-control fileUpload_n" id="fileCivilId0">
																														</div>
																													</div>
																												</div>
																											</div>
																												<div class="form-group row">
																													<label 
																														class="col-sm-3 col-form-label"><b
																														class="text-info"><fmt:message
																																				key="label.uploadOtherDocuments" /></b></label>
																													<div class="col-sm-9">
																														<div class="input-group">
																															<!-- <input name="fileupload" type="file" class="form-control fileUpload" id="fileCivilId0"> -->
																															<div class="input-group-append">
																																<div class="input-group-append"
																																	style="display: block">
																																	<button
																																		class="btn btn-info add_button2"
																																		type="button" title="Add File">
																																		<i class="fas fa-plus"></i>
																																	</button>
																																	&nbsp;
																																		<a class="btn btn-info" id="reuploadButton1"><i class="fa fa-upload"  onclick="uploadDoc()"></i></a>
																																		&nbsp; <a class="btn btn-info" id="viewDocumentButton1"><i class="fa fa-download"  onclick="viewDocument('notif')"></i></a>
																																		&nbsp;<span id="fileError_notif" style="color: red;"><fmt:message key="label.fileError" /></span>
																																</div>
																															</div>
																														</div>
																													</div>
																												</div>
																												<div class="form-group row" id="uploadDoc1">
																													<label for="fileCivilId_notif0"
																														class="col-sm-3 col-form-label"></label>
																													<div class="col-sm-9">
																														<div class="input-group">
																															<input name="fileUpload_notif" type="file"
																																class="form-control fileUpload_notif"
																																id="fileCivilId_notif0">
																														</div>
																														<span id="fileUploadSuccessImageName_n" style="color: green;"></span>
																													</div>
																													
																												</div>
																												
																												
																												
																											</div>
																										</div></div></div></div></div>
																						
																							</div>
																					<div class="col-sm-6 pr-0">

																						<div id="accordion4">
																							<div class="card border-bottom-info">
																								<div class="card-header bg-gradient-info"
																									id="heading67">
																									<h5 class="mb-0 panel-title_plus">
																										<a
																											class=" btn-link collapsed text-white opencollapsed"
																											data-toggle="collapse"
																											data-parent="#accordion4" href="#collapse67"
																											aria-expanded="false"
																											aria-controls="collapse67"> <fmt:message
																												key="label.prcNotify" />
																										</a>
																									</h5>
																								</div>
																								<div id="collapse67" class="collapse hideshow"
																									aria-labelledby="heading67"
																									data-parent="#accordion4">
																									<div class="card-body">
																										<div class="row">
																											<div class="col-sm-6">
																												<div class="form-group row higlightRow">
																													<label for="fileNoPRC"
																														class="col-sm-5 col-form-label "><fmt:message
																															key="label.fileNo" />:</label>
																													<div class="col-sm-7">
																														 <input type="number" class="form-control numberonly" min ="0" min ="0"  maxlength = "20" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
																															id="fileNoPRC" name="last_name" onkeydown="javascript: return ['Backspace','Delete','ArrowLeft','ArrowRight'].includes(event.code) ? true : !isNaN(Number(event.key)) &amp;&amp; event.code!=='Space'">
																													 
																													 								
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="addmitedDate"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.addmitedDate" />:</label>
																													<div class="col-sm-7">
																														<input type="text"
																															class="form-control datepicker" readonly="readonly"   style="background:white;"
																															id="addmitedDate">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="patPositionPRC"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.patPosition" />:</label>
																													<div class="col-sm-7">
																														<select name="patPosition"
																															id="patPositionPRC" class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="phyNamePRC"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.phyName" />:</label>
																													<div class="col-sm-7">
																														<input type="text" class="form-control"
																															id="phyNamePRC" name="phyName">
																													</div>
																												</div>
																											</div>
																										</div>
																										<div class="row">
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="daignosisHos"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.diagnosis" />:</label>
																													<div class="col-sm-7">
																														<select class="form-control"
																															id="daignosisHos" name="diagnosis">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="subdiagnosisHos"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.subdiagnosis" />:</label>
																													<div class="col-sm-7">
																														<select name="subdiagnosis"
																															id="subdiagnosisHos" class="form-control">

																															<option value="0"><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6"
																												id="subdiagnosisHosother">
																												<div class="form-group row">
																													<label for="subdiagnosisHosother1"
																														class="col-sm-5 col-form-label"><fmt:message
																																	key="label.otherSubDiagnosis"/></label>
																													<div class="col-sm-7">
																														<input type="text" class="form-control"
																															id="subdiagnosisHosother1"
																															name="subdiagnosisHosother1">
																													</div>
																												</div>
																											</div>
																										</div>
																										<div class="row">
																											<%-- <div class="col-sm-6">
																												<div class="form-group row">
																													<label for="inputPassword"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.treatStartdate" />:</label>
																													<div class="col-sm-7">
																														<input type="text"
																															class="form-control datepicker"
																															id="treatStartdate" name="ee">
																													</div>
																												</div>
																											</div> --%>
																											
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="startDoseDate"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.startDoseDate" />:</label>
																													<div class="col-sm-7">
																														<input type="text"
																															class="form-control datepicker" readonly="readonly"   style="background:white;"
																															id="startDoseDate">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="enddosesDate"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.enddosesDate" />:</label>
																													<div class="col-sm-7">
																														<input type="text" class="form-control datepicker"
																															 readonly="readonly"   style="background:white;"
																															id="enddosesDate" name="last_name">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="treatCat"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.treatCat" />:</label>
																													<div class="col-sm-7">
																														<select name="sel" id="treatCat"
																															class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="treatOutcome"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.treatOutcome" />:</label>
																													<div class="col-sm-7">
																														<select name="sel" id="treatOutcome"
																															class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="medResistance"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.medResistance" />:</label>
																													<div class="col-sm-7">
																														<select name="medResistance"
																															id="medResistance" class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																											

																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="disDate"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.disDate" />:</label>
																													<div class="col-sm-7">
																														<input type="text"
																															class="form-control datepicker" readonly="readonly"   style="background:white;"
																															id="disDate">
																													</div>
																												</div>
																											</div>

																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="nextapp"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.nextapp" />:</label>
																													<div class="col-sm-7">
																														<input type="text"
																															class="form-control datepicker" readonly="readonly"   style="background:white;"
																															id="nextapp">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="diagnotes"
																														class=" col-sm-5 col-form-label"><fmt:message
																															key="label.comments" />:</label>
																													<div class="col-sm-7">
																														<textarea id="diagnotes" maxlength="300"
																															cols="" rows="" class="form-control"></textarea>
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6" style="display: none;">
																												<div class="form-group row">
																													<label for="prclocation"
																														class="col-sm-5 col-form-label"><fmt:message
																															key="label.prclocation" />:</label>
																													<div class="col-sm-7">
																														<input type="text" class="form-control"
																															id="prclocation" name="prclocation" value="5">
																													</div>
																												</div>
																											</div>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																						<!--end of PRC-->
																						<div id="accordion55">
																							<div class="card border-bottom-info mt-2">
																								<div class="card-header bg-gradient-info"
																									id="heading55">
																									<!--border-top-primary-->
																									<h5 class="mb-0 panel-title_plus ">

																										<a
																											class=" btn-link collapsed text-white opencollapsed1"
																											data-toggle="collapse"
																											data-parent="#accordion55" href="#collapse55"
																											aria-expanded="false"
																											aria-controls="collapse55"> <fmt:message
																															key="label.tBControlUnit" /> </a>
																									</h5>
																								</div>
																								<div id="collapse55"
																									class="collapse show hideshow1"
																									aria-labelledby="heading5"
																									data-parent="#accordion55">
																									<div class="card-body">

																										<div class="row">
																										<div class="col-sm-6">
																												<div class="form-group row higlightRow">
																													<label for="fileNoTB"
																														class="col-sm-6 col-form-label"><fmt:message
																															key="label.fileNo" />:</label>
																													<div class="col-sm-6">
																														<input type="text" class="form-control"
																															id="fileNoTB" name="last_name" >
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="estimatedContact"
																														class="col-sm-6 col-form-label"><fmt:message
																															key="label.numberOfEstimatedContacts" /></label>
																													<div class="col-sm-6">
																														<input type="number" class="form-control numberonly" min ="0" max="9999" maxlength = "4" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
																															id="estimatedContact" name="last_name" onkeydown="javascript: return ['Backspace','Delete','ArrowLeft','ArrowRight'].includes(event.code) ? true : !isNaN(Number(event.key)) && event.code!=='Space'">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="receivedContact"
																														class="col-sm-6 col-form-label"><fmt:message
																															key="label.numberOfReceivedContacts" /></label>
																													<div class="col-sm-6">
																														<input type="number" class="form-control numberonly" min ="0" max="9999" maxlength = "4" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
																															id="receivedContact" name="last_name" onkeydown="javascript: return ['Backspace','Delete','ArrowLeft','ArrowRight'].includes(event.code) ? true : !isNaN(Number(event.key)) && event.code!=='Space'">
																													</div>
																												</div>
																											</div>
																											
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="refferredContact"
																														class="col-sm-6 col-form-label"><fmt:message
																															key="label.numberOfRefferredContacts" /></label>
																													<div class="col-sm-6">
																														<input type="number" class="form-control numberonly" min ="0" max="9999" maxlength = "4" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
																															id="refferredContact" name="last_name" onkeydown="javascript: return ['Backspace','Delete','ArrowLeft','ArrowRight'].includes(event.code) ? true : !isNaN(Number(event.key)) && event.code!=='Space'">
																													</div>
																												</div>
																											</div>
																											<div class="col-sm-6">
																												<div class="form-group row">
																													<label for="notificationDate"
																														class=" col-sm-6 col-form-label"><fmt:message
																															key="label.notificationDate" />:</label>
																													<div class="col-sm-6">
																														<input type="text"
																															class="form-control" readonly="readonly"   style="background:white;"
																															id="notificationDate">
																													</div>
																												</div>
																											</div>
																											
																											<div class="col-sm-12">
																											<div class="row">
																											<div class="col-sm-12" id="sourceTB">
																												<div class="form-group row">
																													<label for="tbsource"
																														class="col-sm-3 col-form-label"><fmt:message
																															key="label.tbsource" /> :</label>
																													<div class="col-sm-8">
																														<select name="sel" id="tbsource"
																															class="form-control">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																												</div>
																											</div>
																										</div><hr>
																												<div class="form-group row mb-2">
																													<label for="assignees"
																														class="col-sm-3 col-form-label "><fmt:message
																															key="label.assignees" /> :</label>
																													<div class="col-sm-5">
																														<select name="assignees" id="assignees"
																															class="form-control assignees">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>
																													<label for="allinspector"
																														class="col-sm-1 col-form-label"><fmt:message
																															key="label.all" /> :</label>
																													<div class="col-sm-1 mt-2">
																														<input type="checkbox"  name = "allInspector" id= "allinspector" value="1">
																													</div>
																												</div>
																												<div class="form-group row mb-2">
																													<label for="inspectorreplace"
																														class="col-sm-3 col-form-label "></label>
																													<div class="col-sm-5">
																														<select name="assignees" id="inspectorreplace"
																															class="form-control assignees"  data-target = "assigneesVal1">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>																													
																												</div>
																												<div class="form-group row mb-2">
																													<label for="inspectorreplace1"
																														class="col-sm-3 col-form-label "></label>
																													<div class="col-sm-5">
																														<select name="assignees" id="inspectorreplace1"
																															class="form-control assignees"  data-target = "assigneesVal2">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
																													</div>																													
																												</div>
																												<div class="form-group row mb-2">
																													<label for="inspectorreplace2"
																														class="col-sm-3 col-form-label "></label>
																													<div class="col-sm-5">
																														<select name="assignees" id="inspectorreplace2"
																															class="form-control assignees">
																															<option value=""><fmt:message
																																	key="label.select" />
																														</select>
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
																			<div class="tab-pane fade" id="contact1"
																				role="tabpanel" aria-labelledby="contact-tab1">
																				<div class="row mt-2">
																					<div class="col-sm-12 px-2">
																						<div id="accordion8">
																							<div class="card border-bottom-info">
																								<div class="card-header bg-gradient-info"
																									id="heading8">
																									<h5 class="mb-0 panel-title_plus ">
																										<a
																											class="btn-link collapsed text-white opencollapsed"
																											data-toggle="collapse"
																											data-parent="#accordion8" href="#collapse8"
																											aria-expanded="true"
																											aria-controls="collapse8"><fmt:message
																																				key="label.labTest" /></a>
																									</h5>
																								</div>
																								<div id="collapse8" class="collapse hideshow"
																									aria-labelledby="heading8"
																									data-parent="#accordion8">
																									<div class="card-body pt-2">
																										<div class="row">
																											<div class="col-sm-12">
																												<div class="text-right">
																													<a href="#" class="btn btn-blue"
																														data-toggle="modal"
																														data-target="#adddrug_m" title="Add Lab"><i
																														class="fas fa-plus"></i><span class="text"><fmt:message
																																key="add" /></span></a>
																												</div>



																												<%-- <jsp:include page="tbModal.jsp"></jsp:include> --%>
																												<div class="modal fade" id="deleteICDTest"
																													tabindex="-1" role="dialog"
																													aria-labelledby="tit" aria-hidden="true">
																													<div
																														class="modal-dialog modal-dialog-centered modal-lg"
																														role="document">
																														<div class="modal-content">
																															<div
																																class="modal-header bg-gradient-info text-white">
																																<h5 class="modal-title"
																																	id="exampleModalLongTitle">
																																	<fmt:message key="label.deleteICDTest" />
																																</h5>
																																<button type="button" class="close"
																																	data-dismiss="modal"
																																	onclick="clearmesgICD()"
																																	aria-label="Close">
																																	<span aria-hidden="true">&times;</span>
																																</button>
																															</div>
																															<div class="modal-body">
																																<div class="row">
																																	<div class="col-lg-12">
																																		<div class="card shadow mb-4">
																																			<div class="card-body">
																																				<input type="hidden" id="ICDVal">
																																				<input type="hidden" id="ICDNew">
																																				<input type="hidden"
																																					id="ICDValSearch"> <input
																																					type="hidden" id="ICDValCount">
																																				<fmt:message
																																					key="label.deleteICDTestConfirm" />

																																			</div>
																																		</div>
																																	</div>
																																</div>
																															</div>
																															<div class="modal-footer">
																																<button type="button"
																																	class="btn btn-green"
																																	onclick="deleteICD()">
																																	<fmt:message key="label.yes" />
																																</button>
																																<span id="labICDDeletesuccess"><font
																																	color="green"><fmt:message
																																			key="label.labICDDeletesuccess" /></font></span>
																																<button type="button"
																																	class="btn btn-secondary"
																																	data-dismiss="modal"
																																	onclick="clearmesgICD()">
																																	<fmt:message key="label.cancel" />
																																</button>
																															</div>
																														</div>
																													</div>
																												</div>
<%-- 																												<jsp:include page="tbModal.jsp"></jsp:include>
 --%><%-- 																												<jsp:include page="tbModal.jsp"></jsp:include>
 --%>																												<hr class="my-2">
																												<table width="100%" border="0"
																													cellspacing="0" cellpadding="0"
																													class="table table-bordered"
																													id="addLabTest">
																													<thead>
																														<!--bg-primary text-white-->
																														<tr>
																															<th class="hidden"><fmt:message
																																	key="label.testcode" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.labrow" /></th>
																															<th><fmt:message
																																	key="label.testName" /></th>
																															<th><fmt:message
																																	key="label.result" /></th>
																															<th><fmt:message
																																	key="label.date" /></th>
																															<th><fmt:message
																																	key="label.drugSensitive" /></th>
																															<th><fmt:message
																																	key="label.requestedBy" /></th>
																															<th><fmt:message
																																	key="label.delete" /></th>
																															<th><fmt:message
																																	key="label.update" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.rowNo" /></th>
																															<th  width="7%"><fmt:message
																																	key="label.print" /></th>
																															<th  width="7%"><fmt:message
																																	key="label.upload" /></th>		
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
																						<div id="accordion_s">
																							<div class="card border-bottom-info mt-2">
																								<div
																									class="card-header bg-gradient-info panel-title_plus sick-table5"
																									id="heading_s">
																									<a
																										class="btn-link collapsed text-white opencollapsed"
																										data-toggle="collapse"
																										data-parent="#accordion_s" href="#collapse_s"
																										aria-expanded="true"
																										aria-controls="collapse_s"> <fmt:message
																																	key="label.radiology" /> </a>
																								</div>
																								<div id="collapse_s" class="collapse hideshow"
																									aria-labelledby="heading_s"
																									data-parent="#accordion_s">
																									<div class="card-body pt-2">
																										<div class="row">
																											<div class="col-sm-12">
																												<div class="text-right">
																													<a href="#" class="btn btn-blue"
																														data-toggle="modal"
																														data-target="#radTestModel"
																														title="Add Radiology"> <i
																														class="fas fa-plus"></i> <span
																														class="text"><fmt:message key="add" />
																													</span></a>
																												</div>
<%-- 																												<jsp:include page="tbModal.jsp"></jsp:include>
 --%>																												<!-- END rad model -->



<%-- 																												<jsp:include page="tbModal.jsp"></jsp:include>
 --%>
																												<hr class="my-2">
																												<div class="table-responsive">
																												<table id="radTestlistResult"
																													class="display table table-bordered"
																													style="width: 100%">
																													<thead>
																														<tr>
																															<th class="hidden" width="0%"><fmt:message
																																	key="label.testcode" /></th>
																															<th class="hidden" width="0%"><fmt:message
																																	key="label.radrow" /></th>
																															<th  width="6%"><fmt:message
																																	key="label.testName" /></th>
																															<th  width="10%"><fmt:message
																																	key="label.result" /></th>
																															<th  width="14%"><fmt:message
																																	key="label.abnormalResult" /></th>
																															<th  width="10%"><fmt:message
																																	key="label.otherAbnormalResult" /></th>
																															<th  width="15%"><fmt:message
																																	key="label.notes" /></th>
																															<th  width="10%"><fmt:message
																																	key="label.date" /></th>
																															<th  width="13%"><fmt:message
																																	key="label.requestedBy" /></th>
																															<th  width="5%"><fmt:message
																																	key="label.delete" /></th>
																															<th  width="5%"><fmt:message
																																	key="label.update" /></th>
																															<th class="hidden"  width="0%"><fmt:message
																																	key="label.rowCount" /></th>
																														  	<th  width="5%"><fmt:message
																																	key="label.print" /></th>
																														    <th  width="11%"><fmt:message
																																	key="label.upload" /></th>					
																														</tr>
																													</thead>
																													<tbody class="tbody">
																													</tbody>
																												</table>
																											</div>
																											</div>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																						<div id="accordion9" class="mt-2">
																							<div class="card border-bottom-info">
																								<div class="card-header bg-gradient-info"
																									id="heading9">
																									<h5 class="mb-0 panel-title_plus ">
																										<a
																											class=" btn-link collapsed text-white opencollapsed"
																											data-toggle="collapse"
																											data-parent="#accordion9" href="#collapse9"
																											aria-expanded="true"
																											aria-controls="collapse9"><fmt:message
																																	key="label.PPDTestTuberculinSkinTest" /> </a>
																									</h5>
																								</div>
																								<div id="collapse9" class="collapse hideshow"
																									aria-labelledby="heading9"
																									data-parent="#accordion9">
																									<div class="card-body pt-2">
																										<div class="row">
																											<div class="col-sm-12">
																												<div class="text-right">
																													<a href="#" class="btn btn-blue"
																														data-toggle="modal"
																														data-target="#update_ppdtest"
																														title="Add Ppd Test"> <i
																														class="fas fa-plus"></i> <span
																														class="text" onclick="clearppd()"><fmt:message
																																	key="add" /></span>
																													</a>
																												</div>
																												<hr class="my-2">
																												<table id="ppdtestResult"
																													class="display table table-bordered"
																													style="width: 100%">
																													<thead>
																														<tr>
																															<th width="25%"><fmt:message
																																	key="label.testType" /></th>
																															<th width="35%"><fmt:message
																																	key="label.reason" /></th>
																															<th><fmt:message
																																	key="label.reading" /></th>
																															<th><fmt:message
																																	key="label.delete" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd1TestDate" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd2TestDate" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd1ReadingDate" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd2ReadingDate" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd1Reading" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd2Reading" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd1Result" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd2Result" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd1Notes" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ppd2Notes" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.testTypeValue" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.reasonValue" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.PPDID" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.rowcount" /></th>
																															<th  width="7%"><fmt:message
																																	key="label.print" /></th>
																														     <th  width="7%"><fmt:message
																																	key="label.upload" /></th>
																															 <th  class="hidden"><fmt:message
																																	key="label.docinterpret" /></th>
																															 <th  class="hidden"><fmt:message
																																	key="label.docinterpret" /></th>		
																														</tr>
																													</thead>
																													<tbody class="tbody"></tbody>
																												</table>
																											</div>
<%-- 																											<jsp:include page="tbModal.jsp"></jsp:include>
 --%>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																						<div id="accordion91" class="mt-2">
																							<div class="card border-bottom-info">
																								<div class="card-header bg-gradient-info"
																									id="heading91">
																									<h5 class="mb-0 panel-title_plus ">
																										<a
																											class=" btn-link collapsed text-white opencollapsed"
																											data-toggle="collapse"
																											data-parent="#accordion91" href="#collapse91"
																											aria-expanded="true"
																											aria-controls="collapse91"><fmt:message
																																	key="label.medicalTreatment" /> </a>
																									</h5>
																								</div>
																								<div id="collapse91" class="collapse hideshow"
																									aria-labelledby="heading91"
																									data-parent="#accordion91">
																									<div class="card-body pt-2">
																										<div class="row">
																											<div class="col-sm-12">
																												<div class="text-right">
																													<a href="#" class="btn btn-blue"
																														data-toggle="modal"
																														data-target="#add_medicaltreatment"
																														title="Add Medical Treatment"> <i
																														class="fas fa-plus"></i> <span
																														class="text" onclick="clearMedical()"><fmt:message
																																	key="add" /></span>
																													</a>
																												</div>
																												<hr class="my-2">
																												<table id="medicalhistory"
																													class="display table table-bordered"
																													style="width: 100%">
																													<thead>
																														<tr>
																															<th class="hidden"><fmt:message
																																	key="sl.No" /></th>
																															<th><fmt:message
																																	key="label.examinationType" /></th>
																															<th><fmt:message
																																	key="label.treatmentName" /></th>
																															<th><fmt:message
																																	key="label.result" /></th>
																															<th><fmt:message
																																	key="label.treatmentDate" /></th>
																															<th><fmt:message
																																	key="label.doctorName" /></th>
																															<th><fmt:message
																																	key="label.notes" /></th>
																															<th><fmt:message
																																	key="label.delete" /></th>
																															<th id="medHistUpdate"><fmt:message
																																	key="label.update" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.rowcount" /></th>
																															<th class="hidden"><fmt:message
																																	key="label.ExID" /></th>
																														</tr>
																													</thead>
																													<tbody class="tbody">
																													</tbody>
																												</table>
<%-- 																												<jsp:include page="tbModal.jsp"></jsp:include>
<%--  																										<jsp:include page="tbModal.jsp"></jsp:include> --%></div>
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
																<div class="col-sm-12 text-right p-4">
																	<hr />
																	<div class="float-left col-sm-5" id="approvalSec">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tbody>
																				<tr>
																					<td width="15%"><small><fmt:message key="label.approvedBy" /></small></td>
																					<td width="20%">
																						<!--<mark></mark>--> <span
																						class="badge bg-info text-white" id="approvedby"></span>
																					</td>
																					<td width="0%">&nbsp;</td>
																					<td width="10%"><small><fmt:message key="label.name" /></small></td>
																					<td width="20%">
																						<!--<mark></mark>--> <span
																						class="badge bg-info text-white"
																						id="approvedbyName"></span>
																					</td>
																					<td width="0%">&nbsp;</td>
																					<td width="10%"><small><fmt:message key="label.date" /></small></td>
																					<td width="20%">
																						<!--<mark></mark>--> <span
																						class="badge bg-info text-white" id="approvedate"></span>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="tab-pane fade" id="profile" role="tabpanel"
														aria-labelledby="profile-tab">
														<!-- <div class="row ">		<div class="col-lg-12 mt-1"> -->
														<div class="row ">
															<div class="col-lg-7">
																<div class="card shadow border-bottom-info">
																	<div class="card-header  d-flex bg-gradient-info">
																		<h6 class="m-0 font-weight-bold text-white  hdd">
																			<fmt:message key="label.notificationList" />
																		</h6>
																		<div
																			class=" text-green  font-weight-bold text-center col-sm-6"></div>
																	</div>
					<div class="card-body pt-3 pb-1">
						<div class="col-xl-12 col-md-12 mb-3 pl-0">
                            <div class="card border-left-info shadow h-100">
                                <div class="card-body pt-2 pb-2">
                                    <div class="row no-gutters align-items-center">
										<table width="100%" border="0" cellspacing="0" cellpadding="5">
<tbody>
<tr>
<td width="33%"><input type="radio" name="searchOption" id="searchByDate" value="da"> <label for="searchByDate" style="color: #07535e;"> <b>Date</b></label></td>
<td width="33%"><input type="radio" name="searchOption" id="searchByDisease" value="di"> <label for="searchByDisease" style="color: #07535e;"><b>Disease</b></label></td>
<td><input  type="radio" name="searchOption" id="searchByStatus" value="st"> <label for="searchByStatus" style="color: #07535e;"> <b>Status</b></label> </td>
</tr>
<tr>
<td colspan="2">
<table width="100%" border="0" cellspacing="0" cellpadding="5" class="searchByDateOptions">
<tbody>
<tr>
<td ><div class="form-group row ">
<label for="searchByStartDate" class="col-sm-5 col-form-label">Start Date: </label>
<div class="col-sm-7">
<input type="text" name="textfield" class="form-control datepicker" readonly="readonly"   style="background:white;" id="searchByStartDate">
</div>
</div></td>
<td ><div class="form-group row ">
<label for="searchByEndDate" class="col-sm-5 col-form-label">End Date: </label>
<div class="col-sm-7">
<input type="text" name="textfield" class="form-control datepicker" readonly="readonly"   style="background:white;" id="searchByEndDate">
</div>
</div></td>
</tr>
</tbody>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="5" class="searchByDiseaseOptions">
<tbody>
<tr>
<td scope="col"><div class="form-group row ">
<label for="searchByDiseaseList" class="col-form-label  col-sm-5">Disease List: </label>
<div class="col-sm-7">
<select id="searchByDiseaseList" class="form-control">
<option selected="selected" value="">Select</option>    </select>
</div>
</div></td>
</tr>
</tbody>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="5" class="searchByStatusOptions">
<tbody>
<tr>
<td scope="col"><div class="form-group row ">
<label for="searchByStatusList" class="col-form-label  col-sm-5">Status List: </label>
<div class="col-sm-7">
<select id="searchByStatusList" class="form-control">
<option selected="selected" value="">Select</option>    </select>
</div>
</div></td>
</tr>
</tbody>
</table>
<td class="text-right"><input type="button" class="btn btn-info" value="Search" onclick=listNotificationBySearch()></td>
</tr>

<tr>
<td><div class="form-group row">
<div class="col-sm-12">
<span id="dateError"><b><font color="red"><fmt:message key="label.dateError" /></font></b></span>
</div>
</div></td>
</tr>
</tbody>
</table></div></div> </div> </div>																														
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="5"
																			class="text-dark table table-striped table-bordered"
																			id="notificationList">
																			<thead>
																				<tr>
																					<th class="bg-table"><fmt:message key="sl.No" /></th>
																					<th class="bg-table"><fmt:message
																							key="label.notificationId" /></th>
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

															<div class="col-lg-5 "
																style="border-left: 1px solid #ccc;">
																<div class="card shadow border-bottom-info">
																	<div class="card-header  d-flex bg-gradient-info">
																		<h6 class="m-0 font-weight-bold text-white  hdd">
																			<fmt:message key="unkownList" />
																		</h6>
																		<div
																			class=" text-green  font-weight-bold text-center col-sm-6"></div>
																	</div>
																	<div class="card-body pt-3 pb-1">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="5"
																			class="text-dark table table-striped table-bordered"
																			id="tableListUnkown">
																			<!--id="dataTable1"-->
																			<thead>
																				<tr>
																					<th class="bg-table"><fmt:message key="sl.No" /></th>
																					<th class="bg-table"><fmt:message
																							key="label.id" /></th>
																					<th class="bg-table"><fmt:message
																							key="label.loc" /></th>
																					<th class="bg-table"><fmt:message
																							key="label.notificationId" /></th>
																				</tr>
																			</thead>
																			<tbody></tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- Profile tab END -->
													<div class="tab-pane fade" id="search" role="tabpanel"
														aria-labelledby="search-tab">
														<div class="row ">
															<div class="col-lg-12 mt-1">
																<div class="col-xl-5 col-md-6 mb-1">
																	<div class="card border-left-info shadow h-100">
																		<div class="card-body pt-2 pb-2">
																			<div class="row no-gutters align-items-center">
																				<table width="100%" border="0" cellspacing="0"
																					cellpadding="0" class="">
																					<tr>
																						<td><label class="col-form-label"><fmt:message
																									key="label.civilid" /> :</label></td>
																						<td><input type="text" class="form-control"
																							id="idTypeHis" onchange="searchPatient()"></td>
																						<td width="10%"></td>
																						<td><button type="button"
																								class="btn btn-danger status-badge1"
																								onclick="clearSearchData()" title="Clear"><fmt:message
																									key="label.clear" /></button></td>
																					</tr>
																				</table>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-lg-12 mt-3">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="5"
																		class="text-dark table table-striped table-bordered"
																		id="notifyhistory">
																		<thead>
																			<tr>
																				<th class="bg-table"><fmt:message key="sl.No" /></th>
																				<th class="bg-table"><fmt:message
																						key="label.notifyId" /></th>
																				<th class="bg-table"><fmt:message
																						key="label.nameEn" /></th>
																				<th class="bg-table"><fmt:message
																						key="label.nameAr" /></th>
																				<th class="bg-table"><fmt:message
																						key="label.notifyDate" /></th>
																				<th class="bg-table"><fmt:message
																						key="label.loc" /></th>
																			</tr>
																		</thead>
																		<tbody></tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												<!-- Search tab end -->
<!-- Alert Notification Tab START -->
<div class="tab-pane fade" id="alert" role="tabpanel" aria-labelledby="notif-Alert-tab">
 <div class="row ">
  <div class="col-lg-12">
   <div class="card shadow border-bottom-info">
	<div class="card-header  d-flex bg-gradient-info">
	 <h6 class="m-0 font-weight-bold text-white  hdd">
	  <fmt:message key="label.notificationList" />
	   </h6>
		<div class=" text-green  font-weight-bold text-center col-sm-6">
		</div>
	</div>
	<div class="card-body pt-3 pb-1">
	  <table width="100%" border="0" cellspacing="0" cellpadding="5" class="text-dark table table-striped table-bordered" id="alertNotifList">
		<thead>
			<tr>
				<th class="bg-table"><fmt:message key="sl.No" /></th>
				<th class="bg-table"><fmt:message
						key="label.patientId" /></th>
				<th class="bg-table"><fmt:message
						key="label.nameEn" /></th>
				<th class="bg-table"><fmt:message
						key="label.nameAr" /></th>
				<th class="bg-table"><fmt:message
						key="label.medicationResistance" /></th>
				<th class="bg-table"><fmt:message
						key="label.notificationId" /></th>
				<%-- <th class="bg-table" style="display:none;"><fmt:message
						key="label.edit" /></th> --%>
			</tr>
		</thead>
		<tbody>
		</tbody>
	  </table>
  </div>
</div>
</div>					  
</div>
</div>
												<!-- Alert Notification Tab END -->
												
<div class="tab-pane fade" id="pendingrequest" role="tabpanel" aria-labelledby="notif-Alert-tab">
 <div class="row ">
  <div class="col-lg-12">
   <div class="card shadow border-bottom-info">
	<div class="card-header  d-flex bg-gradient-info">
	 <h6 class="m-0 font-weight-bold text-white  hdd">
	  <fmt:message key="label.notificationList" />
	   </h6>
		<div class=" text-green  font-weight-bold text-center col-sm-6">
		</div>
	</div>
	<div class="card-body pt-3 pb-1">
	  <table width="100%" border="0" cellspacing="0" cellpadding="5" class="text-dark table table-striped table-bordered" id="pendingrequestList">
		<thead>
			<tr>
				<th class="bg-table"><fmt:message key="sl.No" /></th>
				<th class="bg-table"><fmt:message
						key="label.requestId" /></th>
				<th class="bg-table"><fmt:message
						key="label.patientname" /></th>
				<th class="bg-table"><fmt:message
						key="label.referredFrom" /></th>
				<th class="bg-table"><fmt:message
						key="label.referralDate" /></th>
				<th class="bg-table"><fmt:message
						key="label.createdon" /></th>
				<th class="bg-table"><fmt:message
						key="label.process" /></th>
			 	<th class="hidden">patcd</th>
				<th class="hidden">reqid</th> 
			    <th class="hidden">idtype</th> 
			</tr>
		</thead>
		<tbody>
		</tbody>
	  </table>
  </div>
</div>
</div>					  
</div>
</div>
												</div>
											</div>
											<!--end tab-->
										</div>
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
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>		
		<!-- start Disease Modal-->
	<!-- 	<div class="modal fade" id="waiting_list_3" tabindex="-1"
			role="dialog" aria-labelledby="tit" aria-hidden="true">
			<div class="modal-dialog  modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header bg-gradient-info text-white">
						<h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.disease" /></h5>
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
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											id="diseaselist1"
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
							data-dismiss="modal" onclick="clearcheck()"><fmt:message key="label.close" /></button>
					</div>

				</div>
			</div>
		</div>-->

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"><fmt:message key="label.readytoLeave" /></h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body"><fmt:message key="label.logoutMsg" /></div>
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
		<div class="modal fade" id="icdpop" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header bg-gradient-info text-white">
						<h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.search" /></h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="ctw-window" data-ctw-ino="1"></div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<fmt:message key="label.close" />
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="openNotifyModel" tabindex="-1"
			role="dialog" aria-labelledby="tit" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg"
				role="document">
				<div class="modal-content">
					<div class="modal-header bg-gradient-info text-white">
						<h5 class="modal-title" id="exampleModalLongTitle"></h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-12">
								<div class="card shadow mb-4">
									<div class="card-body" style="color: red;">
										<fmt:message key="label.opennotifyAvailable" />
										<span id="notifyNo"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<fmt:message key="label.close" />
						</button>
					</div>
				</div>
			</div>
		</div>
		<!--toast notification -->
		<div class="toast toast-danger" id="history">
			<!--bg-primary text-white -->
			<div class="bg-gradient-info  toast-header ">
				<strong class="me-auto"><i class="fas fa-bell"></i> <fmt:message
						key="label.history" /></strong>
				<!--fa-exclamation-triangle-->
				<!-- <small>11 mins ago</small>-->
				<!--<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>-->

				<button type="button" class="close" data-dismiss="toast"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body">
				<h6 class="text-center">
					<fmt:message key="label.hashistory" />
					-<a href="#" id="popover1"
						data-original-title='Patient History <a href="#" class="close" id="close_p" data-dismiss="alert" >&times;</a>'
						data-placement="left" class="btn btn-danger"
						style="padding: 0.175rem 0.75rem"><fmt:message
							key="label.show" /></a>
				</h6>
				<div class="mt-2 pt-2 border-top"></div>
			</div>
		</div>
		<!--end notification-->
		<div id="popover_content_wrapper1" style="display: none">
			<ul class="list-group_1">
				<li class=" listyle ml-3"><a href="#" class="show-pop-list2"
					id="patient_1"><fmt:message key="notifInfo" /></a></li>
				<li class=" listyle ml-3"><a href="#" class="show-pop-list2"
					id="patient_2"><fmt:message key="label.diagnosis" /></a></li>
				<li class=" listyle ml-3"><a href="#" class="show-pop-list2"
					id="patient_3"><fmt:message key="label.lab" /></a></li>
				<li class=" listyle ml-3"><a href="#" class="show-pop-list2"
					id="patient_4" data-toggle="modal" data-target="#myModal3"><fmt:message
							key="label.radiology" /></a></li>
				<li class=" listyle ml-3"><a href="#" class="show-pop-list2"
					id="patient_5" data-toggle="modal" data-target="#ppdHistoryModal"><fmt:message
							key="label.PPDTestTuberculinSkinTest" /></a></li>
			</ul>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="admin/jquery/jquery.min.js"></script>
		<script src="admin/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="admin/jquery-easing/jquery.easing.min.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script src="js/icd11windows.js"></script>
		<script type="text/javascript" src="js/common.js"></script>
		<script type="text/javascript" src="js/notification.js"></script>
		<script type="text/javascript" src="js/tokenValidator.js"></script>
		<script type="text/javascript"> 
	var medResponse=''; lstxrayresultsdiv_data = '' ; lstctscanresultsdiv_data = ''; lstafbresultsdiv_data = ''; lstMedTreatTypediv_data = '';
	var lstabnormalresultsdiv_data = ''; lstcultureresultsdiv_data = ''; lstpcrresultsdiv_data = ''; getLocationTypediv_data = ''; getSubDaignosisdiv_data = '';
	 var countRad=0;
	 var lStartDoseDt='';
	 var lEndDoseDt='';
	 var lAdmissionDt ='';
	 var lDischargeDt ='';
	 var lDrugSensitive ='';
    $(document).ready(function(){
 	   var lang = '<%=response.getLocale().getLanguage()%>';
       var context = '${pageContext.request.contextPath}';
 	   var myDate = new Date();
	        if (lang == 'en') {
 				$('#arabic').show();
 				$('#english').hide();
 				$('#nameHeader').append(localStorage.getItem('nameen'));
 				$('#locHeader').append(localStorage.getItem('locen'));
 				$('#role').text(localStorage.getItem('roleen'));
 				
 			} else {
 				$('#arabic').hide();
 				$('#english').show();
 				$('#nameHeader').append(localStorage.getItem('namear'));
 				$('#locHeader').append(localStorage.getItem('locar'));
 				$('#role').text(localStorage.getItem('rolear'));
 			}
 			$('#arabic').click(function() {
 				$(this).hide();
 				$('#english').show();
 			});
 			$('#english').click(function() {
 				$(this).hide();
 				$('#arabic').show();
 			});
 			getprofiletabdata(); 
 			getAlertNotifProfile();
 			getPendingRequest();
 			$("#searchByStartDate").on("change", function(){
 				$("#searchByEndDate").attr("min", $(this).val());
 		    });
 			
	$.ajax({
		type : "GET",
		url : context+"/getlistresponse?method=lstDetailsData",
		contentType : "application/json",
		headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		crossDomain : true,
		success : function(response) {
			 var userDetailsHos = ''; userDetailsPcr = '';
			 var slNo =1;
			 var response = JSON.parse(response);
			 // disease list 
			$.each(response.details.lstDiseases, function(i, item) {
				if ((i)% 4 == 0 ){
              	 userDetailsHos += '<tr>';userDetailsPcr += '<tr>';
               }
				userDetailsHos += '<td width="12%" style="border-right:0px;" >' +item.nameen + '</td>';
				userDetailsPcr += '<td width="12%" style="border-right:0px;" >' +item.nameen + '</td>';
				userDetailsHos += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="diseasetestcheck" dataid="'+item.code+'" id=dis"'+item.code+'" value="'+item.nameen +'" class="chk"></td>';
				userDetailsPcr += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="diseasetestcheckpcr" dataid="'+item.code+'" id=dispcr"'+item.code+'" value="'+item.nameen +'" class="chk"></td>';                 
			});
			userDetailsHos +=' <td colspan="10" align="right"></td>';
			userDetailsPcr +=' <td colspan="10" align="right"></td>';
			$('#diseaselist').append(userDetailsHos);
			$('#diseaselist1').append(userDetailsPcr);
			 // list risk factor
			  $.each(response.details.lstriskfactors,function(i,response){  	                    
   	          if(lang=='en'){
   	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	          }else{
   	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
       	      }
         	  $(div_data).appendTo('#riskFactorPRC'); 
		      });
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
		  	  $.each(response.details.lstpataction,function(i,response)
		            	 {
	   	       	          if(lang=='en'){
	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	           mapaction.push({
	   	       	        	code: response.code, 
	   	       	            nameen: response.nameen
	   	                   });
	   	       	          }
	   	       	          else{
	   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	          }
		                  $(div_data).appendTo('#action'); 
                    });
       	
			// list patient position
		  	 $.each(response.details.lstpatposition,function(i,response)
		            	 {
	   	       	          if(lang=='en'){
	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	    
	   	       	            mapposition.push({
	       	        	        code: response.code, 
	       	                    nameen: response.nameen
	                            });
	   	       	          }
	   	       	          else{
	   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	          }
		                  $(div_data).appendTo('#patPosition'); 
		                  $(div_data).appendTo('#patPositionPRC'); 
		                  $(div_data).appendTo('#searchByStatusList'); 
                    });
			
			//list treatment outcome 
			 $.each(response.details.lsttreatoutcome,function(i,response)
         	 		            	 {
         		   	       	          if(lang=='en'){
         		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
         		   	       	        mapoutcome.push({
	   	       	        	        code: response.code, 
	   	       	                    nameen: response.nameen
	   	                            });
         		   	       	          }
         		   	       	          else{
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
	           });
			   $(lDrugSensitive).appendTo('#medResistance'); 
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {
			
			}
		}
 });
	
	
	   $.ajax({
           type: "GET",
           url:context+"/getlistresponse?method=getlocationtypes",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			dataType : "json",		
            success: function (datahere) {			                 
           	 var response = JSON.parse(JSON.stringify(datahere));	
              	  $.each(response,function(j,response)
	 		            	 {
		   	                  if(response.loctypecode=='1'||response.loctypecode=='2'||response.loctypecode=='3'||response.loctypecode=='4') { 
		   	       	          if(lang=='en'){
		   	       	        	getLocationTypediv_data+="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        	getLocationTypediv_data+="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
		   	   	       	          }
	 		                  //	$(getLocationTypediv_data).appendTo('#requesterRad'+rowNumRad); 
		   	                  }
	                       });
              	 		/* if(requesterVal!=''){
		           		$("#requesterRad"+rowNumRad).val(requesterVal);
		           	  } */
              	
            },
         error : function(jqXHR, textStatus, errorThrown) {
 				if (jqXHR.status == "401"){
 				 
 				    }
 			}
     });
	   	   
	$.ajax({
		type : "GET",
		url : context+"/getlistresponse?method=lstPatData",
		contentType : "application/json",
		headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		crossDomain : true,
		success : function(response) {
			 var response = JSON.parse(response);
			 // occupation list 
			$.each(response.details.lstOccupations,function(j,response)
	            	 {
  	       	          if(lang=='en'){
  	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
  	       	          }
  	       	          else{
  	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
  	   	       	          }
	                 $(div_data).appendTo('#occupationOther');
	                 $(div_data).appendTo('#occupationReg');
                });
			 //list nationality
			getGccNationality();
			 //list governorates
			 $.each(response.details.lstgovernorates,function(i,response)
		            	 {
	   	       	          if(lang=='en'){
	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	          }
	   	       	          else{
	   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	          }
		                  $(div_data).appendTo('#governorateReg'); 
		                  $(div_data).appendTo('#governorateOther'); 
                });
			 //list notification category
			 $.each(response.details.lstnotifcategory,function(i,response)
		            	 {
   	       	          if(lang=='en'){
   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	          }
   	       	          else{
   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	          }
		                  $(div_data).appendTo('#notifycat'); 
                });
			 //list marital status
			 $.each(response.details.lstmaritalstats,function(j,response)
		            	 {	
   	       	          if(lang=='en'){
   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
   	       	          }
   	       	          else{
   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
   	   	       	          }
		                  $(div_data).appendTo('#maritalReg'); 
		                  $(div_data).appendTo('#maritalOther'); 
                   });
			 //list residency status
			  $.each(response.details.lstresidencystats,function(j,response)
		            	 {
	   	       	          if(lang=='en'){
	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	          }
	   	       	          else{
	   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	          }
		                  $(div_data).appendTo('#recidencyReg');
		                 $(div_data).appendTo('#recidencyOther'); 
                    });
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {
			}
		}
 });
	$.ajax({
		type : "GET",
		url : context+"/getlistresponse?method=lstTestData",
		contentType : "application/json",
		headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
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
				labTestDetails += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="labtestcheck" lctype="'+item.typecode+'"  id="'+item.code+'"  value="'+item.nameen +'" class="chk"></td>';
                radslNo =radslNo + 1;
				});
			 	labTestDetails +=' <td colspan="10" align="right"></td>';
				table1 = $('#labTestlist').append(labTestDetails);
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
				//lstcultureresults
				 $.each(response.details.lstcultureresults,function(k,response)
  	 		            	 {
  		   	       	          if(lang=='en'){
  		   	       	      lstcultureresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	       	          }
  		   	       	          else{
  		   	       	      lstcultureresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	   	       	          }
  	                       });
				//lsAbnormalResults
				$.each(response.details.lsAbnormalResults,function(j,response)
    		            	 {
    	   	       	          if(lang=='en'){
    	   	       	        lstabnormalresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
    	   	       	          }
    	   	       	          else{
    	   	       	        lstabnormalresultsdiv_data+="<option value="+response.code+">"+response.namear+"</option>";
    	   	   	       	          }
                         });
				//lstctscanresults
				 $.each(response.details.lstctscanresults,function(k,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	        lstctscanresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        lstctscanresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
		   	   	       	          }
	                       });
				//lstpcrresults
				 $.each(response.details.lstpcrresults,function(j,response)
  	 		            	 {
  		   	       	          if(lang=='en'){
  		   	       	      lstpcrresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	       	          }
  		   	       	          else{
  		   	       	      lstpcrresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	   	       	          }
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
				//list xrayresults
				$.each(response.details.lstxrayresults,function(j,response)
 		            	 {
	   	       	          if(lang=='en'){
	   	       	         	lstxrayresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	          }
	   	       	          else{
	   	       	        	lstxrayresultsdiv_data+="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	          }
                       });
				
				//lstafbresults
				 $.each(response.details.lstafbresults,function(l,response)
  	 		            	 {
  		   	                if(lang=='en'){
  		   	               lstafbresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	       	          }
  		   	       	          else{
  		   	       	      lstafbresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	   	       	          }
  	                       });
				//lstMedTreatType		 
				 $.each(response.details.lstMedTreatType,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	        lstMedTreatTypediv_data+="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
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
			
			}
		}
 });
      
      
     $.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lstldiseases",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(i,response){
		   	                    
		   	              
       	          if(lang=='en'){
       	           var div_data="<option value="+response.code+" >"+response.nameen+"</option>";
       	          }
       	          else{
       	        var div_data="<option value="+response.code+" >"+response.namear+"</option>";
   	       	          }
              
                $(div_data).appendTo('#locDisease'); 
               $(div_data).appendTo('#searchByDiseaseList'); 
               
                  });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    }); 
       $.ajax({
                type: "GET",
                url:context+"/getlistresponse?method=lsttbsources",
     			contentType : "application/json",
     			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
     			crossDomain : true,
     			
     			dataType : "json",		
                 success: function (datahere) {			                 
                	 var response = JSON.parse(JSON.stringify(datahere));	
                   	   $.each(response,function(i,response)
     	 		            	 {     		   	                    
     		   	               
     		   	       	          if(lang=='en'){
     		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
     		   	       	          }
     		   	       	          else{
     		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
     		   	   	       	          }
     	 		                  $(div_data).appendTo('#tbsource');     	 		                
     	 		    		  
     	                       });
                   	
                 },
              error : function(jqXHR, textStatus, errorThrown) {
      				
      				if (jqXHR.status == "401"){      					
      				   
      				    }
      			}
          }); 
         	  
                $.ajax({
                      type: "GET",
                      url:context+"/getlistresponse?method=lstassignees",
           			contentType : "application/json",
           			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
           			crossDomain : true,
           			dataType : "json",		
                       success: function (datahere) {			                 
                      	 var response = JSON.parse(JSON.stringify(datahere));	
                        	 for(var i = 0; i < response.details.length; i++)
        					 {
        					     var id = response.details[i];
        					     if(lang=='en'){
      		   	       	           var div_data="<option value="+id.usercd+">"+id.usernameen+"</option>";
      		   	       	          }
      		   	       	         else{
      		   	       	            var div_data="<option value="+id.usercd+">"+id.usernamear+"</option>";
      		   	   	       	          }
      	 		                  $(div_data).appendTo('#assignees');
      	 		               	  $(div_data).appendTo('#inspectorreplace');
      	 		               	  $(div_data).appendTo('#inspectorreplace1');      	 		               
      	 		               	  $(div_data).appendTo('#inspectorreplace2');      	 		               
        					 }
                       },
                    error : function(jqXHR, textStatus, errorThrown) {
            				if (jqXHR.status == "401"){
            				    }
            			}
                }); 
       	       $.ajax({
                   type: "GET",
                   url:context+"/getlistresponse?method=getlocsector",
        			contentType : "application/json",
        			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
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
    	 		                  $(div_data).appendTo('#hospCat'); 
    	                       });
                      	
                    },
                 error : function(jqXHR, textStatus, errorThrown) {               				
         				if (jqXHR.status == "401"){}
         			}
             });  
   	    
       	  getNationality("Reg"); 
    });	   
         	    

    </script>

		<script>
	 var context = '${pageContext.request.contextPath}';
	 var updateppd = null;
	 
	    function medicalTreamentType(compMed,countMed,countValMedTreat){
	    	var medoptions="";
	    	if(compMed != '' && countValMedTreat != ''){
             	 $('#compMed'+countMed).val(countValMedTreat);
         	 }
           return medoptions;
 	    }
	    function getLabRequester(rowNumLab,requesterVal,drugResistVal){
            $(getLocationTypediv_data).appendTo("#requester"+rowNumLab);
		   if(requesterVal!=''){
  				$("#requester"+rowNumLab).val(requesterVal);
  	  		}
			}
	    function getRadRequester(rowNumRad,requesterVal){	
            $(getLocationTypediv_data).appendTo('#requesterRad'+rowNumRad); 
            if(requesterVal!=''){
           		$("#requesterRad"+rowNumRad).val(requesterVal);          	  }

	   }
	   function getLabDrugResistance(rowNumLab,drugVal){	
           $(lDrugSensitive).appendTo('#drugsensitive'+rowNumLab); 
           if(drugVal!=''){
          		$("#drugsensitive"+rowNumLab).val(drugVal);          	  }

	   }
	   
	 /*   $('#pcrlabresults').change(function(){
		   alert($(this).val());
		   let pcrLabResult = $(this).val();
		   if(pcrLabResult == '2'){
			   $(lDrugSensitive).appendTo("#drugResistance"+rowNum);  
		   }
	   }); */
	   
	   function getLabResult(rowNum,resultVal,arr){
		   if(arr=='P'){
     	      var value="";
     	      $(lstpcrresultsdiv_data).appendTo("#pcrlabresults"+rowNum); 
     	     if(resultVal!=''){
	           		$("#pcrlabresults"+rowNum).val(resultVal);
	         }
  			}
           if(arr=='C'){
     	      var value="";
     	      $(lstcultureresultsdiv_data).appendTo("#pcrlabresults"+rowNum); 
     	    if(resultVal!=''){
     	    	
           		$("#pcrlabresults"+rowNum).val(resultVal);
           		
           		//For durg resistance

           		/* if(resultVal == '2'){
           		 $(lDrugSensitive).appendTo("#drugsensitive"+rowNum); 
           		} */
           	  }
     	    }      
            if(arr=='A'){
     	      var value="";
     	      $(lstafbresultsdiv_data).appendTo("#pcrlabresults"+rowNum); 
     	      if(resultVal!=''){
	           		$("#pcrlabresults"+rowNum).val(resultVal);
	           	  }
  			 }       
	   }
	   
	function getRadResult(count,resultVal,arr){
        if(arr[0]=='1'){
 	      var value=""; 	  
 	     $(lstxrayresultsdiv_data).appendTo('#radresults'+count); 
 	     
 		if(resultVal!=''){
   			$("#radresults"+count).val(resultVal);
   	  	}
	} 
    if(arr[0]=='2'){
 	      var value="";
 	     $(lstctscanresultsdiv_data).appendTo('#radresults'+count);
 	     if(resultVal!=''){
				$("#radresults"+count).val(resultVal);
	  		}
	} 
	}
	
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
	    var ptcd='';
	    var reqid='';
		var labtest = []; 
		var phone = []; 
		var radtest = []; 
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
		  var exidPRC="";
	      var exidMain="";
	      var proctype = "";proctype1 = "";
		  var lang = '<%=response.getLocale().getLanguage()%>'; 
		   $(':radio').click(function() {
	       clearDetailsOtherId();
			 $('#nationalityOther').html('');
			 $('#nationalityOther').append($('<option>', { 
			        value: "",
			        text : "Select"
			    }));
	    	   if($('input[name="idType"]:checked').val() =='P'){
	    		   $('#pass').show();
	    		   $('#pass1').hide(); 
	    		     hidepassDetails();
	    		     getNationality("Other");
	    		     $('#genderPass').hide();
	    		     $('#bloodgrpPass').hide();
	    		     $('#registerOther').hide();
	    		     $('#nationalityPass').show();
	    		     $('#passcivilOpenNotif').hide();
	    		     $('#passcivilAvailable').hide();
	    	   $('#changeIDName').text('<fmt:message key="passportId"/>:');
	    	 
	    	   }
	    	   if($('input[name="idType"]:checked').val() =='G'){
	    		   $('#pass').show();
	    		   //$('#pass1').show();
                     $('#pass1').hide(); 
	    		     showpassDetails();
	    		     getGccNationality();
	    		     $('#genderPass').show();
	    		     $('#bloodgrpPass').show();
	    		     $('#registerOther').show();
	    		     $('#nationalityPass').show();
	    		     $('#passcivilOpenNotif').hide();
	    		     $('#passcivilAvailable').hide();
	    	   $('#changeIDName').text('<fmt:message key="gccID"/>:');
	    	  
	    	   }
	    	   if($('input[name="idType"]:checked').val() =='U'){
	    		   $('#pass').hide();
	    		   $('#pass1').hide();
	    		   hidepassDetails();
	    		   $('#genderPass').show();
	    		    $('#bloodgrpPass').show();
	    		    $('#registerOther').show();
	    		    $('#nationalityPass').hide();
	    		    $('#passcivilOpenNotif').hide();
	    		    $('#passcivilAvailable').hide();
	 	    	
	    	   }    	}) ; 	   
		   $(':radio').click(function() {				 
		    	   if($('input[name="searchOption"]:checked').val() =='da'){
		    		   $('.searchByDateOptions').show();
		    		   $('#searchByDiseaseList').val('');
		    		   $('#searchByStatusList').val('');
		    		   $('.searchByDiseaseOptions').hide();
		    		   $('.searchByStatusOptions').hide();
		    	   }
		    	   if($('input[name="searchOption"]:checked').val() =='di'){
		    		   $('.searchByDiseaseOptions').show();
		    		   $('#searchByStartDate').val('');
		    		   $('#searchByEndDate').val('');
		    		   $('#searchByStatusList').val('');
	                   $('.searchByDateOptions').hide();
	                   $('.searchByStatusOptions').hide();
		    	   }
		    	   if($('input[name="searchOption"]:checked').val() =='st'){
		    		   $('.searchByStatusOptions').show();
		    		   $('#searchByStartDate').val('');
		    		   $('#searchByEndDate').val('');
		    		   $('#searchByDiseaseList').val('');
		    		   $('#searchByDateOptions').val('');
		    		   $('.searchByDiseaseOptions').hide();
	                   $('.searchByDateOptions').hide();
		    	   }	    	}) ;	    
		   function  getNationality(val){
			    $.ajax({
			                type: "GET",
			                url:context+"/getlistresponse?method=lstnationality",
			     			contentType : "application/json",
			     			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			     			crossDomain : true,
			     			
			     			dataType : "json",		
			                 success: function (datahere) {			                 
			                	 var response = JSON.parse(JSON.stringify(datahere));	
			                   	  $.each(response,function(i,response)
			     	 		            	 {
			     		   	       	          if(lang=='en'){
			     		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			     		   	       	          }
			     		   	       	          else{
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
		   function  getMedicalHistory(patcd){
				var jsonObj = {  
	  					"ptcd":patcd}
				var myJSONObj =JSON.stringify(jsonObj);
			   	$.ajax({
	                url:context+"/apiResponse?method=lstMedTreatHist",
	    			contentType : "application/json",
	    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
	    			crossDomain : true,
	    			type: "POST",
	     	        data:myJSONObj,	
	     	        async: false,
	                success: function (datahere) {			                 
	                	 var response = JSON.parse(JSON.stringify(datahere));	
	               	 let medHistObj = response.details;
	                  	  $.each(medHistObj,function(i,medHistObjTemp){
	                  		let medObj = {
	        						"typecode":medHistObjTemp.testTypeCd,
	        						"typecodeName":medHistObjTemp.testTypeCd,
	        					    "resultname":medHistObjTemp.testName,
	        					    "result":medHistObjTemp.testResult,
	        					  	"notes":medHistObjTemp.notes,
	        					  	"doctorname":medHistObjTemp.docName,
	        					  	"exdate":medHistObjTemp.testDate,
	        					  	"exid":medHistObjTemp.medHistId
	        			}
	                  		createTableMedicalHistory(medObj);	  
	    	              });
	                },
	             error : function(jqXHR, textStatus, errorThrown) {
	     				if (jqXHR.status == "401"){
	     				    }
	     			}
	        	 });
			 }  
		function  getMedicalHistoryByVaccination(patcd){
			vaccinationList='';
			var jsonObj = {  
  					"patcd":patcd}
			var myJSONObj =JSON.stringify(jsonObj);
		   	$.ajax({
                url:context+"/apiResponse?method=medicalHistByVaccination",
    			contentType : "application/json",
    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
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
		 }
			function  getGccNationality(){
			     	    $.ajax({
			                  type: "GET",
			                  url:context+"/getlistresponse?method=lstGccNationality",
			       			contentType : "application/json",
			       			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			       			crossDomain : true,
			       			dataType : "json",		
			                   success: function (datahere) {			                 
			                  	 var response = JSON.parse(JSON.stringify(datahere));	
			                     	  $.each(response,function(i,response)
			       	 		            	 {
			       		   	       	          if(lang=='en'){
			       		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			       		   	       	          }
			       		   	       	          else{
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

	    	function openICD(){
		    	 var searchval="D";
		    	  openicdWindow(searchval);	
		    }
		    function openICDPCR(){
		    	var searchval="PRC";
		    	  openicdWindow(searchval);	
		    } 
		function downloadAsPDFCivil(){
				 downloadfile(base64StringCivil);
				 }
	       function downloadAsPDFPass(){
				 downloadfile(base64StringPass);
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
 function clearcheckother(){
	 $("#patManField").hide();
	  $('input[type=radio]').each(function() 
			  { 
			          this.checked = false; 
			  });
	  if(ptcd == ""){
		  $('#IDName').text('<fmt:message key="label.civilID"/>');
		  $('#civilid').val('');
	   }
	  $('#changeIDName').text('<fmt:message key="passportId"/>:');
	 // $('#IDName').text('<fmt:message key="label.civilID"/>');
	  $('#docName').text('<fmt:message key="label.uploadCivilID"/>');
} 
  function setcivilIDlabel(){
	  $('#IDName').text('<fmt:message key="label.civilid"/>:');
	  $('#docName').text('<fmt:message key="label.uploadCivilID"/>');
  }
/*   function editAlertNotif(){
  } */
  
  function editpendingrequest(currentElement,idnumber){
	  let notifid =  currentElement.closest("tr").find('td:eq(1)').text();
	  reqid = currentElement.closest("tr").find('td:eq(8)').text();
	  Idtype = currentElement.closest("tr").find('td:eq(9)').text();
	  if(notifid != null && reqid != null && notifid != "" && reqid != ""){
		  editNotification(notifid);
	  }
	  else if(reqid != null && reqid != ""){
		  editPendingReqInfo(reqid);
		  $('#saveNoti').show();
 		  $('#updateNoti').hide();
	  }
  }
  
  function editPendingReqInfo(reqid){
	  clearPageData();
	  var myJSONObj =JSON.stringify({"reqid": reqid});
	  $.ajax({
          type: "POST",
          url:context+"/apiResponse?method=getrequestinfo",
          headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			contentType : "application/json",
			crossDomain : true,
			data:myJSONObj,	
			dataType : "json",		
           success: function (data) {			                 
                   if(data.code=="1"){
                	   getNotificationDetails(data.details);                	   
                   }
                    	    },
                   
         error : function(jqXHR, textStatus, errorThrown) {
if (jqXHR.status == "401"){
}
}
}); 			

getToken();
  }
  
   function editNotification(notifId){
		          clearPageData();
				  //var id = notifId;
				  notifcd = notifId;
				  $('#saveNoti').hide();
		 		  $('#updateNoti').show();
			      var myJSONObj =JSON.stringify({"notifid": notifId});
				  $.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=getnotificationinfo",
		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
			                    if(data.code=="1"){
			                    	getNotificationDetails(data.details);
			                    }
			                     	    },
			                    
			          error : function(jqXHR, textStatus, errorThrown) {
            if (jqXHR.status == "401"){
            }
            }
            }); 			
			
			getToken(); 
		 }
   
   function getPatientDetails(patient){
  	 ptcd = patient.ptcd;
  		$('#civilid').val(patient.idnumber);
  		idTypeForUpload = patient.idtype;
  		if (patient.idtype == 'P') {
  			$('#IDName').text('<fmt:message key="passportId"/>:');
  			$('#docName').text('<fmt:message key="label.uploadPassportId"/>');
  			proctype = "pass";
  		}
  		if (patient.idtype == 'U') {
  			$('#IDName').text('<fmt:message key="unknown"/>:');
  			$("#field_wrapper3").hide();
  		}
  		if (patient.idtype == 'G') {
  			$('#IDName').text('<fmt:message key="gccID"/>:');
  			$('#docName').text('<fmt:message key="label.uploadGccID"/>');
  			proctype = "gcc";
  		}
  		if (patient.idtype == 'C') {
  			$('#IDName').text('<fmt:message key="label.civilid"/>:');
  			$('#docName').text('<fmt:message key="label.uploadCivilID"/>');
  			proctype = "cid";
  		}
  		
  		ptcd = patient.ptcd;
  		Idtype = patient.idtype;
  		idVal = patient.idnumber;
  		$('#nameAr').text(patient.namear);
  		$('#nameEn').text(patient.nameen);
  		$('#mobile').text(patient.patphone);
  		if (patient.gender == 'M') {
  			$('#gender').text('Male');
  		}
  		if (patient.gender == 'F') {
  			$('#gender').text('Female');
  		}
  		if (patient.maritalstatus == 'M') {
  			$('#marital').text('Married');
  		}
  		if (patient.maritalstatus == 'S') {
  			$('#marital').text('Sindgle');
  		}
  		if (patient.maritalstatus == 'D') {
  			$('#marital').text('Divorced');
  		}
  		if (patient.residencyOther == null || patient.residencyOther == "") {
  			if (lang == 'en') {
  				$('#recidency').text(patient.residencynameen);
  			}
  			else {
  				$('#recidency').text(patient.residencynamear);
  			}
  		}
  		else {
  			$('#recidency').text(patient.residencyOther);
  		}
  		if (patient.occupationOth == "" || patient.occupationOth == null) {
  			if (lang == 'en') {
  				$('#occupation').text(patient.occupationen);
  			}
  			else {
  				$('#occupation').text(patient.occupationar);
  			}
  		}
  		else {
  			$('#occupation').text(patient.occupationOth);
  		}
  		if (lang == 'en') {
  			$('#governorate').text(patient.govnameen);
  			$('#nationality').text(patient.natnameen);
  			$('#district').text(patient.distnameen);

  		}
  		if (lang == 'ar') {
  			$('#governorate').text(patient.govnamear);
  			$('#nationality').text(patient.natnamear);
  			$('#district').text(patient.distnamear);

  		}
  		gendercd = patient.gender;
  		nationalitycd = patient.nationality;
  		governoratecd = patient.governorate;
  		districtcd = patient.district;
  		recidencycd = patient.residency;
  		occupationcd = patient.occupation;
  		maritalcd = patient.maritalstatus;
  		$('#entryDate').text(patient.entrydate);
  		$('#address').text(patient.address);
  		$('#sponsor').text(patient.sponsorcid);
  		$('#dob').text(patient.birthdate);
  		$("#patPhone").val(patient.patphone);
  		$('#worplace').text(patient.workplace);
  		$('#bloodgroup').text(patient.bloodgroup);
  		if (patient.phone != null) {
  			if (patient.phone.indexOf(",") != -1) {
  				var phonesVal = [];
  				phonesVal = patient.phone.split(",");
  				$.each(phonesVal, function(index, val) {
  					if (index > 0) {
  						$(".add_button").click();
  					}
  					$('#patPhone' + index).val(val);
  				});
  			} else {
  				$('#patPhone0').val(patient.phone);
  			}
  		}
   }
      
	  	 function getRegFiles(patcd){
	  		 let fileNoPRC = $('#fileNoPRC').val();
	  		 let fileNoTB =  $('#fileNoTB').val();
	  		 let loccode = '';
	  		if(localStorage.getItem('loctype') == "6"){
	  			loccode=localStorage.getItem('loccode')
	  		}	  		 
  			var myJSONObj = JSON.stringify({ 
  				 "regcd":patcd,
			     "reqloc":"",
			     "tbloc": loccode,
			     "prcloc":"5"});
	  		 $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=getregfiles",
	    			contentType : "application/json",
	    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
	    			crossDomain : true,
	    			data:myJSONObj,
	    			dataType : "json",		
	                success: function (datahere) {			                 
	               	 var response = JSON.parse(JSON.stringify(datahere));	
	               	if(response.code=="1"){
	               		if(fileNoPRC == "" || fileNoPRC == null){
	               			$('#fileNoPRC').val(response.details.prc);
	               			if(response.details.prc != ""){
	               				$("#fileNoPRC").attr('disabled', true);
	               			}
	               		}
	               		if(fileNoTB == "" || fileNoTB == null){
	               			$('#fileNoTB').val(response.details.tb);
	               		}
			         }
	                },
	             error : function(jqXHR, textStatus, errorThrown) {
	     				if (jqXHR.status == "401"){
	     				    }
	     			}
	         });
	  	 }
       function resetTabAccordion(){
    	   $('#hideTab').find('.nav-item').children().removeClass('.nav-link active');
    	   $('#contact1').removeClass('active show');
		   $('#profile1').addClass('active show');   
		   $('#profile-tab1').addClass('active show');
		   $('.hideshow1').addClass('show');
    	   $('.opencollapsed1').removeClass('collapsed');
    	   $('.hideshow').removeClass('show');
    	   $('.opencollapsed').addClass('collapsed');    	   
       }
       
       function updateNotification(){
	    	$('#notifyCreate').hide();
         	$('#notifyUpdate').hide();
			var notifSenderOther = $('#hospNameOther').val();
			var riskfactorOther = $('#riskFactorPRCother1').val();
			 var refferredContact = $('#refferredContact').val();
			   var receivedContact = $('#receivedContact').val();  
			   var estimatedContact = $('#estimatedContact').val(); 
         	   var physnamehos=$('#phyName').val();
               var diagnotes=$("#diagnotes").val();
               var patposition=$('#patPosition').val(); 
               var locationtype='E';
               var treatcategory= $('#treatCat').val();  
               var medresistance= $('#medResistance').val();
               var riskfactor= $('#riskFactorPRC').val();
               var action= $('#action').val();
               var occupation= $('#occupation').text();
               let occupationOther ="";
               if(occupationcd=='18'){
              	 occupationOther=$('#occupation').text();	
				}
               else{
              	 occupationOther="";
               }
               var workplace= $('#worplace').text();
               var maritalstatus= $('#marital').text();  
               var phone = $(".phone_name").map(function(){ return $(this).val() }).get().join(', ');
               var fileNo=$('#fileNo').val();
               var startDoseDate = $('#startDoseDate'). datepicker('getDate');
			   var dosesstartdt=$.datepicker.formatDate('dd/mm/yy', startDoseDate);
		       var enddosesDate = $('#enddosesDate'). datepicker('getDate');
			   var dosesenddt=$.datepicker.formatDate('dd/mm/yy', enddosesDate);
			   var disDate = $('#disDate'). datepicker('getDate');
			   var dischargedt=$.datepicker.formatDate('dd/mm/yy', disDate);
			   var treatStartdate = $('#treatStartdate'). datepicker('getDate');
			   var notifcategory=$('#notifycat').val();
			   var diseasecd=$('#locDisease').val();
			   var outcome=$('#treatOutcome').val();
			   var outcomedate='';
			   var notiflocationtype=$('#locHeader').val();
			   let notifDateTemp = $('#notificationDate'). datepicker('getDate');
			   let notifdate = $.datepicker.formatDate('dd/mm/yy', notifDateTemp);
			   var physicphone=$('#phyNo').val();  
			   var approved='';
			   var approvedby='';
			   var approveddate='';
			   var position=$('#patPositionPRC').val(); 
			   var physicname=$('#phyNamePRC').val(); 
			   var prcfile=$('#fileNoPRC').val(); 
			   var notiflocfileno = $('#fileNoTB').val(); 
			   var referaldate = $('#referralDate'). datepicker('getDate');
			   var referaldt=$.datepicker.formatDate('dd/mm/yy', referaldate);  
               var assignto=$("#assignees").val();
               var notifSenderOther = $('#hospNameOther').val();
			   var inspectorreplace = $('#inspectorreplace').val();
			   var inspectorreplace1 = $('#inspectorreplace1').val();
			   var inspectorreplace2 = $('#inspectorreplace2').val();
			   var allinspector = $('#allinspector').val();
				var admitteddtref= $('#addmitedDate'). datepicker('getDate');
				var admitteddt=$.datepicker.formatDate('dd/mm/yy', admitteddtref);  
		    	var pcrdateref = $('#pcrdateref'). datepicker('getDate');
				var prcreferraldt=$.datepicker.formatDate('dd/mm/yy', pcrdateref);  
				var isolateddate = $('#isolateddate'). datepicker('getDate');
				var isolateddt=$.datepicker.formatDate('dd/mm/yy', isolateddate);    
				var pulmonarytb='';
				var extrapulmonarytb='';
				  if(pulmonarytbcase) {
					pulmonarytb= $('#tbsource').val(); 
				  }
				 if(extrapulmonarytbcase) {
					 extrapulmonarytb= $('#tbsource').val();   
				  }
				   var notifsender=$('#hospCat').val();	
				   var notiflocationtype=$('#hospCat').val();
   				   var notifsender=$('#hospCat').val();
   				   var prclocation = $('#prclocation').val();
   				   if(notifsender=='G'){
   				       var notifsender=$('#hospName').val();
   				   }
   				    if(notifsender=='P'){
	   				   var notifsender=$('#hospNameP').val();
	   				   }	
   					var discharged='';
					 if(dischargedt!=''){
				         discharged='Y';	
				          }  
				var	jsonObjreq = 	{  
						    "reqid":reqid,
							"patcd":ptcd,
						    "notifid":notifcd,
						    "fileno":fileNo,
							"notiftype":"E",
							"notiflocationtype":notiflocationtype,
							"notifsender":notifsender, 
							 "notifSenderOther":notifSenderOther,
							"intref":"",
							"riskfactor":riskfactor,
						  	"riskfactorOther":riskfactorOther,
							"position":patposition,
							"action":action,
							"prcreferraldt":prcreferraldt,
							"isolateddt":isolateddt,
							"referreddate":referaldt,
							"physicname":physnamehos,
							"physicphone":physicphone,
							"diseasecd":diseasecd,
							"assignto":assignto,
							"autoapproval":"",							
							"estimatedContacts":estimatedContact,
						    "receivedContacts":receivedContact,
						    "referredContacts":refferredContact,
							"patient":{
								"idnumber":idVal,
								"idtype":Idtype,
								"ptcd":ptcd,
								"occupation":occupationcd,
								"occupationOth":occupationOther,
								"workplace":workplace,
								"maritalstatus":maritalcd,
                                "phone":phone,
							 },
							"diagnosis":[],
							"lab":[],
							"radiology":[],
							"ppdTest":[],
							 "diseaseIdList":[]
							};
		    	var jsonObj = {
	    	    "reqid":reqid,
	    		"patcd":ptcd,
	    		"notifid":notifcd,
	    		"pulmonarytbcase":pulmonarytb,
	    		"extrapulmonarytbcase":extrapulmonarytb,
	    		"outcome":outcome,
	    		"outcomedate":outcomedate,
	    		"notifdate":notifdate,
	    		"assignto":assignto,
	    		"estimatedContacts":estimatedContact,
			    "receivedContacts":receivedContact,
			    "referredContacts":refferredContact,
			    "inspectorreplace": inspectorreplace,
			    "inspectorreplace1": inspectorreplace1,
			    "inspectorreplace2": inspectorreplace2,
			    "allinspector":allinspector,
			    "notiflocfileno":notiflocfileno,
	    		  "prc":{
	    				 "prcid":"",
	    				 "prcfile":prcfile,
	    				 "position":position,
	    				"medresistance":medresistance,
	    				"treatcategory":treatcategory,
	    				"treatstartdt":'',
	    				"dischargedt":dischargedt,	                                
	    				"admitteddt":admitteddt,
	    				"discharged":discharged,
	    				"dosesstartdt":dosesstartdt,
	    				"dosesenddt":dosesenddt,
	    				"notes":diagnotes,
	    				"physicname":physicname,
	    				"prclocation":prclocation
	    		  },
				      "diagnosis":[],
				      "diseaseIdList":[],
				      "lab":[],
				      "radiology":[],
				      "ppdTest":[],
				      "attachment1":'' ,
			          "attachment2": ''
			 };
		    	if($('#diagnosisMain').val()!=''){									
				    var diag = {}
                    var self = $(this);
				   diag.code = $('#diagnosisMain').val();
				   diag.subcode = $('#subdiagnosisMain').val();
				   
				    diag.extype='D';				   
				    diag.isprc='N';
				    diag.exid=exidMain;
				    diag.doctorname='';
				    diag.subOtherCodeName = $('#subdiagnosisother1').val();
				   jsonObj.diagnosis.push(diag);
				   jsonObjreq.diagnosis.push(diag);
			  } 
				   if($('#daignosisHos').val()!=''){										  
				    var diagPCR = {}
                    var self = $(this);
				    diagPCR.code = $('#daignosisHos').val();
				    diagPCR.subcode = $('#subdiagnosisHos').val();
				    diagPCR.extype='D';
				    diagPCR.isprc='Y';
				    diagPCR.exid=exidPRC;
				    diagPCR.doctorname='';
				    diagPCR.subOtherCodeName = $('#subdiagnosisHosother1').val();
				    jsonObj.diagnosis.push(diagPCR);
				    jsonObjreq.diagnosis.push(diagPCR);
				   }
			   $("#diseasetableprc tr:not(:first)").each(function (i, value) {
				   var diag = {};
                 var self = $(this);
                 diag.code = self.find("td:eq(4)").text().trim();
                 diag.name = self.find("td:eq(1)").text().trim();
				    diag.extype='I';
				    diag.isprc='Y';
				    diag.doctorname='';
				   if(diag.code!=''){
					   jsonObjreq.diagnosis.push(diag);
					   jsonObj.diagnosis.push(diag);
				   } 
             });
			   $("#diseasetablehos tr:not(:first)").each(function (i, value) {
				   var diseasehos = {}
                   var self = $(this);
				   diseasehos.code = self.find("td:eq(0)").text().trim()
				   diseasehos.name = self.find("td:eq(1)").text().trim()
                   jsonObjreq.diseaseIdList.push(diseasehos);
                   jsonObj.diseaseIdList.push(diseasehos);
               });
			 $("#addLabTest tr:not(:first)").each(function (i, value) {
				   let labtest = {}
                   let self = $(this);
				   labtest.code = self.find("td:eq(0)").text().trim();
				   let exid = self.find("td:eq(1)").text().trim();
				   labtest.result=self.find("td:eq(3)").find("select").val();
				   labtest.drugsensitive=self.find("td:eq(5)").find("select").val();
				   labtest.requester=self.find("td:eq(6)").find("select").val();
				   labtest.locationtype='E';
				   labtest.location = localStorage.getItem('loccode');
				    let rowno= self.find("td:eq(9)").text().trim();
				    let labDate = $('#labDate'+rowno). datepicker('getDate');
					let labDatedt=$.datepicker.formatDate('dd/mm/yy', labDate);  
                   labtest.exdate=labDatedt;
				   labtest.doctorname=''; 
				   if(exid=="null" || exid=="" || exid==null){
				   jsonObj.lab.push(labtest);
				  }
             });   
		    $("#radTestlistResult tr:not(:first)").each(function (i, value) {
		    	   let radtest = {}
                   let self = $(this);
				   let exid = self.find("td:eq(1)").text().trim();
		    	   let rowcount=self.find("td:eq(11)").text().trim();
				   radtest.code = self.find("td:eq(0)").text().trim();											   
				   if(radtest.code == "3"){
					   radtest.result=$('#radresults'+rowcount).val();
				   }else{radtest.result=radtest.result=$('#radresults'+rowcount).val();}
				   radtest.abnormalResult=$('#abnormallist'+rowcount).val();
				   radtest.abnormalOth=$('#otherabnormaldiseasevalue'+rowcount).val();
				   radtest.locationtype='E';
				   radtest.location = localStorage.getItem('loccode');
				   radtest.requester=$('#requesterRad'+rowcount).val();
				   radtest.notes=$('#notesRad'+rowcount).val();
				   let radddt = $('#radDate'+rowcount).datepicker('getDate');
				   let radDate=$.datepicker.formatDate('dd/mm/yy', radddt);  
				   radtest.exdate=radDate;
				   radtest.doctorname='';
				   if(exid==""){
				   jsonObj.radiology.push(radtest);
				   }
             });
		    $("#ppdtestResult tr:not(:first)").each(function (i, value) {
         	   var ppd = {}
         	   var self = $(this);
				    var rowcount=self.find("td:eq(17)").text().trim();
					ppd.ppd1TestDate= self.find("td:eq(4)").text().trim();  
					ppd.ppd2TestDate=self.find("td:eq(5)").text().trim();
					ppd.ppd1ReadingDate=self.find("td:eq(6)").text().trim();
					ppd.ppd2ReadingDate=self.find("td:eq(7)").text().trim();
		            ppd.ppd1Reading = self.find("td:eq(8)").text().trim();  
		            ppd.ppd1Result =self.find("td:eq(10)").text().trim();
		            ppd.ppd1Notes = self.find("td:eq(12)").text().trim();
		            ppd.ppd2Reading = self.find("td:eq(9)").text().trim();
		            ppd.ppd2Result =self.find("td:eq(11)").text().trim(); 
		            ppd.ppd2Notes = self.find("td:eq(13)").text().trim();
		            ppd.testType = self.find("td:eq(14)").text().trim();
		            ppd.testReasonId = self.find("td:eq(15)").text().trim();
				    ppd.ppdId =  self.find("td:eq(16)").text().trim();
				    ppd.ppd1docinterpret =  self.find("td:eq(19)").text().trim();
				    ppd.ppd2docinterpret =  self.find("td:eq(20)").text().trim();
		            ppd.sendSms = "";
		            ppd.location = localStorage.getItem('loccode');
		            if(ppd.ppdId == "null" || ppd.ppdId == "" || ppd.ppdId == null){
		            jsonObj.ppdTest.push(ppd);
		            }
	           }); 
		    if(notifcategory==''){		
				$('#notifyCatError').show();
			}
			if(($('#diagnosisMain').val())==''){		
				$('#diagError').show();
			}
			if(($('#hospCat').val())==''){		
				$('#hospCatError').show();
			}
			if(($('#hospCat').val()=='G')&&($('#hospName').val()=='')){		
				$('#hospNameErrorG').show();
			}
			if(($('#hospCat').val()=='P')&&($('#hospNameP').val()=='')){		
				$('#hospNameErrorP').show();
			}
            var myJSONObj =JSON.stringify(jsonObjreq);
            if (!(reqid == null || reqid == "") && (notifcategory!='') && ($('#diagnosisMain').val()!='') && ($('#hospCat').val()!='')){
            $.ajax({
            type: "POST",
            url:context+"/apiResponse?method=updnotifrequest",
            headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
        		contentType : "application/json",
        		crossDomain : true,
        		data:myJSONObj,	
        		dataType : "json",		
                success: function (data) {	
                     if(data.code=="1"){
                    	 $('#notifyCreate').hide();
                      	 $('#notifyUpdate').show();
                     }
                },
                  error : function(jqXHR, textStatus, errorThrown) {
            if (jqXHR.status == "401"){
             }
                  }
        }); 	
         } 	     
  var myJSONObj =JSON.stringify(jsonObj);
  if (!(ptcd == null || ptcd == "") && !(notifcd == null || notifcd == "") && notifcategory!='' && ($('#diagnosisMain').val()!='') ){ //&& ($('#hospCat').val()!='')
    $.ajax({
    type: "POST",
    url:context+"/apiResponse?method=updnotification",
    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		contentType : "application/json",
		crossDomain : true,
		data:myJSONObj,	
		dataType : "json",		
        success: function (data) {			                 
             if(data.code=="1"){
            	 $('#notifyCreate').hide();
              	 $('#notifyUpdate').show();
             }
                },
          error : function(jqXHR, textStatus, errorThrown) {
    if (jqXHR.status == "401"){
     }
          }
}); 
  }
	  	var medical = [] , medicalhistoy = '' ;
		 $("#medicalhistory tr:not(:first)").each(function (i, value) {
     	   var medtest = {}
            var self = $(this);
     	   medtest.exid = self.find("td:eq(10)").text().trim();
     	   medtest.code = reqid;
     	   medtest.patientcd = ptcd;
     	   var rowcount=self.find("td:eq(9)").text().trim();
     	   medtest.extype = self.find("td:eq(1)").find("select").val();
     	   medtest.resultname =  $('#resultname'+rowcount).val();
     	   medtest.result=$('#result'+rowcount).val();
			   var medicaldt = $('#exdate'+rowcount).datepicker('getDate');
			   var medDate=$.datepicker.formatDate('dd/mm/yy', medicaldt);  
			   medtest.exdate=medDate;
			   medtest.doctorname=$('#doctorname'+rowcount).val();
			   medtest.notes = $('#notes'+rowcount).val();
			   if(medtest.exid == "null"){
				   medical.push(medtest);			    
			   }
         });
		medicalhistoy = JSON.stringify(medical);
		if(medical.length != 0){
     	$.ajax({
              type: "POST",
              url:context+"/apiResponse?method=createNotifMedTreatHist",
              headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				contentType : "application/json",
				crossDomain : true,
				data:medicalhistoy,	
				dataType : "json",		
				success: function(response) {
				 	if(response.code == "1"){
	                }
	   },
                   error : function(jqXHR, textStatus, errorThrown) {
             if (jqXHR.status == "401"){
              }
              }
             });
		}
		uploadDoc();
       }
		function updateNotify(){
			$('#notifSuccessModal').modal('show');
			$('#successlabel').text("<fmt:message key="label.updateNotif"/>");
			$('#successlabelMsg').text("<fmt:message key="label.updateMsg"/>");
			$('#updateNotification').show();
			$('#saveNotification').hide();
			$('#notifyUpdate').hide();
			$('#notifyCreate').hide();
		 }    	
		var val='';
		 function getInfo(){
			 clearall();
			 historyold='';
			 $('#saveNoti').show();
			 $('#saveNotify').removeAttr("disabled");
			   $('#updateNoti').hide();
			     var civilId = $('#civilid').val();
			   $('#civilIDReg').val();
			     idVal=civilId;
			     Idtype='C';
			     var reg='C';
                 val='Reg';
			  var myJSONObj =JSON.stringify({"idnumber": civilId,"idtype":Idtype});
			  if(civilId != ""){
			 $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=verifyopennotifs",
	               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	                success: function (data) {			                 
		                    if(data.code=="1"){
		                    	 $('#saveNotify').attr('disabled', 'true');
		                    	$('#civilid').val('');
		                    	 $('#notifyNo').text(data.result);
		                    	 $('#openNotifyModel').modal('show');
		                     	    }
		                    if(data.code=="-3"||data.code=='-2'){
		                    	$('#patientUnAvailable').hide();
		                    	 pathistory(civilId,Idtype);
		                    	 findpat(val,myJSONObj);
		                    }			
		              },
           error : function(jqXHR, textStatus, errorThrown) {
         if (jqXHR.status == "401"){
         }
         }
         }); 
		}
			 getToken(); 
	    	}	 
		 function getinfoOther(){
			    clearDetailsBasic();
			    clearPageData();
			     $('#pass1').hide();
			    historyold='';
                val='Other';
			    $('#nameOtherEn').val('');
	         	$('#nameOtherAr').val('');
	         	$('#nationalityOther').val('');
	         	$('#genderOther').val('');
	         	$('#mobileOther').val('');
	         	$('#dobOther').val('');
	         	$('#bloodgroupOther').val('');
	         	$('#entryDateOther').val('');
	         	$('#addressOther').val('');
	         	$('#sponsorOther').val('');
	         	$('#occupationOther').val('');
	         	$('#worplaceOther').val('');
	         	$('#maritalOther').val('');
	         	$('#notifyIDShow').hide();
	         	$('#governorateOther').val('');
	         	$('#recidencyOther').val('');
			    $('#saveNoti').show();
			  $('#registerOther').removeAttr("disabled");
			  $('#updateNoti').hide();
			  idVal=$('#passportId').val();
			  Idtype=$('input[name="idType"]:checked').val();
			   if(Idtype=='P'){
       		    $('#IDName').text('<fmt:message key="passportId"/>:');
       		    $('#docName').text('<fmt:message key="label.uploadPassportId"/>');
       		    }
       		    if(Idtype=='U'){
           		    $('#IDName').text('<fmt:message key="unknown"/>:');
           		 	$("#field_wrapper3").hide();
           		    }
       		    if(Idtype=='G'){
        		    $('#IDName').text('<fmt:message key="gccID"/>:');
        		    $('#docName').text('<fmt:message key="label.uploadGccID"/>');
                    $('#registerOther').show();
        		    }
       		  $('#civilid').val(idVal);
			  var myJSONObj =JSON.stringify({"idnumber": idVal,"idtype": Idtype});
		     pathistory(idVal,Idtype);
		     $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=verifyopennotifs",
	               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	                success: function (data) {			                 
		                    if(data.code=="1"){
		                    	 $('#registerOther').hide();
		                    	 $('#notifyPass').text(data.result);
		                         $("#passcivil").hide();
			                     $("#passcivilOpenNotif").show();
			                     $('#passcivilAvailable').hide();
		                     	    }
		                    if(data.code=="-3"||data.code=='-2'){
		                    	$('#patientUnAvailable').hide();
		          		  findpat(val,myJSONObj);
		                    }
		                    },
              error : function(jqXHR, textStatus, errorThrown) {
        if (jqXHR.status == "401"){
        }
        }
        });
			 getToken();  
			 }
         function findpat(val,myJSONObj){
        	$('#recidencyRegOther1').val('');
      		$('#occupationRegOther1').val('');
             $.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=findpatient",
		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
			                    if(data.code=="1"){
			                    	$('#contact-tab1').show();
									if(val=='Other'){
								        showpassDetails();
    			                    	 $('#genderPass').show();
    			                    	 $('#bloodgrpPass').show();
    			                    	 if(data.details.idtype=='U'){
    			                    		 $('#IDName').text('<fmt:message key="unknown"/>:');
    			                    		 $("#field_wrapper3").hide();
    			                    		 $('#civilid').val(data.details.idnumber); 
    			                    	 }
    			                    	 if(data.details.idtype=='P'){
    			                    		 $('#IDName').text('<fmt:message key="passport"/>:');
    			                    		 $('#docName').text('<fmt:message key="label.uploadPassportId"/>');
    			                    		 $('#civilid').val(data.details.idnumber); 
    			                    	 }
    			                    	 if(data.details.idtype=='G'){
    			                    		 $('#IDName').text('<fmt:message key="gccID"/>:');
    			                    		 $('#docName').text('<fmt:message key="label.uploadGccID"/>');
    			                    		 $('#civilid').val(data.details.idnumber); 
    			                    	 }  }
			                    	 if(lang=='en'){
				   	       	           nationality=data.details.natnameen;
				   	       	           governorate=data.details.govnameen;
				   	       	           district=data.details.distnameen;
				   	       	           residency=data.details.residencynameen;
				   	       	          }
				   	       	          else{
				   	       	           nationality=data.details.natnamear;
				   	       	           governorate=data.details.govnamear;
				   	       	           district=data.details.distnamear;
				   	       	           residency=data.details.residencynamear;
				   	   	       	          }
			                   	 if (data.details.gender == "F"){
		                    		 gender='Female';
		                    	 }
		                    	 if (data.details.gender == "G"){
                                       gender='Male';
			                    		 }
		                     	 if (data.details.maritalstatus == "S"){
		                    		 marital='Single';
		                    	 }
		                    	 if (data.details.maritalstatus == "M"){
		                    		 marital='Married';
			                    		 }
		                     	 if (data.details.maritalstatus == "D"){
		                    		 marital='Divorced';
		                     	 }
		                     	$('#district').text(district); 
		                     	$("#district"+val).val(data.details.district); 
		                    	$('#civilIDReg').val($('#civilid').val());
			                    	$('#nameAr').text(data.details.namear); 
			                    	$("#name"+val+"En").val(data.details.nameen); 
			                    	$('#nameEn').text(data.details.nameen);
			                    	$("#name"+val+"Ar").val(data.details.namear); 
     			                        	$.each(data.details.patphone , function(index, value) { 
     			                        		if(index>0){
     			                        		 $(".add_button1").click();
     			                        		}
     			                        		 $('#patMobile'+index).val(value);
     			                        	});
     			                    if(data.details.patphone != null){
     			                    	var mobileStr = data.details.patphone.toString();
    			                    	var mobile = String(mobileStr);
    			                    	$('#mobile').text(mobile);
     			                    }
			                     	$("#gender"+val).val(data.details.gender); 
			                     	$('#gender').text(gender); 
			                     	$('#nationality').text(nationality);
			                     	$("#nationality"+val).val(data.details.nationality); 
			                     	nationalitycd=data.details.nationality;
			                     	$('#entryDate').text(data.details.entrydate);
			                  	    $("#entryDate"+val).val(data.details.entrydate); 
			                    	$('#address').text(data.details.address);
			                    	 $("#address"+val).val(data.details.address); 
			                    	$('#sponsor').text(data.details.sponsorcid); 
			                    	 $("#sponsor"+val).val(data.details.sponsorcid);
			                    	 $("#recidency"+val).val(data.details.residency);
			                    	 $('#recidency').text(residency);  
			                    	 if(data.details.residency == "5"){
			                    		 $('#residencyOtherPass').show();
			                    		 $("#residencyOther1").val(data.details.residencyOther);
			                    		 $('#recidency').text(data.details.residencyOther);  
				                     	}			                     	
			                    	 recidencycd=data.details.residency;
			                     	$('#marital').text(marital); 
			                     	$("#marital"+val).val(data.details.maritalstatus);
			                     	maritalcd=data.details.maritalstatus;
			                     	$("#dob"+val).val(data.details.birthdate);
			                     	$('#dob').text(data.details.birthdate);
			                       	$('#worplace').text(data.details.workplace);
			                    	$("#worplace"+val).val(data.details.workplace);
			                    	$("#occupation"+val).val(data.details.occupation);
			                     	$('#occupation').text(data.details.occupation);
			                     	occupationcd = data.details.occupation;
			                     	if(data.details.occupation == "18"){
			                     		$('#occupationOtherPass').show();
			                     		$("#occupationOther1").val(data.details.occupationOth);
			                     		$('#occupation').text(data.details.occupationOth);
			                     	}
			                     	$("#bloodgroup"+val).val(data.details.bloodgroup);
			                     	$('#bloodgroup').text(data.details.bloodgroup);
			                    	$("#governorate"+val).val(data.details.governorate);
			                    	governoratecd=data.details.governorate;
			                    	$('#governorate').text(governorate);
			                    	Idtype=data.details.idtype;
			                    	ptcd=data.details.ptcd;
			                    	gendercd=data.details.gender;
			                    	districtcd=data.details.district;
			                    	var myJSONObj =JSON.stringify({"code": governoratecd});
			                    	 if(governoratecd !=''){
				            			 getDistrictVal(val,myJSONObj,'district'+val,districtcd) ; 
			         					 }
			                    	 $('#edit').show();
			                    }
			                    if(data.code=="-2"){
							     if(val=='Reg'){
							    	var civilIdReg= $('#civilid').val();	
			                   var myJSONObjCivil =JSON.stringify({"civilid": civilIdReg});
			                   $.ajax({
			        		               type: "POST",
			        		               url:context+"/apiResponse?method=getpatinfo",
			        		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			        						contentType : "application/json",
			        						crossDomain : true,
			        						data:myJSONObjCivil,	
			        						dataType : "json",		
			        		                success: function (data) {			                 
			        			                    if(data.code=="1"){
								                    	$('#contact-tab1').show();
								                    	 $('#edit').show(); 
			        			                    	 if (data.details.gender == "F"){
			        			                    		 gender='Female';
			        			                    	 }
			        			                    	 if (data.details.gender == "G"){
			        				                    		 gender='Male';
			        				                    		 }
			        			                    	 if (data.details.maritalstatus == "S"){
			        			                    		 marital='Single';
			        			                    	 }
			        			                    	 if (data.details.maritalstatus == "M"){
			        			                    		 marital='Married';
			        				                    		 }
			        			                    	if(lang=='en'){
			          				   	       	           nationality=data.details.natnameen;
			          				   	       	           governorate=data.details.govnameen;
			          				   	       	            district=data.details.distnameen;
			          				   	       	            residency=data.details.residencynameen;
			          				   	       	          }
			          				   	       	          else{
			          				   	       	           nationality=data.details.natnamear;
			          				   	       	           governorate=data.details.govnamear;
			          				   	       	           district=data.details.distnamear;
			          				   	       	           residency=data.details.residencynamear;
			          				   	   	       	          }
			        			                    	$("#district").val(data.details.district); 
			        			                    	$('#district').text(district);
			        			                    	 districtcd=data.details.district;
			        			                    	 nationalitycd=data.details.nationality;
			        			                    	 governoratecd=data.details.governorate;
			        			                    	 gendercd=data.details.gender;
			        			                    	 maritalcd=data.details.maritalstatus;
			        			                    	$('#civilIDReg').val(civilIdReg);
			          			                    	$('#nameAr').text(data.details.namear); 
			          			                    	$('#nameRegEn').val(data.details.nameen); 
			          			                    	$('#nameEn').text(data.details.nameen);
			          			                    	$('#nameRegAr').val(data.details.namear); 
			          			                    	$('#mobile').text(data.details.patphone);
			          			                        $('#mobileReg0').val(data.details.patphone); 
			          			                     	$('#genderReg').val(data.details.gender); 
			          			                     	$('#gender').text(gender); 
			          			                     	$('#nationality').text(nationality);
			          			                     	$('#nationalityReg').val(data.details.nationality); 
			          			                     	$('#entryDate').text(data.details.entrydate);
			          			                  	    $('#entryDateReg').val(data.details.entrydate);
			          			                  	    $('#dob').text(data.details.birthdate);
		          			                  	        $('#dobReg').val(data.details.birthdate);
			          			                    	$('#address').text(data.details.address);
			          			                    	 $('#addressReg').val(data.details.address); 
			          			                    	$('#sponsor').text(data.details.sponsorcid); 
			          			                    	 $('#sponsorReg').val(data.details.sponsorcid);
			          			                    	 $('#recidencyReg').val(data.details.residency);
			          			                     	$('#recidency').text(residency);
			          			                     	recidencycd=data.details.residency;
			        			                 		 if(data.details.residency == "5"){
			        			                    		 $('#recidencyRegOther').show();
			        			                    		 $("#recidencyRegOther1").val(data.details.residencyOther);
			        			                    		 $('#recidency').text(data.details.residencyOther);  
			        				                     	}
			          			                     	$('#marital').text(marital); 
			          			                     	$('#maritalReg').val(data.details.maritalstatus); 
			          			                    	$('#worplace').text(data.details.workplace);
			          			                    	$('#worplaceReg').val(data.details.workplace);
			          			                    	$('#occupationReg').val(data.details.occupation);
			          			                    	$('#occupation').text(data.details.occupation);
			          			                    	occupationcd=data.details.occupation;
					                     	           	if(data.details.occupation == "18"){
					                     					$('#occupationRegOther').show();
					                     					$("#occupationRegOther1").val(data.details.occupationOth);
					                     					$('#occupation').text(data.details.occupationOth);
					                     				}					                     	          
			          			                        $('#bloodgroup').text(data.details.bloodgroup);
			          			                    	$('#bloodgroupReg').text(data.details.bloodgroup);
			          			                    	$('#governorate').val(data.details.governorate);
			          			                    	$('#governorate').text(governorate); 
			          			                         Idtype=data.details.idtype;
			        			                     	var reg="reg";	 
			        			                 		var residencyOther=$('#recidencyRegOther1').val();
			        			                 		var occupationOther=$('#occupationRegOther1').val();
			        			                     	regPatient(idVal,gendercd,nationalitycd,governoratecd,maritalcd,reg,districtcd,recidencycd,residencyOther,occupationcd,occupationOther);
			        			                        $('#approvalSec').hide();
			        			                    }
			        			                    if(data.code=="-3"){

			        			                         }
			        			                   if(data.code=="-2"){
			        			                	  $('#saveNotify').attr('disabled', 'true');		 
			        			                    	 $('#dataUnavailable').show();  
                                                                                    $('#dbError').hide();
                                                                                   $('#civilid').val('');   
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
								else{
								 $('#updateOther').attr('disabled', 'true');  

		                  if(Idtype=='P'){
		                  $('#pass1').show();
		                   hidepassDetails();
		                  }
								}
			                         }
			                 },
  				error : function(jqXHR, textStatus, errorThrown) {
  					if (jqXHR.status == "401") {
  					}
  				}
  		 });
		 } 
        function validatepassAPI(){
			 var nationality=$('#nationalityOther').val();
			 $('#passNotFound').hide();
			 var myJSONObjPass =JSON.stringify({
				 "idtype":Idtype,
				 "passportnumber":idVal,
				"nationality":nationality,
				 "civilidnumber":"",
				  });
			  if(nationality==''){
				  $('#pass1').show();
				  $('#manField').show();
			  }
			                         if(idVal!=''&& nationality!=''){
			                        	 $('#manField').hide();
			                                                   $.ajax({
					          			        		               type: "POST",
					          			        		               url:context+"/apiResponse?method=getmoipatinfo",
					          			        		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					          			        						contentType : "application/json",
					          			        						crossDomain : true,
					          			        						data:myJSONObjPass,	
					          			        						dataType : "json",		
					          			        		                success: function (data) {			                 
					          			        			                    if(data.code=="1"){				          			        			                    	
					          			        			                    	 if (data.details.gender == "F"){
					          			        			                    		 gender='Female';					          			        			                    		 
					          			        			                    	 }
					          			        			                    	 if (data.details.gender == "M"){
					          			        				                    		 gender='Male';
					          			        				                    }
					          			        			                    	 if (data.details.maritalstatus == "S"){
					          			        			                    		 marital='Single';
					          			        			                    		 
					          			        			                    	 }
					          			        			                    	 if (data.details.maritalstatus == "M"){
					          			        			                    		 marital='Married';
					          			        				                    		 }
					          			        			                    	if (data.details.maritalstatus == "D"){
					          			        			                    		 marital='Divorced';
					          			        				                    		 }
					          			        			                    	if(lang=='en'){
					          			          				   	       	           nationality=data.details.natnameen;
					          			          				   	       	           governorate=data.details.govnameen;
					          			          				   	       	            district=data.details.distnameen;
					          			          				   	       	            residency=data.details.residencynameen;
					          			          				   	       	          }
					          			          				   	       	          else{
					          			          				   	       	           nationality=data.details.natnamear;
					          			          				   	       	           governorate=data.details.govnamear;
					          			          				   	       	           district=data.details.distnamear;
					          			          				   	       	           residency=data.details.residencynamear;
					          			          				   	   	       	          }
					          			        			                    	$('#district').text(district);
					          			        			                    	 districtcd=data.details.district;
					          			        			                    	 nationalitycd=data.details.nationality;
					          			        			                    	 governoratecd=data.details.governorate;
					          			        			                    	 gendercd=data.details.gender;
					          			        			                    	 maritalcd=data.details.maritalstatus;
					          			        			                    	recidencycd=data.details.residency;
					          			          			                    	$('#nameAr').text(data.details.namear); 
					          			          			                    	$('#nameOtherEn').val(data.details.nameen); 
					          			          			                    	$('#nameEn').text(data.details.nameen);
					          			          			                    	$('#nameOtherAr').val(data.details.namear); 
					          			          			                    	$('#mobile').text(data.details.phone); 
					          			          			                    	$('#mobileOther').val(data.details.patphone); 
					          			          			                     	$('#genderOther').val(data.details.gender); 
					          			          			                     	$('#gender').text(gender); 
					          			          			                     	$('#nationality').text(nationality);
					          			          			                     	$('#nationalityOther').val(data.details.nationality); 
					          			          			                     	$('#entryDate').text(data.details.entrydate);
					          			          			                  	    $('#entryDateOther').val(data.details.entrydate);
					          			          			                  	    $('#dob').text(data.details.birthdate);
				       			          			                  	            $('#dobOther').val(data.details.birthdate);
					          			          			                    	$('#address').text(data.details.address);
					          			          			                    	$('#addressOther').val(data.details.address); 
					          			          			                    	$('#sponsor').text(data.details.sponsorcid); 
					          			          			                    	$('#sponsorOther').val(data.details.sponsorcid);
					          			          			                    	$('#recidencyOther').val(data.details.residency);
					          			          			                     	$('#recidency').text(residency);  
					          			          			                     	$('#marital').text(marital); 
					          			          			                     	$('#maritalOther').val(data.details.maritalstatus); 
					          			          			                    	$('#worplace').text(data.details.workplace);
					          			          			                    	$('#worplaceOther').val(data.details.workplace);
					          			          			                    	$('#occupationOther').val(data.details.occupation);
					          			          			                     	$('#occupation').text(data.details.occupation);
					          			          			                        $('#bloodgroup').text(data.details.bloodgroup);
					          			          			                    	$('#bloodgroupOther').text(data.details.bloodgroup);
					          			          			                    	$('#governorateOther').val(data.details.governorate);
					          			          			                    	$('#governorate').text(governorate); 
					          			          			                        $('#districtOther').val(data.details.district);
					          			          			                        if(data.details.civilidnumber!='' || data.details.civilidnumber!=null){
					          			          			                             $('#civilpassno').text(data.details.civilidnumber);					          			          			                  
						          			          			                         $("#passcivil").show();
						          			          			                         $("#passcivilOpenNotif").hide();
					          			          			                             $('#passcivilAvailable').show();
					          			          			                             $("#registerOther").hide();
					          			          			                             $('#footerPass').hide();
					          			          			                             $('#IDName').text('<fmt:message key="label.civilid"/>:');
					          			          			                         	 $('#docName').text('<fmt:message key="label.uploadCivilID"/>');
					          			          			                             $('#civilid').val('');
					          			          			                        }
					          			          			                        else{
					          			          			                         showpassDetails();
					          			        			                    	 $('#genderPass').show();
					          			        			                    	 $('#bloodgrpPass').show();
					          			        			                    	 $('#footerPass').show();
					          			        			                         $("#passcivilOpenNotif").hide();
					          			        			                         $("#registerOther").show();
					          			        			                          $("#passcivil").hide();
					          			          			                          $("#passcivilOpenNotif").hide();
					          			          			                          $('#civilpassno').hide();
					          			          			                          $('#pass1').hide();
					          			          			                        }
					          			        			                        $('#approvalSec').hide();
					          			        			                    }
					          			        			                    if(data.code=="-1"){
					          			        			                    	// showpassDetails();
					          			        			                    	// $('#genderPass').show();
					          			        			                    	// $('#bloodgrpPass').show();
					          			        			                    	// $("#registerOther").show();
					          			        			                    	// $("#passcivil").hide();
					          			          			                        //  $("#passcivilOpenNotif").hide();
					          			          			                         // $('#civilpassno').hide();
					          			          			                        //  $("#passcivilOpenNotif").hide();
					          			          			                        //  $('#pass1').hide();
					          			        			                    	  $('#passNotFound').show();
					          			        			                    	  $('#IDName').text('<fmt:message key="label.civilid"/>:');
					          			        			                    	  $('#docName').text('<fmt:message key="label.uploadCivilID"/>');
				          			          			                             $('#civilid').val('');
					          			        			                     }
					          			        			                   if(data.code=="-3"){
					          			        			                    	}
					          			                                              },
					          			                             error : function(jqXHR, textStatus, errorThrown) {

					          			                       if (jqXHR.status == "401"){
					          			                       }
					          			                       }
					          			                       }); 
			                                                     }
			}
			 
			 function regPatientCiviledit() {
            	    clearDetailsBasic();
			        var entryDateReg='';
					var entryDateRegVar='';
					var birthDateReg='';
					var birthDateRegVar='';
					var update='C';
					entryDateReg = $('#entryDateReg'). datepicker('getDate');
					entryDateRegVar=$.datepicker.formatDate('dd/mm/yy', entryDateReg);
					birthDateReg = $('#dobReg'). datepicker('getDate');
					birthDateRegVar=$.datepicker.formatDate('dd/mm/yy', birthDateReg);
                	var nameRegEn=$('#nameRegEn').val();
                	$('#nameEn').text($('#nameRegEn').val());
                	var nameAr=$('#nameRegAr').val();
    			    $('#nameAr').text($('#nameRegAr').val());
    			    var nationality=$('#nationalityReg').val();
    			    var nationtext=$('#nationalityReg option:selected').text();
    			    if(nationtext.toString().indexOf('Select')!= -1){
    			    	nationtext='';
    			    }
                   	$('#nationality').text(nationtext);
                   	nationalitycd = nationality;
                    var gender=$('#genderReg').val();
                    var gendertext=$('#genderReg option:selected').text();
                    if((gendertext).indexOf('Select')!= -1){
                    	gendertext='';
    			    }
                   	$('#gender').text(gendertext);
                   	gendercd = gender;
                    var mobile= new Array();
					$('input[name^="phoneReg"]').each(function() 
							{
						mobile.push($(this).val());
							});
					var mobileNew = $(".phone_namereg").map(function(){ return $(this).val() }).get().join(', '); 
					$('#mobile').text(mobileNew);
                   	var dob=birthDateRegVar;
                   	$('#dob').text(birthDateRegVar);
                   	var entryDate=entryDateRegVar;
                   	$('#bloodgroup').text($('#bloodgroupReg').val());
                   	var bloodgroup=$('#bloodgroupReg').val();
                   	$('#entryDate').text(entryDateRegVar);                   
                   	$('#address').text($('#addressReg').val());
                   	var address=$('#addressReg').val();
                   	var sponsor=$('#sponsorReg').val();
                   	$('#sponsor').text($('#sponsorReg').val());
                   	var worplace=$('#worplaceReg').val();
                   	$('#worplace').text( $('#worplaceReg').val());
                   	var marital=$('#maritalReg').val();
                    var maritaltext=$('#maritalReg option:selected').text();
                    if(maritaltext.toString().indexOf('Select')!= -1){
                    	maritaltext='';
    			    }
                	$('#marital').text(maritaltext);
                	maritalcd = marital;
                    var residency=$('#recidencyReg').val();
                	var recidencytext=$('#recidencyReg option:selected').text();
                   	if(recidencytext.toString().indexOf('Select')!= -1){
                   		recidencytext='';
    			    }
                   	recidencycd = residency;
                   	$('#recidency').text(recidencytext);
                   	var occupation = $('#occupationReg').val();
                   	occupationcd = occupation;
                   	var occupationtext=$('#occupationReg option:selected').text();
                   	if(occupationtext.toString().indexOf('Select')!= -1){
                   		occupationtext='';
    			    }
                   	$('#occupation').text(occupationtext);
                 	var governoratetext=$('#governorateReg option:selected').text();
                    if(governoratetext.toString().indexOf('Select')!= -1){
                    	governoratetext='';
    			    }
                	var governorate=$('#governorateReg').val();
                	 $('#governorate').text(governoratetext);
                    	var districttext=$('#districtReg option:selected').text();
                    	if(districttext.toString().indexOf('Select')!= -1){
                    		districttext='';
     			    }
                    	governoratecd = governorate;
                    	$('#district').text(districttext);
                    	var district=$('#districtReg').val();
                       	districtcd = district;
                	var residencyOther = $('#recidencyRegOther1').val();
                	var occupationOth = $('#occupationRegOther1').val();
                	if(occupation == "18"){
                		 $('#occupation').text(occupationOth);
                	}
            	   if(residency == "5"){
            		   $('#recidency').text(residencyOther);}
                   updatepatient(nameRegEn,nameAr,nationality,gender,mobile,dob,bloodgroup,entryDate,address,sponsor,occupation,
                   	   worplace,marital,residency,residencyOther,governorate,update,occupationOth,district);           	
				}
				function regPatient(idVal,gender,nationality,governorate,marital,reg,district,residency,residencyOther,occupationReg,occupationOth) {
					 var entryDateReg='';
					 var entryDateRegVar='';
					 var birthDateRegVar='';
					$('#patRegCivilId').hide();
					$('#patAlreadyRegCivilId').hide();  
					$('#saveDetailsSuccess').hide(); 
                	$('#updateDetailsSuccess').hide()
					entryDateRegVar = $('#entryDate'). text();
					birthDateRegVar=$('#dob'). text(); 
						var nameRegAr = $('#nameAr').text();
						var nameRegEn = $('#nameEn').text();
						var sponsorReg = $('#sponsor').text();
						var worplaceReg = $('#worplace').text();
						var bloodgroupReg = $('#bloodgroup').text();
						var addressReg = $('#address').text();
						var entryDateRegVar=$('#entryDate').text();
						var birthDateRegVar=$('#dob').text();
						var patphone= new Array();
						$('input[name^="patMobile"]').each(function() 
								{
							patphone.push($(this).val());
								});
						var myJSONObj =JSON.stringify({"idnumber": idVal,"idtype": Idtype,"nameen": nameRegEn,
							"namear": nameRegAr,"nationality": nationality,"gender":gender,"residency": residency, "residencyOther":residencyOther,"entrydate":entryDateRegVar,"address":addressReg,"governorate":governorate,"district":district,"birthdate":birthDateRegVar,
							"sponsorcid":sponsorReg,"patphone":patphone,"occupation":occupationReg,"occupationOth":occupationOth,"workplace":worplaceReg,"maritalstatus":marital,"bloodgroup":bloodgroupReg});
						if(($('input[name="idType"]:checked').val() =='G' && $('#passportId').val() != '' &&  $('#nationalityOther').val() != '')||($('input[name="idType"]:checked').val() =='U' && $('#genderOther').val() != '') || ($('input[name="idType"]:checked').val() =='P' && $('#nationalityOther').val() != '')|| (Idtype=='C')){
						$.ajax({
				               type: "POST",
				               url:context+"/apiResponse?method=registerpatient",
				               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
								contentType : "application/json",
								crossDomain : true,
								data:myJSONObj,	
								dataType : "json",		
				               success: function (data) {			                 
					                    if(data.code=="1"){
					                    	ptcd=data.result;
					                    	$('#contact-tab1').show();
					                    	 $('#edit').show();
					                    if(reg=='O'){
					                    	$('#saveDetailsSuccess').show(); 
					                    	$('#updateDetailsSuccess').hide(); 
					                    }
					                    if(Idtype=='U'){
					                    	idVal=data.type;
					                    	idValOther=data.type;
					                    	$('#civilid').val(idVal);
					                    }
					                    }
					                    if(data.code=="-2"){
					                    	$('#saveDetailsSuccess').hide(); 
					                    	$('#updateDetailsSuccess').hide();         
								               }
					         },
	error : function(jqXHR, textStatus, errorThrown) {
		if (jqXHR.status == "401"){
			getToken();
		    }
	}
	});} 
					}	
function  updatepatient(nameRegEn,nameAr,nationality,gender,mobile,dob,bloodgroup,entryDate,address,sponsor,occupation,
						worplace,marital,residency,residencyOther,governorate,update,occupationOth,district)  {
	if(ptcd=='' || ptcd==null){
		console.log("inside update patient");
		return;
	}
					$('#patUpdateCivilId').hide();
					$('#updateDetailsSuccess').hide();
                 var myJSONObj =JSON.stringify({  
				             "reqid":reqid,
				           	 "patcd":ptcd,
				             "patient":
				             {
				              "ptcd":ptcd,
                             "idnumber": idVal,"idtype": Idtype,"nameen": nameRegEn,
							"namear": nameAr,"nationality": "1","gender":gender,"residency": residency,"residencyOther":residencyOther,"entrydate":entryDate,"address":address,"governorate":governorate,"district":district,"birthdate":dob,
							"sponsorcid":sponsor,"patphone":mobile,"occupation":occupation,"occupationOth":occupationOth,"workplace":worplace,"maritalstatus":marital,"bloodgroup":bloodgroup}});
						$.ajax({
				               type: "POST",
				               url:context+"/apiResponse?method=updatepatient",
				               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
								contentType : "application/json",
								crossDomain : true,
								data:myJSONObj,	
								dataType : "json",		
				               success: function (data) {			                 
					                    if(data.code=="1"){
					                    	if(update=='C'){
					                    		$('#patUpdateCivilId').show();
					                    	}
                                            if(update=='O'){
                                            	$('#updateDetailsSuccess').show();	
					                    	}
					                      }
					                    if(data.code=="-2"){
					                    	$('#patUpdateCivilId').hide();
					                    	$('#updateDetailsSuccess').hide();
								               }
	},
	error : function(jqXHR, textStatus, errorThrown) {
		if (jqXHR.status == "401"){
		    }
	}
	});  
						getToken(); 
				} 
var recidencytext,occupationtext;
				function registerOther(){
					$('#manField').hide();
					$('#patManField').hide();
					 clearDetailsBasic();
					 var entryDateReg='';
					 var entryDateRegVar='';
					 var birthDateReg='';
					 var birthDateRegVar='';
					 var reg='O';
					 $('#residencyOther1').val('');
	                 $('#occupationOther1').val('');
					entryDateReg = $('#entryDateOther'). datepicker('getDate');  
					entryDateRegVar=$.datepicker.formatDate('dd/mm/yy', entryDateReg);
					birthDateReg = $('#dobOther'). datepicker('getDate');
					birthDateRegVar=$.datepicker.formatDate('dd/mm/yy', birthDateReg);
					Idtype=$('input[name="idType"]:checked').val();
					$('#nameOtherEn').val()
					idVal= $('#passportId').val();
			        $('#nameEn').text($('#nameOtherEn').val());
                	$('#nameAr').text($('#nameOtherAr').val());
                	var nationtext=$('#nationalityOther option:selected').text();
                	   if(nationtext.toString()=='Select'){
       			    	nationtext='';
       			    }
                    $('#nationality').text(nationtext);
                	var nationality=$('#nationalityOther').val();
                	nationalitycd=nationality;
                	var gendertext=$('#genderOther option:selected').text();
                	var districttext=$('#districtOther option:selected').text();
                	   if(districttext.toString()=='Select'){
                		   districttext='';
          			    }
             	   if((gendertext).indexOf('Select')!= -1){
             		  gendertext='';
    			    }
             	    $('#district').text(districttext);
                     var district=$('#districtOther').val();
                     districtcd=district;
                	$('#gender').text(gendertext);
                	var gender=$('#genderOther').val();
                	gendercd=gender;
                    var mobile = $(".patMobile").map(function(){ return $(this).val() }).get().join(',');
                    $('#mobile').text(mobile);
                	$('#dob').text(birthDateRegVar);
                	$('#bloodgroup').text($('#bloodgroupOther').val());
                	$('#entryDate').text(entryDateRegVar);
                	$('#address').text( $('#addressOther').val());
                	$('#sponsor').text($('#sponsorOther').val());
                	$('#worplace').text( $('#worplaceOther').val());
                	var maritaltext=$('#maritalOther option:selected').text();
              	    if(maritaltext.toString()=='Select'){
              		 maritaltext='';
     			    }
                	$('#marital').text(maritaltext);
                	var marital=$('#maritalOther').val();
                	maritalcd=marital;
                	recidencytext=$('#recidencyOther option:selected').text();
             	    if(recidencytext.toString()=='Select'){
             		  recidencytext='';
       			    }
             	   if(recidencytext.toString()=='Others'){
             		  recidencytext=$('#residencyOther1').val();
     			    }
             	    $('#recidency').text(recidencytext);
             	    var recidency=$('#recidencyOther').val();
             	   recidencycd= recidency;
             	   occupationtext=$('#occupationOther option:selected').text();
            	    if(occupationtext.toString()=='Select'){
            	    	occupationtext='';
      			    }
            	    if(occupationtext.toString()=='Others'){
            	    	occupationtext=$('#occupationOther1').val();
      			    }
            	    $('#occupation').text(occupationtext);
            	    var occupation=$('#occupationOther').val();
            	    occupationcd=occupation;
                	var governoratetext=$('#governorateOther option:selected').text();
              	    if(governoratetext.toString()=='Select'){
              	    	governoratetext='';
     			    }
                	$('#governorate').text(governoratetext);
                	var governorate=$('#governorateOther').val();	
                	governoratecd=governorate;
                	var residencyOther=$('#residencyOther1').val();
                	var occupationOth=$('#occupationOther1').val();
                	 if(gendertext == ''){
       				  $('#manField').show();
       			  	}
                	 if((Idtype =='G' && (nationtext == '' || ($('#nameOtherEn').val() == '') || ($('#nameOtherAr').val() == '') || gender == '' || birthDateRegVar == '' || governoratetext == '' 
                			 								|| district == '' || ($('#addressOther').val() == '') || maritaltext == '' || occupation == '' || patMobile0 == ''))
                			|| (Idtype=='U' &&  gender == '')
                			|| (Idtype =='P' && (nationtext == '' || ($('#nameOtherEn').val() == '') || ($('#nameOtherAr').val() == '') || gender == '' || birthDateRegVar == '' || governoratetext == '' || district == ''
                   												  || ($('#addressOther').val() == '') || maritaltext == '' || occupation == '' || patMobile0 == '')))                	{
                		$('#patManField').show();
                		$('#saveDetailsSuccess').hide();
                	 }else {
                		 regPatient(idVal,gender,nationality,governorate,marital,reg,district,recidency,residencyOther,occupation,occupationOth);
                    	 getToken(); 
                	 }
				}
				$('input[type=radio][name=idType]').change(function() {
					$('#patManField').hide();
				    if (this.value == 'U') {
				    	 $('#IDName').text('<fmt:message key="unknown"/>:');
				    	 $("#field_wrapper3").hide();
                		 $('#civilid').val(''); 
				    }
				    else if (this.value == 'P') {
				    	 $('#IDName').text('<fmt:message key="passport"/>:');
				    	 $('#docName').text('<fmt:message key="label.uploadPassportId"/>');
				    }
				    else if (this.value == 'G') {
               		 $('#IDName').text('<fmt:message key="gccID"/>:');
               		 $('#docName').text('<fmt:message key="label.uploadGccID"/>');
				    }
				})
		 $("#idTypeHis").keyup(function(event) {
		    if (event.keyCode === 13) {
		    	searchPatient();
		    }
 			});
	  function searchPatient() {
			$('#notifyhistory tbody').empty();
			 var id= $('#idTypeHis').val();
			 var myJSONObj =JSON.stringify({"idnumber":id,"ptcd":'',"idtype":'C'});
			 if(id != ""){
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=lstpatnotifhistory",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code == "1"){
					 var userDetails = '';var table1='' ;
					 var slNo =1;var notifyloc='';
					   var lang = '<%=response.getLocale().getLanguage()%>';
					 for(var i = 0; i < response.details.length; i++)
					 {
					     var id = response.details[i];
					     if(lang=='en'){
					    	 notifyloc=id.notifsender ;	 
					     }
					     if(lang=='en'){
					    	 notifyloc=id.notifsenderar ;	 
					     }
					       var reqid = id.reqid;
					       userDetails += '<tr>';
						   userDetails += '<td>' +slNo + '</td>';
		                   userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification('+id.notifid+')">' +id.notifid +'</a></td>';
		                   userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification('+id.notifid+')">' +id.patient.nameen +'</a></td>';
		                   userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification('+id.notifid+')">' +id.patient.namear +'</a></td>';
		                   userDetails += '<td>' +id.notifdate + '</td>';
		                   userDetails += '<td>' +notifyloc   + '</td>';
					 }
					table1 = $('#notifyhistory').append(userDetails);
					table1.dataTable();	
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
		 }); 
			 }
		}	 
		function deleteLab(){
			 $('#labdeletesuccess').hide();
			 var code= $('#labIDNew').val();
			 var rowno= $('#labRowNo').val();
			 var myJSONObj =JSON.stringify({"code":code,"type":ptcd});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deletelabtest",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
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
		function deleteRad(){
			 $('#raddeletesuccess').hide();
			 let code= $('#radID').val();
			 let row= $('#radRowNo').val();
			 var myJSONObj =JSON.stringify({"code":code,"type":ptcd});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deleteradiology",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#raddeletesuccess').show();
					 $('#radRow'+row).remove(); 
					 $('#deleteRadBtn').attr('disabled', true);
					 }
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
		 }); 
		}
		function deleteMedical(){
			 $('#medicaldeletesuccess').hide();
			 var code= $('#medicalID').val();
			 var row= $('#medicalRowNo').val();
			 var rowNo=row;
			 var myJSONObj =JSON.stringify({"code":code,"type":ptcd});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deleteMedTreatHistory",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#medicaldeletesuccess').show();
				     $("#medicalhistory tr").eq(rowNo).remove();
					 $('#deleteMedicalBtn').attr('disabled', true); 
					 }
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
		 }); 
		}
		function deletePpd(){
			 $('#ppddeletesuccess').hide();
			 let code= $('#ppdID').val();
			 let rowdeleteppd= $('#ppdRowNo').val();
			 var myJSONObj =JSON.stringify({"code":code,"type":ptcd});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deletePpdTest",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#ppddeletesuccess').show();
					 $('#ppdRow'+rowdeleteppd).remove();
					 $('#deletePpdBtn').attr('disabled', true);
					 }
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
		 }); 
		}
		function deletediseasehos(row){
			 $('#diseasedeletesuccess').hide();
			 var codedisease= $('#diseaseIDNew').val();
			 var rowdisease= $('#diseaseRowNo').val();
			// var rowNo=row;
			 var myJSONObj =JSON.stringify({"code":codedisease,"type":reqid});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deleteDiseases",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#deleteDiseasebtn').attr('disabled', true);
					 $('#diseasedeletesuccess').show();
					 $("#diseasetablehos  > tbody > tr:eq("+rowdisease+")").remove();
					 uniqueValues = {}; 
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
		 }); 
		}
		function getHospitalName(myJSONObj,phval){
			 $.ajax({
					type : "POST",
  				url : context+"/apiResponse?method=findHospitalsByType",
  				contentType : "application/json",
  				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
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
		      		                 $(div_data).appendTo('#hospName');
		                           });
		             	  
		             	  if(phval !=null && phval!=''){
		             		  $('#hospName').val(phval);
		             	  }
		             	  
		          		 },
				             error : function(jqXHR, textStatus, errorThrown) {
				     				if (jqXHR.status == "401"){
				     				    }
				     			}
				         });
		}
		$("#hospCat").change(function () {			
			 var value = this.value;
			 $("#hospName option").remove();
			  $("#hospName").append($("<option></option>")
	                    .attr("value", "0")
	                    .text("Select"));
			 var myJSONObj =JSON.stringify({"type":value});
			 if(value != ""){
				getHospitalName(myJSONObj,'');
			}
 		});
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
		$("#medicalResultName").change(function () {
			$('#medicalResultNameError').hide();
			 var value = this.value;
			 if(value == "")
	  			 $('#medicalResultNameError').show();         
			else $('#medicalResultNameError').hide();    
			
		});
		$("#hospName").change(function () {
			 $('#hospNameOther').val('');
			 var value = this.value;
			if(value == "22"){
	  			 $('#govhospNameOther').show();         
			} else {
				$('#govhospNameOther').hide();    
			}
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
		$("#occupationOther").change(function () {
			 $('#occupationOther1').val('');			
			 var value = this.value;
			if(value == "18"){
	  			 $('#occupationOtherPass').show();
	  			 $('#occupation').val('occupationOther1');
			} else {
				$('#occupationOtherPass').hide();
				$('#occupation').val('occupationOther');
			}
		});
		$("#subdiagnosisMain").change(function () {
			 $('#subdiagnosisother1').val('');			
			 var value = this.value;
			if(value == "12"){
	  			 $('#subdiagnosisother').show();         
 			} else {
 				$('#subdiagnosisother').hide();   
 				
 			}
 		});
		 $('#radTestlistResult').on('change', '.abnormalList', function(){
			 var row = $(this).closest('tr');
		      var cellValue =  row.find('td:eq(11)').text();
			 $("#otherabnormaldiseasevalue"+cellValue).val('');
			  var selectedValue = $(this).find('option:selected').text();
			  var selectedKey = $(this).find('option:selected').val();		     
		      if(selectedKey == "4" || selectedValue == "others"){
		    	  $("#otherabnormaldiseasevalue"+cellValue).prop('disabled', false);
		    	  } else {
		    	  $("#otherabnormaldiseasevalue"+cellValue).prop('disabled', true);
			}
		});
				
		 $('#radTestlistResult').on('change', '.radresults', function(){
		  var selectedValue = $(this).find('option:selected').text();
		     var row = $(this).closest('tr');
		      var cell1Value = row.find('td:eq(11)').text();
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
		 
		$("#riskFactorPRC").change(function () {
			 $('#riskFactorPRCother1').val('');			
			 var value = this.value;
			if(value == "17"){
	  			 $('#riskFactorPRCother').show();         
			} else {
				$('#riskFactorPRCother').hide();    
			}
		});
		$("#subdiagnosisHos").change(function () {
			 $('#subdiagnosisHosother1').val('');	
			 var value = this.value;
			if(value == "12"){
	  			 $('#subdiagnosisHosother').show();         
			} else {
				$('#subdiagnosisHosother').hide();    
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
		$("#daignosisHos").change(function () {
				$("#subdiagnosisHos").attr('disabled', false);
		        var value = this.value;
		        $('#subdiagnosisHosother').hide();
		        $('#subdiagnosisHosother1').val('');
		        var myJSONObj =JSON.stringify({"type": value});
		        getSubdiagnosis('Hos',myJSONObj,'') ;
		        if(value=='3'){
              	  $("#subdiagnosisHos").attr('disabled', true);
                }
		});	
		$("#recidencyReg").change(function () {
			$("#recidencyRegOther1").val('');
			 var value = this.value;
			if(value == "5"){
	  			 $('#recidencyRegOther').show(); 
	  			$('#recidency').val('recidencyRegOther1');
			} else {
				$('#recidencyRegOther').hide();    
				$('#recidency').val('recidencyReg');
			}
		});
		$("#occupationReg").change(function () {
			$("#occupationRegOther1").val('');
			 var value = this.value;
			if(value == "18"){
	  			 $('#occupationRegOther').show();
	  			 $('#occupation').val('occupationRegOther1');
			} else {
				$('#occupationRegOther').hide();
	  			$('#occupation').val('occupationReg');
			}
		});
		function getAbnormalList(countAbnormal){	
			$(lstabnormalresultsdiv_data).appendTo('#abnormallist'+countAbnormal);
		  
		}

		
		function getAbnormalResult(countAbnormal,abnormallist,abnormalResult){	
			$(lstabnormalresultsdiv_data).appendTo('#abnormallist'+countAbnormal);
			 if(abnormallist != '' && abnormalResult != ''){
               	 $('#abnormallist'+countAbnormal).val(abnormalResult);
           	 }
		   
		}
		function getSubdiagnosis(val,myJSONObj,subdiagVal){
			  $("#subdiagnosis"+val+" option").remove();
			  $("#subdiagnosis"+val).append($("<option></option>")
	                    .attr("value", "0")
	                    .text("Select")); 

       $.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=getsubfortbdiagnosis",
		    			contentType : "application/json",
		    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
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

	     $("#governorateOther").change(function () {
	    	  var value = this.value;
		      var myJSONObj =JSON.stringify({"code": value});
		      if(value !=""){
			      getDistrictVal('Other',myJSONObj,'','') ; 
				 }
		 });
		 
	     $("#governorateReg").change(function () {
	    	 var value = this.value;
		        var myJSONObj =JSON.stringify({"code": value});
		        if(value !=""){
			        getDistrictVal('Reg',myJSONObj,'','') ; 
					 }
		  });
	     
	   function  getDistrictVal(val,myJSONObj,districtcomp,districtval){		   
		   $("#district"+val+" option").remove();
		   $("#district"+val).append($('<option>', {
       	    value: " ",
       	   text:'<fmt:message key="label.select" />'
       	}));
		              $.ajax({
				               type: "POST",
				               url:context+"/apiResponse?method=lstgovdistricts",
				    			contentType : "application/json",
				    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				    			crossDomain : true,
				    			data:myJSONObj,
				    			dataType : "json",		
				                success: function (datahere) {			                 
				               	 var response = JSON.parse(JSON.stringify(datahere));	
				                  	   $.each(response,function(i,response)
				    	 		            	 {
				    		   	       	          if(lang=='en'){
				    		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
				    		   	       	          }
				    		   	       	          else{
				    		   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
				    		   	   	       	          }
				    	 		                  $(div_data).appendTo($("#district"+val)); 
				    	                       });
				                   if(districtcomp != '' && districtval != ''){
					                  	 $('#'+districtcomp).val(districtval);
				                  	 }
				                },
				             error : function(jqXHR, textStatus, errorThrown) {
				     				
				     				if (jqXHR.status == "401"){
				     					
				     				    }
				     			}
				         }); 
	   }
		if (window.File && window.FileReader && window.FileList && window.Blob) {
			document.getElementById('fileCivilId0').addEventListener('change', getBase64, false);
		 } 
		    function getBase64(evt) {
		    $('#civilFileExtError').hide();	
		    $('#civilFileUploadError').hide();
			 var f = evt.target.files[0]; 
			 var ext='';
			 var inp = document.getElementById('fileCivilId0');
		     if(f.size > 2000000) {
		    	 $('#civilFileUploadError').show();
		    	 $('#civilFileExtError').hide();
		         $('#fileCivilId0').val('');
		       }
		     else{
			  var count = inp.files.length;
			  for (var i = 0; i < inp.files.length; ++i) {
			    var num = i + 1;
			    var name = inp.files.item(i).name;
			    ext = name.split('.');
			    ext = ext[ext.length - 1];
			  }
			  if(ext!='txt'){
			      var reader = new FileReader();
				   reader.readAsDataURL(f);
				   reader.onload = function () {
					 base64StringCivil =reader.result;
				   };
				   reader.onerror = function (error) {
				   };
		     }
		     else{
		    	 $('#civilFileUploadError').hide();
		    	 $('#civilFileExtError').show();
		         $('#fileCivilId0').val('');	 
		     }
			}
		    }
		 function getBase64Pass(evt) {
			 $('#passFileUploadError').hide();
			 $('#passFileExtError').hide();
			 var f = evt.target.files[0]; 
			 var ext='';
			 var inp = document.getElementById('filePassport');
			 if(f.size > 2000000) {
		    	 $('#passFileUploadError').show();
		    	 $('#passFileExtError').hide();
		         $('#filePassport').val('');
		       }
			 else{
			  var count = inp.files.length;
			  for (var i = 0; i < inp.files.length; ++i) {
			    var num = i + 1;
			    var name = inp.files.item(i).name;
			    ext = name.split('.');
			    ext = ext[ext.length - 1];
			   
			  }
			  if(ext!='txt'){
                   var reader = new FileReader();
				   reader.readAsDataURL(f);
				   reader.onload = function () {
					   base64StringPass =reader.result;
				   };
				   reader.onerror = function (error) {
				   };
			 }
		     else{
		    	 $('#passFileUploadError').hide();
		    	 $('#passFileExtError').show();
		         $('#filePassport').val('');	 
		     }
		 }
		 }	
		 function delete_ICDRow(row)
		    {
			 $('#ICDNew').val(row.closest("tr").find('td:eq(2)').text());
			 var val=$('#ICDVal').val();
			 if(val=='update'){
			 $('#deleteICDTest').modal('show');	
			}
			else{
				row.closest('tr').remove();	
			}
		    }
		function deleteICD(){
			var exval=$('#ICDNew').val();
			 $('#labICDDeletesuccess').hide();
			 var myJSONObj =JSON.stringify({"code":exval,"type":reqid});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deletediagnosis",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
						var ICDValSearch=$('#ICDValSearch').val();
						var ICDValCount=$('#ICDValCount').val();
						$('#ICDrowId'+ICDValSearch+ICDValCount).remove();
						$('#labICDDeletesuccess').show();
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
		 }); 
		}	
	function delete_labrow(row)
		    {
			 let exid=row.closest("tr").find('td:eq(1)').text(); 
			 let rowcnt=row.closest("tr").find('td:eq(9)').text();
			 $('#labRowNo').val(row.closest("tr").find('td:eq(9)').text());
			 $('#labIDNew').val(row.closest("tr").find('td:eq(1)').text());
			 labtestName=row.closest("tr").find('td:eq(2)').text();
			 if(exid==''){
			  $('#labrow'+rowcnt).remove();
			  labtest= $.grep(labtest, function(dt) {
				  return dt.value != labtestName;
				});
			 }
			 if(exid!=''){
			 $('#deleteLabData').modal('show');	
			 $( "#deleteLabBtn" ).attr( "disabled", false ); 
		    }
		    }
	function delete_diseaserowhos(row)
    {	    	
		 var extypedisease=row.closest("tr").find('td:eq(4)').text(); 
		 $('#diseaseRowNo').val(row.closest("tr").find('td:eq(3)').text());
		 $('#diseaseIDNew').val(row.closest("tr").find('td:eq(4)').text());
		 if(extypedisease=='null'){
		 row.closest('tr').remove();
		 uniqueValues = {};
		 }
		 if(extypedisease!='null'){
			 $('#deleteDiseasebtn').attr('disabled', false);
			 $('#deleteDiseasehos').modal('show');	
	    }
    }
	function delete_assigneesrowhos(row)
    {	  
		 row.closest('tr').remove();
		 uniqueValues = {};
    }
	function addAssignees(){
		 var assigneesDetailscount = 0;
       	 var  assigneesDetails,table1='';
       	 var multipleAssignees = $("#multipleAssignees option:selected").text();
     	  	assigneesDetailscount++;
     	  	assigneesDetails += '<tr>';
     	  	assigneesDetails += '<td>' + multipleAssignees + '</td>';
     	  	assigneesDetails += '<td><a href="javascript:void(0)" class="remove_buttonLab c_point" onclick ="delete_assigneesrowhos($(this))"><img src="img_new/delete.png" title="delete" title="Delete"></a></td>';
     	   	assigneesDetails += '</tr>';
			$('#assigneesTable').append(assigneesDetails);
 }
	function createTableDisease(disease,diseaseVal){
		 var diseaseDetailscount = 0;
        $.each(disease, function(i, item) {   		
        	 var  diseaseDetails,table1='';
        	  var value=item.type;
      	  	  var diseaseDetailsrowNum=diseaseDetailscount;
      	  	diseaseDetailscount++;
   	diseaseDetails += '<tr>';
   	diseaseDetails += '<td class="hidden">' + item.code  + '</td>';
   	diseaseDetails += '<td>' +item.name + '</td>';
   	diseaseDetails += '<td><a href="javascript:void(0)" class="remove_buttonLab c_point" onclick ="delete_diseaserow'+diseaseVal+'($(this))"><img src="img_new/delete.png" title="delete" title="Delete"></a></td>';
	diseaseDetails += '<td class="hidden">' +diseaseDetailsrowNum  + '</td>';
   	diseaseDetails += '<td class="hidden">' +item.exid  + '</td>';
	                  	diseaseDetails += '</tr>';
			           $('#diseasetable'+diseaseVal).append(diseaseDetails);

        });    
  } 			  		var uniqueLabValues = {};
		 function multipleCheck(){
			 let labtest1=[];			  	
			 	$("input:checkbox[name='labtestcheck']:checked").each(function(){
			 		labtest1.push({
		  				value: $(this).attr("value"), //testname
		  			    testId: $(this).attr("id"), //testId 
		  			  	requester: '',
		  			  	resultId:'',
		  			    requestedBy:'',
		  			    requestedDate:'',
		  			  	drugsensitive: '',
		  			    resultTypeId:$(this).attr("lctype"),
		  			    exId:'',
		  			    exDate:''	  			
		  			  });
		  		});		
			 	verifyExistingLabAndAdd(labtest1);
			 }
		 function verifyExistingLabAndAdd(labtest1){			 
				$('#addLabTest tbody tr').each(function() {
					   let exId = $(this).find("td:eq(1)").text().trim();
		               let testNameId = $(this).find("td:eq(0)").text().trim();
		               let rowNo = $(this).find("td:eq(9)").text().trim();
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
					createTable(labtest1,"create");	
				 } 
		 $(document).on('click', '#hosdisease', function(){
			 multipleCheckDisease("hos");
		    });
		 $(document).on('click', '#pcrdisease', function(){
			 multipleCheckDisease("prc");
		    });
	  		var uniqueValues = {};
		 function multipleCheckDisease(diseaseVal){
			  	var disease=[];
			  	 var uniqueArray = [];
			  		$("input:checkbox[name='diseasetestcheck']:checked").each(function(){
			  			disease.push({
			  			    name: $(this).attr("value"),
			  			    code: $(this).attr("dataid"),
			  			    exid: null
			  			  });
			  		});		  		 
			  		$.each(disease, function(index, item) {
			  		if (!uniqueValues.hasOwnProperty(item.code)) {
			  		uniqueValues[item.code] = item.name;
			  		        uniqueArray.push(item);
			  		    }
			  		});
			  		createTableDisease(uniqueArray,diseaseVal);
			 }
		 var countLab = 0; 

		 function createTable(labtest,create){
			      let  userDetails = ''; 
			             $.each(labtest, function(i, item) {
			            	 countLab++;
			            	 let rowNum=countLab; lab = "lab"; div_data = '' ; resenter=''; resdate='';
				                   let result = '' ; resultFrom = ''; resultTo = '';updatedDate = ''; updatedBy = '',testRequestedBy='',testRequestedOn=''; 
				                   let myJSONObj = JSON.stringify({"reqid": reqid,"regid": ptcd,"procid":item.exId,"proctype":lab});
				                   if(item.requestedBy != null){
				                	   resenter=item.requestedBy;
				                   }if(item.requestedDate != null){
				                	   resdate=item.requestedDate;
				                   }
				                   if(item.labRequestedBy != null){
				                	   testRequestedBy=item.labRequestedBy;
				                   }
				                   if(item.labRequestedOn != null){
				                	   testRequestedOn=item.labRequestedOn;
				                   }
				                   
			            	   userDetails = '<tr id=labrow'+ countLab+'>';
		                       userDetails += '<td class="hidden" >' +item.testId + '</td>'; //code //0
		                       userDetails += '<td class="hidden">' +item.exId+ '</td>'; //exid  //1
			                   userDetails += '<td>' + item.value  + '</td>';
			                   userDetails += '<td><select class="form-control" id="pcrlabresults' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
			                   userDetails += '<td><input  type="text" class="form-control labdatepicker" readonly="readonly" style="background:white;"  id="labDate' + rowNum + '""></td>';
		                	   userDetails += '<td><select class="form-control" id="drugsensitive' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>'; 
			                   userDetails += '<td><select class="form-control" id="requester' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
			                   userDetails += '<td><a href="javascript:void(0)" class="remove_buttonLab c_point" onclick ="delete_labrow($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
			                   if(item.exId != null && item.exId != ""){
				                   userDetails += '<td><a href="javascript:void(0)" class="update_buttonLab c_point" onclick="updateLab($(this),'+rowNum+','+lab+')"><img src="img/update.png" title="update"></a></td>';
			                   }else {
			                	   userDetails += '<td></td>' ;
			                   }
			                   userDetails += '<td class="hidden">' + rowNum + '</td>';	
			                   if(item.exId != null && item.exId != ""){
				                   userDetails += '<td><a href="javascript:void(0)"  class="c_point" onclick="printLab($(this),'+rowNum+')"><img src="img/p.png" title="print"></a> &nbsp;';
				                   userDetails += '<div class="float-right"><img src="img/information.png"   id="popover_info_lab'+rowNum
				                   +'" data-placement="top"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_lab'
				                   +rowNum+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'
				                   + testRequestedBy +'</span></li><li class=" listyle ml-3" >Test Requested On :'
				                   + testRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'
				                   + resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'
				                   + resdate +'</span></li></ul></div></td>';
				                   userDetails += '<td><a href="javascript:void(0)" class="c_point" ><a class="btn btn-info"><i class="fa fa-upload" onclick="uploadfiles('+item.exId+','+lab+')"/></i></a>'
				                   userDetails += '&nbsp;<a class="btn btn-info"><i class="fa fa-download" onclick="viewfiles('+item.exId+','+lab+')"/></i></a></i></a></td>';
			                   }else {
			                	   userDetails += '<td></td>' 
			                   }
			                   
			                   userDetails += '</tr>';
			                   $('#addLabTest').append(userDetails)
			                   getLabRequester(rowNum,item.requester);
			                   getLabDrugResistance(rowNum,item.drugsensitive);
				               getLabResult(rowNum,item.resultId,item.resultTypeId);
				               $('#labDate'+rowNum).val(item.exDate);
			                   $('#popover_info_lab'+rowNum).popover({
						             html: true, trigger: 'click',   sanitize: false,
						             content: function() {
						            	 $('#popover_content_info_lab'+rowNum).append(getLogsForUpdate(myJSONObj,'trLabRow'+rowNum));
						                  return $('#popover_content_info_lab'+rowNum).html();
						             }
								});
			            });
			             $(".labdatepicker").datepicker({
							changeMonth: true,
							changeYear: true,
							yearRange: "1930:2060",
							dateFormat: 'dd/mm/yy',
							maxDate: '+0d'
						});
		 }
	     function multipleCheckRad(){
	    		let radtestData=[];
		  		$("input:checkbox[name='radtestcheck']:checked").each(function(){
		  			radtestData.push({
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
		  			    	abnormalOth:''
		  			  });
		  	});
		  		verifyExistingRad(radtestData);
	     }
	     function verifyExistingRad(radtestData1){						 
				$('#radTestlistResult tbody tr').each(function() {
					   let exId = $(this).find("td:eq(1)").text().trim();
		               let testNameId = $(this).find("td:eq(0)").text().trim();
		               let rowNo = $(this).find("td:eq(11)").text().trim();
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
				 createTableRad(radtestData1);	
			 }
	     var  medicalhistory ={}
	     function addMedical(){
	    	 if( ($('#medicalExaminationType').val() == '') || ($('#medicalResultName').val() == '')){
	    		 $('#medicalExaminationTypeError').show();
	    		 $('#medicalResultNameError').show();
	    		 }
	    	 else{	$('#medicalExaminationTypeError').hide();
	    		 $('#medicalResultNameError').hide();
	 	    var medicaltreatment=[];
	 	    let medTreatDate = $('#medicalExaminationDate').val()!='null'?$('#medicalExaminationDate').val():'';
	 	   	jsonObj = {
						"typecode":$('#medicalExaminationType').val(),
						"typecodeName":$('#medicalExaminationType option:selected').text(),
					    "resultname":$('#medicalResultName').val(),
					    "result":$('#medicalResult').val(),
					  	"notes":$('#medicalNote').val(),
					  	"doctorname":$('#medicalDoctor').val(),
					  	"exdate":$('#medicalExaminationDate').val(),
					  	"exid":null
			}
	 	   medicaltreatment.push(jsonObj);
	 		  		createTableMedicalHistory(medicaltreatment);
	 		  	 $('#add_medicaltreatment').modal("hide");
	 		  	clearMedicalVal();
	 	}	    	 
	    }
	     var medcount = 0;
	     function createTableMedicalHistory(medicaltreatment){
		      var  userDetails='',table1=''; 
		      var slNo=1,result='';
       	   	  var count=0;
		          $.each(medicaltreatment, function(i, item) {
		        	  let medical = "med";
		        	  userDetails='';
		        	  medcount++;
		            	    slNo = slNo + 1;
		            	   userDetails += '<tr>';
		            	  userDetails += '<td class="hidden">' +slNo + '</td>';
		                   userDetails += '<td><select class="form-control" id="extype'+medcount+'"><option value="">Select</option></select></td>';
		                   userDetails += '<td><input value="' +item.resultname+'" type="text" class="form-control" id="resultname'+medcount+'"></td>';
		                   userDetails += '<td><input value="' +item.result  + '" type="text" class="form-control" id="result'+medcount+'"></td>';
		                   if(item.exdate != null && item.exdate != ""){
			                   userDetails += '<td><input value="' +item.exdate  + '" type="text" class="form-control meddatepicker" readonly="readonly"   style="background:white;"  id="exdate'+medcount+'"></td>';
      						}
      						else {
      							let exdate = '';
      							userDetails += '<td><input value="' +exdate  + '" type="text" class="form-control meddatepicker" readonly="readonly"   style="background:white;"  id="exdate'+medcount+'"></td>';
      						}
		                   userDetails += '<td><input value="' +item.doctorname  + '" type="text" class="form-control" id="doctorname'+medcount+'"></td>';
		                   userDetails += '<td><textarea maxlength="300" class="form-control" id="notes'+medcount+'"  rows="2" cols="50">'+item.notes+'</textarea></td>';
                  	       userDetails += '<td><a href="javascript:void(0)" class="remove_buttonRad c_point"  onclick ="deletemedical($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
                  	         if(item.exid != null && item.exid != "null"){
                  	        	 $('#medHistUpdate').show();
                  	       userDetails += '<td><a href="javascript:void(0)"  class="update_buttonRad c_point" onclick="updateMedicalHistory($(this),'+medcount+',\'' + medical + '\')"><img src="img/update.png" title="update"></a></td>';
		                   }else{
		                	   $('#medHistUpdate').show();
		                	   userDetails += '<td></td>'; 
		                   }
                  	       userDetails += '<td class="hidden">' +medcount+ '</td>';//9
		                   userDetails += '<td class="hidden">' +item.exid+ '</td>';//10
		                   userDetails += '</tr>';
		                   table1 = $('#medicalhistory').append(userDetails);
		                   $(medResponse).appendTo('#extype'+medcount);
		                   $('#extype'+medcount).val(item.typecode)
					});
		          $(".meddatepicker").datepicker({
		      		changeMonth: true,
		      		changeYear: true,
		      		yearRange: "1930:2060",
		      		dateFormat: 'dd/mm/yy',
		      		maxDate: '+0d'
		      	});
	     
		              }
        function deletemedical(row)
		    {	
			var exid=row.closest("tr").find('td:eq(10)').text(); 
	   		 $('#medicalRowNo').val(row.closest("tr").find('td:eq(9)').text());
			 $('#medicalID').val(row.closest("tr").find('td:eq(10)').text());			
			if(exid=='null'){
			 row.closest('tr').remove();
			}
			if(exid!='null'){
			 $('#deleteMedicalBtn').attr('disabled', false);
			 $('#deleteMedicalData').modal('show');	
		    }
		    }
	     var  ppdtest ={}
	     $("#addppd").on('click',function() {	    	
	    	 $('#ppdupdate').hide(); 
	    	 if( ($('#updatetypeoftest').val() == '') || ($('#updatereasonoftest').val() == '')){
	    		 $('#updatetypeoftestError').show();
	    		 $('#updatereasonoftestError').show(); 
	    		 }
	    	 else{
	    	$('#updatetypeoftestError').hide();$('#updatereasonoftestError').hide(); 
	 	    var ppdtest=[];
	 	   	jsonObj = { "testTypeName":$('#updatetypeoftest').find(":selected").text(),
					    "testReasonName":$('#updatereasonoftest').find(":selected").text(),
					    "ppd1TestDate":$('#updatePPDTestDate1').val()!= null ? $('#updatePPDTestDate1').val():'',
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
					    "ppd2docinterpret":$('#ppd2docinterpret').val()
			}
	 	    	ppdtest.push(jsonObj);
	 		  		createTablePPD(ppdtest);
	 		  	  $('#update_ppdtest').modal('hide');
	 		  	 clearPPDVal();
	 		}
	    	
	 	});
	     

	     var countPD=0;
	     function createTablePPD(ppdtest){
		      var  userDetails,table1='';
		      var slNo=1,result='';
		          $.each(ppdtest, function(i, item) {
		        	  countPD++;
		        	  let countPPD=countPD;
		            	    let resenter=''; ppd= "ppd"
			                   let resdate='',ppdRequestedBy='',ppdRequestedOn='';
		            	 
			                   let myJSONObj = JSON.stringify({"reqid": reqid,"regid": ptcd,"procid":item.ppdId,"proctype":ppd});
			                   if(item.resultenteredby != null){
			                	   resenter=item.resultenteredby;
			                   }if(item.resultentereddt != null){
			                	   resdate=item.resultentereddt;
			                   }
			                   if(item.testRequestedby != null){
			                	   ppdRequestedBy=item.testRequestedby;
			                   }
			                   if(item.testrequestedon != null){
			                	   ppdRequestedOn=item.testrequestedon;
			                   }
		            	   userDetails = '<tr id=ppdRow'+countPPD + '>';
		                   userDetails += '<td id=testtypeval'+countPPD+'>' +item.testTypeName  + '</td>';
		                   userDetails += '<td id=testReasonNameval'+countPPD+'>' +item.testReasonName  + '</td>';
		                   userDetails += '<td><a href="javascript:void(0)" class="c_point"  onclick ="viewppdtest($(this),'+ppd+')"><img src="img/1 1.png" title="view"></a></td>';
 		                   userDetails += '<td><a href="javascript:void(0)" class="remove_buttonRad c_point"  onclick ="deleteppdtest($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
		                   userDetails += '<td class="hidden" id=ppd1TestDateval'+countPPD+'>' +item.ppd1TestDate+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd2TestDateval'+countPPD+'>' +item.ppd2TestDate+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd1ReadingDateval'+countPPD+'>' +item.ppd1ReadingDate+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd2ReadingDateval'+countPPD+'>' +item.ppd2ReadingDate+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd1Readingval'+countPPD+'>' +item.ppd1Reading+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd2Readingval'+countPPD+'>' +item.ppd2Reading+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd1Resultval'+countPPD+'>' +item.ppd1Result+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd2Resultval'+countPPD+'>' +item.ppd2Result+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd1Notesval'+countPPD+'>' +item.ppd1Notes+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd2Notesval'+countPPD+'>' +item.ppd2Notes+ '</td>';
		                   userDetails += '<td class="hidden" id=testTypeval'+countPPD+'>' +item.testType+ '</td>';
		                   userDetails += '<td class="hidden" id=testReasonIdval'+countPPD+'>' +item.testReasonId+ '</td>';
		                   userDetails += '<td class="hidden" id=ppdIdval'+countPPD+'>' +item.ppdId+ '</td>';
		                   userDetails += '<td class="hidden">' +countPPD+ '</td>';
		                   if(item.ppdId != null && item.ppdId != ""){
		                   userDetails += '<td><a href="javascript:void(0)"  class="c_point" onclick="printPPD($(this),'+countPPD+')"><img src="img/p.png" title="print"></a> &nbsp;<div class="float-right"><img src="img/information.png"   id="popover_info_ppd'+countPPD+'" data-placement="top"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_ppd'+countPPD+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'+ ppdRequestedBy +'</span></li><li class=" listyle ml-3" >Test Requested On :'+ ppdRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'+ resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'+ resdate +'</span></li> </ul>   </div></td>';
		                   }else {
		                	   userDetails += '<td></td>'; 
		                   }
		                   userDetails += '<td class="hidden" id=ppd1docinterpret'+countPPD+'>' +item.ppd1docinterpret+ '</td>';
		                   userDetails += '<td class="hidden" id=ppd2docinterpret'+countPPD+'>' +item.ppd2docinterpret+ '</td>';
		                   if(item.ppdId != null && item.ppdId != ""){
		                	   userDetails += '<td><a href="javascript:void(0)" class="c_point" ><a class="btn btn-info"><i class="fa fa-upload" onclick="uploadfiles('+item.ppdId+','+ppd+')"/></i></a>'
			                   userDetails += '&nbsp;<a class="btn btn-info"><i class="fa fa-download" onclick="viewfiles('+item.ppdId+','+ppd+')"/></i></a></i></a></td>';
			            	}else {
			                	   userDetails += '<td></td>'; 
			               }
		                   userDetails += '</tr>';
		                   $('#ppdtestResult').append(userDetails); 
		                   $('#popover_info_ppd'+countPPD).popover({
		                	   	 html: true, trigger: 'click',   sanitize: false,
					             content: function() {
					            	 $('#popover_content_info_ppd'+countPPD).append(getLogsForUpdate(myJSONObj,'trPpdRow'+countPPD));
					                 return $('#popover_content_info_ppd'+countPPD).html();
					             }
							});
					});
		     }
		 var radtestName='';
		 function viewppdtest(row,procType)
		    {			 
			 $('#update_ppdtest').modal('show');
			 $('#updatetypeoftest').prop('disabled', true);
			 $('#updatereasonoftest').prop('disabled', true);
			 $('#updateppdbutton').show();
			 $('#rowppdid').val(row.closest("tr").find('td:eq(17)').text());
			 $('#updateTest').val(procType);
			let ppdid =  $('#ppdid').val(row.closest("tr").find('td:eq(16)').text());
			$('#exampleModalLongTitleUpdate').show();
			$('#exampleModalLongTitleAdd').hide();
			$('#addppd').hide();$('#ppdupdate').hide();		
				let test =  $('#updatetypeoftest').val(row.closest("tr").find('td:eq(14)').text());
				 $('#updatereasonoftest').val(row.closest("tr").find('td:eq(15)').text()=='null'?'':row.closest("tr").find('td:eq(15)').text());
				 $('#updatePPDTestDate1').val(row.closest("tr").find('td:eq(4)').text()=='null'?'':row.closest("tr").find('td:eq(4)').text());
				 $('#updatePPDTestDate2').val(row.closest("tr").find('td:eq(5)').text()=='null'?'':row.closest("tr").find('td:eq(5)').text());
				 $('#updatePPDReadingDate1').val(row.closest("tr").find('td:eq(6)').text()=='null'?'':row.closest("tr").find('td:eq(6)').text());
				 $('#updatePPDReadingDate2').val(row.closest("tr").find('td:eq(7)').text()=='null'?'':row.closest("tr").find('td:eq(7)').text());
				 $('#updateppdreading1').val(row.closest("tr").find('td:eq(8)').text()=='null'?'':row.closest("tr").find('td:eq(8)').text());
				 $('#updateppdreading2').val(row.closest("tr").find('td:eq(9)').text()=='null'?'':row.closest("tr").find('td:eq(9)').text());
				 $('#updateppdresult1').val(row.closest("tr").find('td:eq(10)').text()=='null'?'':row.closest("tr").find('td:eq(10)').text());
				 $('#updateppdresult2').val(row.closest("tr").find('td:eq(11)').text()=='null'?'':row.closest("tr").find('td:eq(11)').text());
				 $('#updateppdnotes1').val(row.closest("tr").find('td:eq(12)').text()=='null'?'':row.closest("tr").find('td:eq(12)').text());
				 $('#updateppdnotes2').val(row.closest("tr").find('td:eq(13)').text()=='null'?'':row.closest("tr").find('td:eq(13)').text());
				 $('#ppd1docinterpret').val(row.closest("tr").find('td:eq(19)').text()=='null'?'':row.closest("tr").find('td:eq(19)').text());
				 $('#ppd2docinterpret').val(row.closest("tr").find('td:eq(20)').text()=='null'?'':row.closest("tr").find('td:eq(20)').text());
				 if($('#updatetypeoftest').val() == "1"){
		  			 $('#hideppd2').show();         
				} else {
					$('#hideppd2').hide();    
				}
		    }
		 function deleteppdtest(row)
		    {	
			 $('#ppddeletesuccess').hide();
			let ppdid=row.closest("tr").find('td:eq(16)').text(); 
			 $('#ppdID').val(row.closest("tr").find('td:eq(16)').text());			
			 $('#ppdRowNo').val(row.closest("tr").find('td:eq(17)').text());
			 let rowNo = row.closest("tr").find('td:eq(17)').text();
			if(ppdid=='null'){
				$('#ppdRow'+rowNo).remove();
			}
			if(ppdid!='null'){
			 $('#deletePpdData').modal('show');
			 $('#deletePpdBtn').attr('disabled', false);
		    }
		    }
		 function delete_radrow(row)
		    {		        
			 let exid=row.closest("tr").find('td:eq(1)').text(); 
			 $('#radID').val(row.closest("tr").find('td:eq(1)').text());
			 let rowNo = row.closest("tr").find('td:eq(11)').text();
			 $('#radRowNo').val(row.closest("tr").find('td:eq(11)').text());
			 radtestName=row.closest("tr").find('td:eq(2)').text();
			 if(exid==''){
				 $('#radRow'+rowNo).remove();
			 }
			 if(exid!=''){
			 $('#deleteRadData').modal('show');
			 $('#deleteRadBtn').attr('disabled', false);
		    }
		    } 
		 $("#requesterRad").on('click',function(){
			 var currentRow=$(this).closest("tr");
			
		});
           function createTableRad(radtest){
			  let  userDetails='';
			  $.each(radtest, function(i, item) {
           	   countRad++;
           	   let count=countRad;rad = "rad",testRequestedBy='',testRequestedOn='';		            	    
           	   let resenter='';
               let resdate='';
               let myJSONObj = JSON.stringify({"reqid": reqid,"regid": ptcd,"procid":item.exId,"proctype":rad});
			   if(item.requestedBy != null){
				resenter=item.requestedBy;
			   }
			   if(item.requestedDate != null){
				resdate=item.requestedDate;
			   }
			   if(item.radRequestedBy != null){
				   testRequestedBy=item.radRequestedBy;
			   }
			   if(item.radRequestedOn != null){
				   testRequestedOn=item.radRequestedOn;
			   }
			  /*  radRequestedBy:raddata.testRequestedby,
 			   	radRequestedOn:raddata.testrequestedon, */
 			   	
        	   userDetails = '<tr id=radRow'+count+'>';
               userDetails += '<td class="hidden">' +item.testCode+ '</td>'; //testId 0
               userDetails += '<td class="hidden">' +item.exId+ '</td>';//exid 1
               userDetails += '<td >' +item.value  + '</td>';
               if (item.value == "Other"){
            	   userDetails += '<td><input  type="text" class="form-control radresults" name ="radresults" id="radresults'+count+'"></td>'; 
               }else {
                userDetails += '<td><select class="form-control radresults"  name ="radresults" id="radresults'+count+'"> <option selected="selected" value="">Select</option></select></td>';
               }
               userDetails += '<td><select class="form-control abnormalList" name= "abnormalList" id="abnormallist'+count+'"><option selected="selected" value="">Select</option></select></td>';
               userDetails += '<td><input  type="text" class="form-control" name ="radresults"  id="otherabnormaldiseasevalue'+count+'"></td>';
               userDetails += '<td><textarea  class="form-control"  maxlength="300" id="notesRad'+count+'"  rows="2" cols="50"></textarea></td>';
               userDetails += '<td><input  type="text" class="form-control  raddatepicker"  readonly="readonly" style="background:white;" id="radDate'+count+'"></td>';
               userDetails += '<td><select class="form-control" id="requesterRad'+count+'"> <option selected="selected" value="">Select</option></select></td>';
               userDetails += '<td><a href="javascript:void(0)" class="remove_buttonRad c_point"  onclick ="delete_radrow($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
               if(item.exId != null && item.exId != ""){
                userDetails += '<td><a href="javascript:void(0)"  class="update_buttonRad c_point" onclick="updateRad($(this),'+count+','+rad+')"><img src="img/update.png" title="update"></a></td>';
               }else {
            	   userDetails += '<td></td>';
               }
               userDetails += '<td class="hidden">' +count+ '</td>'; // rowcount 11
               if(item.exId != null && item.exId != ""){
               userDetails += '<td><a href="javascript:void(0)"  class="c_point" onclick="printRad($(this),'+count+')"><img src="img/p.png" title="print"></a> &nbsp;<div class="float-right"><img src="img/information.png"   id="popover_info_radiology'+count+'" data-placement="left"  class="c_point" width="25" height="25" /></div><div id="popover_content_info_radiology'+count+'" style="display: none"><ul class="list-group_2" style=""><li class=" listyle ml-3" >Test Requested By :'+ testRequestedBy +'</span></li><li class=" listyle ml-3" >TestRequested On :'+ testRequestedOn +'</span></li><li class=" listyle ml-3" >Result Entered By :'+ resenter +'</span></li><li class=" listyle ml-3">Result Entered Date :'+ resdate +'</span></li> </ul></div></td>';
               userDetails += '<td><a href="javascript:void(0)" class="c_point" ><a class="btn btn-info"><i class="fa fa-upload" onclick="uploadfiles('+item.exId+','+rad+')"/></i></a>'
               userDetails += '&nbsp;<a class="btn btn-info"><i class="fa fa-download" onclick="viewfiles('+item.exId+','+rad+')"/></i></a></i></a></td>';           
               }else {
            	   userDetails += '<td></td>';
               }
               userDetails += '</tr>';
                $('#radTestlistResult').append(userDetails); 
                getRadRequester(count,item.requester);			                  
                getRadResult(count,item.result,item.testCode);
                getAbnormalResult(count,"abnormallist",item.abnormalResult);
                $('#radDate'+count).val(item.exdate);
                $('#notesRad'+count).val(item.notes);
                $('#popover_info_radiology'+count).popover({
                  html: true, trigger: 'click', sanitize: false,
                  content: function() {
                	  		 $('#popover_content_info_radiology'+count).append(getLogsForUpdate(myJSONObj,'trRadRow'+count));
                             return $('#popover_content_info_radiology'+count).html();
                   }
		        });
                if(item.testCode == "3"){
              	  $("#radresults"+count).val(item.result); 
                  $("#abnormallist"+count).attr('disabled', true);
               	  $("#otherabnormaldiseasevalue"+count).attr('disabled', true);
                }
                if(item.resultname == "Abnormal" && item.abnormalResult !="4"){
 			     $("#otherabnormaldiseasevalue"+count).attr('disabled', true);
	            }
                if(item.abnormalResult == "4"){
		          getAbnormalResult(count,"abnormallist",item.abnormalResult);
			      $('#otherabnormaldiseasevalue'+count).val(item.abnormalOth);
                 }
				});
				$(".raddatepicker").datepicker({
				changeMonth: true,
				changeYear: true,
				yearRange: "1930:2060",
				dateFormat: 'dd/mm/yy',
				maxDate: '+0d'
				});
				}
				function validateval(pval){
					if(pval!='' && pval!= null){
						return false;
					}return true;
				}
			function saveRequest() {
				//$('#notifSuccessModal').modal('show');
				//$('#successlabel').text("<fmt:message key="label.saveNotif"/>");
				//$('#successlabelMsg').text("<fmt:message key="label.saveMsg"/>");
				$('#updateNotification').hide();
				$('#saveNotification').show();
				$('#notifyUpdate').hide();
				$('#notifyCreate').hide();
			}
			
			function createRequestNotification(){
			if(reqid!=null && Idtype!= null && Idtype!= ''){
		            var myJSONObjNotify='';
	                myJSONObjNotify =JSON.stringify(jsonObjNotify);			   
	                var jsonObjNotify={};
         			$('#notifyCreate').hide();
	             	$('#notifyUpdate').hide();
	             	$('#notifyCatError').hide();
	                var nameen= $('#nameEn').text();
	                var namear=  $('#nameAr').text();
	                var mobile=  $('#mobile').text();
	                var fileno= $('#fileNo').val();
	                var bloodgroup= $('#bloodgroup').text();
	                var address= $('#address').text();
	                var sponsorcid=$('#sponsor').text();
	                var workplace= $('#worplace').text();
	                var residencyOther = "";
	                var occupationOther ="";
	                if(occupationcd=='18'){
	             	 occupationOther=$('#occupation').text();	
					}else{
	             	 occupationOther="";
	                }
	                if(recidencycd=='5'){
	             	 residencyOther=$('#recidency').text();	
					}else{
	             	 residencyOther="";
	                } 
	                var phone = $(".phone_name").map(function(){ return $(this).val() }).get().join(', '); 
	                var phonenumber= []
	                phonenumber.push(mobile);				                 
	                var intref='';
		   			var source='D';
	                var notiftype='E';
	                var riskfactor=$('#riskFactorPRC').val();
	                var riskfactorOther = $('#riskFactorPRCother1').val();
	                var action=$('#action').val();					                   
	                var assignto=$("#assignees").val();
	                var diagnotes=$("#diagnotes").val();
	                var fileno=$("#fileNo").val();
	                var prcfile=$("#fileNoPRC").val();
	                var locationtype='E'
	                var treatcategory= $('#treatCat').val();  
	                var medresistance= $('#medResistance').val();
	                var position= $('#patPosition').val();
	                var subcode=$('#subdiagnosisMain').val();
	                var startDoseDate = $('#startDoseDate'). datepicker('getDate');
				    var dosesstartdt=$.datepicker.formatDate('dd/mm/yy', startDoseDate);
			        var enddosesDate = $('#enddosesDate'). datepicker('getDate');
				    var dosesenddt=$.datepicker.formatDate('dd/mm/yy', enddosesDate);
				    var disDate = $('#disDate'). datepicker('getDate');
				    var dischargedt=$.datepicker.formatDate('dd/mm/yy', disDate);
				    var treatStartdate = $('#treatStartdate'). datepicker('getDate');
				    var admiteddate = $('#addmitedDate'). datepicker('getDate');
				    var admiteddt=$.datepicker.formatDate('dd/mm/yy', admiteddate);
				    var refferredContact = $('#refferredContact').val();  
				    var receivedContact = $('#receivedContact').val();  
				    var estimatedContact = $('#estimatedContact').val();
				    var physicname= $("#phyName").val();
				    var notifcategory=$('#notifycat').val();
				    var diseasecd=$('#locDisease').val();
				    var outcome=$('#treatOutcome').val();
				    var outcomedate='';
				    var notiflocationtype=$('#hospCat').val();
				    var notifsender=$('#hospCat').val();
					if(notifsender=='G'){
					  var notifsender=$('#hospName').val();
					}
					if(notifsender=='P'){
	 				 var notifsender=$('#hospNameP').val();
	 				}
					var physicphone=$('#phyNo').val();  
					var approved='';
					var approvedby='';
					var approveddate='';
					/* var notifdate='';
				    notifdate = $('#notifdate').val(); */
				    let notifDateTemp = $('#notificationDate'). datepicker('getDate');
				    let notifdate = $.datepicker.formatDate('dd/mm/yy', notifDateTemp);
					var birthdt=  $('#dob').text();  
					var entrydt=  $('#entryDate').text();  
					var pcrdateref = $('#pcrdateref'). datepicker('getDate');
					var prcreferraldt=$.datepicker.formatDate('dd/mm/yy', pcrdateref);  
					var isolateddate = $('#isolateddateref'). datepicker('getDate');
					var isolateddt=$.datepicker.formatDate('dd/mm/yy', isolateddate);  
					var referreddatedt=$('#referralDate'). datepicker('getDate');
					var referreddate=$.datepicker.formatDate('dd/mm/yy', referreddatedt);
					var notifSenderOther = $('#hospNameOther').val();
					var inspectorreplace = $('#inspectorreplace').val();
					var inspectorreplace1 = $('#inspectorreplace1').val();
					var inspectorreplace2 = $('#inspectorreplace2').val();
					var allinspector = $('#allinspector').val();
					var prclocation = $('#prclocation').val();
					var notiflocfileno= $('#fileNoTB').val();
					var pulmonarytb='';
					var extrapulmonarytb='';
					  if(pulmonarytbcase) {
						pulmonarytb= $('#tbsource').val(); 
					  }
					 if(extrapulmonarytbcase) {
						extrapulmonarytb= $('#tbsource').val();   
					  }
					var prcposition=$('#patPositionPRC').val();   
					var physnamePRC=$('#phyNamePRC').val();   
					var discharged='';
					if(dischargedt!=''){
				      discharged='Y';	
				    } 
					var IDval='';
					if(Idtype=='U'){
					  IDval=idValOther;
					}else{
					  IDval=idVal;
					} 
			function createjsonobj(reqid){
	       	  jsonObjNotify = {
						"reqid":reqid,
					    "patcd":ptcd,
					    "notiftype":notiftype,
					    "notifcategory":notifcategory,
					  	"notiflocationtype":notiflocationtype,
					  	"notifsender":notifsender, 
					  	"diseasecd":diseasecd,
					    "pulmonarytbcase":pulmonarytb,
					  	"extrapulmonarytbcase":pulmonarytb,
					  	"outcome":outcome,
					  	"outcomedate":outcomedate,
					  	"notifdate":notifdate,
					  	"physicname":physicname,
					  	"physicphone":physicphone,
					  	"source":source,
					  	"approved":approved,
					  	"approvedby":approvedby,
					  	"notiflocfileno":notiflocfileno,
					  	"approveddate":approveddate,
					  	"autoapproval":"Y",
					    "estimatedContacts":estimatedContact,
					    "receivedContacts":receivedContact,
					    "referredContacts":refferredContact,
					    "notifSenderOther":notifSenderOther,
					    "inspectorreplace": inspectorreplace,
					    "inspectorreplace1": inspectorreplace1,
					    "inspectorreplace2": inspectorreplace2,
					    "allinspector":allinspector,
					    "notiflocation":localStorage.getItem('loccode'),
					    "prc":{
							"prcid":"",
							"prcfile":prcfile,
							"position":prcposition,
							"medresistance":medresistance,
							"treatcategory":treatcategory,
							"treatstartdt":'',
							"dischargedt":dischargedt,	                               
							"admitteddt":admiteddt,
							"discharged":discharged,
							"dosesstartdt":dosesstartdt,
							"dosesenddt":dosesenddt,
							"notes":diagnotes,
							"physicname":physnamePRC,
							"prclocation":prclocation
					  },
					      "patient":{
					    	"idnumber":IDval,
					  		"idtype":Idtype,
					  		"ptcd":ptcd,
					  		"nameen":nameen,
					  		"namear":namear,
					  		"nationality":nationalitycd,
					  		"gender":gendercd,
					  		"residency":recidencycd,
					  		"residencyOther":residencyOther,
					  		"occupationOth":occupationOther,
					  		"occupation":occupationcd,										  		
					  		"entrydate":entrydt,
					  		"address":address,
					  		"governorate":governoratecd,
					  		"district":districtcd,
					  		"birthdate":birthdt,
					  		"refnumber":"",
					  		"sponsorcid":sponsorcid,
					  		"patphone":phonenumber,
					  		"workplace":workplace,
					  	   	"phone":phone,
					  		"maritalstatus":maritalcd,			
					  		 "bloodgroup":bloodgroup
					      },
					      "diseaseIdList":[],
					      "diagnosis":[],
					      "lab":[],
					      "radiology":[],
					      "ppdTest": [],
					   
				 };
		       	if($('#diagnosisMain').val()!=''){									
				    var diag = {}
	                var self = $(this);
				    diag.code = $('#diagnosisMain').val();
				    diag.subcode = $('#subdiagnosisMain').val();
				    diag.extype='D';
				    diag.isprc='N';
				    diag.doctorname='';
				    diag.subOtherCodeName = $('#subdiagnosisother1').val();
				   jsonObj.diagnosis.push(diag);
			   } 
			   if($('#daignosisHos').val()!=''){										  
			    var diagPCR = {}
                var self = $(this);
			    diagPCR.code = $('#daignosisHos').val();
			    diagPCR.subcode = $('#subdiagnosisHos').val();
			    diagPCR.extype='D';
			    diagPCR.isprc='Y';
			    diagPCR.doctorname='';
			    diagPCR.subOtherCodeName = $('#subdiagnosisHosother1').val();
			   }
			   $("#diseasetablehos tr:not(:first)").each(function (i, value) {
				   var diseasehos = {}
                   var self = $(this);
				   diseasehos.code = self.find("td:eq(0)").text().trim()
				   diseasehos.name = self.find("td:eq(1)").text().trim()
                   jsonObjNotify.diseaseIdList.push(diseasehos);
                   jsonObj.diseaseIdList.push(diseasehos);
               }); 
					}
					createjsonobj(reqid);
				if(notifcategory!='' && ($('#diagnosisMain').val()!='') && ($('#hospCat').val()!='')){
				$.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=createnotification",
		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObjNotify,	
						dataType : "json",		
		               success: function (data) {			                 
			                    if(data.code=="1"){
			                    	 notifcd=data.details.notifcd;
			                    	$('#notifyID').text(notifcd);
			                    	$("#notifyIDShow").show();
			                    	$('#notifyCreate').show();
			                    	$('#notifyUpdate').hide();
			                    	$('#saveNoti').hide();
			                        $('#updateNoti').show();
			                }
			   	},
		     error : function(jqXHR, textStatus, errorThrown) {
		 	     if (jqXHR.status == "401"){
		 	     }
		      }
		     });
			}
			}
			}
			
			function saveNotification(){
				if(reqid!=null && Idtype!= null && Idtype!= ''){
					$('#notifyCreate').hide();
	             	$('#notifyUpdate').hide();
	             	$('#notifyCatError').hide();
	                var nameen= $('#nameEn').text();
	                var namear=  $('#nameAr').text();
	                var mobile=  $('#mobile').text();
	                var fileno= $('#fileNo').val();
	                var bloodgroup= $('#bloodgroup').text();
	                var address= $('#address').text();
	                var sponsorcid=$('#sponsor').text();
	                var workplace= $('#worplace').text();
	                var residencyOther = "";
	                var occupationOther ="";
	                if(occupationcd=='18'){
	             	 occupationOther=$('#occupation').text();	
					}else{
	             	 occupationOther="";
	                }
	                if(recidencycd=='5'){
	             	 residencyOther=$('#recidency').text();	
					}else{
	             	 residencyOther="";
	                } 
	                var phone = $(".phone_name").map(function(){ return $(this).val() }).get().join(', '); 
	                var phonenumber= []
	                phonenumber.push(mobile);				                 
	                var intref='';
		   			var source='D';
	                var notiftype='E';
	                var riskfactor=$('#riskFactorPRC').val();
	                var riskfactorOther = $('#riskFactorPRCother1').val();
	                var action=$('#action').val();					                   
	                var assignto=$("#assignees").val();
	                var diagnotes=$("#diagnotes").val();
	                var fileno=$("#fileNo").val();
	                var prcfile=$("#fileNoPRC").val();
	                var locationtype='E'
	                var treatcategory= $('#treatCat').val();  
	                var medresistance= $('#medResistance').val();
	                var position= $('#patPosition').val();
	                var subcode=$('#subdiagnosisMain').val();
	                var startDoseDate = $('#startDoseDate'). datepicker('getDate');
				    var dosesstartdt=$.datepicker.formatDate('dd/mm/yy', startDoseDate);
			        var enddosesDate = $('#enddosesDate'). datepicker('getDate');
				    var dosesenddt=$.datepicker.formatDate('dd/mm/yy', enddosesDate);
				    var disDate = $('#disDate'). datepicker('getDate');
				    var dischargedt=$.datepicker.formatDate('dd/mm/yy', disDate);
				    var treatStartdate = $('#treatStartdate'). datepicker('getDate');
				    var admiteddate = $('#addmitedDate'). datepicker('getDate');
				    var admiteddt=$.datepicker.formatDate('dd/mm/yy', admiteddate);
				    var refferredContact = $('#refferredContact').val();  
				    var receivedContact = $('#receivedContact').val();  
				    var estimatedContact = $('#estimatedContact').val();
				    var physicname= $("#phyName").val();
				    var notifcategory=$('#notifycat').val();
				    var diseasecd=$('#locDisease').val();
				    var outcome=$('#treatOutcome').val();
				    var outcomedate='';
				    var notiflocationtype=$('#hospCat').val();
				    var notifsender=$('#hospCat').val();
					if(notifsender=='G'){
					  var notifsender=$('#hospName').val();
					}
					if(notifsender=='P'){
	 				 var notifsender=$('#hospNameP').val();
	 				}
					var physicphone=$('#phyNo').val();  
					var approved='';
					var approvedby='';
					var approveddate='';
					/* var notifdate='';
				    notifdate = $('#notifdate').val(); */
				    let notifDateTemp = $('#notificationDate'). datepicker('getDate');
				    let notifdate = $.datepicker.formatDate('dd/mm/yy', notifDateTemp);
					var birthdt=  $('#dob').text();  
					var entrydt=  $('#entryDate').text();  
					var pcrdateref = $('#pcrdateref'). datepicker('getDate');
					var prcreferraldt=$.datepicker.formatDate('dd/mm/yy', pcrdateref);  
					var isolateddate = $('#isolateddateref'). datepicker('getDate');
					var isolateddt=$.datepicker.formatDate('dd/mm/yy', isolateddate);  
					var referreddatedt=$('#referralDate'). datepicker('getDate');
					var referreddate=$.datepicker.formatDate('dd/mm/yy', referreddatedt);
					var notifSenderOther = $('#hospNameOther').val();
					var inspectorreplace = $('#inspectorreplace').val();
					var inspectorreplace1 = $('#inspectorreplace1').val();
					var inspectorreplace2 = $('#inspectorreplace2').val();
					var allinspector = $('#allinspector').val();
					var prclocation = $('#prclocation').val();
					var notiflocfileno= $('#fileNoTB').val();
					var pulmonarytb='';
					var extrapulmonarytb='';
					  if(pulmonarytbcase) {
						pulmonarytb= $('#tbsource').val(); 
					  }
					 if(extrapulmonarytbcase) {
						extrapulmonarytb= $('#tbsource').val();   
					  }
					var prcposition=$('#patPositionPRC').val();   
					var physnamePRC=$('#phyNamePRC').val();   
					var myJSONObj='';
					
					var jsonObj={};
					
					var discharged='';
					if(dischargedt!=''){
				      discharged='Y';	
				    } 
					var IDval='';
					if(Idtype=='U'){
					  IDval=idValOther;
					}else{
					  IDval=idVal;
					}
									
									
			function createjsonobj(reqid){
				   jsonObj = {
						    "patcd":ptcd,
						    "fileno":fileno,
						    "notiftype":notiftype,
						    "notifcategory":notifcategory,
						  	"notiflocationtype":notiflocationtype,
						  	"notifsender":notifsender, 
						  	"intref":intref,
						  	"diseasecd":diseasecd,
						  	"riskfactor":riskfactor,
						  	"riskfactorOther":riskfactorOther,
						  	"position":position,
						  	"action":action,
						  	"assignto":assignto,
						  	"pulmonarytbcase":pulmonarytb,
						  	"extrapulmonarytbcase":extrapulmonarytb,
						  	"outcome":outcome,
						  	"outcomedate":outcomedate,
						  	"referreddate":referreddate,
						  	"prcreferraldt":prcreferraldt,
						  	"isolateddt":isolateddt,
						  	"physicname":physicname,
						  	"physicphone":physicphone,
						  	"source":source,
						  	"approved":approved,
						  	"approvedby":approvedby,
						  	"approveddate":approveddate,
						  	"autoapproval":"Y",
						  	"notifdate":notifdate,
						  	"notiflocfileno":notiflocfileno,
						  	"estimatedContacts":estimatedContact,
						    "receivedContacts":receivedContact,
						    "referredContacts":refferredContact,
						    "notifSenderOther":notifSenderOther,
						      "patient":{
						    	"idnumber":IDval,
						  		"idtype":Idtype,
						  		"ptcd":ptcd,
						  		"nameen":nameen,
						  		"namear":namear,
						  		"nationality":nationalitycd,
						  		"gender":gendercd,
						  		"residency":recidencycd,
						  		"residencyOther":residencyOther,
						  		"occupationOth":occupationOther,
						  		"entrydate":entrydt,
						  		"address":address,
						  		"governorate":governoratecd,
						  		"district":districtcd,
						  		"birthdate":birthdt,
						  		"refnumber":"",
						  		"sponsorcid":sponsorcid,
						  		"patphone":phonenumber,
						  		"occupation":occupationcd,
						  		"workplace":workplace,
						  		"phone":phone,
						  		"maritalstatus":maritalcd,			
						  		"bloodgroup":bloodgroup
						      },
						      "diseaseIdList":[],
						      "diagnosis":[],
						      "lab":[],
						      "radiology":[],
						      "ppdTest": [],
						      "attachment1":"",
					          "attachment2": ""
					 };
				   
			
				  if($('#diagnosisMain').val()!=''){									
					    var diag = {}
	                    var self = $(this);
					    diag.code = $('#diagnosisMain').val();
					    diag.subcode = $('#subdiagnosisMain').val();
					    diag.extype='D';
					    diag.isprc='N';
					    diag.doctorname='';
					    diag.subOtherCodeName = $('#subdiagnosisother1').val();
					   jsonObj.diagnosis.push(diag);
				  } 
					   if($('#daignosisHos').val()!=''){										  
					    var diagPCR = {}
	                    var self = $(this);
					    diagPCR.code = $('#daignosisHos').val();
					    diagPCR.subcode = $('#subdiagnosisHos').val();
					    diagPCR.extype='D';
					    diagPCR.isprc='Y';
					    diagPCR.doctorname='';
					    diagPCR.subOtherCodeName = $('#subdiagnosisHosother1').val();
					   }
					   $("#diseasetablehos tr:not(:first)").each(function (i, value) {
						   var diseasehos = {}
		                   var self = $(this);
						   diseasehos.code = self.find("td:eq(0)").text().trim()
						   diseasehos.name = self.find("td:eq(1)").text().trim()
		                   jsonObj.diseaseIdList.push(diseasehos);
		               }); 					
					  $("#addLabTest tr:not(:first)").each(function (i, value) {
						   let labtest = {}
		                   let self = $(this);
						   labtest.code = self.find("td:eq(0)").text().trim();
						   labtest.result=self.find("td:eq(3)").find("select").val();
						   labtest.drugsensitive=self.find("td:eq(5)").find("select").val();
						   labtest.requester=self.find("td:eq(6)").find("select").val();
						   labtest.locationtype='E';
						   labtest.location = localStorage.getItem('loccode');
						   let rowcount=self.find("td:eq(9)").text().trim();
						   let labDate = $('#labDate'+rowcount). datepicker('getDate');
						   let labDatedt=$.datepicker.formatDate('dd/mm/yy', labDate);  
	                                      labtest.exdate=labDatedt;
	                                      labtest.doctorname=''; 
						   jsonObj.lab.push(labtest);
						 
		                });    
	                      $("#radTestlistResult tr:not(:first)").each(function (i, value) {
	                       var radtest = {}
		                   var self = $(this);
						   var rowcount=self.find("td:eq(11)").text().trim();
						   radtest.code = self.find("td:eq(0)").text().trim();											   
						   if(radtest.code == "3"){
							   radtest.result=$('#radresults'+rowcount).val();
						   }else{radtest.result=radtest.result=$('#radresults'+rowcount).val();}
						   radtest.abnormalResult=$('#abnormallist'+rowcount).val();
						   radtest.abnormalOth=$('#otherabnormaldiseasevalue'+rowcount).val();
						   radtest.locationtype='E';
						   radtest.location = localStorage.getItem('loccode');
						   radtest.requester=$('#requesterRad'+rowcount).val();
						   radtest.notes=$('#notesRad'+i).val();
						   var radddt = $('#radDate'+rowcount).datepicker('getDate');
						   var radDate=$.datepicker.formatDate('dd/mm/yy', radddt);  
						   radtest.exdate=radDate;
						   radtest.doctorname=''; 
						   jsonObj.radiology.push(radtest);
		                }); 
	                        $("#ppdtestResult tr:not(:first)").each(function (i, value) {
	                        var ppd = {}
	                        var self = $(this);
						    ppd.ppdId =  "";
						    var rowcount=self.find("td:eq(17)").text().trim(); 
							ppd.ppd1TestDate= self.find("td:eq(4)").text().trim();  
							ppd.ppd2TestDate=self.find("td:eq(5)").text().trim() ;
							ppd.ppd1ReadingDate=self.find("td:eq(6)").text().trim();
							ppd.ppd2ReadingDate=self.find("td:eq(7)").text().trim();
				            ppd.ppd1Reading = self.find("td:eq(8)").text().trim();  
				            ppd.ppd1Result =self.find("td:eq(10)").text().trim();
				            ppd.ppd1Notes = self.find("td:eq(12)").text().trim();
				            ppd.ppd2Reading = self.find("td:eq(9)").text().trim();
				            ppd.ppd2Result =self.find("td:eq(11)").text().trim(); 
				            ppd.ppd2Notes = self.find("td:eq(13)").text().trim();
				            ppd.testType = self.find("td:eq(14)").text().trim();
				            ppd.testReasonId = self.find("td:eq(15)").text().trim();
						    ppd.ppd1docinterpret =  self.find("td:eq(19)").text().trim();
						    ppd.ppd2docinterpret =  self.find("td:eq(20)").text().trim();
				            ppd.sendSms = "";
				            ppd.location = localStorage.getItem('loccode');
						    jsonObj.ppdTest.push(ppd);
			           });  
			   		 	//after save
			              myJSONObj =JSON.stringify(jsonObj);		   
						}     
		                  createjsonobj(reqid);
						if(notifcategory==''){		
							$('#notifyCatError').show();
						}
						if(($('#diagnosisMain').val())==''){		
							$('#diagError').show();
						}
						if(($('#hospCat').val())==''){		
							$('#hospCatError').show();
						}
						if(($('#hospCat').val()=='G')&&($('#hospName').val()=='')){		
							$('#hospNameErrorG').show();
						}
						if(($('#hospCat').val()=='P')&&($('#hospNameP').val()=='')){		
							$('#hospNameErrorP').show();
						}
	            if(notifcategory!='' && ($('#diagnosisMain').val()!='') && ($('#hospCat').val()!='')){
	        	   var formData = new FormData();
					 $.ajax({
		                type: "POST",
		                url:context+"/apiResponse?method=createnotifrequest",
		                headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {	
		                    if(data.code=="1"){
		                    	reqid=data.details.requestcd;
		                     	createjsonobj(reqid);
		                     	createRequestNotification();
					       var medical = [] , medicalhistoy = '' ;
					      $("#medicalhistory tr:not(:first)").each(function (i, value) {
	                       var medtest = {}
		                   var self = $(this);
	                   	   medtest.exid = "";
	                   	   medtest.code = reqid;
	                   	   medtest.patientcd = ptcd;
	                   	   var rowcount=self.find("td:eq(9)").text().trim();
	                   	   medtest.extype = self.find("td:eq(1)").find("select").val();
	                   	   medtest.resultname =  $('#resultname'+rowcount).val();
	                   	   medtest.result=$('#result'+rowcount).val();
						   var medicaldt = $('#exdate'+rowcount).datepicker('getDate');
						   var medDate=$.datepicker.formatDate('dd/mm/yy', medicaldt);  
						   medtest.exdate=medDate;
						   medtest.doctorname=$('#doctorname'+rowcount).val();
						   medtest.notes = $('#notes'+rowcount).val();
						   medical.push(medtest);			   
		                });
	          			medicalhistoy = JSON.stringify(medical);
	          			if(medical.length != 0){
	                    $.ajax({
	          	            type: "POST",
	          	            url:context+"/apiResponse?method=createNotifMedTreatHist",
	          	            headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
	          				contentType : "application/json",
	          				crossDomain : true,
	          				data:medicalhistoy,	
	          				dataType : "json",		
	          				success: function(response) {
	    	  					 	//var medicalfile = JSON.parse(response);
	    	  					 	if(response.code == "1"){
	          		                }
	          		   		},
	                        error : function(jqXHR, textStatus, errorThrown) {
	                            if (jqXHR.status == "401"){
	                             }
	                       }
	                    });
	          		   }
	          			uploadDoc();
	                    }
				        },
	                    error : function(jqXHR, textStatus, errorThrown) {
		                       if (jqXHR.status == "401"){
		                        }
	                    }
						});  
				 	   }
					}
					resetTabAccordion();
					getToken(); 
			}
		 function uploadfiles(procid,proctype){
			$("#procID").val(procid);
			$("#procType").val(proctype);
			$('#uploadDoc').modal('show');
			//$('#fileError').hide();
			if(proctype == "lab"){
				$("#docFor").text('<fmt:message key="label.uploadLab"/>');
			}
			if(proctype == "rad"){
				$("#docFor").text('<fmt:message key="label.uploadRad"/>');
			}
			if(proctype == "ppd"){
				$("#docFor").text('<fmt:message key="label.uploadPpd"/>');
			}
		}
		 function uploadDoc(){
			if($("#procType").val() == "lab" || $("#procType").val() == "rad" || $("#procType").val() == "ppd"){
				procid = $("#procID").val();
				proctype= $("#procType").val();
			}
			else{
				procid = "0";
			}
			const fileInput_Pat = [];
		    $('.fileUpload_n').each(function() {
		      const input = $(this)[0];
		      if (input.files.length > 0) {
		        $.each(input.files, function(i, file) {
		        	fileInput_Pat.push(file);
		        });
		      }
		    });
			const fileInput_Notif = [];
		    $('.fileUpload_notif').each(function() {
		      const input = $(this)[0];
		      if (input.files.length > 0) {
		        $.each(input.files, function(i, file) {
		        	fileInput_Notif.push(file);
		        });
		      }
		    });
			if (fileInput_Pat.length > 0){
				uploadApiCall(fileInput_Pat,proctype);
			}
			if(fileInput_Notif.length > 0){
				uploadApiCall(fileInput_Notif,proctype1);
			}
		}
		//var fileType = ""; validImageTypes = ['gif', 'jpeg', 'png', 'pdf']; idTypeForUpload = "";
		function uploadApiCall(fileInput,proctype) {
			if(fileInput!= null && validImageTypes.includes(fileType)){
				//const selectedFiles = fileInput.files;
				 const formData = new FormData();
			  	if(fileInput.length > 0){
			  	    $.each(fileInput, function(i, file) {
			  	      formData.append('files', file);
			  	    });
		          }
			   	  formData.append('reqid',reqid);
			   	  formData.append('regid',ptcd);
			   	  formData.append('procid',procid);
			   	  formData.append('proctype',proctype);
			   	  if(procid != "" && proctype != ""){
			   	  $.ajax({
			   		 url:context+"/getBackendResposeInspFile1?method=uploadpatientdocs",
			         type: 'POST',
			         data: formData,
			         enctype:'multipart/form-data',
			         headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			         timeout : 180000,
					 processData: false,
					 contentType: false,
					 cache:false,
			         success: function(response) {
		  					  var uploadfile = JSON.parse(response);
			            	  if(uploadfile.code == "1"){
			            		  if(uploadfile.details > 0){
			            			  $('#fileUploadSuccessImageName_n').show();
			            			  $('#fileUploadSuccessImageName_n').text('<fmt:message key="label.successDoc"/>');
			            			  $("#procID").val("");
			          				  $("#procType").val("");
			            		  }
			            		  else {
			            			  $('#fileUploadSuccessImageName_n').show();
			                		  $('#fileUploadSuccessImageName_n').text('<fmt:message key="label.failDoc"/>');
				                  }
			                  }		              
			            	},
			              error: function(error) {	                    	
			              }
			          });
			   	  }
			   	}
		}
		function viewDocument(protypeNotif){
				if(protypeNotif!= ""){
					viewfiles("0",protypeNotif);
				}else {
					viewfiles("0",proctype);
				}
		}
		function viewfiles(procid,proctype){
			  var myJSONObj =JSON.stringify({"reqid": reqid,"regid": ptcd,"procid":procid,"proctype":proctype});
			  if(proctype != ""){
	 		   $.ajax({
	 			  	 type: "POST",
	  			     url:context+"/apiResponse?method=getpatientdocs",
	  			  	 headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
	  			  	 contentType : "application/json",
	  			  	 crossDomain : true,
					 data : myJSONObj,	
					 dataType : "json",
	  				 success: function (data) {
		  				if(data.code == "1"){
		  				var byteCharacters = atob(data.details);
			  			var byteNumbers = new Array(byteCharacters.length);
			  			for (var i = 0; i < byteCharacters.length; i++) {
			  			  byteNumbers[i] = byteCharacters.charCodeAt(i);
			  			}
			  			var byteArray = new Uint8Array(byteNumbers);
			  			var blob = new Blob([byteArray], { type: 'application/pdf' });
			  			var dataUrl = URL.createObjectURL(blob);
			  			window.open(dataUrl, '_blank');
		  				}
		  				if(data.code == "-3"){}
		  			},
	      	        error: function(request,status,errorThrown) {
	      	        }
	  			});
			  }
			}
	function pathistory(idVal,Idtype){
        	   var myJSONObj =JSON.stringify({"idnumber":idVal,"ptcd":'',"idtype":Idtype});
        	   var content='';
        	   var contentdaig='';
        	   var contentlab='';
        	   var contentRad='';
        	   var contentPPD='';
        	   var actionval='';
        	   var outcomeVal='';
        	   var positionVal='';
        	    $('#divColapseBarHistoryold').empty();
				$('#divColapseBarHistoryDiagonsis').empty();
				$('#divColapseBarHistoryLab').empty();
				$('#divColapseBarHistoryRadiology').empty();
				$('#divColapseBarHistoryPPD').empty();				
     		  $.ajax({
     				type : "POST",
     				url : context+"/apiResponse?method=lstpatnotifhistory",
     				contentType : "application/json",
     				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
     				crossDomain : true,
     				data:myJSONObj,	
     				dataType : "json",	
     				success : function(response) {
     					if(response.code=='1'&& response.details.length>0){ $("#notifycat option[value='1']").attr("disabled", true);
     						historyold='true';
     						 for(var i = 0; i < response.details.length; i++)
     						 {
     					    var id = response.details[i];
     					   $.each(mapaction, function (index, value) {
     					   if(value.code==id.action){
     						  actionval= value.nameen;
     					   }
     						});
     					  $.each(mapoutcome, function (index, value) {
        					   if(value.code==id.outcome){
        						   outcomeVal= value.nameen;
        					   }
        						});
     					  $.each(mapposition, function (index, value) {
       					   if(value.code==id.position){
       						positionVal= value.nameen;
       					   }
       						});content +="<div id=accordion1"+i+">";	    	
     						content +="<div class='card border-left-info '>";	
     						content +="<div class='card-header' id=sub_heading1"+i+">";
     						content +="<h5 class='mb-0 panel-title'>";
     						content +="<a class='btn-link collapsed ' data-toggle='collapse' data-parent=#accordion1"+i+" href=#sub_collapse"+i+" aria-controls=#sub_collapse"+i+"> Notification Info ( on "+id.notifdate+")  </a></h5>";
     						content +="</div>";
     						content +="<div id=sub_collapse"+i+" class='collapse' aria-labelledby=sub_heading1"+i+" data-parent=#accordion1"+i+">";
     						content +="<div class='card-body'>";
     						content +="<b>Notitifcation number:</b>"+id.notifid;
     						content +="</br> ";
     						content +="<b>Notitifcation request from:</b>"+id.notifsenderen;
     						content +="</br> ";
     						content +="<b>Reffered On:</b>";
     						content +="</br> ";
     						content +="<b>Patient Position:</b>"+positionVal;
     						content +="</br> ";
     						content +="<b>Outcome:</b>"+outcomeVal;
     						content +="</br> ";
     						content +="<b>Action Taken:</b>"+actionval;
     						content +="</br> ";
     						content +="</div>";
     						content +="</div>";
     						content +="</div>";
     						content +="</div>";
     			        contentdaig +="<div id=accordion2"+i+">";	    	
   						contentdaig +="<div class='card border-left-info '>";	
   						contentdaig +="<div class='card-header' id=sub_heading2"+i+">";
   						contentdaig +="<h5 class='mb-0 panel-title'>";
   						contentdaig +="<a class='btn-link collapsed ' data-toggle='collapse' data-parent=#accordion2"+i+" href=#sub_collapse1"+i+" aria-controls=#sub_collapse1"+i+"> Diagnosis Info ( on "+id.approveddate+")  </a></h5>";
   						contentdaig +="</div>";
   						contentdaig +="<div id=sub_collapse1"+i+" class='collapse' aria-labelledby=sub_heading2"+i+" data-parent=#accordion2"+i+">";
   						contentdaig +="<div class='card-body'>";
   						contentdaig +="<table width='100%' border='0' cellspacing='0' cellpadding='5'>";
   						for(var j = 0; j < id.diagnosis.length; j++){ 
   							contentdaig +="<tr>";
    						 var diagdata='';
    						 diagdata= id.diagnosis[j];
    						if(diagdata.extype=='D'){
    						 contentdaig +="<td><b>Diagnosis:</b></td><td>"+diagdata.name+"</td>";
    						 contentdaig +="";
    						 contentdaig +="<td><b>SubDiagnosis:</b></td><td>"+diagdata.subcodename+"</td>";
    						 contentdaig +="</br>";
    						}
    						if(diagdata.extype=='I'){
       						 contentdaig+="<td><b>ICD Diagnosis:</b></td><td>"+diagdata.code+"</td>";
       						 contentdaig+="</br>";
       						}
    						contentdaig +="</tr>";
    					    }
	   						contentdaig +="</table>";
	   						contentdaig +="</div>";
	   						contentdaig +="</div>";
	   						contentdaig +="</div>";
	   						contentdaig +="</div>";
     					    contentlab +="<div id=accordion3"+i+">";	    	
     						contentlab +="<div class='card border-left-info '>";	
     						contentlab +="<div class='card-header' id=sub_heading3"+i+">";
     						contentlab +="<h5 class='mb-0 panel-title'>";
     						contentlab +="<a class=' btn-link collapsed ' data-toggle='collapse' data-parent=#accordion3"+i+" href=#sub_collapse2"+i+" aria-controls=#sub_collapse2"+i+"> LAB Info ( on "+id.approveddate+")  </a></h5>";
     						contentlab +="</div>";
     						contentlab +="<div id=sub_collapse2"+i+" class='collapse' aria-labelledby=sub_heading3"+i+" data-parent=#accordion3"+i+">";
     						contentlab +="<div class='card-body'>";
     						contentlab +="<table width='100%' border='0' cellspacing='0' cellpadding='5'>";
     						for(var j = 0; j < id.lab.length; j++){
     							contentlab +="<tr>";
         					 var labdata='';
         					  labdata= id.lab[j];
         					 if(labdata.name != null && labdata.name != ""){
         						contentlab +="<td><b>Test Name:</b></td><td>"+labdata.name+ "</td>";
        						}
        						else {
        							let name = '';
        							contentlab +="<td><b>Test Name:</b></td><td>"+name+ "</td>";
        						}
         						contentlab +=" ";
         						if(labdata.resultname != null && labdata.resultname != ""){
         							contentlab +="<td><b>Result:</b></td><td>"+labdata.resultname+ "</td>";
           						}
           						else {
           							let resultname = '';
           							contentlab +="<td><b>Result:</b></td><td>"+resultname+ "</td>";
           						}
         						contentlab +=" ";
         						if(labdata.exdate != null && labdata.exdate != ""){
         							contentlab +="<td><b>Date:</b></td><td>"+labdata.exdate+ "</td>";
           						}
           						else {
           							let exdate = '';
           							contentlab +="<td><b>Date:</b></td><td>"+exdate+ "</td>";
           						}
         						contentlab +=" ";
         						if(labdata.notes != null && labdata.notes != ""){
         							contentlab +="<td><b>Notes:</b></td><td>"+labdata.notes+ "</td>";
           						}
           						else {
           							let notes = '';
           							contentlab +="<td><b>Notes:</b></td><td>"+ notes + "</td>";
           						}
         						contentlab +="</tr>";
        					   }
     						contentlab +="</table>";
     						contentlab +="</div>";
     						contentlab +="</div>";
     						contentlab +="</div>";
     						contentlab +="</div>";
     						contentRad +="<div id=accordion4"+i+">";	    	
     						contentRad +="<div class='card border-left-info '>";	
     						contentRad +="<div class='card-header' id=sub_heading4"+i+">";
     						contentRad +="<h5 class='mb-0 panel-title'>";
     						contentRad +="<a class=' btn-link collapsed ' data-toggle='collapse' data-parent=#accordion4"+i+" href=#sub_collapse3"+i+" aria-controls=#sub_collapse3"+i+">Radiology Info ( on "+id.approveddate+")  </a></h5>";
     						contentRad +="</div>";
     						contentRad +="<div id=sub_collapse3"+i+" class='collapse' aria-labelledby=sub_heading4"+i+" data-parent=#accordion4"+i+">";
     						contentRad +="<div class='card-body'>";
     						contentRad +="<table width='100%' border='0' cellspacing='0' cellpadding='5'>";
     						  for(var j = 0; j < id.radiology.length; j++){
     							 contentRad +="<tr>";
           						  var radiologydata='';
           						 radiologydata= id.radiology[j];
           						if(radiologydata.name != null && radiologydata.name != ""){
               						contentRad +="<td><b>Test Name:</b></td><td>"+radiologydata.name+ "</td>";
           						}
           						else {
           							let name = '';
               						contentRad +="<td><b>Test Name:</b></td><td>"+name+ "</td>";
           						}
           						contentRad +=" ";
           						if(radiologydata.resultname != null && radiologydata.resultname != ""){
               						contentRad +="<td><b>Result:</b></td><td>"+radiologydata.resultname+ "</td>";
           						}
           						else {
           							let resultname = '';
               						contentRad +="<td><b>Result:</b></td><td>"+resultname+ "</td>";
           						}
           						contentRad +=" ";
           						if(radiologydata.exdate != null && radiologydata.exdate != ""){
               						contentRad +="<td><b>Date:</b></td><td>"+radiologydata.exdate+ "</td>";
           						}
           						else {
           							let exdate = '';
               						contentRad +="<td><b>Date:</b></td><td>"+exdate+ "</td>";
           						}
           						contentRad +=" ";
           						if(radiologydata.notes != null && radiologydata.notes != ""){
               						contentRad +="<td><b>Notes:</b></td><td>"+radiologydata.notes+ "</td>";
           						}
           						else {
           							let notes = '';
               						contentRad +="<td><b>Notes:</b></td><td>"+notes+ "</td>";
           						}
           						contentRad +="</tr>";
           					   }
     						contentRad +="</table>";
     						contentRad +="</div>";
     						contentRad +="</div>";
     						contentRad +="</div>";
     						contentRad +="</div>";
     						contentPPD +="<div id=accordion5"+i+">";	    	
     						contentPPD +="<div class='card border-left-info '>";	
     						contentPPD +="<div class='card-header' id=sub_heading5"+i+">";
     						contentPPD +="<h5 class='mb-0 panel-title'>";
     						contentPPD +="<a class=' btn-link collapsed ' data-toggle='collapse' data-parent=#accordion5"+i+" href=#sub_collapse5"+i+" aria-controls=#sub_collapse4"+i+">PPD Info ( on "+id.approveddate+")  </a></h5>";
     						contentPPD +="</div>";
     						contentPPD +="<div id=sub_collapse5"+i+" class='collapse' aria-labelledby=sub_heading5"+i+" data-parent=#accordion5"+i+">";
     						contentPPD +="<div class='card-body'>";
     						contentPPD +="<table width='100%' border='0' cellspacing='0' cellpadding='5' class='table table-bordered'>";
     						  for(var j = 0; j < id.ppdTest.length; j++){
     							contentPPD +="<tr class='bg-gradient-light'>";
           						var ppddata='';
           						ppddata= id.ppdTest[j];
           						contentPPD +="<td class= 'border-bottom text-info' colspan = '2'><b>Test Name:</b></td><td class= 'border-bottom text-info' colspan = '2'>"+ppddata.testTypeName+ "</td>";
           						contentPPD +=" ";
           						contentPPD +="<td class= 'border-bottom text-info' colspan = '2'><b>Test Reason:</b></td><td class= 'border-bottom text-info' colspan = '2'>" + ppddata.testReasonName+ "</td><td colspan = '2'></td></tr>";
           						contentPPD +="<tr> ";
           					
           						if(ppddata.ppd1TestDate != null && ppddata.ppd1TestDate != ""){
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Test Date:</b></td><td class= 'border-bottom'>"+ppddata.ppd1TestDate+ "</td>";
           						}
           						else {
           							let ppd1td = '';
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Test Date:</b></td><td class= 'border-bottom'>"+ppd1td;+ "</td>";
           						}
           						contentPPD +=" ";
           						if(ppddata.ppd1TestDate != null && ppddata.ppd1TestDate != ""){
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Result:</b></td><td class= 'border-bottom'>"+ppddata.ppd1TestDate+ "</td>";
           						}
           						else {
           							let ppd1td = '';
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Result:</b></td><td class= 'border-bottom'>"+ppd1td+ "</td>";
           						}
           						contentPPD +=" ";
           						if(ppddata.ppd1ReadingDate != null && ppddata.ppd1ReadingDate != ""){
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Reading Date:</b></td><td class= 'border-bottom'>"+ppddata.ppd1ReadingDate+ "</td>";
           						}
           						else {
           							let ppd1ReadingDate = '';
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Reading Date:</b></td><td class= 'border-bottom'>"+ppd1ReadingDate+ "</td>";
           						}
           						contentPPD +=" ";
           						if(ppddata.ppd1Reading != null && ppddata.ppd1Reading != ""){
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Reading:</b></td><td class= 'border-bottom'>"+ppddata.ppd1Reading+ "</td>";
           						}
           						else {
           							let ppd1Reading = '';
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Reading:</b></td><td class= 'border-bottom'>"+ppd1Reading+ "</td>";
           						}
           						contentPPD +=" ";
           						if(ppddata.ppd1Notes != null && ppddata.ppd1Notes != ""){
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Notes:</b></td><td class= 'border-bottom'>"+ppddata.ppd1Notes+ "</td>";
           						}
           						else {
           							let ppd1Note = '';
           							contentPPD +="<td class= 'border-bottom'><b>PPD1 Notes:</b></td><td class= 'border-bottom'>"+ppd1Note+ "</td>";
           						}
           						contentPPD +="</tr><tr> ";
           						if(ppddata.testType == "1"){
           							if(ppddata.ppd2TestDate != null && ppddata.ppd2TestDate != ""){
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Test Date:</b></td><td class= 'border-bottom'>"+ppddata.ppd2TestDate+ "</td>";
               						}
               						else {
               							let ppd2TestDate = '';
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Test Date:</b></td><td class= 'border-bottom'>"+ppd2TestDate+ "</td>";
               						}
               						contentPPD +=" ";
               						if(ppddata.ppd2Result != null && ppddata.ppd2Result != ""){
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Result:</b></td><td class= 'border-bottom'>"+ppddata.ppd2Result+ "</td>";
               						}
               						else {
               							let ppd2Result = '';
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Result:</b></td><td class= 'border-bottom'>"+ppd2Result+ "</td>";
               						}
               						contentPPD +=" ";
               						if(ppddata.ppd2ReadingDate != null && ppddata.ppd2ReadingDate != ""){
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Reading Date:</b></td><td class= 'border-bottom'>"+ppddata.ppd2ReadingDate+ "</td>";
               						}
               						else {
               							let ppd2ReadingDate = '';
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Reading Date:</b></td><td class= 'border-bottom'>"+ppd2ReadingDate+ "</td>";
               						}
               						contentPPD +=" ";
               						if(ppddata.ppd2Reading != null && ppddata.ppd2Reading != ""){
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Reading:</b></td><td class= 'border-bottom'>"+ppddata.ppd2Reading+ "</td>";
               						}
               						else {
               							let ppd2Reading = '';
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Reading:</b></td><td class= 'border-bottom'>"+ppd2Reading+ "</td>";
               						}
               						contentPPD +=" ";
               						if(ppddata.ppd2Notes != null && ppddata.ppd2Notes != ""){
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Notes:</b></td><td class= 'border-bottom'>"+ppddata.ppd2Notes+ "</td>";
               						}
               						else {
               							let ppd2Notes = '';
               							contentPPD +="<td class= 'border-bottom'><b>PPD2 Notes:</b></td><td class= 'border-bottom'>"+ppd2Notes+ "</td>";
               						}
           						}
           						contentPPD +="</tr>";
           					   }
     						 contentPPD +="</table>";
     						contentPPD +="</div>";
     						contentPPD +="</div>";
     						contentPPD +="</div>";
     						contentPPD +="</div>";
     						 }	
     						$('#divColapseBarHistoryold').append(content);
     						$('#divColapseBarHistoryDiagonsis').append(contentdaig);
     						$('#divColapseBarHistoryLab').append(contentlab);
     						$('#divColapseBarHistoryRadiology').append(contentRad);
     						$('#divColapseBarHistoryPPD').append(contentPPD);
     						callHistory();
     						 getToken(); 
     					}
     						},
     				error : function(jqXHR, textStatus, errorThrown) {
     					if (jqXHR.status == "401") {
     					
     					}
     				}
     		 }); 
           }

	 function updateLab(currentElement,count,updatedTest){
		 if(currentElement.closest("tr").find('td:eq(1)').text()!=''){
			 $('#validateUser').modal('show');
			 $('#validateusername').val(localStorage.getItem('username'));
			 $('#validatepassword').val('');
			 $('#updateCount').val(count);
			 $('#updateExid').val(currentElement.closest("tr").find('td:eq(1)').text());
			 $('#updateCode').val(currentElement.closest("tr").find('td:eq(0)').text());
			 $('#updateTest').val(updatedTest);
		    }
	 }
	 function updateRad(currentElement,count,updatedTest){
		 if(currentElement.closest("tr").find('td:eq(1)').text()!=''){
			 $('#validateUser').modal('show');
			 $('#validateusername').val(localStorage.getItem('username'));
			 $('#validatepassword').val('');
			 $('#updateCount').val(count);
			 $('#updateExid').val(currentElement.closest("tr").find('td:eq(1)').text());
			 $('#updateCode').val(currentElement.closest("tr").find('td:eq(0)').text());
			 $('#updateTest').val(updatedTest);
		    }
	}
	 function updateMedicalHistory(currentElement,count,updatedTest){
		 $('#validateUser').modal('show');
		 $('#updateCount').val(count);
		 $('#updateTest').val(updatedTest);
		 $('#updateExid').val(currentElement.closest("tr").find('td:eq(10)').text());
		 $('#validateusername').val(localStorage.getItem('username'));
		 $('#validatepassword').val('');
     }
	 $("#updateppdbutton").on('click',function(){
			$('#ppdupdate').hide();
			$('#validateUser').modal('show');
			$('#update_ppdtest').modal('hide');
			$('#validateusername').val(localStorage.getItem('username'));
			$('#validatepassword').val('');
		});
	 function updateTestWithAuthentication(updateCount,updateExid,updateCode,updatedByUsername,updatedTest){
		 if(updatedTest == "lab"){
		 var jsonObj = {  
				    "reqid":reqid ,
					"patcd":ptcd,
				    "prc":null,
				    "notifid":notifcd,				    
					"patient":{
						"idnumber":idVal,
						"idtype":Idtype,
						"ptcd":ptcd
					 },
				     "lab":[
					]
				  };
			   var labtest = {};
			   labtest.code = updateCode;
			   labtest.result=$('#pcrlabresults'+updateCount).val();
			   labtest.requester=$('#requester'+updateCount).val();
			   labtest.drugsensitive=$('#drugsensitive'+updateCount).val();
			   var labDate = $('#labDate'+updateCount). datepicker('getDate');
			   var labDatedt=$.datepicker.formatDate('dd/mm/yy', labDate);  
               labtest.exdate=labDatedt;
			   labtest.doctorname='';
			   labtest.locationtype='E'; 
			   labtest.exid=updateExid;
			   labtest.isprc='N';
			   labtest.resultupdatedby = updatedByUsername;
			   jsonObj.lab.push(labtest);
			   var myJSONObj =JSON.stringify(jsonObj);
		 	   if((labtest.result != "" && labtest.exdate == "") || (labtest.result == "" && labtest.exdate != "")){
		 		   $('#validateUser').modal('hide');
		 		   $('#errorModal').modal('show');
			 	   return;
		 		}
		 		$.ajax({
			    type: "POST",
			    url:context+"/apiResponse?method=updatenotiflabtest",
			    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
			        success: function (data) {			                 
			             if(data.code=="1"){
			            	 $('#validateUser').modal('hide');
			            	 $('#updateLabData').modal('show');
			             }
			                },
			          error : function(jqXHR, textStatus, errorThrown) {
			    if (jqXHR.status == "401"){
			     }
			          }
			});
		 }
		 if(updatedTest == "rad"){
		 		var jsonObj = {  
					    "reqid":reqid ,
							"patcd":ptcd,
						    "prc":null,
						    "notifid":notifcd,						    
							"patient":{
								"idnumber":idVal,
								"idtype":Idtype,
								"ptcd":ptcd
							 },
						     "radiology":[
							]
						  };
				        var radtest = {}
		            var self = $(this);
					 radtest.code =  updateCode;
					 radtest.result=$('#radresults'+updateCount).val();
					 var selectedRadText = $('#radresults'+updateCount).find('option:selected').text();
					 if(selectedRadText=="Abnormal"){
						 radtest.abnormalOth=$('#otherabnormaldiseasevalue'+updateCount).val();	
						 radtest.abnormalResult = $('#abnormallist'+updateCount).val();
					 }
					 radtest.requester=$('#requesterRad'+updateCount).val();
					 radtest.notes=$('#notesRad'+updateCount).val();
					 var radDate = $('#radDate'+updateCount). datepicker('getDate');
					 var radDatedt=$.datepicker.formatDate('dd/mm/yy', radDate);  
					 radtest.exdate=radDatedt;
					 radtest.doctorname='';
					 radtest.locationtype='E';
					 radtest.exid=updateExid;
					 radtest.isprc='N';
					 radtest.resultupdatedby = updatedByUsername;
					 jsonObj.radiology.push(radtest);
				 var myJSONObj =JSON.stringify(jsonObj);
				 if((radtest.result != "" && radtest.exdate == "") || (radtest.result == "" && radtest.exdate != "")){
					 $('#validateUser').modal('hide');
					 $('#errorModal').modal('show');
					 return;
				  }
				   $.ajax({
					    type: "POST",
					    url:context+"/apiResponse?method=updatenotifradiology",
					    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
							contentType : "application/json",
							crossDomain : true,
							data:myJSONObj,	
							dataType : "json",		
					        success: function (data) {			                 
					             if(data.code=="1"){
					            	 $('#updateRadData').modal('show');
					            	 $('#validateUser').modal('hide');
					             	}
					                },
					          error : function(jqXHR, textStatus, errorThrown) {
					    if (jqXHR.status == "401"){
					     }
					          }
					});
		 }
		 if(updatedTest == "med"){
				var jsonObj = []
  		        var medicalHistorytest = {}
	 				medicalHistorytest.code = reqid;
				 medicalHistorytest.patientcd  =  ptcd;
               medicalHistorytest.extype =  $('#extype'+updateCount).val();
  		   		medicalHistorytest.resultname=$('#resultname'+updateCount).val();
  		  		medicalHistorytest.result=$('#result'+updateCount).val();
  				medicalHistorytest.notes=$('#notes'+updateCount).val();
				 var exdate = $('#exdate'+updateCount). datepicker('getDate');
				 var exDatedt=$.datepicker.formatDate('dd/mm/yy', exdate);  
				 medicalHistorytest.exdate=exDatedt;
				 medicalHistorytest.doctorname= $('#doctorname'+updateCount).val();
				 medicalHistorytest.exid=updateExid;  
				  jsonObj.push(medicalHistorytest);
  		 var myJSONObj =JSON.stringify(jsonObj);
  		 if(myJSONObj.length != 0){
  		   $.ajax({
  			    type: "POST",
  			    url:context+"/apiResponse?method=updateNotifMedTreatHist",
  			    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
  					contentType : "application/json",
  					crossDomain : true,
  					data:myJSONObj,	
  					dataType : "json",		
  			        success: function (data) {			                 
  			         if(data.code=="1"){
		              $('#validateUser').modal('hide');
  			          $('#updateMedicalData').modal('show');
  			         }
  			        },
  			       error : function(jqXHR, textStatus, errorThrown) {
  			    	if (jqXHR.status == "401"){
  			     	}
  			        }
  			});
  		 }
		 }
	 }
		function updatePPDWithAuthentication(updatedByUsername){
			if( ($('#updatetypeoftest').val() == '') && ($('#updatereasonoftest').val() == '')){
				 $('#updatetypeoftestError').show();$('#updatereasonoftestError').show();}
			 else{	$('#updatetypeoftestError').hide();
				 $('#updatereasonoftestError').hide();
			var rowppdID = $('#rowppdid').val();
			var ppdId=$('#ppdid').val();
			var testtypeval1=$('#ppdtestResult tbody tr').find( 'td#testtypeval'+rowppdID).text();
			var testReasonNameval1=$('#ppdtestResult tbody tr').find( 'td#testReasonNameval'+rowppdID).text();
			var ppd1TestDateval1=$('#ppdtestResult tbody tr').find( 'td#ppd1TestDateval'+rowppdID).text();
			var ppd2TestDateval1=$('#ppdtestResult tbody tr').find( 'td#ppd2TestDateval'+rowppdID).text();
			var ppd1ReadingDateval1=$('#ppdtestResult tbody tr').find( 'td#ppd1ReadingDateval'+rowppdID).text();
			var ppd2ReadingDateval1=$('#ppdtestResult tbody tr').find( 'td#ppd2ReadingDateval'+rowppdID).text();
			var ppd1Readingval1=$('#ppdtestResult tbody tr').find( 'td#ppd1Readingval'+rowppdID).text();
			var ppd2Readingval1=$('#ppdtestResult tbody tr').find( 'td#ppd2Readingval'+rowppdID).text();
			var ppd1Resultval1=$('#ppdtestResult tbody tr').find( 'td#ppd1Resultval'+rowppdID).text();
			var ppd2Resultval1=$('#ppdtestResult tbody tr').find( 'td#ppd2Resultval'+rowppdID).text();
			var ppd1Notesval1=$('#ppdtestResult tbody tr').find( 'td#ppd1Notesval'+rowppdID).text();
			var ppd2Notesval1=$('#ppdtestResult tbody tr').find( 'td#ppd2Notesval'+rowppdID).text();
			var testTypeval1=$('#ppdtestResult tbody tr').find( 'td#testTypeval'+rowppdID).text();
			var testTypeval1=$('#ppdtestResult tbody tr').find( 'td#c'+rowppdID).text();
			var ppd1docinterpret=$('#ppdtestResult tbody tr').find( 'td#ppd1docinterpret'+rowppdID).text();
			var ppd2docinterpret=$('#ppdtestResult tbody tr').find( 'td#ppd2docinterpret'+rowppdID).text();
			$('#ppdtestResult tbody tr').find('td#testtypeval'+rowppdID).text($("#updatetypeoftest option:selected").text());
			$('#ppdtestResult tbody tr').find('td#testReasonNameval'+rowppdID).text($("#updatereasonoftest option:selected").text());
			$('#ppdtestResult tbody tr').find('td#ppd1TestDateval'+rowppdID).text($("#updatePPDTestDate1").val());
			$('#ppdtestResult tbody tr').find('td#ppd2TestDateval'+rowppdID).text($("#updatePPDTestDate2").val());
			$('#ppdtestResult tbody tr').find('td#ppd1ReadingDateval'+rowppdID).text($("#updatePPDReadingDate1").val());
			$('#ppdtestResult tbody tr').find('td#ppd2ReadingDateval'+rowppdID).text($("#updatePPDReadingDate2").val());
			$('#ppdtestResult tbody tr').find('td#ppd1Readingval'+rowppdID).text($("#updateppdreading1").val());
			$('#ppdtestResult tbody tr').find('td#ppd2Readingval'+rowppdID).text($("#updateppdreading2").val());
			$('#ppdtestResult tbody tr').find('td#ppd1Resultval'+rowppdID).text($("#updateppdresult1").val());
			$('#ppdtestResult tbody tr').find('td#ppd2Resultval'+rowppdID).text($("#updateppdresult2").val());
			$('#ppdtestResult tbody tr').find('td#ppd1Notesval'+rowppdID).text($("#updateppdnotes1").val());
			$('#ppdtestResult tbody tr').find('td#ppd2Notesval'+rowppdID).text($("#updateppdnotes2").val());
			$('#ppdtestResult tbody tr').find('td#testReasonIdval'+rowppdID).text($("#updatereasonoftest").val());
			$('#ppdtestResult tbody tr').find('td#testTypeval'+rowppdID).text($("#updatetypeoftest").val());
			$('#ppdtestResult tbody tr').find('td#ppd1docinterpret'+rowppdID).text($("#ppd1docinterpret").val());
			$('#ppdtestResult tbody tr').find('td#ppd2docinterpret'+rowppdID).text($("#ppd2docinterpret").val());
			if(reqid!= "" && ppdId != "null"){  
			var jsonObj = {  
		  				    "reqid":reqid,
		  					"patcd":ptcd,
		  				    "notifid":notifcd,
		  				     "ppdTest":[
		  					]
		  				  };
			var  ppdId=$('#ppdid').val();
			var testReasonId=  $('#updatereasonoftest').val();
		   var  testType=   $('#updatetypeoftest').val();
		   var  ppd1TestDate=  $('#updatePPDTestDate1').val();
		   var  ppd1ReadingDate=  $('#updatePPDReadingDate1').val();
		   var  ppd1Reading= $('#updateppdreading1').val();
		   var  ppd1Result=  $('#updateppdresult1').val();
		   var  ppd1Notes=  $('#updateppdnotes1').val();
		    var ppd2TestDate=  $('#updatePPDTestDate2').val();
		   var  ppd2ReadingDate=  $('#updatePPDReadingDate2').val();
		   var  ppd2Reading=  $('#updateppdreading2').val();
		  var   ppd2Result=  $('#updateppdresult2').val();
		  var   ppd2Notes=  $('#updateppdnotes2').val();
		  var   ppd1docinterpret=  $('#ppd1docinterpret').val();
		  var   ppd2docinterpret=  $('#ppd2docinterpret').val();
			 var ppdTest = {
			 ppdId:ppdId,
		     regId: ptcd,
		     reqId: reqid,
			 resultupdatedby:updatedByUsername,
		     tbcNotifId: notifcd,
		     testReasonId:testReasonId,
		     testType:  testType,
		     ppd1TestDate: ppd1TestDate,
		     ppd1ReadingDate: ppd1ReadingDate,
		     ppd1Reading:ppd1Reading,
		     ppd1Result:ppd1Result,
		     ppd1Notes: ppd1Notes,
		     ppd2TestDate: ppd2TestDate,
		     ppd2ReadingDate:  ppd2ReadingDate,
		     ppd2Reading: ppd2Reading,
		     ppd2Result: ppd2Result,
		     ppd2Notes: ppd2Notes,
		     ppd1docinterpret: ppd1docinterpret,
		     ppd2docinterpret: ppd2docinterpret,
		     sendSms: "Y"
			}
		     jsonObj.ppdTest.push(ppdTest);
				 var myJSONObj =JSON.stringify(jsonObj);  		  
			 $.ajax({
		  			    type: "POST",
		  			    url:context+"/apiResponse?method=updateNotifPpdTest",
		  			    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		  					contentType : "application/json",
		  					crossDomain : true,
		  					data:myJSONObj,	
		  					dataType : "json",		
		  			        success: function (data) {			                 
		  			             if(data.code=="1"){
		  			            	//$('#ppdupdate').show();
		  			            	$('#validateUser').modal('hide');
		  	  			            $('#updatePpdData').modal('show');
		  			             	}
		  			                },
		  			          error : function(jqXHR, textStatus, errorThrown) {

		  			    if (jqXHR.status == "401"){
		  			     }}});}}
		}
	 $('#searchByEndDate').change(function() {
    	});
	 
	 function listNotificationBySearch(){
		 var startDate = $('#searchByStartDate').val();
		 var endDate = $('#searchByEndDate').val();
		 var disease = $('#searchByDiseaseList').val();
		 var status = $('#searchByStatusList').val();
		 var searchOption = $('input[name="searchOption"]:checked').val();
		 var myJSONObj =JSON.stringify({
			 "search":searchOption,
			 "startDate":startDate,
			 "endDate":endDate,
			 "diseasecd":disease,
			 "action":status
		});
		 checkSrchDate();		
		 if(((startDate != "" && endDate != "") && (endDate > startDate)) ||  (disease != "") || (status != "") ){
			
		   $.ajax({
			    type: "POST",
			    url:context+"/apiResponse?method=lstNotifBySearch",
			    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
					success : function(response) {
						 var userDetails = '';
						 var slNo =1;
						 var idname='';
						$("#notificationList tr").slice(1).remove();  
						$.each(response, function(i, item) {
				            
				            if(item.patient.idtype =='U'){
				            	idname=item.patient.idnumber;
				            }
				            else{
				            	idname=item.patient.namear;
				            	
				            }
						 userDetails += '<tr>';
						 userDetails += '<td>' +slNo + '</td>';
		                 userDetails += '<td>' +item.notifid   + '</td>';
		                 userDetails += '<td>' +item.patient.idnumber   + '</td>';
		                 if(item.patient.idtype !='U'){
		                 userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification('+item.notifid+')">' +idname  +'<br/>' +item.patient.nameen   +'</a></td> ';
				         }else{
		                 userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification('+item.notifid+')">' +idname +'</a></td> ';
		                 }
			             userDetails += '<td> <img src="img_new/edit1.png" title="update" class="c_point" onclick="editNotification('+item.notifid+')"> </td>';
			             userDetails += '</tr>';
			             slNo =slNo + 1;	
						});
					  $('#notificationList').DataTable().destroy();
	                 
	                   $('#notificationList tbody tr').remove();
	                   var notificationListTable = $('#notificationList').append(userDetails);
	                   notificationListTable.dataTable();
					    },
			          error : function(jqXHR, textStatus, errorThrown) {
			    if (jqXHR.status == "401"){
			     }
			          }
			});
	 }
	 }
	 $('#allinspector').change(function(){
         if ($(this).is(":checked")) {
	          $(this).val('1');
	     }else{
	          $(this).val('0');
	     }
	});
	 
	 $('select[name*="assignees"]').change(function() {
		 $("#inspectorreplace").prop('disabled', false);
			$("#inspectorreplace1").prop('disabled', false);
		    $("#inspectorreplace2").prop('disabled', false);
		    var selectedOptions = $('select[name*="assignees"] option:selected');
		    $('select[name*="assignees"] option').removeAttr('disabled');
		    selectedOptions.each(function() {        
		        var value = this.value;
		        if (value !== ''){           
		        var id = $(this).parent('select[name*="assignees"]').attr('id');
		        var options = $('select:not(#' + id + ') option[value=' + value + ']');
		        options.attr('disabled', 'true');
		        } 
		    });
		}); 
	
	 function callHistory() {
		 $("#history").toast({ 
	          autohide: false ,
			  delay: 100000
	        }); 
		 $("#history").show();
		$("#history").toast("show");
	 }
	 
</script>
		<script src="js/sb-admin-2_d.js"></script>
		<script src="js/printReport.js"></script>
		<script src="admin/datatables/jquery.dataTables.min.js"></script>
		<script src="admin/datatables/dataTables.bootstrap4.min.js"></script>
		<script src="js/demo/datatables-demo.js"></script>

		<!--<script src="js/jquery.webui-popover.js"></script>-->
		<script src="js/jquery.nicescroll.min.js"></script>
</html>




			            var myJSONObjNotify='';
		                var jsonObjNotify={};
	         			$('#notifyCreate').hide();
		             	$('#notifyUpdate').hide();
		             	$('#notifyCatError').hide();
		                var nameen= $('#nameEn').text();
		                var namear=  $('#nameAr').text();
		                var mobile=  $('#mobile').text();
		                var fileno= $('#fileNo').val();
		                var bloodgroup= $('#bloodgroup').text();
		                var address= $('#address').text();
		                var sponsorcid=$('#sponsor').text();
		                var workplace= $('#worplace').text();
		                var residencyOther = "";
		                var occupationOther ="";
		                if(occupationcd=='18'){
		             	 occupationOther=$('#occupation').text();	
						}else{
		             	 occupationOther="";
		                }
		                if(recidencycd=='5'){
		             	 residencyOther=$('#recidency').text();	
						}else{
		             	 residencyOther="";
		                } 
		                var phone = $(".phone_name").map(function(){ return $(this).val() }).get().join(', '); 
		                var phonenumber= []
		                phonenumber.push(mobile);				                 
		                var intref='';
			   			var source='D';
		                var notiftype='E';
		                var riskfactor=$('#riskFactorPRC').val();
		                var riskfactorOther = $('#riskFactorPRCother1').val();
		                var action=$('#action').val();					                   
		                var assignto=$("#assignees").val();
		                var diagnotes=$("#diagnotes").val();
		                var fileno=$("#fileNo").val();
		                var prcfile=$("#fileNoPRC").val();
		                var locationtype='E'
		                var treatcategory= $('#treatCat').val();  
		                var medresistance= $('#medResistance').val();
		                var position= $('#patPosition').val();
		                var subcode=$('#subdiagnosisMain').val();
		                var startDoseDate = $('#startDoseDate'). datepicker('getDate');
					    var dosesstartdt=$.datepicker.formatDate('dd/mm/yy', startDoseDate);
				        var enddosesDate = $('#enddosesDate'). datepicker('getDate');
					    var dosesenddt=$.datepicker.formatDate('dd/mm/yy', enddosesDate);
					    var disDate = $('#disDate'). datepicker('getDate');
					    var dischargedt=$.datepicker.formatDate('dd/mm/yy', disDate);
					    var treatStartdate = $('#treatStartdate'). datepicker('getDate');
					    var admiteddate = $('#addmitedDate'). datepicker('getDate');
					    var admiteddt=$.datepicker.formatDate('dd/mm/yy', admiteddate);
					    var refferredContact = $('#refferredContact').val();  
					    var receivedContact = $('#receivedContact').val();  
					    var estimatedContact = $('#estimatedContact').val();
					    var physicname= $("#phyName").val();
					    var notifcategory=$('#notifycat').val();
					    var diseasecd=$('#locDisease').val();
					    var outcome=$('#treatOutcome').val();
					    var outcomedate='';
					    var notiflocationtype=$('#hospCat').val();
					    var notifsender=$('#hospCat').val();
						if(notifsender=='G'){
						  var notifsender=$('#hospName').val();
						}
						if(notifsender=='P'){
		 				 var notifsender=$('#hospNameP').val();
		 				}
						var physicphone=$('#phyNo').val();  
						var approved='';
						var approvedby='';
						var approveddate='';
						/* var notifdate='';
					    notifdate = $('#notifdate').val(); */
					    let notifDateTemp = $('#notificationDate'). datepicker('getDate');
					    let notifdate = $.datepicker.formatDate('dd/mm/yy', notifDateTemp);
						var birthdt=  $('#dob').text();  
						var entrydt=  $('#entryDate').text();  
						var pcrdateref = $('#pcrdateref'). datepicker('getDate');
						var prcreferraldt=$.datepicker.formatDate('dd/mm/yy', pcrdateref);  
						var isolateddate = $('#isolateddateref'). datepicker('getDate');
						var isolateddt=$.datepicker.formatDate('dd/mm/yy', isolateddate);  
						var referreddatedt=$('#referralDate'). datepicker('getDate');
						var referreddate=$.datepicker.formatDate('dd/mm/yy', referreddatedt);
						var notifSenderOther = $('#hospNameOther').val();
						var inspectorreplace = $('#inspectorreplace').val();
						var inspectorreplace1 = $('#inspectorreplace1').val();
						var inspectorreplace2 = $('#inspectorreplace2').val();
						var allinspector = $('#allinspector').val();
						var prclocation = $('#prclocation').val();
						var notiflocfileno= $('#fileNoTB').val();
						var pulmonarytb='';
						var extrapulmonarytb='';
						  if(pulmonarytbcase) {
							pulmonarytb= $('#tbsource').val(); 
						  }
						 if(extrapulmonarytbcase) {
							extrapulmonarytb= $('#tbsource').val();   
						  }
						var prcposition=$('#patPositionPRC').val();   
						var physnamePRC=$('#phyNamePRC').val();   
						var discharged='';
						if(dischargedt!=''){
					      discharged='Y';	
					    } 
						var IDval=$('#civilid').val();
						/* var IDval='';
						if(Idtype=='U'){
						  IDval=idValOther;
						}else{
						  IDval=idVal;
						}  */
				function createjsonobj(reqid){
		       	  jsonObjNotify = {
							"reqid":reqid,
						    "patcd":ptcd,
						    "notiftype":notiftype,
						    "notifcategory":notifcategory,
						  	"notiflocationtype":notiflocationtype,
						  	"notifsender":notifsender, 
						  	"diseasecd":diseasecd,
						    "pulmonarytbcase":pulmonarytb,
						  	"extrapulmonarytbcase":pulmonarytb,
						  	"outcome":outcome,
						  	"outcomedate":outcomedate,
						  	"notifdate":notifdate,
						  	"physicname":physicname,
						  	"physicphone":physicphone,
						  	"source":source,
						  	"approved":approved,
						  	"approvedby":approvedby,
						  	"notiflocfileno":notiflocfileno,
						  	"approveddate":approveddate,
						  	"autoapproval":"Y",
						    "estimatedContacts":estimatedContact,
						    "receivedContacts":receivedContact,
						    "referredContacts":refferredContact,
						    "notifSenderOther":notifSenderOther,
						    "inspectorreplace": inspectorreplace,
						    "inspectorreplace1": inspectorreplace1,
						    "inspectorreplace2": inspectorreplace2,
						    "allinspector":allinspector,
						    "notiflocation":localStorage.getItem('loccode'),
						    "prc":{
								"prcid":"",
								"prcfile":prcfile,
								"position":prcposition,
								"medresistance":medresistance,
								"treatcategory":treatcategory,
								"treatstartdt":'',
								"dischargedt":dischargedt,	                               
								"admitteddt":admiteddt,
								"discharged":discharged,
								"dosesstartdt":dosesstartdt,
								"dosesenddt":dosesenddt,
								"notes":diagnotes,
								"physicname":physnamePRC,
								"prclocation":prclocation
						  },
						      "patient":{
						    	"idnumber":IDval,
						  		"idtype":Idtype,
						  		"ptcd":ptcd,
						  		"nameen":nameen,
						  		"namear":namear,
						  		"nationality":nationalitycd,
						  		"gender":gendercd,
						  		"residency":recidencycd,
						  		"residencyOther":residencyOther,
						  		"occupationOth":occupationOther,
						  		"occupation":occupationcd,										  		
						  		"entrydate":entrydt,
						  		"address":address,
						  		"governorate":governoratecd,
						  		"district":districtcd,
						  		"birthdate":birthdt,
						  		"refnumber":"",
						  		"sponsorcid":sponsorcid,
						  		"patphone":phonenumber,
						  		"workplace":workplace,
						  	   	"phone":phone,
						  		"maritalstatus":maritalcd,			
						  		 "bloodgroup":bloodgroup
						      },
						      "diseaseIdList":[],
						      "diagnosis":[],
						      "lab":[],
						      "radiology":[],
						      "ppdTest": [],
						   
					 };
			       	if($('#diagnosisMain').val()!=''){									
					    var diag = {}
		                var self = $(this);
					    diag.code = $('#diagnosisMain').val();
					    diag.subcode = $('#subdiagnosisMain').val();
					    diag.extype='D';
					    diag.isprc='N';
					    diag.doctorname='';
					    diag.subOtherCodeName = $('#subdiagnosisother1').val();
					    jsonObjNotify.diagnosis.push(diag);
				   } 
				   if($('#daignosisHos').val()!=''){										  
				    var diagPCR = {}
	                var self = $(this);
				    diagPCR.code = $('#daignosisHos').val();
				    diagPCR.subcode = $('#subdiagnosisHos').val();
				    diagPCR.extype='D';
				    diagPCR.isprc='Y';
				    diagPCR.doctorname='';
				    diagPCR.subOtherCodeName = $('#subdiagnosisHosother1').val();
				    jsonObjNotify.diagnosis.push(diagPCR);
				   }
				   $("#diseasetablehos tr:not(:first)").each(function (i, value) {
					   var diseasehos = {}
	                   var self = $(this);
					   diseasehos.code = self.find("td:eq(0)").text().trim()
					   diseasehos.name = self.find("td:eq(1)").text().trim()
	                   jsonObjNotify.diseaseIdList.push(diseasehos);
	               }); 
						}
						createjsonobj(reqid);
						
						  var myJSONObj =JSON.stringify({"idnumber": IDval,"idtype":Idtype});
						  if(IDval != ""){
						 $.ajax({
				               type: "POST",
				               url:context+"/apiResponse?method=verifyopennotifs",
				               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
								contentType : "application/json",
								crossDomain : true,
								data:myJSONObj,	
								dataType : "json",		
				                success: function (data) {			                 
					                    if(data.code=="1"){
					                    	 $('#notifyCreateSuccess').hide();
										   // $('#saveNoti').hide();
						                    // $('#updateNoti').show();	
						                	 $('#notifyCreateError').show();
						                	 $('#notifyCreatedNo').text(data.result);
					                    	 $('#saveNotification').attr('disabled', 'true');
					                    }
					                    if(data.code=="-3"||data.code=='-2'){
					    					$('#saveNotification').removeAttr("disabled");
							                myJSONObjNotify =JSON.stringify(jsonObjNotify);		   
											$.ajax({
									               type: "POST",
									               url:context+"/apiResponse?method=createnotification",
									               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
													contentType : "application/json",
													crossDomain : true,
													data:myJSONObjNotify,	
													dataType : "json",		
									               success: function (data) {			                 
										                    if(data.code=="1"){
										                    	 notifcd=data.details.notifcd;
										                    	$('#notifyID').text(notifcd);
										                    	$('#notifyCreateSuccess').show();
										                    	$('#notifyCreateError').hide();
										                    	 $('#notifyVerifyOpenRequestError').hide();
										                }
										                 if(data.code == "-2") {
										                	 $('#notifyCreateSuccess').hide();
															  //  $('#saveNoti').hide();
											                   //  $('#updateNoti').show();	
											                	 $('#notifyCreateError').show();
											                	 $('#notifyCreatedNo').text(data.details.opennotif);
										                    	 $('#saveNotification').attr('disabled', 'true');
										                 }
										   	},
									     error : function(jqXHR, textStatus, errorThrown) {
									 	     if (jqXHR.status == "401"){
									 	     }
									      }
									     });
					                    }			
					              },
			           error : function(jqXHR, textStatus, errorThrown) {
			         if (jqXHR.status == "401"){
			         }
			         }
			         }); 
					}