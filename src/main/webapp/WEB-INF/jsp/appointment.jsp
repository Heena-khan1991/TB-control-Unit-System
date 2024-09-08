<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="" dir="">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="TB control unit">
<title>TB Unit</title>
<!-- GOOGLE FONTS -->
<!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />-->
<!--    <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />-->
<link href="assets/plugins/material/css/materialdesignicons.min.css"
	rel="stylesheet" />
<!-- PLUGINS CSS STYLE -->
<link href="assets/plugins/simplebar/simplebar.css" rel="stylesheet" />
<!-- <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />-->
<!-- No Extra plugin used -->
<!-- STYLE CSS -->
<link id="" rel="stylesheet" href="assets/css/style_6.css" />
<!-- SLEEK CSS -->
<link id="sleek-css" rel="stylesheet" href="assets/css/sleek_6.css" />
<link rel="stylesheet" type="text/css"
	href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- FAVICON -->
<link href="assets/img/favicon.png" rel="shortcut icon" />
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/css/jquery.webui-popover.css">
<!--
      HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
    -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script src="assets/plugins/nprogress/nprogress.js"></script>
<!-- <script type="text/javascript" src="js/common.js"></script>
 -->
<script type="text/javascript" src="js/tokenValidator.js"></script>
<link href="assets/plugins/data-tables/datatables.bootstrap4.min.css"
	rel="stylesheet">
<link href="assets/plugins/data-tables/responsive.datatables.min.css"
	rel="stylesheet">

<style>
.modal .input-group {
	margin-bottom: 0rem !important;
}

.hidden {
	display: none !important;
}

.c_select {
    border: 0 !important;
   // font-weight: bold !important;
    color: black !important;
    appearance: none !important;
}
.modal .form-group {
	margin-bottom: 0.75rem;
}

#modal_view .form-group {
	margin-bottom: 0.4rem;
}

#progressbar li {
	width: 23% !important;
}

.switch .switch-label {
	background-color: red;
}

.switch switch-success {
	background-color: #0d8428;
}

.displayNone {
	display: none !important;
}

.displayBlock {
	display: block !important;
}

.control-checkbox .control-indicator:after {
	left: 6px;
	top: 1px;
	width: 6px;
	height: 15px;
	background: transparent !important;
	border: solid #1b223c;
	border-width: 0 2px 2px 0;
	transform: rotate(45deg);
}

.control-indicator {
	position: absolute;
	top: 2px;
	left: 0;
	height: 20px;
	width: 20px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 0.125rem;
}

#datepicker5 {
	z-index: 99999 !important;
}

.widget-dropdown .dropdown-menu .dropdown-item {
	padding: 0.125rem 1.25rem !important;
}

#followUpList a, #appointmentList a {
	color: #2196F3;
	font-weight: 500
}

/* a:visited {   color: navy!important; }
 */
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body class="header-fixed sidebar-fixed sidebar-dark header-light"
	id="body">
	<!-- ====================================
    ——— WRAPPER
    ===================================== -->
	<div class="wrapper">

		<!-- Github Link -->
		<!-- ====================================
          ——— LEFT SIDEBAR WITH OUT FOOTER
        ===================================== -->
		<jsp:include page="inspectorSidebar.jsp"></jsp:include>


		<!-- ====================================
        ——— PAGE WRAPPER
        ===================================== -->
		<div class="page-wrapper">

			<!-- Header -->
			<jsp:include page="inspectorHeader.jsp"></jsp:include>
			<!-- ====================================
          ——— CONTENT WRAPPER
          ===================================== -->
			<div class="content-wrapper mt-4">
				<div class="content">
					<div class="card">
						<!-- <div
							class="card-header bg-gradient-light card-header-border-bottom">
							<h2 class="text-blue text-center">Follow up Pateints &
								Contacts</h2>
						</div> -->
						<div class="card-body px-2 py-2">
							<div class="tab" role="tabpanel">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation"><a href="#tbappoint"
										class="nav-link active" id="tbappoint-tab" aria-controls="tbappoint"
										role="tab" data-toggle="tab"><fmt:message
												key="label.appointment" /></a></li>
								</ul>
								<div class="tab-content p-0 border-0" id="myTabContent1">
									<div class="tab-pane pt-0 fade show active" id="tbappoint"
										role="tabpanel" aria-labelledby="tbappoint-tab">
										<div class="row mt-2">
											<div class="col-lg-11">
												<!--<div class="one newdiv1 text-center ">   <h5>User List</h5> </div> -->
												<div class="card border-0">
													<!-- <div class="card-header  bg-gradient-light">
														<h5 class="text-blue">Notification List</h5>
													</div> -->
													<!--<div class="one newdiv2 text-center  mt-0">   <h5>Users List</h5> </div>-->
													<div class="card-body">
														<div class="row">
															<div class="table-responsive">
																<div class="col-xl-12 col-md-12 mb-3 pl-0">
																	<div class="card border-left-info shadow h-100">
																		<div class="card-body pt-2 pb-2">
																			<div class="row no-gutters align-items-center">
																				<table width="100%" border="0" cellspacing="0"
																					cellpadding="5">
																					<tbody>
																						<tr>
																							<td colspan="2">
																								<table width="100%" border="0" cellspacing="0"
																									cellpadding="5" class="searchByDiseaseOptions">
																									<tbody>
																										<tr>
																											<td scope="col">
																												<div class="form-group row ">
																													<label for="searchByName"
																														class="col-form-label  col-sm-2">Name:
																														<!-- <span class="red" style="color: red;">*</span> -->
																													</label>
																													<div class="col-sm-6">
																														<input type="text" class="form-control"
																															id="searchByName" name="searchByName">
																													</div>
																													<%-- <span id="errorSearchByName"><font
																													color="red"><fmt:message key="label.errorSearchByName" />
																													</font></span> --%>
																												</div>
																											</td>
																											<td scope="col"></td>
																										</tr>
																									</tbody>
																								</table>
																							<td class="text-right"><input type="button"
																								class="btn btn-info" value="Search"
																								onclick=appNameBySearch()>&nbsp;&nbsp;&nbsp;&nbsp;
																								<input type="button" class="btn btn-danger"
																								value="Clear" onclick=clearAllAppointment()>&nbsp;&nbsp;&nbsp;&nbsp;
																								<button id="addRow7" class="btn btn-green"
																									data-target="#appointmentModal"
																									onclick="addAppointmentBtn()"
																									data-toggle="modal">
																									<i class="fa fa-plus"></i> <span class="text">Add
																										Apppointment</span>
																								</button></td>
																						</tr>
																					</tbody>

																				</table>
																			</div>
																		</div>
																	</div>
																</div>
																<table class="table nowrap no-footer dataTable"
																	style="width: 100%" id="appointmentList">
																	<thead class="bg-gradient-blue">
																		<!--bg-primary text-white-->
																		<tr>
																			<th class=" text-white">Sl No.</th>
																			<th class=" text-white" style="display: none;">Id</th>
																			<th class=" text-white">Name</th>
																			<th class=" text-white">Date</th>
																			<th class=" text-white">Day</th>
																			<th class=" text-white">Visit Name</th>
																			<th class=" text-white">Test Required</th>
																			<th class=" text-white">No Of Contacts</th>
																			<th class=" text-white">Email</th>
																			<th class=" text-white">Phone</th>
																			<th class=" text-white text-center">Status</th>
																			<th class=" text-white" style="display: none;">StatusVal</th>
																			<th class=" text-white" style="display: none;">Shift</th>
																			<th class=" text-white" style="display: none;">Test</th>
																			<th class=" text-white" style="display: none;">Reference</th>
																			<th class=" text-white" style="display: none;">Comment</th>
																			<th class=" text-white" style="display: none;">Visit
																				Type</th>
																			<th class=" text-white">Action</th>
																			<th class=" text-white" style="display: none;">AppointType</th>
																			<th class=" text-white" style="display: none;">ReferenceType</th>
																			<th class=" text-white" style="display: none;">TimeSlot</th>
																			<th class=" text-white" style="display: none;">Nationality</th>
																			<th class=" text-white" style="display: none;">Chest Xray</th>
																		</tr>
																	</thead>
																	<tbody></tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>


											<div class="row my-3 pb-2">
												<div class="col-lg-12">
													<div class="card  border-0">

														<!--add modal-->
														<div class="modal fade" id="appointmentModal"
															role="dialog" aria-labelledby="exampleModalCenterTitle"
															aria-hidden="true">
															<div class="modal-dialog modal-dialog-centered"
																role="document" style="max-width: 35%;">
																<!--modal-lg-->
																<div class="modal-content">
																	<div class="modal-header bg-gradient-blue px-4">
																		<h5 class="modal-title" id="appointLabel"></h5>
																		<button type="button" class="close text-white"
																			data-dismiss="modal" aria-label="Close" onclick ="addAppointmentBtn()">
																			<span aria-hidden="true">×</span>
																		</button>
																	</div>
																	<div class="modal-body px-4 pb-0 mbg4">
																	<div class="row mb-2">
																	<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Appointment Type:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<select name="sell" id="appointType"
																								class="form-control">
																								<option selected="selected" value=""><fmt:message
																										key="label.select" /></option>
																							</select>
																						</div>
																					</div>
																				</div>
																	</div>
																	<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Reference Type:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8">
																						<div class="input-group"  id="referenceTypeIndividual">
																						<div class="form-check form-check-inline">
																								<input class="form-check-input" type="radio" id="idTypeC"
																								name="idType" value="C">&nbsp; <label
																								class="form-check-label" for="idTypeC"><fmt:message
																								key="label.civilid" /></label>
																							</div>
																							<div class="form-check form-check-inline">
																								<input class="form-check-input" type="radio" id="idTypeP"
																								name="idType" value="P">&nbsp; <label
																								class="form-check-label" for="idTypeP"><fmt:message
																								key="passport" /></label>
																							</div>
																							<div class="form-check form-check-inline">
																								<input class="form-check-input" type="radio" id="idTypeG"
																								name="idType" value="G">&nbsp; <label
																								class="form-check-label" for="idTypeG"><fmt:message
																								key="gcc" /></label>
																							</div>

																						</div>
																						<div class="input-group"  id="referenceTypeOthers">
																							<input type="text" class="form-control"
																								id="referenceType"  maxlength = "50">
																						</div>
																					</div>
																				</div>
																	</div>
																	<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Reference Number:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<input type="text" class="form-control"
																								id="appReference"  maxlength = "50">
																						</div>
																					</div>
																				</div>
																	</div>
																	<div class="col-sm-12" id="appNationalityField">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Nationality:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																					
																							<select name="sell" id="appNationality"
																								class="form-control">
																								<option selected="selected" value=""><fmt:message
																										key="label.select" /></option>
																							</select>
																							<span id="searchPass" style="display: none;"><b><font color="red"><fmt:message key="label.searchPassportError" /></font></b></span>
																						<!-- <div class="input-group">
																							<button type="button" class="btn btn-tumblr text"
																							 onclick ="findPassPatient()">Search</button>
																						</div> -->
																					</div>
																				</div>
																				<div class="col-sm-12 text-right mt-1 ">
																							<button type="button" class="btn btn-info text" onclick="findPassPatient()"> <i class="fa fa-search" aria-hidden="true"></i> Search</button> <hr class="">
																				</div>
																	</div>
																		
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Name
																						:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<input type="text" class="form-control"
																								id="appName" maxlength = "200">
																						</div>
																						<span id="dataUnavailable" style="display: none;"><b><font
																					      color="red"><fmt:message
																						  key="label.unAvailable" /></font></b></span>
																						 <span id="dbError"
																						style="display: none;"><b><font
																								color="red"><fmt:message
																										key="label.dbfetchError" /></font></b></span>
																					</div>

																				</div>
																			</div>

																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Date:<span
																						class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<input type="text" class="form-control"
																							id="appDate">
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Visit:
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<select name="sell" id="appVisit"
																								class="form-control">
																								<option selected="selected" value=""><fmt:message
																										key="label.select" /></option>
																							</select>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Shift:<span
																						class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<select name="sell" id="appShift"
																								class="form-control">
																								<option selected="selected" value=""><fmt:message
																										key="label.select" /></option>
																							</select>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Time Slot:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<select name="sell" id="appTimeSlot"
																								class="form-control">
																								<option selected="selected" value=""><fmt:message
																										key="label.select" /></option>
																							</select>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Test
																						Required:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<select name="sell" id="appTest"
																								class="form-control">
																								<option selected="selected" value=""><fmt:message
																										key="label.select" /></option>
																							</select>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Chest Xray:
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<input type="checkbox"  name = "chestXray" id= "appChestXray" value="1" disabled>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">No
																						Of Contacts:<span class="text-danger">*</span>
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<input type="number" class="form-control"
																								id="appNoOfContacts" min ="0" max="9999" maxlength = "4" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
																								onkeydown="javascript: return ['Backspace','Delete','ArrowLeft','ArrowRight'].includes(event.code) ? true : !isNaN(Number(event.key)) && event.code!=='Space'">
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Email:
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<input type="text" class="form-control"
																								id="appEmail" onchange="ValidateAppEmail()">
																						</div>
																						<div style="color: red;"
																							id="appEmailValidationMsg"></div>
																					</div>
																				</div>
																			</div>

																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Phone:
																					</label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<input type="tel" maxlength="14"
																								class="form-control" id="appPhone"
																								onchange="ValidateAppPhone()">
																						</div>
																						<div style="color: red;"
																							id="appPhoneValidationMsg"></div>
																					</div>
																				</div>
																			</div>

																			<div class="col-sm-12">
																				<div class="form-group row ">
																					<label class="col-sm-4 col-form-label">Comments
																						: </label>
																					<div class="col-sm-8 ">
																						<div class="input-group">
																							<textarea class="form-control" id="appNote"></textarea>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="modal-footer px-4 py-1 text-right">
																		<span id="appcreateMessage"><font color="green"><fmt:message
																					key="label.appcreateMessage" /></font></span> <span
																			id="appupdateMessage"><font color="green"><fmt:message
																					key="label.appupdateMessage" /></font></span> <span
																			id="appupdateerrorMessage"><font color="green"><fmt:message
																					key="label.appupdateerrorMessage" /></font></span><span
																			id="apperrorMessage"><font color="red"><fmt:message
																					key="label.apperrorMessage" /></font></span> <span
																			id="appvalidationMessage"><font color="red"><fmt:message
																					key="label.appvalidationMessage" /></font></span><input
																			type="button" id="addAppointment"
																			class="btn  btn-dropbox text" value="Save"> <input
																			type="button" id="updateAppointment"
																			class="btn  btn-dropbox text" value="Update">
																		<button type="button" class="btn btn-tumblr text"
																			data-dismiss="modal" onclick ="addAppointmentBtn()">Cancel</button>
																		<!-- btn--->
																	</div>

																</div>
															</div>
														</div>
														<!--end modal-->

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
				<!-- End Content -->
			</div>
			<!-- End Content Wrapper -->

			<div class="modal fade" id="appUpdateModal" role="dialog"
				aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<!--modal-lg-->
					<div class="modal-content">
						<div class="modal-header bg-gradient-blue px-4">
							<h5 class="modal-title" id="exampleModalCenterTitle">Update
								Appointment Status</h5>
							<button type="button" class="close text-white"
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body px-4 pb-0 mbg4">
							<div class="row mb-2">
								<div class="col-sm-12">
									<div class="form-group row ">
										<label class="col-sm-4 col-form-label">Appointment
											Status :<span class="text-danger">*</span>
										</label>
										<div class="col-sm-8 ">
											<div class="input-group">
												<select name="followupstatus"
													class="form-control selectVal3 col-sm-8" id="appStatus">
													<option value="">--Select--</option>
												</select>
											</div>
										</div>

									</div>
								</div>

							</div>
							<div class="modal-footer px-4 py-1 text-right">
								<span id="updateappMessage"><font color="green"><fmt:message
											key="label.updateMessage" /></font></span> <span
									id="errorupdateappMessage"><font color="red"><fmt:message
											key="label.errorMessage" /></font></span>
								<button type="button" class="btn  btn-dropbox text "
									onclick="updateAppStatus()">Update</button>
								<button type="button" class="btn btn-tumblr text"
									data-dismiss="modal">Cancel</button>
								<!-- btn--->
							</div>

						</div>
					</div>
				</div>
				<!--end modal-->
			</div>


			<!--add modal-->

		</div>
	</div>
	<div class="modal-footer">
		<div class="text-center col-sm-12">
			<%-- <span id="saveDetailsSuccess"><font color="green"><fmt:message
							key="label.DetailsSuccess" /></font></span> --%>
			<span id="passcivilOpenNotif" style="display: none;"><b><font
					color="red"><fmt:message key="label.opennotifyAvailable" /></font></b>
			</span> <span id="notifyPass"></span> <span id="passcivilAvailable"
				style="display: none;"><b><font color="red"> <fmt:message
							key="label.passcivil" /></font></b></span> <span id="civilpassno"></span> <span
				id="patManField" style="display: none;"> <b><font
					color="red"><fmt:message key="label.manField" /> </font></b></span>

		</div>

	</div>
	</div>
	</div>
	</div>


	<!--end modal-->

	<div id="listContent2" style="display: none;">
		<!--
		<ul class="list-group">
		<li class="listyle ml-3">Alzheimer disease and dementia </li>
					  <li class="listyle ml-3">Heart disease</li>
					  <li class="listyle ml-3">Asthma</li>
					  </ul>
-->

		<table width="100%" border="0" cellspacing="0" cellpadding="5"
			class="table table-bordered">
			<thead class="bg-gradient-light">
				<tr>
					<th class="text-primary">ID</th>
					<th class="text-primary">Meeting Date</th>
					<th class="text-primary">Estimated No.</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>31/12/2023</td>
					<td><span class="badge badge-primary">5</span></td>
				</tr>
			</tbody>
		</table>



	</div>
	<!--end popover-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
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


<div class="modal fade" id="deleteAppointmentModal" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-blue text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteApp" />
					</h5>
					<button type="button" class="close text-white" data-dismiss="modal"
						onclick="clearmesgApp()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<input type="hidden" id=appointmentRowNo><span
										class="col-sm-4 col-form-label"> <fmt:message
											key="label.deleteAppointmentConfirm" /></span>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="appdeletesuccess"><font color="green"><fmt:message
									key="label.appdeletesuccess" /></font></span>
					</div>
					<input type="button" value="Yes" class="btn btn-green"
						id="deleteAppointment">
					<button type="button" class="btn btn-tumblr text"
						data-dismiss="modal" onclick="clearmesgApp()">
						<fmt:message key="label.cancel" />
					</button>
				</div>
			</div>
		</div>
	</div>
	<!--end modal-->
	
	<!-- Patient Details END -->
	<!-- Footer -->
	<footer class="footer mt-auto">
		<div class="copyright bg-white text-center">
			<p>
				Copyright © <span id="copy-year"></span> Ministry of Health- Kuwait.
				All rights reserved
			</p>
		</div>
		<script>
        var d = new Date();
        var year = d.getFullYear();
        document.getElementById("copy-year").innerHTML = year;
      </script>
	</footer>
	<!-- End Page Wrapper -->
	<!-- End Wrapper -->
	<!-- Javascript -->
	<script src="assets/js/jquery-1.12.4.js"></script>
	<script src="assets/js/jquery-ui.js"></script>
	<script>
		$( "#datepicker5" ).datepicker({
			  changeMonth: true,
			  changeYear: true,
			  /*format: 'dd/mm/yyyy',	  */
			  dateFormat: 'dd/mm/yy',
		
			});

		$( "#entryDateOther" ).datepicker({
			  changeMonth: true,
			  changeYear: true,
			  /*format: 'dd/mm/yyyy',	  */
			  dateFormat: 'dd/mm/yy',
		
			});
	  	 $(".datepicker").datepicker({
	 		changeMonth: true,
	 		changeYear: true,
	 		yearRange: "1930:2060",
	 		dateFormat: 'dd/mm/yy'
	 		
	 	});	
	  	 $("#dateOfReferral").datepicker({
		 		changeMonth: true,
		 		changeYear: true,
		 		minDate: 0,
		 		//yearRange: "2024:2060",
		 		dateFormat: 'dd/mm/yy'
		 	});
	  	$("#appDate").datepicker({
	 		changeMonth: true,
	 		changeYear: true,
	 		minDate: 0,
	 		//yearRange: "2024:2060",
	 		dateFormat: 'dd/mm/yy'
	 	});	
	</script>
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery.webui-popover.js"></script>
	<script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
	<script src="assets/plugins/data-tables/datatables.bootstrap4.min.js"></script>
	<script src="assets/plugins/data-tables/datatables.responsive.min.js"></script>
	<script src="assets/js/sleek.js"></script>
	<script>
	jQuery(document).ready(function() {		
	 var lang = '<%=response.getLocale().getLanguage()%>';
     var context = '${pageContext.request.contextPath}';
     if (lang == 'en') {
			$('#arabic').show();
			$('#english').hide();
			$('#nameHeader').append(sessionStorage.getItem('nameen'));
			$('#nameHeader1').append(sessionStorage.getItem('nameen'));
			$('#nameHeader2').append(sessionStorage.getItem('nameen'));
			$('#role').append(sessionStorage.getItem('roleen'));
			$('#locHeader').append(sessionStorage.getItem('locen'));
			$('#locHeader1').append(sessionStorage.getItem('locen'));
			$('#role').text(sessionStorage.getItem('roleen'));
			
		} else {
			$('#arabic').hide();
			$('#english').show();
			$('#nameHeader').append(sessionStorage.getItem('namear'));
			$('#nameHeader1').append(sessionStorage.getItem('namear'));
			$('#nameHeader2').append(sessionStorage.getItem('namear'));
			$('#role').append(sessionStorage.getItem('rolear'));
			$('#locHeader').append(sessionStorage.getItem('locar'));
			$('#locHeader1').append(sessionStorage.getItem('locar'));
			$('#role').text(sessionStorage.getItem('rolear'));
		}
		$('#arabic').click(function() {
			$(this).hide();
			$('#english').show();
		});
 	 $('#updateMessage').hide();
	 $('#errorMessage').hide();
	 $('#updateappMessage').hide();
	 $('#errorupdateappMessage').hide(); 
	 $('#appcreateMessage').hide();
	 $('#apperrorMessage').hide();
	 $('#appvalidationMessage').hide();	 
	 $('#validationMessage').hide();
	 $('#errorSearchByName').hide();
	 $('#referenceTypeIndividual').hide();
	 $('#referenceTypeOthers').show();
	 var appId = ''; appmntid = ''; idtype = ''; ptcd = '';
	 var mapaction =[]; maptest = [];
	 var myJSONObj = JSON.stringify({"usercd":sessionStorage.getItem('username')});
	 $.ajax({
			type : "GET",
			url : context+"/getlistresponse?method=lstappmntdata",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			success : function(response) {
				 var response = JSON.parse(response);
				// list app tests
				  $.each(response.details.tests,function(i,response)
			            	 {  	                    
		   	            
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
		   	       	    	maptest.push({
	   	       	        		code: response.code, 
	   	       	            	nameen: response.nameen,
	   	       	          		namear: response.namear
	   	                 	});
			                  $(div_data).appendTo('#appTest'); 
	                    });
				
				// list app shift
			  	  $.each(response.details.shift,function(i,response)
			            	 {
		   	                    
		   	             
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
			                  $(div_data).appendTo('#appShift'); 
	                    });
				
			  	// list app type
			  	  $.each(response.details.apptypes,function(i,response)
			            	 {
		   	                    
		   	             
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
			                  $(div_data).appendTo('#appointType'); 
	                    });
			  	
				// list app status
			    $.each(response.details.appstatus,function(i,response)
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
			                 $(div_data).appendTo('#appStatus'); 
	                    });
			 // list app Visit
			    $.each(response.details.visittype,function(i,response)
			            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
			                 $(div_data).appendTo('#appVisit'); 
	                    });
			    
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
					 getToken();
				}
			}
	 });
	  
	 refreshAppointment();
	});
	 </script>
		<script>
			var context = '${pageContext.request.contextPath}';
		 	var lang = '<%=response.getLocale().getLanguage()%>'; 
	  	   function refreshAppointment(){
	  		 $('#searchByName').val('');
           	  var lstappntObj =JSON.stringify({});
        		$.ajax({
                  type: "POST",
                  url:context+"/apiResponse?method=lstinsappointments",
                  headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
        		  contentType : "application/json",
        		  crossDomain : true,
        		  data:lstappntObj,	
        		  dataType : "json",
        		  success : function(response) {
        			 if(response.code == "1"){
        				 populateAppointmetTable(response.details);
        				}},
        				error : function(jqXHR, textStatus,errorThrown) {
        					if (jqXHR.status == "401") {
        						}
        					}
        			});
	  	   }
        		
        		function populateAppointmetTable(p_applist){
        			if(p_applist=='' ||  p_applist ==null){
        				return;
        			}
        			let appointmentDetails = '';let table1='' ;
     			    var slNo =1;var notifyloc='';
					   for (var i = 0; i < p_applist.length; i++) {
						var id = p_applist[i];
						appointmentDetails += '<tr id=appointmentrow'+ (i+1) +'>';
						appointmentDetails += '<td>'+ slNo + '</td>';		
						/* if (lang == 'en') {
							appointmentDetails += '<td>'+ id.insname+ '</td>';
						} else {
							appointmentDetails += '<td>'+ id.insname+ '</td>';
						} */  
						let idDesc ="";
		            	if(id.insreferencetype =='G'){
		            		idDesc = " (GCC) ";
		            	}else if(id.insreferencetype =='P'){
		            		idDesc = " (Passport) "
		            	}else if(id.insreferencetype =='U'){
		            		idDesc = " (Unknown) "
		            	}else if(id.insreferencetype =='C'){
		            		idDesc = " (Civil ID) "
		            	}
		            	let idnumber = '';
		            	idnumber = id.insreference + idDesc;
						appointmentDetails += '<td>'+ id.insname+ '<br><b>' +idnumber + '</td>';
						appointmentDetails += '<td style="display:none;">'+ id.appmntid + '</td>';
						appointmentDetails += '<td>'+ id.appdate + '</td>';
						appointmentDetails += '<td>'+ id.day + '</td>';
						appointmentDetails += '<td>'+ id.visitnameen + '</td>';
						/* $.each(maptest, function (index, value) {
              	    if(value.code == id.requiredtest){
              	        appointmentDetails += '<td>'+  value.nameen + '</td>';
              	     }
              	    }); */	
               		appointmentDetails += '<td>'+  id.testname + '</td>';
      				appointmentDetails += '<td>'+ id.noofcontacts + '</td>';
     				appointmentDetails += '<td>'+ id.email + '</td>';
     				appointmentDetails += '<td>'+ id.insphone + '</td>';
     				let  className="";
     				if (id.status == 1) {
     					className = "warning_bg status_pd1";
     				} else if (id.status == 2) {
     					className = "danger_bg";
     				}else if (id.status == 3) {
     					className = "warning_bg";
     				}else if (id.status == 4) {        																
     					className = "success_bg";
     				} else {
     					className = "";
     				}
     				appointmentDetails += '<td class="text-center"> <span class='+ className +'>'+ id.statusnameen+'</span></td>';
     				appointmentDetails += '<td style="display:none;">'+ id.status + '</td>';
     				appointmentDetails += '<td style="display:none;">'+ id.shift + '</td>';
         			appointmentDetails += '<td style="display:none;">'+ id.requiredtest + '</td>';
             		appointmentDetails += '<td style="display:none;">'+ id.insreference + '</td>';
                 	appointmentDetails += '<td style="display:none;">'+ id.comment + '</td>';
                     appointmentDetails += '<td style="display:none;">'+ id.visittype + '</td>';
     				appointmentDetails += '<td class="text-left">'
     				appointmentDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
     				appointmentDetails += '<a class="dropdown-toggle icon-burger-mini cpoint" href="" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>'
     				appointmentDetails += '<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">'
     				appointmentDetails += '<li class="dropdown-item">'
     				appointmentDetails += '<a class="cpoint" onclick="updateAppointmentStatus($(this))" data-target="#appUpdateModal" data-toggle="modal"> Update Status </a>'
     				appointmentDetails += '</li>'	
     				if(id.status == 1){	
     					appointmentDetails += '<li class="dropdown-item">'
     					appointmentDetails += '<a class="cpoint" onclick="updateAppointmentClick($(this),\'' + id.insname + '\')"  data-target="#appointmentModal" data-toggle="modal"> Edit Appointment </a>'
	     					appointmentDetails += '</li>'
	     					appointmentDetails += '<li class="dropdown-item">'
	     		    		appointmentDetails += '<a class="cpoint" onclick="deleteAppointmentClick($(this))" data-target="#deleteAppointmentModal" data-toggle="modal"> Delete Appointment </a>'
	     		     		appointmentDetails += '</li>'
     				}		     																			
     					appointmentDetails += ' </ul>'
     					appointmentDetails += ' </div></td>';
                         appointmentDetails += '<td style="display:none;">'+ id.apptype + '</td>';
                         appointmentDetails += '<td style="display:none;">'+ id.insreferencetype + '</td>';
                         appointmentDetails += '<td style="display:none;">'+ id.timeslot + '</td>';
                         appointmentDetails += '<td style="display:none;">'+ id.nationality + '</td>';
                         appointmentDetails += '<td style="display:none;">'+ id.chestxray + '</td>';
     					appointmentDetails += '</tr>';
     					slNo = slNo + 1;
     				}
     				$('#appointmentList').DataTable().destroy();
     				$('#appointmentList tbody tr').remove();
     				table1 = $('#appointmentList').append(appointmentDetails);
     				table1.dataTable({"pageLength": 5 ,"lengthMenu": [[5, 10, 20, -1], [5, 10, 20, 'All']]});
     				$("#appointmentList tbody tr div").click(function() { 
     				$("#appointmentList tbody td").css("background-color", "#f0f8ff");                                                     
     				var currentRow=$(this).closest("tr");      
     				var col1=currentRow.find("td:eq(0)").html();
     				currentRow.find("td").css("background-color", "lightyellow");												    
     					});
     				}
	  	   
	  	   function updateAppStatus (){
	  		 var appStatus = $('#appStatus').val();
			   var myJSONObj = JSON.stringify({"appid":appId,"status":appStatus});	  		   
	  		 $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=updateinsappmntstatus",
	    			contentType : "application/json",
	    			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	    			crossDomain : true,
	    			data:myJSONObj,
	    			dataType : "json",		
	                success: function (datahere) {			                 
	               	 var response = JSON.parse(JSON.stringify(datahere));	
	               	if(response.code=="1"){
	               		$('#updateappMessage').show();   
	               		$('#errorupdateappMessage').hide();
	               		refreshAppointment();
			         }
	               	if(response.code=="-2"){
	               		$('#updateappMessage').hide();   
	               		$('#errorupdateappMessage').show();	               		
		         	}
	                },
	             error : function(jqXHR, textStatus, errorThrown) {
	     				if (jqXHR.status == "401"){
	     				    }
	     			}
	         });
	  		 getToken();
	  	 }
	  	 $("#searchByName").keyup(function(event) {
			    if (event.keyCode === 13) {
			    	appNameBySearch();
			    }
			});
	  	   
	  	  function appNameBySearch(){
	  		var searchByName = $('#searchByName').val();
	  		var lstappntObj =JSON.stringify({"name":searchByName});
	  		if(searchByName != ""){ 
     		$.ajax({
               type: "POST",
               url:context+"/apiResponse?method=srchinsappointments",
               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
     		  contentType : "application/json",
     		  crossDomain : true,
     		  data:lstappntObj,	
     		  dataType : "json",
     		  success : function(response) {
     			 if(response.code == "1"){
     				if(response.details.length>0) {
      			   		var appointmentDetails = '';var table1='' ;
      			   		var slNo =1;var notifyloc='';
						populateAppointmetTable(response.details);
     			 }
     			 else {
     				$('#appointmentList tbody').empty();
     				$('#appointmentList tbody').append('<tr><td colspan="12" class="text-center">No data available in table</td></tr>');
     			 }
     			 }
      				},
									error : function(jqXHR, textStatus,
											errorThrown) {
										if (jqXHR.status == "401") {
										}
									}
								});
	  	   }
	  	   else{
	  		 $('#errorSearchByName').show();        
	  	   }
	  	   }  	   
	  	  

	  	function clearAllAppointment(){
	  		refreshAppointment();
	  	 }
	  	   
	  	var addButton = $('.add_button');
	  	var wrapper = $('#field_wrapper');
	  	var xMobileID = 0;
	  	var yMobileID = 0;
	  	var maxField = 10; //Input fields increment limitation
	  	//Once add button is clicked
	  	$(addButton).click(function() {
	  		//Check maximum number of input fields
	  		if (xMobileID < maxField) {
	  			xMobileID++; //Increment field counter
	  			yMobileID++;
	  			var fieldHTML = '<div class="form-group row" id=mobileId' + yMobileID + ' ><label for="patMobile" class=" col-sm-3 col-form-label"></label><div class="col-sm-9"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="text" class="form-control patMobile" name ="patMobile" id=patMobile' + yMobileID + '  value=""/></td><td><a href="javascript:void(0);" class="remove_button" title="delete"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>';
	  			$(wrapper).append(fieldHTML); //Add field html
	  		}
	  	});
	  	//Once remove button is clicked
	  	$(wrapper).on('click', '.remove_button', function(e) {
	  		e.preventDefault();
	  		$(this).closest("div.row").remove();
	  		xMobileID--; //Decrement field counter
	  	});
	  	
	  	$("#contactstatus").change(function () {
	  		$('#assignToRoom').val('');
	  		$('#dateOfReferral').val('');
	  		var value = this.value;
			 if(value == "4")
	  			 $('#hideAssignToRoom').show();         
			else $('#hideAssignToRoom').hide(); 
			 if(value == "5")
	  			 $('#hideReferredToPRC').show();         
			else $('#hideReferredToPRC').hide(); 
	  	});
	  	
	  	function clearmsgContact() {
	  		$('#contactStatus').val('');
	  	}
	  	var xPhoneID = 1;
	  	var yPhoneID = 0;
	  	var addButton1 = $('.add_button1');
	  	var wrapper1 = $('#field_wrapper1');

	  //Once add button is clicked
	  	$(addButton1).click(function() {
	  		//Check maximum number of input fields
	  		if (xPhoneID < maxField) {
	  			xPhoneID++; //Increment field counter
	  			yPhoneID++;
	  			var fieldHTML = '<div class="form-group row" id=phoneId' + yPhoneID + ' ><label for="patPhone" class=" col-sm-4 col-form-label"></label><div class="col-sm-8"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="text" class="form-control patPhone" name ="patPhone" id=patPhone' + yPhoneID + '  value=""/ disabled="disabled"></td><td><a href="javascript:void(0);" class="remove_button1" title="delete"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>';
	  			$(wrapper1).append(fieldHTML); //Add field html
	  		}
	  	});
	  	//Once remove button is clicked
	  	$(wrapper1).on('click', '.remove_button1', function(e) {
	  		e.preventDefault();
	  		//$(this).parent('div').remove(); //Remove field html
	  		$(this).closest("div.row").remove();
	  		xPhoneID--; //Decrement field counter
	  	});
	  	
	  	function ValidateAppPhone() {
	  		// Get and trim phone number input
	  	    let phoneNumber =  $('#appPhone').val();
	  	    let pattern = /^\+?\(?([0-9]*)([)\s.-]+)*([0-9]*)([\s.-]+([0-9]*))?$/;
	  	    // Validate phone number and update message
	  	    let isValid = pattern.test(phoneNumber);
	  	  	$('#appPhoneValidationMsg').show();
	  	    document.getElementById('appPhoneValidationMsg').textContent = isValid ? '' : 'Please enter a valid phone number.';
	  	    // Return validation status
	  	    return isValid;
	  	}
	  	
	  	function ValidateAppEmail() {
	  	    let email =  $('#appEmail').val();
	  	    let pattern = /^(.+)@(.+)$/;
	  	    let isValid = pattern.test(email);
	  	  	$('#appEmailValidationMsg').show();
	  	    document.getElementById('appEmailValidationMsg').textContent = isValid ? '' : 'Please enter a valid Email.';
	  	    // Return validation status
	  	    return isValid;
	  	}
	  	
	  	function ValidateFollowUpPhoneNumber(){
	  		 let phoneNumber =  $('#followupPhonenumber').val();
		  	    let pattern = /^\+?\(?([0-9]*)([)\s.-]+)*([0-9]*)([\s.-]+([0-9]*))?$/;
		  	    // Validate phone number and update message
		  	    let isValid = pattern.test(phoneNumber);
		  	  	$('#followupPhonenumberValidationMsg').show();
		  	    document.getElementById('followupPhonenumberValidationMsg').textContent = isValid ? '' : 'Please enter a valid phone number.';
		  	    // Return validation status
		  	    return isValid;
	  	}
	  	
		   $(':radio').click(function() {
			   $('#searchByOption').val('');
			   if($('input[name="searchOption"]:checked').val() =='C'){
	    		   $('#searchLabel').text('<fmt:message key="label.civilid"/>:');
	    	   }
	    	   if($('input[name="searchOption"]:checked').val() =='P'){
	    		   $('#searchLabel').text('<fmt:message key="passport"/>:');
	    	   }
	    	   if($('input[name="searchOption"]:checked').val() =='G'){
	    		   $('#searchLabel').text('<fmt:message key="gcc"/>:');
	    	   }
	    	   
	    	}) ;
		   
		   $("#search-tab").click(function() {
			   clearAllSearch(); 
			});
		   
		   function updateAppointmentStatus(row){
		  		appId = row.closest("tr").find('td:eq(2)').text();
		  		var appStatus = row.closest("tr").find('td:eq(11)').text()
				$('#appStatus').val(appStatus);
		  		$('#errorupdateappMessage').hide();
		  		$('#updateappMessage').hide();
		  	   }
		   
			$("#updateAppointment").on('click',function(){
				var appName = $('#appName').val();
				var appAppointType = $('#appointType').val();
				//$('#appTimeSlot').find('option:not(:first)').remove();
				if(appAppointType == "1"){
					var appReferenceType = $('input[name="idType"]:checked').val();
				} else {
					var appReferenceType = $('#referenceType').val();
				}
				var appDate = $('#appDate').val();
				var appEmail = $('#appEmail').val();
				var appNoOfContacts = $('#appNoOfContacts').val();		
				var appPhone = $('#appPhone').val();
				var appNote = $('#appNote').val();
				var appReference = $('#appReference').val();
				var appTest = $('#appTest').val();
				var appShift = $('#appShift').val();
				var appTimeSlot = $('#appTimeSlot').val();
				var appVisit = $('#appVisit').val();
				var appNationality = $('#appNationality').val();
				var appChestXray = $('#appChestXray').val();
				var appObject =JSON.stringify({
					 "apptype": appAppointType,
					 "referencetype": appReferenceType,
					 "appid" : appmntid,
					 "appdate": appDate,
					 "name": appName,
					 "reference": appReference,
					 "phone": appPhone,
					 "email": appEmail,
					 "shift": appShift,
					 "timeslot": appTimeSlot,
					 "appChestXray":appChestXray,
					 "visittype" : appVisit,
					 "recommendedtest": appTest,
					 "location": sessionStorage.getItem('loccode'),
					 "noofcontacts": appNoOfContacts,
					 "comments": appNote,
					 "active":"Y"
					 })
				if(appAppointType != "" && appReferenceType != "" && appName != "" && appDate != "" && appShift != "" && appTimeSlot!='' 
						&& appTest != "" && appNoOfContacts!= ""){
	        	$.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=updateinsappmnt",
	               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				   contentType : "application/json",
				   crossDomain : true,
				   data:appObject,	
				   dataType : "json",		
	               success: function (data) {			                 
		                    if(data.code=="1"){ 	                    	
		                    $('#appupdateMessage').show();
	                   		$('#appupdateerrorMessage').hide();
	                   		$('#appvalidationMessage').hide();
	                   		$("#appointType").prop('disabled', false);
	        				$("#appReference").prop('disabled', false);
	        				$("#appName").prop('disabled', false);
	        				$('input[name=idType]').attr("disabled",false);
	        				$("#referenceType").prop('disabled', false);
	                   		refreshAppointment();
		                    } else{
		                    $('#appupdateMessage').hide();
	                   		$('#appupdateerrorMessage').show();
	                   		$('#appvalidationMessage').hide();	 
		                    }
		         },
				error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401"){
				
					}
				}
				});
				}
				else {
					$('#appvalidationMessage').show();
				}
				getToken();
			});
			
			$("#addAppointment").on('click',function(){
				var appAppointType = $('#appointType').val();
				if(appAppointType == "1"){
					//var appReferenceType = idtype;
					var appReferenceType =  $('input[name="idType"]:checked').val();
				} else {
					var appReferenceType = $('#referenceType').val();
				}				
				var appReference = $('#appReference').val();
				var appName = $('#appName').val();
				var appDate = $('#appDate').val();
				var appEmail = $('#appEmail').val();
				var appNoOfContacts = $('#appNoOfContacts').val();		
				var appPhone = $('#appPhone').val();
				var appNote = $('#appNote').val();
				var appTest = $('#appTest').val();
				var appShift = $('#appShift').val();
				var appTimeSlot = $('#appTimeSlot').val();
				var appVisit = $('#appVisit').val();
				//var appNationality = $('#appNationality').val();
				//var appChestXray = $('#appChestXray').val();
				var appObject =JSON.stringify({
					 "apptype": appAppointType,
					 "referencetype": appReferenceType,
					 "reference": appReference,
					 "name": appName,
					 "appdate": appDate,
					 "phone": appPhone,
					 "email": appEmail,
					 "shift": appShift,
					 "timeslot": appTimeSlot,
					 "visittype" : appVisit,
					 "recommendedtest": appTest,
					 "location": sessionStorage.getItem('loccode'),
					 "noofcontacts": appNoOfContacts,
					 "comments": appNote    
					 })
				if(appAppointType != "" && appReferenceType != "" && appName != "" && appDate != "" && appShift != "" && appTimeSlot!='' 
						&& appTest != "" && appNoOfContacts!= ""){
	         	$.ajax({
	                type: "POST",
	                url:context+"/apiResponse?method=createinsappmnt",
	                headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	 			   contentType : "application/json",
	 			   crossDomain : true,
	 			   data:appObject,	
	 			   dataType : "json",		
	                success: function (data) {			                 
	 	                    if(data.code=="1"){ 	                    	
	 	                    	$('#appcreateMessage').show();
	                    		$('#apperrorMessage').hide();
	                    		$('#appvalidationMessage').hide();	 
	                    		refreshAppointment();
	 	                    } else{
	 	                    	$('#appcreateMessage').hide();
	                    		$('#apperrorMessage').show();
	                    		$('#appvalidationMessage').hide();	 
	 	                    }
	 	         },
	 			error : function(jqXHR, textStatus, errorThrown) {
	 			if (jqXHR.status == "401"){
	 			
	 				}
	 			}
	 			});
				}
				else {
					$('#appvalidationMessage').show();
				}
				getToken();
			});
			
			function updateAppointmentClick(currentRow,p_paramname){
				$('#appcreateMessage').hide();
	    		$('#apperrorMessage').hide();
	    		$('#appvalidationMessage').hide();
				$('#appPhoneValidationMsg').hide();
				$('#appEmailValidationMsg').hide();
	    		$('#appupdateMessage').hide();
	       		$('#appupdateerrorMessage').hide();
				$('#appointLabel').text('Update Appointment');
				$('#updateAppointment').show();
				$('#addAppointment').hide();
				$('#appNationalityField').hide();
				$("#appointType").prop('disabled', true);
				$("#appReference").prop('disabled', true);
				$("#appName").prop('disabled', true);
				$("#referenceType").prop('disabled', true);
				$('input[name=idType]').attr("disabled",true);
				$('#appName').val(p_paramname);
				appmntid = currentRow.closest("tr").find('td:eq(2)').text();
				$('#appDate').val(currentRow.closest("tr").find('td:eq(3)').text());
				$('#appNoOfContacts').val(currentRow.closest("tr").find('td:eq(7)').text()); 
				$('#appEmail').val(currentRow.closest("tr").find('td:eq(8)').text()); 
				$('#appPhone').val(currentRow.closest("tr").find('td:eq(9)').text());
				$('#appShift').val(currentRow.closest("tr").find('td:eq(12)').text()); 
				$('#appTest').val(currentRow.closest("tr").find('td:eq(13)').text());
				$('#appReference').val(currentRow.closest("tr").find('td:eq(14)').text());
				$('#appNote').val(currentRow.closest("tr").find('td:eq(15)').text());
				$('#appVisit').val(currentRow.closest("tr").find('td:eq(16)').text());
				$('#appointType').val(currentRow.closest("tr").find('td:eq(18)').text());
				let appointType = currentRow.closest("tr").find('td:eq(18)').text();
				let idtype = currentRow.closest("tr").find('td:eq(19)').text();
				getTimeSlot(currentRow.closest("tr").find('td:eq(12)').text(),currentRow.closest("tr").find('td:eq(20)').text())
				if(currentRow.closest("tr").find('td:eq(18)').text()=="I" && idtype == "P"){
					$('#appNationalityField').show();
					$('#appNationality').val(currentRow.closest("tr").find('td:eq(21)').text());
				}
				if(appointType!="1"){					
					$('#referenceTypeOthers').show();
					$('#referenceTypeIndividual').hide();
					$('#referenceType').val(currentRow.closest("tr").find('td:eq(19)').text());
				} else {					
					$('#referenceTypeIndividual').show();
					$('#referenceTypeOthers').hide();
					$("#appName").prop('disabled', true);
					document.querySelector('input[name="idType"][value="C"]').checked = true;
					if(idtype!="null" && idtype!="" && idtype!= null && idtype!= 'undefined'){
						document.querySelector('input[name="idType"][value='+idtype+']').checked = true;
					}
				}
							
			}
			function addAppointmentBtn(){
				$('#appNationalityField').hide();
				$('#appointLabel').text('Add Appointment');
				$('#addAppointment').show();
				$('#updateAppointment').hide();
				$('#appPhoneValidationMsg').hide();
			 	$('#appName').val('');
				$('#appName').removeAttr("disabled");
				$('#appDate').val('');
				$('#appEmail').val('');
				$('#appNoOfContacts').val('');		
				$('#appPhone').val('');
				$('#appNote').val('');
				$('#appReference').val('');
				$('#appTest').val('');
				$('#appShift').val('');
				$('#appVisit').val('');
				$('#appointType').val('');
				$('#appNationality').val('');
				$('#referenceType').val('');
				$('#searchPass').hide();
				$('#appChestXray').prop('checked', false);
				document.querySelector('input[name="idType"][value="C"]').checked = true;
				idtype ='C';
				$('#appTimeSlot').find('option:not(:first)').remove();
				$('#appTimeSlot').val('');
				$('#appcreateMessage').hide();
	    		$('#apperrorMessage').hide();
	    		$('#appvalidationMessage').hide();
	    		$('#appupdateMessage').hide();
	       		$('#appupdateerrorMessage').hide();
	       	 	$('#dataUnavailable').hide();
	       	 	$('#dbError').hide();
	       	 	$('#referenceTypeIndividual').hide();
	       	 	$('#referenceTypeOthers').show();
	       	 	$("#appointType").prop('disabled', false);
				$("#appReference").prop('disabled', false);
				$("#appName").prop('disabled', false);
				$('input[name=idType]').attr("disabled",false);
				$("#referenceType").prop('disabled', false);
	       	 }
			
			function deleteAppointmentClick(currentRow){
				appmntid = currentRow.closest("tr").find('td:eq(2)').text();
				$('#appointmentRowNo').val(currentRow.closest("tr").find('td:eq(0)').text());
				clearmesgApp();
			}
			
			function clearmesgApp() {
				$('#appdeletesuccess').hide();
			}
			
			$("#deleteAppointment").on('click',function(){
				var rowno = $('#appointmentRowNo').val();
				var appObject =JSON.stringify({
					 "appid" : appmntid,
					 "active":"N"
					 })
	        	$.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=updateinsappmnt",
	               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
				   contentType : "application/json",
				   crossDomain : true,
				   data:appObject,	
				   dataType : "json",		
	               success: function (data) {			                 
		                    if(data.code=="1"){ 	                    	
		                    $('#appdeletesuccess').show();
		                    $('#appointmentrow'+rowno).remove();
		                    
	                   		//refreshAppointment();
		                    } else{
		                    $('#appdeletesuccess').hide();
	                   		
		                    }
		         },
				error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401"){
				
					}
				}
				});
				
				getToken();
			});
		  function clearAllSearch(){
			   document.querySelector('input[name="searchOption"][value="C"]').checked = true;
			   $('#searchLabel').text('<fmt:message key="label.civilid"/>:');
			   $('#searchByOption').val('');
			   $("#searchListByIDType").find("tr:gt(0)").remove();
			   $('#contactNameHide').hide(''); 
		   }
		  function searchList(){
			  	let idnumber =  $('#searchByOption').val();
			  	let idtype = $('input[name="searchOption"]:checked').val();
				 var myJSONObj = JSON.stringify({"idnumber":idnumber,"idtype":idtype});
				  $.ajax({
						type : "POST",
						url : context+"/apiResponse?method=lstcontactnotifs",
						contentType : "application/json",
						headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						crossDomain : true,
						data : myJSONObj,	
						dataType : "json",	
						success : function(response) {
							if(response.code == "1"){
							 $('#contactNameHide').show(''); 
							 let userDetails = '';let table1='' ;
							 let slNo =1;let notifyloc='';
															for (var i = 0; i < response.details.length; i++) {
																var id = response.details[i];
																var reqid = id.reqid;
																patcd = id.patcd;
																$('#contactNameEn').text(id.contactnameen);
																$('#contactNameAr').text(id.contactnamear); 
																userDetails += '<tr>';
																userDetails += '<td>'
																		+ slNo + '</td>';
																userDetails += '<td>'
																		+ id.tbnotifId + '</td>';
																userDetails += '<td>'
																		+ id.docstatusname + '</td>';
																userDetails += '<td>'
																		+ id.trackstatusname + '</td>';
																userDetails += '<td>'
																		+ id.refdate + '</td>';
																userDetails += '<td style= "display:none;">'
																		+ id.contId + '</td>';
																userDetails += '<td style= "display:none;">'
																		+ id.regcd + '</td>';
																userDetails += '</tr>';
																slNo = slNo + 1;
															}
															$('#searchListByIDType').DataTable().destroy();
											                $('#searchListByIDType tbody tr').remove();
															table1 = $(
																	'#searchListByIDType')
																	.append(userDetails);
															table1.dataTable({
																"pageLength": 5 ,
																"lengthMenu": [[5, 10, 20, -1], [5, 10, 20, 'All']]
																});
															$("#searchListByIDType tbody tr div").click(function() { 
																$("#searchListByIDType tbody td").css("background-color", "#f0f8ff");                                                     
																var currentRow=$(this).closest("tr");      
																var col1=currentRow.find("td:eq(0)").html();
															    currentRow.find("td").css("background-color", "lightyellow");                                                    
															});

														}
													},
													error : function(jqXHR, textStatus,
															errorThrown) {
														if (jqXHR.status == "401") {
														}
													}
												});
				  getToken();
		  }
		  
		  
		  $('select[name*="relations"]').change(function() {
				 $("#relationReplace1").prop('disabled', false);
					$("#relationReplace2").prop('disabled', false);
				   // $("#inspectorreplace2").prop('disabled', false);
				    var selectedOptions = $('select[name*="relations"] option:selected');
				    $('select[name*="relations"] option').removeAttr('disabled');
				    selectedOptions.each(function() {        
				        var value = this.value;
				        if (value !== ''){           
				        var id = $(this).parent('select[name*="relations"]').attr('id');
				        var options = $('select:not(#' + id + ') option[value=' + value + ']');
				        options.attr('disabled', 'true');
				        } 
				    });
				});
		  
		  $("#appointType").change(function () {
			    $('#dataUnavailable').hide();
			    $('#appNationalityField').hide();
				$('#dbError').hide();$('#searchPass').hide();
				$('#appName').removeAttr("disabled");
				$('#appReference').val('');
				$('#appName').val('');
				document.querySelector('input[name="idType"][value="C"]').checked = true;
				 var value = this.value;
				 if(value == "1"){
		  			 $('#referenceTypeIndividual').show();
		  			 $('#referenceTypeOthers').hide();
		  			 $("#appName").prop('disabled', true);
				} else {
					$('#referenceTypeIndividual').hide();
					$('#referenceTypeOthers').show();
				}
	 		});
		  
		  $("#appShift").change(function () {
				 $('#appTimeSlot').find('option:not(:first)').remove();
				 var appShiftValue = this.value;
				 getTimeSlot(appShiftValue,"");
	 		});
		  
		  function getTimeSlot(appShiftValue,appTimeSlot){
			  	 let jsonObj = {"code":appShiftValue}
				 let myJSONObj =JSON.stringify(jsonObj);
				 $.ajax({
						type : "POST",
						url : context+"/apiResponse?method=lsttimeslotbyshift",
						contentType : "application/json",
						headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
		     	        data:myJSONObj,	
						crossDomain : true,
						success : function(response) {
							 var response = JSON.parse(response);
							// list time slot
						  	  $.each(response.details,function(i,response)
						            	 {
					   	       	          if(lang=='en'){
					   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
					   	       	          }
					   	       	          else{
					   	       	           var div_data="<option value="+response.code+">"+response.namear+"</option>";
					   	   	       	          }
						                  $(div_data).appendTo('#appTimeSlot');
						  				  $('#appTimeSlot').val(appTimeSlot);

				                    });
							
						},
						error : function(jqXHR, textStatus, errorThrown) {
							if (jqXHR.status == "401") {
								 getToken();
							}
						}
				 });
		  }
		  
		  $('input[type=radio][name=idType]').change(function() {
				$('#patManField').hide();
				$('#appNationalityField').hide();
				$('#dataUnavailable').hide();
				$('#dbError').hide();$('#searchPass').hide();
				//$('#appName').removeAttr("disabled");
				$("#appName").prop('disabled', true);
				$('#appReference').val('');
				$('#appName').val('');
			    if (this.value == 'C') {
			    	idtype ='C'; 
			    }
			    else if (this.value == 'P') {
			    	idtype ='P';
			    	$('#appNationalityField').show();
			    	 getNationality();
			    }
			    else if (this.value == 'G') {
			    	idtype ='G'; 
			    }
			})
			
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
			                   	  $.each(response,function(i,response)
			     	 		            	 {
			     		   	       	          if(lang=='en'){
			     		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			     		   	       	          }
			     		   	       	          else{
			     		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
			     		   	   	       	          }
			     		   	       	         $(div_data).appendTo('#appNationality'); 
			     	                       });
			                   	
			                 },
			              error : function(jqXHR, textStatus, errorThrown) {
			      				
			      				if (jqXHR.status == "401"){
			      					
			      				   
			      				    }
			      			}
			          });

			}
		  
		  $("#appReference").change(function () {
				 let appReferenceValue = this.value;
				 let myJSONObj =JSON.stringify({"idnumber": appReferenceValue,"idtype":idtype});
				 if($('#appointType').val() == "1"){
					 findpat(myJSONObj);
					 getRadiolodyDetails();
				 }
	 	  });
		  function getRadiolodyDetails() {
			  let appReference = $('#appReference').val();
			 // let chestXrayVal = $('#appChestXray').val();
			  let myJSONObj = JSON.stringify({"type": idtype,"code":appReference , "category" : "1"});
			  $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=lstpatradiologybytype",
	    			contentType : "application/json",
	    			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	    			crossDomain : true,
	    			data:myJSONObj,
	    			dataType : "json",		
	                success: function (datahere) {			                 
	               	 var response = JSON.parse(JSON.stringify(datahere));	
	               	if(response.code=="1"){
	               		if(response.details.length > 1){
	               		 $('#appChestXray').prop('checked', true);
	               		}
	               		else {
	               		 $('#appChestXray').prop('checked', false);
	               		}
			         }
	                },
	             error : function(jqXHR, textStatus, errorThrown) {
	     				if (jqXHR.status == "401"){
	     				    }
	     			}
	         });
		  }
		  function findPassPatient(){
			  let appReference = $('#appReference').val();
			  let appNationality = $('#appNationality').val();
			  let myJSONObj =JSON.stringify({"idnumber": appReference,"idtype":idtype});
			  if(appReference!= ""  &&  appNationality!="")
			  {
				  findpat(myJSONObj);
				  $('#searchPass').hide(); 
			  }
			  else {
				  $('#searchPass').show(); 
			  }
		  }
		  
		  function findpat(myJSONObj){			  
			  $.ajax({
	                type: "POST",
	                url:context+"/apiResponse?method=findpatient",
	                headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	                success: function (data) {			                 
				                    if(data.code=="1"){
				                    	if(lang=='en'){
						                    $('#appName').val(data.details.nameen);
				                    	}else{
						                    $('#appName').val(data.details.namear);
				                    	}
				                    	ptcd=data.details.ptcd;
				                    	$("#appName").prop('disabled', true);
				                    }
				                    if(data.code=="-2"){
					                    if(idtype == "C"){
					                    let idVal = $('#appReference').val();		
					                   	let myJSONObjCivil =JSON.stringify({"civilid": idVal});
					        				$.ajax({
					        		               type: "POST",
					        		               url:context+"/apiResponse?method=getpatinfo",
					        		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					        						contentType : "application/json",
					        						crossDomain : true,
					        						data:myJSONObjCivil,	
					        						dataType : "json",		
					        		                success: function (data) {			                 
					        			                    if(data.code=="1"){ 
					        			                    	if(lang=='en'){
												                    $('#appName').val(data.details.nameen);
										                    	}else{
												                    $('#appName').val(data.details.namear);
										                    	}
					        			                    	ptcd=data.details.ptcd;
					        			                    	$("#appName").prop('disabled', true);
					        			                    } else {
					        			                    	 $("#appName").prop('disabled', true);
					        						        	 $('#dataUnavailable').show();
					        						        	 $('#dbError').hide();
					        						         }
					        			            },
					        						error : function(jqXHR, textStatus, errorThrown) {
					        							if (jqXHR.status == "401") {
					        								
					        							}
					        						}
					        		         }); 
					        	}
					                    
					            if(idtype == "P"){
						                    let idVal = $('#appReference').val();
						                    let nationality = $('#appNationality').val();
						                    let myJSONObjPass =JSON.stringify({
						       				 "idtype":idtype,
						       				 "passportnumber":idVal,
						       				 "nationality":nationality,
						       				 "civilidnumber":"",
						       				});
						                   	if(idVal!=''&& nationality!=''){
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
						        			                    	if(lang=='en'){
													                    $('#appName').text(data.details.nameen);
											                    	}else{
													                    $('#appName').text(data.details.namear);
											                    	}
						        			                    	ptcd=data.details.ptcd;
						        			                    	$("#appName").prop('disabled', true);
						        			                    } else {
						        			                    	 $("#appName").prop('disabled', true);
						        						        	 $('#dataUnavailable').show();
						        						        	 $('#dbError').hide();
						        						         }
						        			            },
						        						error : function(jqXHR, textStatus, errorThrown) {
						        							if (jqXHR.status == "401") {
						        								
						        							}
						        						}
						        		         });
						                   	}
						        	} 
					            if(idtype == "G"){
					            	$("#appName").prop('disabled', false);
					            }
					         }if(data.code=="-4"){
			                	 $('#dbError').show();  
                                 $('#dataUnavailable').hide();
   							}
	                 },
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				
				}
			}
	 		});
		  }
		  
		  
	</script>
	<script src="js/printReport.js"></script>
</body>
</html>