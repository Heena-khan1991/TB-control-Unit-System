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
<link rel="stylesheet" type="text/css" href="css/select2.css">
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
.custom-selectRelation {
	height: 150px !important;
    overflow-y: auto !important;
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
	<jsp:include page="ControlPage.jsp"></jsp:include>
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
									<li role="presentation"><a href="#tbnotify"
										class="nav-link active" id="tbnotify-tab"
										aria-controls="tbnotify" role="tab" data-toggle="tab"><fmt:message
												key="label.notification" /> </a></li>
									<%-- <li role="presentation"><a href="#tbappoint"
										class="nav-link" id="tbappoint-tab" aria-controls="tbappoint"
										role="tab" data-toggle="tab"><fmt:message
												key="label.appointment" /></a></li> --%>
									<li role="presentation"><a href="#searchList"
										class="nav-link" id="search-tab" aria-controls="searchList"
										role="tab" data-toggle="tab"><fmt:message
												key="label.searchcontact" /></a></li>
								</ul>
								<div class="tab-content p-0 border-0" id="myTabContent1">
									<div class="tab-pane pt-0 fade show active" id="tbnotify"
										role="tabpanel" aria-labelledby="tbnotify-tab">
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
																												<div class="form-group row">
																													<label for="searchByAssignee"
																														class="col-form-label  col-sm-2"><fmt:message
																															key="label.assignee" />: </label>
																													<div class="col-sm-6">
																														<select id="searchByAssignee"
																															name="assignee" class="form-control">
																															<option selected="selected" value=""><fmt:message
																																	key="label.select" /></option>
																														</select>
																													</div>
																												</div>
																											</td>
																											<td scope="col">
																												<div class="form-group row ">
																													<label for="searchByStatus"
																														class="col-form-label  col-sm-3"><fmt:message
																															key="label.status" />: </label>
																													<div class="col-sm-6">
																														<select id="searchByStatus"
																															class="form-control">
																															<option selected="selected" value=""><fmt:message
																																	key="label.select" /></option>
																														</select>
																													</div>
																												</div>
																											</td>

																										</tr>
																									</tbody>
																								</table>
																							<td class="text-right"><input type="button"
																								class="btn btn-info" value="Search"
																								onclick=listNotificationBySearch()>&nbsp;&nbsp;&nbsp;&nbsp;
																								<input type="button" class="btn btn-danger"
																								value="Clear" onclick=clearAllNotication()></td>
																						</tr>
																					</tbody>

																				</table>
																			</div>
																		</div>
																	</div>
																</div>
																<table class="table nowrap" style="width: 100%"
																	id="inspectorNotificationList">
																	<thead class="bg-gradient-blue">
																		<!--bg-primary text-white-->
																		<tr>
																			<th class=" text-white"><fmt:message key="sl.No" /></th>
																			<th class=" text-white"><fmt:message
																					key="label.notifyNo" /></th>
																			<th class=" text-white"><fmt:message
																					key="label.patientname" /></th>
																			<th class=" text-white"><fmt:message
																					key="label.doctor" /></th>
																			<th class=" text-white text-center"><fmt:message
																					key="label.status" /></th>
																			<th class=" text-white"><fmt:message
																					key="label.Action" /></th>
																		</tr>
																	</thead>
																	<tbody></tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>
<!-- <select class="form-control select2" id="testselect" multiple='multiple'
																name="testselect">
																<option value="1">Select1</option>
																<option  value="2">Select2</option>
																<option  value="3">Select3</option>
																<option  value="4">Select4</option>
															</select> -->
											<div class="col-lg-12" id="hideTab">
												<hr />
												<div class="row">
													<div class="col-sm-4"></div>
													<div class="col-xl-4 float-right mb-0">
														<div class="card  bg-gradient-blue shadow h-100">
															<div class="card-body p-1 text-center">
																<div class="row no-gutters align-items-center ">
																	<table width="87%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tbody>
																			<tr>

																				<td><b><fmt:message key="label.notifNo" /></b>
																				<b><span class="notifyIDShow"
																						id="contactnotifId"></span></b></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="row my-3 pb-2">
													<div class="col-lg-12">
														<div class="card  border-0">

															<div class="card-body p-0">

																<div class="tab" role="tabpanel">


																	<ul class="nav nav-tabs" role="tablist">
																		<li role="presentation"><a href="#tbcontact"
																			class="nav-link new_cls active" id="tbcontact-tab"
																			aria-controls="home20" role="tab" data-toggle="tab"><fmt:message
																					key="label.contact" /> </a></li>
																		<li role="presentation"><a href="#tbfollowup"
																			class="nav-link new_cls" id="tbfollowup-tab"
																			aria-controls="user20" role="tab" data-toggle="tab">
																				<fmt:message key="label.followUp" />
																		</a></li>

																	</ul>
																	<div class="tab-content p-0 border-0"
																		id="myTabContent3">
																		<div class="tab-pane sub-pane pt-0 fade show active"
																			id="tbcontact" role="tabpanel"
																			aria-labelledby="tbcontact-tab">
																			<div class="row mt-2">
																				<div class="col-lg-11" id="hideContact">
																					<div class="card  border-0">

																						<div class="card-body ">
																							<div class="row">
																								<div class="col-sm-12">
																									<table width="100%" border="0" cellspacing="0"
																										cellpadding="5" class="table border  shadow">
																										<tbody>
																											<tr>
																												<td class="col-form-label" width="20%"><fmt:message
																														key="label.totalContacts" /> : <span
																													class="badge badge-info font-size-14"
																													style="border-radius: 5px !important; padding: 0.5em 0.7em;"
																													id="totalContact"></span></td>
																												<td width="5%"></td>
																												<td class="col-form-label" width="30%"><fmt:message
																														key="label.attendContact" />: <span
																													class="badge badge-success font-size-14"
																													style="border-radius: 5px !important; padding: 0.5em 0.7em;"
																													id="attendContact"></span></td>
																												<td width="5%"></td>
																												<td class="col-form-label" width="20%"><fmt:message
																														key="label.pending" /> : <span
																													class="badge badge-danger font-size-14"
																													style="border-radius: 5px !important; padding: 0.5em 0.7em;"
																													id="pendingContact"></span></td>
																												<td>
																													<div class="text-right">
																														<button id="addRow7" class="btn btn-green"
																															data-target="#modal_contact2"
																															onclick="otherIDpop()"
																															data-toggle="modal">
																															<i class="fa fa-plus"></i> <span
																																class="text"><fmt:message
																																	key="label.addContact" /></span>
																														</button>
																													</div>
																												</td>
																											</tr>
																										</tbody>
																									</table>




																									<hr />
																									<div class="table-responsive pb-5 mb-5">
																										<!-- table-bordered -->
																										<table id="contactList" class="display table "
																											style="width: 100%">
																											<!--table-bordered table-striped-->
																											<thead class="bg-gradient-blue">
																												<!--bg-gradient-main-->
																												<tr>
																													<th class=" text-white"><fmt:message
																															key="sl.No" /></th>
																													<th class=" text-white"
																														style="display: none">Contact ID</th>
																													<th class=" text-white"
																														style="display: none">contId</th>
																													<th class=" text-white"><fmt:message
																															key="label.name" /></th>
																													<th class=" text-white"><fmt:message
																															key="label.doctorStatus" /></th>
																													<th class=" text-white"><fmt:message
																															key="label.status" /></th>
																													<th class=" text-white"><fmt:message
																															key="label.createdBy" /></th>
																													<th style="display: none"><fmt:message
																															key="label.trackStatus" /></th>
																													<th style="display: none"><fmt:message
																															key="label.room" /></th>
																													<th class=" text-white"><fmt:message
																															key="label.Action" /></th>
																													<th class=" text-white"
																														style="display: none">contactOccupation</th>
																													<th class=" text-white"
																														style="display: none">contactComment</th>
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
																		<div class="tab-pane sub-pane pt-0 fade"
																			id="tbfollowup" role="tabpanel"
																			aria-labelledby="tbfollowup-tab">
																			<div class="row mt-2">
																				<div class="col-lg-12" id="hideFollowUp">
																					<div class="card  border-0">
																						<div class="card-body  py-2">
																							<div class="row">
																								<div class="col-sm-12">
																									<div class="text-right">
																										<button onclick="addFollowUpBtn()"
																											class="btn btn-green"
																											data-target="#modal_edit2"
																											data-toggle="modal" class="text-gray">
																											<i class="fa fa-plus"></i> <span class="text">Add
																												Followup</span>
																										</button>
																									</div>
																									<hr />
																									<div class="table-responsive">

																										<table id="followUpList" class="display table"
																											style="width: 100%">
																											<thead class="bg-gradient-blue">
																												<tr>
																													<th class="text-white  ">ID</th>
																													<th class="text-white  ">Phone</th>
																													<th class="text-white text-center">Status</th>
																													<th style="display: none">TrackStatus</th>
																													<th class="text-white  ">Notes</th>
																													<th class="text-white  ">Followup By</th>
																													<th class="text-white  ">Action</th>
																													<th style="display: none">pid</th>
																													<th style="display: none">RowNumber</th>
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
																</div>
															</div>
															<!--add modal-->
															<div class="modal fade" id="contactModal" role="dialog"
																aria-labelledby="exampleModalCenterTitle"
																aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered"
																	role="document">
																	<!--modal-lg-->
																	<div class="modal-content">
																		<div class="modal-header bg-gradient-blue px-4">
																			<h5 class="modal-title" id="exampleModalCenterTitle">
																				<fmt:message key="label.updateContactStatus" />
																			</h5>
																			<button type="button" class="close text-white"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">×</span>
																			</button>
																		</div>
																		<div class="modal-body px-4 pb-0 mbg4">
																			<div class="row mb-2">
																				<div class="col-sm-12">
																					<div class="form-group row ">
																						<label class="col-sm-4 col-form-label">Contact
																							Status :<span class="text-danger">*</span>
																						</label>
																						<div class="col-sm-8 ">
																							<div class="input-group">
																								<select name="contactstatus"
																									class="form-control selectVal3 col-sm-8"
																									id="contactstatus">
																									<option value="">--Select--</option>
																								</select>
																							</div>
																						</div>

																					</div>
																				</div>
																				<div class="col-sm-12" id="hideAssignToRoom">
																					<div class="form-group row ">
																						<label class="col-sm-4 col-form-label">Assign
																							To Room :<span class="text-danger">*</span>
																						</label>
																						<div class="col-sm-8 ">
																							<div class="input-group">
																								<select name="assignToRoom"
																									class="form-control selectVal3 col-sm-8"
																									id="assignToRoom">
																									<option value="">--Select--</option>
																								</select>
																							</div>
																						</div>
																					</div>
																				</div>
																				<!-- 																							 
 -->
																				<div class="col-sm-12" id="hideReferredToPRC">
																					<div class="form-group row ">
																						<label class="col-sm-4 col-form-label">PRC
																							Location :<span class="text-danger">*</span>
																						</label>
																						<div class="col-sm-8 ">
																							<div class="input-group">
																								<select name="prcLocation"
																									class="form-control selectVal3 col-sm-8"
																									id="prcLocation">
																									<option value="">--Select--</option>
																								</select>
																							</div>
																						</div>
																					</div>
																					<div class="form-group row ">
																						<label class="col-sm-4 col-form-label">Date
																							Of Referral:<span class="text-danger">*</span>
																						</label>
																						<div class="col-sm-8 ">
																							<input type="text" class="form-control"
																								id="dateOfReferral">
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="modal-footer px-4 py-1 text-right">
																				<span id="updateMessage"><font color="green"><fmt:message
																							key="label.updateMessage" /></font></span> <span
																					id="errorMessage"><font color="red"><fmt:message
																							key="label.errorMessage" /></font></span><span
																					id="validationMessage"><font color="red"><fmt:message
																							key="label.validationMessage" /></font></span> <input
																					type="button" id="updateContactStatusBtn"
																					class="btn  btn-dropbox text" value="Update">
																				<button type="button" class="btn btn-tumblr text"
																					data-dismiss="modal">Cancel</button>
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
									<div class="tab-pane pt-0 fade show" id="searchList"
										role="tabpanel" aria-labelledby="search-tab">
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
																							<td colspan="2" width="50%">
																								<table width="100%" border="0" cellspacing="0"
																									cellpadding="5" class="searchByDiseaseOptions">
																									<tbody>
																										<tr>
																											<td scope="col" width="30%"><label
																												 class="col-form-label"><fmt:message
																														key="label.idType" />:<span class="red"
																													style="color: red;">*</span></label></td>
																											<td scope="col" width="30%"><input
																												type="radio" name="searchOption"
																												id="searchByCivilID" value="C"> <label
																												for="searchByCivilID" style="color: #07535e;"
																												class="col-form-label"><fmt:message
																														key="label.civilid" /></label></td>
																											<td scope="col" width="30%"><input
																												type="radio" name="searchOption"
																												id="searchByPassportID" value="P"> <label
																												for="searchByPassportID" style="color: #07535e;"
																												class="col-form-label"><fmt:message
																														key="passport" /></label></td>
																											<td scope="col" width="30%"><input
																												type="radio" name="searchOption"
																												id="searchByGCCID" value="G"> <label
																												for="searchByGCCID" style="color: #07535e;"
																												class="col-form-label"><fmt:message
																														key="gcc" /></label></td>

																										</tr>
																									</tbody>
																								</table>
																							</td>
																							<td class="text-right" width="50%"></td>
																						</tr>
																						<tr>
																							<td colspan="3">&nbsp;</td>
																						</tr>
																						<tr>
																							<td width="10%"><label 
																								class="col-form-label" id="searchLabel">
																							</label><span class="red" style="color: red;">*</span></td>
																							<td width="20%"><input type="text"
																								id="searchByOption" class="form-control" /></td>
																							<%-- <td width="10%" id="contactNameHide"><label for="inputPassword"
																								class="col-form-label"><fmt:message
																														key="label.name" />:</label>
																						<span class="red" style="color: red;" id="contactNameEn"></span>/<span class="red" style="color: red;" id="contactNameAr"></span></td> --%>
																							<td class="text-right" width="50%"><input
																								type="button" class="btn btn-info"
																								value="Search" onclick=searchList()>&nbsp;&nbsp;&nbsp;&nbsp;
																								<input type="button" class="btn btn-danger"
																								value="Clear" onclick=clearAllSearch()></td>
																						</tr>
																					</tbody>

																				</table>
																			</div>
																		</div>
																	</div>
																</div>
																<table class="table nowrap" style="width: 100%"
																	id="searchListByIDType">
																	<thead class="bg-gradient-blue">
																		<!--bg-primary text-white-->
																		<tr>
																			<th class=" text-white"><fmt:message key="sl.No" /></th>
																			<th class=" text-white"><fmt:message
																					key="label.notifyNo" /></th>
																			<th class=" text-white"><fmt:message
																					key="label.doctorStatus" /></th>
																			<th class=" text-white"><fmt:message
																					key="label.trackStatus" /></th>
																			<th class=" text-white "><fmt:message
																					key="label.refferedDate" /></th>
																			<th class=" text-white text-center"
																				style="display: none;">contId</th>
																			<th class=" text-white text-center"
																				style="display: none;">regcd</th>
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
							</div>

						</div>
					</div>



				</div>
				<!-- End Content -->
			</div>
			<!-- End Content Wrapper -->



			<!--add modal-->

			<div class="modal fade" id="modal_edit2" role="dialog"
				aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<!--modal-lg-->
					<div class="modal-content">

						<div class="modal-header bg-gradient-blue px-4">
							<h5 class="modal-title" id="exampleModalCenterTitle">Add
								Follow up</h5>
							<button type="button" class="close text-white"
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>

						<div class="modal-body px-4 pb-0 mbg4">


							<div class="row mb-2">

								<div class="col-sm-12">




									<h5 class="h5style  pt-2">Follow up Details</h5>

									<div class="form-group row ">

										<label class="col-sm-4 col-form-label ">Phone Number :<span
											class="text-danger">*</span>
										</label>
										<div class="col-sm-8 ">

											<div class="input-group">
												<!-- <select name="dss" class="form-control selectVal3 col-sm-12"
														id="answerStatus">
														<option>--Select--</option>
													</select> -->
												<input type="tel" maxlength="14"
													class="form-control phone_name" id="followupPhonenumber"
													onchange="ValidateFollowUpPhoneNumber()">
											</div>
											<div style="color: red;"
												id="followupPhonenumberValidationMsg"></div>
										</div>
									</div>
									<div class="form-group row ">

										<label class="col-sm-4 col-form-label ">Notes : <span
											class="text-danger">*</span></label>
										<div class="col-sm-8 ">

											<div class="input-group">
												<textarea class="form-control" id="followupNote"></textarea>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer px-4 py-1 text-right">
							<span id="addFollowUpMessage" style="display: none;"><font
								color="green"><fmt:message key="label.addFollowUpMessage" /></font></span>
							<span id="addFollowUpErrorMessage" style="display: none;"><font
								color="red"><fmt:message
										key="label.addFollowUpErrorMessage" /></font></span> <span
								id="addFollowUpValidationMessage" style="display: none;"><font
								color="red"><fmt:message key="label.appvalidationMessage" /></font></span>
							<button type="button" class="btn  btn-dropbox text "
								onclick="addFollowup()">Save</button>
							<button type="button" class="btn btn-tumblr text"
								data-dismiss="modal">Cancel</button>
							<!-- btn--->
						</div>

					</div>
				</div>
			</div>

			<!--end modal-->
			<div class="modal fade" id="updateFollowUpModal" role="dialog"
				aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<!--modal-lg-->
					<div class="modal-content">
						<div class="modal-header bg-gradient-blue px-4">
							<h5 class="modal-title" id="exampleModalCenterTitle">Update
								FollowUp Status</h5>
							<button type="button" class="close text-white"
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body px-4 pb-0 mbg4">
							<div class="row mb-2">
								<div class="col-sm-12">
									<div class="form-group row ">
										<label class="col-sm-4 col-form-label">FollowUp Status
											:<span class="text-danger">*</span>
										</label>
										<div class="col-sm-8 ">
											<div class="input-group">
												<select name="followupstatus"
													class="form-control selectVal3 col-sm-8"
													id="followupstatus">
													<option value="">--Select--</option>
												</select>
											</div>
										</div>

									</div>
								</div>

							</div>
							<div class="modal-footer px-4 py-1 text-right">
								<span id="updateFollowUpMessage"><font color="green"><fmt:message
											key="label.updateMessage" /></font></span> <span id="errorFollowUpMessage"><font
									color="red"><fmt:message key="label.errorMessage" /></font></span>
								<button type="button" class="btn  btn-dropbox text "
									onclick="updateFollowUpStatus()">Update</button>
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
			<div class="modal fade" id="modal_contact2" tabindex="-1"
				role="dialog" aria-labelledby="tit" aria-hidden="true"
				data-backdrop="static" data-keyboard="false">
				<div class="modal-dialog  modal-xl" role="document">
					<!--modal-dialog-centered-->
					<div class="modal-content">
						<div class="modal-header bg-gradient-blue  px-4">
							<h5 class="modal-title" id="exampleModalLongTitle">
								<span id="labelAddUpdateContact"></span>
							</h5>
							<button type="button" class="close" data-dismiss="modal"
								onclick="clearContactDetails()" title="Close" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div id="accordionContact"
							class=" modal-body accordion accordion-shadow accordion-bordered">
							<div class="card shadow border-bottom-info">
								<div class="card-header bg-gradient-blue " id="headingFour">
									<button class="m-0 btn btn-link " data-toggle="collapse"
										data-target="#collapseFour" aria-expanded="true"
										aria-controls="collapseFour" id="btnFour">Personal
										Information</button>
								</div>
								<div id="collapseFour" class="collapse show card-body pt-3 pb-2"
									aria-labelledby="headingFour" data-parent="#accordionContact"
									style="">
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<label class="text-navy pt-0 col-form-label">ID
													Type : <span class="red" style="color: red;">*</span>
												</label>
<!-- 												<div class="form-check form-check-inline pl-5">
 -->												<div class="form-check form-check-inline" style ="padding-left: 6rem !important;">
													<input class="form-check-input" type="radio" id="idTypeC"
														name="idType" value="C"> <label
														class="form-check-label" for="idTypeC">Civil
														ID</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="idTypepass"
														name="idType" value="P">&nbsp; <label
														class="form-check-label" for="idTypepass">Passport</label>
												</div>

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="idTypegcc"
														name="idType" value="G"> <label
														class="form-check-label" for="idTypegcc">GCC</label>
												</div>
											</div>
											<div class="col-sm-6" id="pass">
												<div class="form-group row">
													<label class="col-sm-4 col-form-label"
														id="changeIDName">Passport ID:<span class="red"
														style="color: red;">*</span></label>
													<div class="col-sm-8">
														<input type="text" class="form-control" id="passId"
															onchange="getinfoOther()">
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="nationalityPass">
												<div class="form-group row">
													<label  class="col-sm-4 col-form-label">Nationality
														:<span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<select name="sel" id="nationalityOthers"
															class="form-control">
															<option selected="selected" value="">Select</option>
														</select>
													</div>

												</div>
											</div>

											<div class="col-sm-12 pb-3" id="pass1">
												<div class="text-center">

													<div class="">
														<button class="btn btn-primary " type="button"
															onclick="validatepassAPI()">SUBMIT</button>
														<div class="text-center col-sm-12">
															<span id="manField" style="display: none;"> <b><font
																	color="red">Please Enter All Mandatory Fields
																		(*). </font></b></span> <span id="passNotFound" style="display: none;">
																<b><font color="red">Passport not found. </font></b>
															</span>
														</div>


													</div>
												</div>
											</div>
											<div id="hrPass">
												<hr>
											</div>
											<div class="col-sm-6" id="nameenPass">
												<div class="form-group row">
													<label for="nameOthersEn" class="col-sm-4 col-form-label">Name
														EN : <span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<input type="text" class="form-control" id="nameOthersEn">
														<span id="nameEnError" style="display: none;"> <b><font
																color="red"><fmt:message key="label.reqError" /></font></b></span>
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="namearPass">
												<div class="form-group row">
													<label for="nameOthersAr" class="col-sm-4 col-form-label">Name
														AR: <span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<input type="text" class="form-control" id="nameOthersAr">
														<span id="nameArError" style="display: none;"> <b><font
																color="red"><fmt:message key="label.reqError" /></font></b></span>
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="genderPass">
												<div class="form-group row">
													<label for="genderOthers" class="col-sm-4 col-form-label">Gender
														:<span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<select name="sel" id="genderOthers" class="form-control">
															<option selected="selected" value="">Select</option>
															<option value="M">Male</option>
															<option value="F">Female</option>
														</select> <span id="genderError" style="display: none;"> <b><font
																color="red"><fmt:message key="label.reqError" /></font></b></span>
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="dobPass">
												<div class="form-group row">
													<label for="dobOthers" class="col-sm-4 col-form-label">Date
														of Birth :<span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<input type="text" class="form-control  datepicker"
															id="dobOthers"> <span id="dobOtherError"
															style="display: none;"> <b><font color="red"><fmt:message
																		key="label.reqError" /></font></b></span>
													</div>
												</div>
											</div>

											<div class="col-sm-6" id="govPass">

												<div class="form-group row">
													<label for="governorateOthers" class="col-sm-4 col-form-label">Governorate
														: <span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<select name="sel" id="governorateOthers"
															class="form-control">
															<option selected="selected" value="">Select</option>
														</select> <span id="governorateOtherError" style="display: none;">
															<b><font color="red"><fmt:message
																		key="label.reqError" /></font></b>
														</span>
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="districtPass">
												<div class="form-group row">
													<label for="districtOthers" class="col-sm-4 col-form-label">District
														: <span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<select name="sel" id="districtOthers" class="form-control">
															<option selected="selected" value="">Select</option>
														</select> <span id="districtOtherError" style="display: none;">
															<b><font color="red"><fmt:message
																		key="label.reqError" /></font></b>
														</span>
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="bloodgrpPass">

												<div class="form-group row">
													<label for="bloodgroupOthers" class="col-sm-4 col-form-label">Blood
														Group :</label>
													<div class="col-sm-8">
														<input type="text" class="form-control"
															id="bloodgroupOthers">
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="addressPass">
												<div class="form-group row">
													<label for="addressOthers" class="col-sm-4 col-form-label">Address
														:<span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<input type="text" class="form-control" id="addressOthers">
													</div>
												</div>
											</div>


											<div class="col-sm-6" id="maritalPass">
												<div class="form-group row">
													<label for="maritalOthers" class="col-sm-4 col-form-label">Marital
														Status :<!-- <span class="red" style="color: red;">*</span> -->
													</label>
													<div class="col-sm-8">
														<select class="form-control" id="maritalOthers">
															<option value="">Select</option>
														</select> <span id="maritalOtherError" style="display: none;">
															<b><font color="red"><fmt:message
																		key="label.reqError" /></font></b>
														</span>
													</div>
												</div>
											</div>

											<div class="col-sm-6" id="entryPass">
												<div class="form-group row">
													<label for="entryDateOthers" class="col-sm-4 col-form-label">Entry
														Date :</label>
													<div class="col-sm-8">
														<input type="text" class="form-control "
															id="entryDateOthers">
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="recidencyPass">
												<div class="form-group row">
													<label for="recidencyOthers" class="col-sm-4 col-form-label">Residency
														status :</label>
													<div class="col-sm-8">
														<select class="form-control" id="recidencyOthers">
															<option selected="selected" value="">Select</option>
														</select>
													</div>
												</div>
											</div>
										</div>

										<div class="row" id="updatecontact1">
											<div class="col-sm-12">
												<div class="form-group row">
													<div class="text-right col-sm-12">
														<span id="updateInfoMessage" style="display: none;"><font
															color="green"><fmt:message
																	key="label.updateInfoMessage" /></font></span> <span
															id="errorInfoMessage" style="display: none;"><font
															color="red"><fmt:message
																	key="label.errorInfoMessage" /></font></span>
														<button type="button" class="btn btn-blue"
															onclick="updateContact()" title="Register Contact">Update</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="card shadow border-bottom-info" id="">
								<div class="card-header bg-gradient-blue " id="headingFive">
									<button class="m-0 btn btn-link " data-toggle="collapse"
										data-target="#collapseFive" aria-expanded="false"
										aria-controls="collapseFive" id="btnFive">Other
										Medical Information</button>
									<!-- <h6 class="m-0 font-weight-bold text-blue  hdd">
										Other Medical Information</h6> -->
								</div>
								<div id="collapseFive" class="collapse card-body pt-3 pb-2"
									aria-labelledby="headingFive" data-parent="#accordionContact"
									style="">
									<div class="container">

										<div class="row">
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="reference" class="col-sm-4 col-form-label">Reference:</label>
													<div class="col-sm-8">
														<div class="input-group">
															<select class="form-control" id="reference">
																<option selected="selected" value="">Select</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="contactComment" class="col-sm-4 col-form-label">Notes:</label>
													<div class="col-sm-8">
														<div class="input-group">
															<textarea maxlength="300" class="form-control"
																id="contactComment" rows="2" cols="50"></textarea>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6" id="occupationPass">
												<div class="form-group row">
													<label for="occupationOthers" class="col-sm-4 col-form-label">Occupation
														:<span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-8">
														<!--  <input type="text" class="form-control" id="occupationOthers">	 -->
														<select class="form-control" id="occupationOthers">
															<option selected="selected" value="">Select</option>
														</select> <span id="occupationOtherError" style="display: none;">
															<b><font color="red"><fmt:message
																		key="label.occupationError" /></font></b>
														</span>
													</div>
												</div>
											</div>
											<%-- <div class="col-sm-6">
												<div class="form-group row">
													<label for="inputPassword" class="col-sm-3 col-form-label "></label>
													<div class="col-sm-9">
														<select name="relations" id="relationReplace1"
															class="form-control assignees">
															<option value=""><fmt:message key="label.select" />
														</select>
													</div>
												</div>
											</div> --%>
										</div>
										<%-- <div class="row">
											<div class="col-sm-6"></div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="inputPassword" class="col-sm-3 col-form-label "></label>
													<div class="col-sm-9">
														<select name="relations" id="relationReplace2"
															class="form-control assignees">
															<option value=""><fmt:message key="label.select" />
														</select>
													</div>
												</div>
											</div>
										</div> --%> 
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="riskfactor" class="col-sm-4 col-form-label">Risk
														Factors:</label>
													<div class="col-sm-8">
														<div class="input-group">
															<select class="form-control" id="riskfactor">
																<option selected="selected" value="">Select</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="hideRiskFactor">
												<div class="form-group row">
													<label for="otherriskfactor" class="col-sm-4 col-form-label">Others(Risk
														Factors):</label>
													<div class="col-sm-8">
														<input type="text" class="form-control"
															id="otherriskfactor">
													</div>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="comorbodities" class="col-sm-4 col-form-label">Comorbodities:</label>
													<div class="col-sm-8">
														<select class="form-control" id="comorbodities">
															<option selected="selected" value="">Select</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-6" id="hideComorbidities">
												<div class="form-group row">
													<label for="othercomorbodities" class="col-sm-4 col-form-label">Others(Comorbodities):</label>
													<div class="col-sm-8">
														<input type="text" class="form-control"
															id="othercomorbodities">
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<%-- <div class="col-sm-6" id="occupationPass">
												<div class="form-group row">
													<label for="inputPassword" class="col-sm-3 col-form-label">Occupation
														:<span class="red" style="color: red;">*</span>
													</label>
													<div class="col-sm-9">
														<!--  <input type="text" class="form-control" id="occupationOthers">	 -->
														<select class="form-control" id="occupationOthers">
															<option selected="selected" value="">Select</option>
														</select> <span id="occupationOtherError" style="display: none;">
															<b><font color="red"><fmt:message
																		key="label.reqError" /></font></b>
														</span>
													</div>
												</div>
											</div> --%>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="relationToIndexCase" class="col-sm-4 col-form-label">Relation
														to Index Case:</label>
													<div class="col-sm-8">
														<div class="input-group">
															<select class="form-control " id="relationToIndexCase" multiple='multiple'
																name="relations">
															</select>

														</div>
															
													</div>
												</div>

											</div>
										</div>
										<div class="row" id="updatemedical">
											<div class="col-sm-12">
												<div class="form-group row">
													<div class="text-right col-sm-12">
														<span id="updateMedMessage" style="display: none;"><font
															color="green"><fmt:message
																	key="label.updateInfoMessage" /></font></span> <span
															id="errorMedMessage" style="display: none;"><font
															color="red"><fmt:message
																	key="label.errorInfoMessage" /></font></span>
														<button type="button" class="btn btn-blue"
															onclick="updateMedical()" title="Update Contact">Update</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>





						</div>
						<div class="modal-footer">
							<div class="text-center col-sm-12">
								<span id="saveDetailsSuccess1"><font color="green">Details
										Saved Successfully.</font></span> <span id="saveDetailsError1"
									style="display: none;"><b><font color="red">Contact Notification already Added.</font></b> </span> <span id="dataUnavailable"
									style="display: none;"><b><font color="red"><fmt:message
												key="label.unAvailable" /></font></b></span> <span
									id="civilpassno1"></span> <span id="patManField1"
									style="display: none;"> <b><font color="red">Please
											Enter All Mandatory Fields (*). </font></b></span>

							</div>
							<button type="button" class="btn btn-blue" id="registercontact1"
								onclick="registercontact()" title="Register Contact">
								Save</button>

						</div>
					</div>
				</div>
			</div>
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


	<!-- Contact Details START -->
	<div class="modal fade" id="contactView" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog" style="max-width: 75%" role="document">
			<!--modal-lg-->
			<div class="modal-content">
				<div class="modal-header bg-gradient-blue px-4">
					<h5 class="modal-title" id="exampleModalCenterTitle">Examination
						Details</h5>
					<button type="button" class="close text-white" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body px-4 pb-0 mbg4">
					<div class="row mb-2">
						<div class="col-sm-12">
							<div id="cAccordion1"
								class="accordion accordion-shadow accordion-bordered">
								<div class="card">
									<div class="card-header bg-gradient-blue" id="cHeadingLab">
										<button class="btn btn-link collapsed" data-toggle="collapse"
											data-target="#cCollapseLab" aria-expanded="false"
											aria-controls="cCollapseLab">Lab</button>
									</div>

									<div id="cCollapseLab" class="collapse show"
										aria-labelledby="cHeadingLab" data-parent="#cAccordion1"
										style="">
										<div class="card-body bg-light-gray" style="display: block">
										<div  class="table-responsive">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0" class="table table-bordered"
												id="addLabTest1">
												<thead>
													<!--bg-primary text-white-->
													<tr>
												<thead>
													<!--bg-primary text-white-->
													<tr>
														<th class="hidden"><fmt:message key="label.testcode" /></th>
														<th class="hidden"><fmt:message key="label.labrow" /></th>
														<th width="25%"><fmt:message key="label.testName" /></th>
														<th width="25%"><fmt:message key="label.specimenType" /></th>
														<th><fmt:message key="label.result" /></th>
														<th width="15%"><fmt:message key="label.date" /></th>
														<th><fmt:message key="label.drugSensitive" /></th>
														<th class="hidden"><fmt:message key="label.rowNo" /></th>
													</tr>
												</thead>
												<tbody></tbody>
											</table>
										</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header bg-gradient-blue" id="cHeadingRad">
										<button class="btn btn-link collapsed" data-toggle="collapse"
											data-target="#cCollapseRad" aria-expanded="false"
											aria-controls="cCollapseRad">Radiology</button>
									</div>

									<div id="cCollapseRad" class="collapse"
										aria-labelledby="cHeadingRad" data-parent="#cAccordion1"
										style="">
										<div class="card-body bg-light-gray" style="display: block">
											<div class="table-responsive">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0" class="table table-bordered"
													id="contRadTest">
													<thead>
														<tr>
															<th class="hidden" width="0%"><fmt:message
																	key="label.testcode" /></th>
															<th class="hidden" width="0%"><fmt:message
																	key="label.radrow" /></th>
															<th width="10%"><fmt:message key="label.testName" /></th>
															<th width="14%"><fmt:message key="label.result" /></th>
															<th width="14%"><fmt:message
																	key="label.abnormalResult" /></th>
															<th width="15%"><fmt:message
																	key="label.otherAbnormalResult" /></th>
															<th width="17%"><fmt:message key="label.notes" /></th>
															<th width="10%"><fmt:message key="label.date" /></th>
															<th class="hidden" width="0%"><fmt:message
																	key="label.rowCount" /></th>
														</tr>
													</thead>
													<tbody></tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header bg-gradient-blue" id="cHeadingPPD">
										<button class="btn btn-link collapsed" data-toggle="collapse"
											data-target="#cCollapsePPD" aria-expanded="false"
											aria-controls="cCollapsePPD">PPD</button>
									</div>

									<div id="cCollapsePPD" class="collapse "
										aria-labelledby="cHeadingPPD" data-parent="#cAccordion1"
										style="">
										<div class="card-body bg-light-gray" style="display: block">
											<div class="table-responsive">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0" class="table table-bordered"
													id="contPpdTestResult">
													<thead>
														<tr>
															<th width="25%"><fmt:message key="label.testType" /></th>
															<th width="35%"><fmt:message key="label.reason" /></th>
															<th><fmt:message key="label.reading" /></th>
															<th><fmt:message key="label.ppd1TestDate" /></th>
															<th><fmt:message key="label.ppd2TestDate" /></th>
															<th><fmt:message key="label.ppd1ReadingDate" /></th>
															<th><fmt:message key="label.ppd2ReadingDate" /></th>
															<th><fmt:message key="label.ppd1Reading" /></th>
															<th><fmt:message key="label.ppd2Reading" /></th>
															<th><fmt:message key="label.ppd1Result" /></th>
															<th><fmt:message key="label.ppd2Result" /></th>
															<th><fmt:message key="label.PPD1Notes" /></th>
															<th><fmt:message key="label.ppd2Notes" /></th>
															<th class="hidden"><fmt:message
																	key="label.testTypeValue" /></th>
															<th class="hidden"><fmt:message
																	key="label.reasonValue" /></th>
															<th class="hidden"><fmt:message key="label.PPDID" /></th>
															<th class="hidden"><fmt:message key="label.rowcount" /></th>
															<th class="hidden"><fmt:message
																	key="label.docinterpret" /></th>
															<th class="hidden"><fmt:message
																	key="label.docinterpret" /></th>
														</tr>
													</thead>
													<tbody></tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header bg-gradient-blue" id="cHeadingIGRA">
										<button class="btn btn-link collapsed" data-toggle="collapse"
											data-target="#cCollapseIGRA" aria-expanded="false"
											aria-controls="cCollapseIGRA">IGRA</button>
									</div>

									<div id="cCollapseIGRA" class="collapse"
										aria-labelledby="cHeadingIGRA" data-parent="#cAccordion1"
										style="">
										<div class="card-body bg-light-gray" style="display: block">
											<div  class="table-responsive">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0" class="table table-bordered"
													id="contIgraTest">
													<thead>
														<tr>
															<%--<th class="hidden"><fmt:message
																													key="sl.No" /></th>
																											 <th><fmt:message
																													key="label.examinationType" /></th>--%>
															<th width="20%"><fmt:message key="label.testType" /></th>
															<th><fmt:message key="label.result" /></th>
															<th width="15%"><fmt:message key="label.treatmentDate" /></th>

															<th><fmt:message key="label.notes" /></th>

															<th class="hidden"><fmt:message key="label.rowcount" /></th>
															<th class="hidden"><fmt:message key="label.ExID" /></th>
															<th class="hidden"><fmt:message key="label.result" /></th>
															<th class="hidden"><fmt:message key="label.testType" /></th>

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
				<div class="modal-footer px-4  text-right">
					<!-- <button type="button" class="btn  btn-dropbox text ">Edit
					</button> -->
					<button type="button" class="btn btn-tumblr text"
						data-dismiss="modal">Cancel</button>
					<!-- btn--->
				</div>
			</div>
		</div>
	</div>
	<!-- Contact Details END -->

	<!-- Patient Details  START-->
	<div class="modal fade" id="modal_view2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog " role="document">
			<!--modal-lg-->
			<div class="modal-content">
				<div class="modal-header bg-gradient-blue px-4">
					<h5 class="modal-title" id="exampleModalCenterTitle">View
						Patient Details</h5>
					<button type="button" class="close text-white" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body px-4 pb-0 mbg4">
					<div class="row mb-2">
						<div class="col-sm-12">
							<div id="accordion2"
								class="accordion accordion-shadow accordion-bordered">
								<div class="card">
									<div class="card-header bg-gradient-blue " id="headingFour1">
										<button class="btn btn-link " data-toggle="collapse"
											data-target="#collapseFour1" aria-expanded="true"
											aria-controls="collapseFour1">Personal Details</button>
									</div>
									<div id="collapseFour1" class="collapse show"
										aria-labelledby="headingFour1" data-parent="#accordion2"
										style="">
										<div class="card-body bg-light-gray">
											<div class="form-group row  ">
												<label class="col-sm-4 col-form-label "><span>ID
														Number</span> :</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control" id="patCivilId"
															disabled="disabled">
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Name(Arabic):</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control text-right1"
															id="patNameAr" disabled="disabled">
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Name(English):</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control" id="patNameEn"
															disabled="disabled">
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Nationality :</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<select class="form-control" name="sd" id="patNationality"
															disabled="disabled"><option>--Select--</option>
														</select>
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Gender : </label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<select class="form-control" id="patGender"
															disabled="disabled"><option value="">Select</option>
															<option value="M">Male</option>
															<option value="F">Female</option>
														</select>
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Blood group :</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="patBldGrp">
													</div>

												</div>
											</div>
											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Date Of Birth
													:</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="patDOB">
													</div>

												</div>
											</div>
											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Address :</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<textarea class="form-control" disabled="disabled"
															id="patAddress"></textarea>

													</div>

												</div>
											</div>
											<div class="eight">
												<h4 class="text-gray">Contact Details</h4>
											</div>
											<div id="field_wrapper1">
												<div class="form-group row" id="phoneId0">
													<label class="col-sm-4 col-form-label ">Mobile No.
														: </label>
													<div class="col-sm-8 ">
														<div class="input-group">
															<input type="text" class="form-control"
																disabled="disabled" id="patPhone0">
															<div class="input-group-append">
																<button class="btn btn-info add_button1" type="button"
																	title="Add">
																	<i class="fa fa-plus"></i>
																</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header bg-gradient-blue" id="headingFive">
										<button class="btn btn-link collapsed" data-toggle="collapse"
											data-target="#collapseFive" aria-expanded="false"
											aria-controls="collapseFive">Initial Hospital
											Notification</button>
									</div>

									<div id="collapseFive" class="collapse "
										aria-labelledby="headingFive" data-parent="#accordion2"
										style="">
										<div class="card-body bg-light-gray">

											<div class="form-group row ">

												<label class="col-sm-4 col-form-label ">Hospital
													Category:</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<select class="form-control" id="hospitalCat" disabled><option>--Select--</option>
														</select>
													</div>

												</div>
											</div>
											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">File No :</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="fileNo">
													</div>

												</div>
											</div>
											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Referred Date
													:</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="referredDate">
													</div>

												</div>
											</div>

											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Diagnosis:</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<select class="form-control" id="diagnosisMain" disabled><option>--Select--</option></select>
													</div>

												</div>
											</div>
											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Sub
													Diagnosis:</label>
												<div class="col-sm-8">

													<div class="input-group">
														<select class="form-control" id="subdiagnosisMain"
															disabled><option>--Select--</option></select>
													</div>

												</div>
											</div>

											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Physician
													Name:</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="physicianName">
													</div>

												</div>
											</div>

											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Physician No:</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="physicianNo">
													</div>

												</div>
											</div>



											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Hospital
													Stay: </label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<select class="form-control" id="hospitalStay" disabled><option>--Select--</option></select>
													</div>

												</div>
											</div>

											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Action Taken
													: </label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<select class="form-control" id="actionTaken" disabled>
															<option>--Select--</option>
														</select>
													</div>

												</div>
											</div>
											<div class="form-group row ">

												<label class="col-sm-4 col-form-label">Risk Factor :
												</label>
												<div class="col-sm-8 ">

													<div class="input-group">
														<select class="form-control" id="riskfactPRC" disabled>
															<option>--Select--</option>
														</select>
													</div>

												</div>
											</div>

										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header bg-gradient-blue" id="headingSix">
										<button class="btn btn-link collapsed" data-toggle="collapse"
											data-target="#collapseSix" aria-expanded="false"
											aria-controls="collapseSix">PRC Information</button>
									</div>
									<div id="collapseSix" class="collapse "
										aria-labelledby="headingSix" data-parent="#accordion2"
										style="">
										<div class="card-body bg-light-gray">
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">File No :</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="fileNoPRC">
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Admitted Date
													:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="admittedDatePRC">
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Diagnosis:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<!-- <select class="form-control" id="diagnosisPRC" name="sd"
															disabled><option>--Select--</option>
														</select> -->

														<select name="sd" id="diagnosisPRC" class="form-control"
															disabled>
															<option value="0" style="display: none;"><fmt:message
																	key="label.select" />
														</select>
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Sub
													Diagnosis:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<select class="form-control" id="subdiagnosisPRC"
															name="sd" disabled><option>--Select--</option></select>


													</div>
												</div>
											</div>

											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Treatment
													Start Date:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="treatmentStartDatePRC">
													</div>
												</div>
											</div>

											<div class="form-group row ">
												<label class="col-sm-4 col-form-label ">Treatment
													Category:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<select class="form-control" id="treatmentCategoryPRC"
															name="sd" disabled><option>--Select--</option></select>
													</div>
												</div>
											</div>

											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Start Dose
													Date:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="startDoseDatePRC">
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 col-form-label">End Dose
													Date:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="endDoseDatePRC">
													</div>
												</div>
											</div>

											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Medication
													Resistance:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<select class="form-control" id="medicationResistancePRC"
															name="sd" disabled><option>--Select--</option></select>
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Treatment
													Outcome:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<select class="form-control" name="sd"
															id="treatmentOutcomePRC" disabled>
															<option value="">Select</option>
														</select>
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Hospital
													Stay: </label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<select class="form-control" name="sd"
															id="hospitalStayPRC" disabled><option>--Select--</option></select>
													</div>
												</div>
											</div>

											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Physician
													Name:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="physicainNamePRC">
													</div>
												</div>
											</div>

											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Discharge
													Date:</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="dischargeDatePRC">
													</div>
												</div>
											</div>


											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Comments :</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<textarea class="form-control" id="commentsPRC"
															disabled="disabled"></textarea>
													</div>

												</div>
											</div>

											<div class="form-group row ">
												<label class="col-sm-4 col-form-label">Next
													Appointment :</label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="text" class="form-control"
															disabled="disabled" id="nextAppoinmentPRC">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header bg-gradient-blue" id="headingseven">
										<button class="btn btn-link collapsed" data-toggle="collapse"
											data-target="#collapseseven" aria-expanded="false"
											aria-controls="collapseseven">TB Control Unit</button>
									</div>
									<div id="collapseseven" class="collapse "
										aria-labelledby="headingseven" data-parent="#accordion2"
										style="">
										<div class="card-body bg-light-gray" style="display: block">
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label"><fmt:message
														key="label.numberOfEstimatedContacts" /></label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="number" class="form-control numberonly"
															id="estimatedContact" name="last_name"
															disabled="disabled">
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label"><fmt:message
														key="label.numberOfReceivedContacts" /></label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="number" class="form-control numberonly"
															id="receivedContact" name="last_name" disabled="disabled">
													</div>
												</div>
											</div>
											<div class="form-group row ">
												<label class="col-sm-4 col-form-label"><fmt:message
														key="label.numberOfRefferredContacts" /></label>
												<div class="col-sm-8 ">
													<div class="input-group">
														<input type="number" class="form-control numberonly"
															id="refferredContact" name="last_name"
															disabled="disabled">
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
				<div class="modal-footer px-4  text-right">
					<!-- <button type="button" class="btn  btn-dropbox text ">Edit
					</button> -->
					<button type="button" class="btn btn-tumblr text"
						data-dismiss="modal">Cancel</button>
					<!-- btn--->
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="assigneesModal" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.addAssignees" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearmesgAssignees()" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<select name="assignees" id="multipleAssignees"
										class="form-control">
										<option value=""><fmt:message key="label.select" />
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" type="button" id="addAssigneesBtn"
						data-dismiss="modal" class="btn btn-green"
						onclick="addAssignees()">Add</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearmesgAssignees()">
						<fmt:message key="label.cancel" />
					</button>

				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="deleteContactModal" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-blue text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteContact" />
					</h5>
					<button type="button" class="close text-white" data-dismiss="modal"
						onclick="clearmesgContact()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<span class="col-sm-4 col-form-label"> <fmt:message
											key="label.deleteContactConfirm" /></span>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<input type="hidden" id="ContactRowNo"> <span
							id="contactdeletesuccess"><font color="green"><fmt:message
									key="label.contactdeletesuccess" /></font></span>
					</div>
					<input type="button" value="Yes" class="btn btn-green"
						id="deleteContact">
					<button type="button" class="btn btn-tumblr text"
						data-dismiss="modal" onclick="clearmesgContact()">
						<fmt:message key="label.cancel" />
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="deleteFollowUpModal" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-blue text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteFollowUp" />
					</h5>
					<button type="button" class="close text-white" data-dismiss="modal"
						onclick="clearmesgFollowUp()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<input type="hidden" id=followupRowNo> <span
										class="col-sm-4 col-form-label"> <fmt:message
											key="label.deleteFollowUpConfirm" /></span>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="followUpdeletesuccess"><font color="green"><fmt:message
									key="label.followUpdeletesuccess" /></font></span>
					</div>
					<input type="button" value="Yes" class="btn btn-green"
						id="deleteFollowUp">
					<button type="button" class="btn btn-tumblr text"
						data-dismiss="modal" onclick="clearmesgFollowUp()">
						<fmt:message key="label.cancel" />
					</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	<!-- Footer -->
	<footer class="footer mt-auto">
		<div class="copyright bg-white text-center">
			<p>
				Copyright © <span id="copy-year"></span> Ministry of Health- Kuwait.
				All rights reserved
			</p>
		</div>
		<script>
		var page = "inspector";
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

		$( "#entryDateOthers" ).datepicker({
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
	<script type="text/javascript" src="js/authentication.js"></script>
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery.webui-popover.js"></script>
	<script src="js/select2.min.js"></script>
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
		$('#relationToIndexCase').select2({
            placeholder: 'Select an option',
            allowClear: true
        });
     clearDetailsOtherId();
 	 $('#hideTab').hide();  
 	 $('#patManField1').hide();
 	 $('#hideContact').hide();
     $('#hideFollowUp').hide();
     $('#pass1').hide();
 	 $('#hideComorbidities').hide();
	 $('#occupationOtherPass').hide();
 	 $('#hideRiskFactor').hide();
 	 $('#hideAssignToRoom').hide();
 	 $('#hideReferredToPRC').hide();
 	 $('#updateMessage').hide();
	 $('#errorMessage').hide();
	 $('#updateappMessage').hide();
	 $('#errorupdateappMessage').hide(); 
	 $('#appcreateMessage').hide();
	 $('#apperrorMessage').hide();
	 $('#appvalidationMessage').hide();	 
	 $('#validationMessage').hide();
	 $('#errorSearchByName').hide();
	 var myDate = new Date();
	 var governoratecd = '' ,districtcd = ''; nationalityVal = ''; nationalityValGCC = ''; lstIgraResult = ''; igraTestTypeList  = ''; lstafbresultsdiv_data = '';lstxrayresultsdiv_data =''; lstcultureresultsdiv_data  = '';lstabnormalresultsdiv_data  = '';
	 var lstctscanresultsdiv_data   = ''; lstpcrresultsdiv_data  = ''; lstMedTreatTypediv_data  = '';  lDrugSensitive  = '';labSpecimenTypeDivData = '';
	 var notifId = ''; contId = ''; regcd = '' ;  patcd = '' ;contactOccupation = ''; contactComment = '';  followupPhoneno = '' ; followupComment= ''; pidUpdateFollowUp = ''; activeUpdateFollowUp = '';
	 var referedByLoc = ''; referedByDate = '' ; searchStatus = ''; searchReference = '2'; doctorStatus = ''; appId = ''; appmntid = ''; followupPid = '' ; followupRowId = '';
	 var mapaction =[];  mapposition = []; mapriskfactor = []; mapcomorbodities = []; maprelation = [] ; maptest = [];
	 var myJSONObj = JSON.stringify({"usercd":sessionStorage.getItem('username')});
	 $.ajax({
         type: "GET",
         url:context+"/getlistresponse?method=lstinpectordata",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			async:false,
			dataType : "json",		
          success: function (datahere) {			                 
         	 var response = JSON.parse(JSON.stringify(datahere));	
            	  $.each(response.details.phonestatus,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                
	 		                 $(div_data).appendTo('#answerStatus');
	 		                 $(div_data).appendTo('#followupstatus');
	                       });
            	  
            	  $.each(response.details.relation,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
			   	       	    maprelation.push({
	   	        	        	code: response.code, 
	   	                    	nameen: response.nameen,
	   	                    	namear: response.namear
	                        });
	 		                 $(div_data).appendTo('#relationToIndexCase'); 
	 		               // $(div_data).appendTo('#relationReplace1'); 
	 		              // $(div_data).appendTo('#relationReplace2'); 
	                       });
            	  
            	  $.each(response.details.reference,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                 $(div_data).appendTo('#reference'); 
	                       });
            	  
            	  $.each(response.details.comorbodities,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                
	 		                 $(div_data).appendTo('#comorbodities');
	 		                mapcomorbodities.push({
       	        	        	code: response.code, 
       	                    	nameen: response.nameen,
       	                    	namear: response.namear
                            });
	                       });
            	  
            	  $.each(response.details.riskfactor,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
		   	       	    	mapriskfactor.push({
       	        	        	code: response.code, 
       	                    	nameen: response.nameen,
       	                    	namear: response.namear
                            });
	 		                $(div_data).appendTo('#riskfactor'); 
	                       });
            	  
            	  $.each(response.details.contactstatus,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                
	 		                 $(div_data).appendTo('#contactstatus');	 		                
	                       });
            	  $.each(response.details.insnotifstatus,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                 $(div_data).appendTo('#searchByStatus'); 
	                       });
            	  doctorStatus = response.details.contactdocstatus;
            	  $.each(response.details.contactdocstatus,function(i,response)
	 		            	 {
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
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
		async:false,
		success : function(response) {
			 var response = JSON.parse(response);
			
			 var labTestDetails = '', radiologyTestDetails = '', labslNo = 0 , radslNo = 0;
			 // radiology test list			 
			
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
				 
				// $(igraTestTypeList).appendTo('#igraTypeOfTest');
				
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
				 $.each(response.details.lstcultureresults,function(k,response){
		   	       	if(lang=='en'){
		   	       	     lstcultureresultsdiv_data+="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	}else{
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
				//Lab Drug Sensitive
					$.each(response.details.lstdrugsensitivetypes,function(j,response){
					   	  if(lang=='en'){
					   		lDrugSensitive +="<option value="+response.code+">"+response.nameen+"</option>";
					   	  }else{
					   		lDrugSensitive +="<option value="+response.code+">"+response.nameen+"</option>";
					   	  }
				 		   
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
				getToken(); 
			}
		}
});
	 $.ajax({
			type : "GET",
			url : context+"/getlistresponse?method=lstDetailsData",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			crossDomain : true,
			async:false,
			success : function(response) {
				 var userDetailsHos = ''; userDetailsPcr = '';
				 var slNo =1;
				 var response = JSON.parse(response);
				// list risk factor
				  $.each(response.details.lstriskfactors,function(i,response)
			            	 {  	                    
		   	            
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
			                
			                  $(div_data).appendTo('#riskfactPRC'); 
	                    });
				
				// list tb diagnosis
			  	  $.each(response.details.lsttbdiagnosis,function(i,response)
			            	 {	   	                    
		   	             
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
			                  $(div_data).appendTo('#diagnosisMain'); 
			                  $(div_data).appendTo('#daignosisHos'); 
			                  $(div_data).appendTo('#diagnosisPRC'); 
			    		  
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
			                  $(div_data).appendTo('#actionTaken'); 
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
			                  $(div_data).appendTo('#hospitalStay'); 
	                    });
			
				
				//list treatment category
				 $.each(response.details.lsttreatcategory,function(i,response)
	             	 		            	 {
	             		   	                    
	             		   	              
	             		   	       	          if(lang=='en'){
	             		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	             		   	       	          }
	             		   	       	          else{
	             		   	       	         var div_data="<option value="+response.code+">"+response.namear+"</option>";
	             		   	   	       	          }
	             	 		                  $(div_data).appendTo('#treatmentCategoryPRC'); 
	             	 		                
	             	 		    		  
	             	                       });
				
				// list medical resistance
				  $.each(response.details.lstmedresistance,function(j,response)
		 		            	 {
			   	                  
			   	             
			   	       	          if(lang=='en'){
			   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			   	       	          }
			   	       	          else{
			   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
			   	   	       	          }
		 		                  $(div_data).appendTo('#medicationResistancePRC'); 
		                       });
				
				//1.5 list treatment outcome 
			 		 $.each(response.details.lsttreatoutcome,function(i,response){
	   	       	        if(lang=='en'){
	   	       	          var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	   	       	          
	   	       	       }else{
	   	       	         var div_data="<option value="+response.code+">"+response.namear+"</option>";
	   	   	       	   }
      	 		   $(div_data).appendTo('#treatmentOutcomePRC');
			 		 }); 
				
			 		// list patient position
				  	 $.each(response.details.lstpatposition,function(i,response){
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
				                 // $(div_data).appendTo('#patPosition'); 
				                  $(div_data).appendTo('#hospitalStayPRC'); 
				                  //$(div_data).appendTo('#searchByStatusList'); 
		                    });
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
					 getToken();
				}
			}
	 });
	 

		$.ajax({
            type: "GET",
            url:context+"/getlistresponse?method=lstconsultationrooms",
 			contentType : "application/json",
 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
 			crossDomain : true,
 			dataType : "json",		
             success: function (datahere) {			                 
            	 var response = JSON.parse(JSON.stringify(datahere));	
               	  $.each(response.details,function(i,response)
 	 		            	 {
 		   	       	          if(lang=='en'){
 		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
 		   	       	          }
 		   	       	          else{
 		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
 		   	   	       	          }
 		   	       	         $(div_data).appendTo('#assignToRoom'); 
 	                       });
             },
          error : function(jqXHR, textStatus, errorThrown) {
  				if (jqXHR.status == "401"){ getToken();
  				    }
  			}
      });
		
		$.ajax({
            type: "GET",
            url:context+"/getlistresponse?method=lstprcs",
 			contentType : "application/json",
 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
 			crossDomain : true,
 			dataType : "json",		
             success: function (datahere) {			                 
            	 var response = JSON.parse(JSON.stringify(datahere));	
               	  $.each(response.details,function(i,response)
 	 		            	 {
 		   	       	          if(lang=='en'){
 		   	       	           var div_data="<option value="+response.locationcd+">"+response.locationnameen+"</option>";
 		   	       	          }
 		   	       	          else{
 		   	       	        var div_data="<option value="+response.locationcd+">"+response.locationnamear+"</option>";
 		   	   	       	          }
 		   	       	         $(div_data).appendTo('#prcLocation');
 		   	       	         });
               	  			if($("#prcLocation option").length == 2){ 
               	     			$("#prcLocation option:nth(1)").attr("selected",true); 
               	 			}
             },
          error : function(jqXHR, textStatus, errorThrown) {
  				if (jqXHR.status == "401"){ getToken();
  				    }
  			}
      });

	 
		$.ajax({
            type: "GET",
            url:context+"/getlistresponse?method=lstassignees",
 			contentType : "application/json",
 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
 			crossDomain : true,
 			dataType : "json",		
             success: function (datahere) {			                 
            	 var response = JSON.parse(JSON.stringify(datahere));	
               	  $.each(response.details,function(i,response)
 	 		            	 {
 		   	       	          if(lang=='en'){
 		   	       	        	if(sessionStorage.getItem('nameen') == response.usernameen){
 		   	       	        	var div_data="<option value="+response.usercd+">"+response.usernameen+"</option>";
/*  		   	       	          		var div_data="<option value="+response.usercd+" selected>"+response.usernameen+"</option>";
 */ 		   	       	          	}
 		   	       	        	else {
 		   	       	        		var div_data="<option value="+response.usercd+">"+response.usernameen+"</option>";
 		   	       	        	}
 		   	       	          }
 		   	       	          else{
	 		   	       	       if(sessionStorage.getItem('nameen') == response.namear){
		   	       	          		var div_data="<option value="+response.usercd+">"+response.usernamear+"</option>";

/* 		   	       	          		var div_data="<option value="+response.usercd+" selected>"+response.usernamear+"</option>";
 */		   	       	          	}
	 		   	       			else {
	   	       	        			var div_data="<option value="+response.usercd+">"+response.usernamear+"</option>";
	   	       	        		}
 		   	   	       	      }
 		   	       	         $(div_data).appendTo('#searchByAssignee');
 	                       });
               	  			
             },
          error : function(jqXHR, textStatus, errorThrown) {
  				if (jqXHR.status == "401"){ getToken();
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
				$.each(response.details.lstOccupations,function(j,response)
		            	 {
	  	       	          if(lang=='en'){
	  	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	  	       	          }
	  	       	          else{
	  	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
	  	   	       	          }
		                 $(div_data).appendTo('#occupationOthers');
		                 $(div_data).appendTo('#occupationReg');
	                });
				 //list nationality
				 getNationality();
				
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
			                  $(div_data).appendTo('#governorateOthers'); 
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
			                  $(div_data).appendTo('#maritalOthers'); 
			                 
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
			                  $(div_data).appendTo('#recidencyOthers'); 
	                    });
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
					 getToken();
				}
			}
	 });
	 
	 getGccNationality();
	 
	 
	   $.ajax({
           type: "GET",
           url:context+"/getlistresponse?method=getlocsector",
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
		   	       	           var div_data="<option value="+response.code+">"+response.result+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.result+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#hospitalCat'); 
	                       });
              	
            },
         error : function(jqXHR, textStatus, errorThrown) {
 				
 				if (jqXHR.status == "401"){
 					 getToken();
 				   
 				    }
 			}
     }); 
	   
	   refreshNotification();
	   //refreshAppointment();
	   //refreshSearchList();
	});
		$(document)
				.ready(
						function() {
							jQuery("#ref5").hide();
							jQuery("select.selectVal3").change(
									function() {
										var selectedItem3 = jQuery(this)
												.children("option:selected")
												.val();
										if (selectedItem3 == 1) {
											jQuery("#ref5").show();
										} else {
											jQuery("#ref5").hide();
										}

									});
							jQuery('.pop_1').popover({
								container : 'body',
								trigger : 'hover',
								content : "Adbul Mohsen Alksubaiei",
								placement : "top",
							})
							initPopover1()
							function initPopover1() {
								var settings = {
									trigger : 'hover',
									width : 400,
									multi : true,
									closeable : false,
									style : '',
									padding : true,
									animation : 'pop'
								};
								var listContent2 = jQuery('#listContent2')
										.html(), listSettings = {
									content : listContent2,
									title : 'Meeting Status',
									padding : true,
								};
								jQuery('a.show-pop-list2').webuiPopover(
										'destroy').webuiPopover(
										jQuery.extend({}, settings,
												listSettings));
							}
						});
	</script>
	<script>
		var context = '${pageContext.request.contextPath}';
	 	var lang = '<%=response.getLocale().getLanguage()%>';
		$(':radio').click(function() {
			clearDetailsOtherId();
			$('#nationalityOthers').html('');
			$('#nationalityOthers').append($('<option>', {
				value : "",
				text : "Select"
			}));
			if ($('input[name="idType"]:checked').val() == 'P') {
				$('#pass').show();
				$('#pass1').hide();
				$('#dataUnavailable').hide();
				dataAvailable();
				hidepassDetails();
				$(nationalityVal).appendTo('#nationalityOthers'); 
				$('#genderPass').hide();
				$('#bloodgrpPass').hide();
				$('#registercontact').hide();
				$('#nationalityPass').show();
				$('#passcivilOpenNotif').hide();
				$('#passcivilAvailable').hide();
				$('#changeIDName').text('<fmt:message key="passportId"/>:');
			}
			if ($('input[name="idType"]:checked').val() == 'G') {
				$('#pass').show();
				//$('#pass1').show();
				$('#pass1').hide();
				$('#dataUnavailable').hide();
				dataAvailable();
				showpassDetails();
				$(nationalityValGCC).appendTo('#nationalityOthers'); 
				$('#genderPass').show();
				$('#bloodgrpPass').show();
				$('#registercontact').show();
				$('#nationalityPass').show();
				$('#passcivilOpenNotif').hide();
				$('#passcivilAvailable').hide();
				$('#changeIDName').text('<fmt:message key="gccID"/>:');
			}
			if ($('input[name="idType"]:checked').val() == 'C') {
				$('#pass').show();
				//$('#pass1').show();
				$('#pass1').hide();
				$('#dataUnavailable').hide();
				dataAvailable();
				showpassDetails();	
				$(nationalityVal).appendTo('#nationalityOthers'); 
				$('#genderPass').show();
				$('#bloodgrpPass').show();
				$('#registercontact').show();
				$('#nationalityPass').show();
				$('#passcivilOpenNotif').hide();
				$('#passcivilAvailable').hide();
				$('#changeIDName').text('<fmt:message key="label.civilID"/>');
			}
		});
		
		
		function getPatientDetails(row){
			 $("#collapseFour1").collapse('show');
			 $("#collapseFour1").attr("aria-expanded","true");
			 //$("#btnFive").attr("aria-expanded","false");
			var myJSONObj =JSON.stringify({"notifid": row.closest("tr").find('td:eq(1)').text()});
			$.ajax({
	            type: "POST",
	            url:context+"/apiResponse?method=getnotificationinfo",
	            headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	             success: function (data) {			                 
		                    if(data.code=="1"){
		                    	for(var i = 0; i < data.details.length; i++){
		                    		 var id = data.details[i];
		                    	 	 $('#patCivilId').val(id.patient.idnumber);
		                    	 	 $('#patNameEn').val(id.patient.nameen);
		                    	 	 $('#patNameAr').val(id.patient.namear);
		                    	 	 $('#patNationality').val(id.patient.nationality);
		                    	 	 $('#patGender').val(id.patient.gender);
		                    	 	 $('#patBldGrp').val(id.patient.bloodgroup);
		                    	 	 $('#patDOB').val(id.patient.birthdate);
		                    	 	 $('#patAddress').val(id.patient.address);
		                    	     if(id.patient.patphone!=null){
		                    	    	 $.each(id.patient.patphone , function(index, value) { 
  			                        		if(index>0){
  			                        		 $(".add_button1").click();
  			                        		}
  			                        		 $('#patPhone'+index).val(value);
  			                        	});
         			                 }  
		                    	     $("#hospitalCat").val(id.notiflocationtype);
		                    	     $("#fileNo").val(id.fileno);
		                    	     $("#referredDate").val(id.referreddate);
		                    	     $("#physicianName").val(id.physicname);
		                    		 $("#physicianNo").val(id.physicphone);
		                    		 $("#hospitalStay").val(id.position);
		                    		 $("#actionTaken").val(id.action);
		                    		 $("#riskfactPRC").val(id.riskfactor);
		                    		// $("#referralDate").val(id.referreddate);
		                    	     for(var j = 0; j < id.diagnosis.length; j++){ 
	          			                	var diagdata='';
	          			                	diagdata= id.diagnosis[j];
	          			             if(diagdata.isprc == "Y"){
	          			            	 $("#diagnosisPRC").val(diagdata.code);
	          			            	subcodeval=diagdata.subcode;
	       			   		       		var myJSONObj =JSON.stringify({"type": diagdata.code});
	       			   		       		getSubdiagnosis("PRC",myJSONObj,subcodeval) 
	          			             }else{   	
		                    	     $("#diagnosisMain").val(diagdata.code);
		                    	     subcodeval=diagdata.subcode;
	       			   		       		var myJSONObj =JSON.stringify({"type": diagdata.code});
	       			   		       		getSubdiagnosis("Main",myJSONObj,subcodeval)
	          			             }
       			                	 
		                    	}
		                    	     if(id.prc != null){
			                    	     $("#fileNoPRC").val(id.prc.prcfile);
			                    	     $("#admittedDatePRC").val(id.prc.admitteddt);
			                    	     $("#treatmentStartDatePRC").val(id.prc.treatstartdt);
			                    	     $("#treatmentCategoryPRC").val(id.prc.treatcategory);
			                    	     $("#startDoseDatePRC").val(id.prc.dosesstartdt);
			                    	     $("#endDoseDatePRC").val(id.prc.dosesenddt);
			                    	     $("#medicationResistancePRC").val(id.prc.medresistance);
			                    	     $('#hospitalStayPRC').val(id.prc.position);
			                    	     $('#treatmentCategoryPRC').val(id.prc.treatcategory);
			                    	     $("#physicainNamePRC").val(id.prc.physicname);
			                    	     $("#dischargeDatePRC").val(id.prc.dischargedt);
			                    	     $("#commentsPRC").val(id.prc.notes);
			                    	    // Pooja $("#riskfactor").val(id.prc.prcfile);
		                    	     }
		                    	     $("#treatmentOutcomePRC").val(id.outcome);
		                    	     $('#estimatedContact').val(id.estimatedContacts);
    			                     $('#receivedContact').val(id.receivedContacts);
    			                     $('#refferredContact').val(id.referredContacts);
		                    	}
		                    }
		                    }
		                    
			});
			getToken();
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
		    			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
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
     getToken();
		}
		
		function refreshNotification(){
			 var myJSONObj = JSON.stringify({"usercd":sessionStorage.getItem('username')});
			  $.ajax({
					type : "POST",
					url : context+"/apiResponse?method=lstinspectornotifs",
					contentType : "application/json",
					headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					crossDomain : true,
					data : myJSONObj,	
					dataType : "json",	
					success : function(response) {
												notificationList(response)
												},
												error : function(jqXHR, textStatus,
														errorThrown) {
													if (jqXHR.status == "401") {
													}
												}
											});
			  getToken();
		}
		
		function notificationList(response){
			if(response.code == "1"){
				 var userDetails = '';var table1='' ;
				 var slNo =1;var notifyloc='';
												for (var i = 0; i < response.details.length; i++) {
													var id = response.details[i];
													var reqid = id.reqid;
													patcd = id.patcd;
													userDetails += '<tr>';
													userDetails += '<td>'
															+ slNo + '</td>';
													userDetails += '<td>'
															+ id.id + '</td>';
													let idDesc ="";
									            	if(id.idtype =='G'){
									            		idDesc = " (GCC) ";
									            	}else if(id.idtype =='P'){
									            		idDesc = " (Passport) "
									            	}else if(id.idtype =='U'){
									            		idDesc = " (Unknown) "
									            	}else if(id.idtype =='C'){
									            		idDesc = " (Civil ID) "
									            	}
									            	let idnumber = '';
									            	idnumber = id.idnumber + idDesc;
													if (lang == 'en') {
														userDetails += '<td>'
																+ id.patnameen
																+ '<br><b>' +idnumber + '</td>';
													} else {
														userDetails += '<td>'
																+ id.patnamear
																+ '<br><b>' +idnumber + '</td>';
													}

															if (lang == 'en') {
																userDetails += '<td>'
																		+ id.doctornameen
																		+ '</td>';
															} else {
																userDetails += '<td>'
																		+ id.doctornamear
																		+ '</td>';
															}
															if (id.status == null) {
																var status = "";
																userDetails += '<td class="text-center">'
																		+ status
																		+ '</td>';
															} else if (id.status == 1) {
																var status = "Started";
																userDetails += '<td class="text-center"> <span class="warning_bg status_pd2">'+ status
																+'</span></td>';
															} else if (id.status == 2) {
																var status = "Pending";
																userDetails += '<td class="text-center"> <span class=" danger_bg status_pd1">'+ status
																	+'</span></td>';
															} else if (id.status == 3) {
																var status = "Completed";
																userDetails += '<td class="text-center"> <span class="success_bg">'+ status
																+'</span></td>';
															}else{
																var status = "";
																userDetails += '<td class="text-center">'
																		+ status
																		+ '</td>';
															}
															userDetails += '<td class="text-left">'
															userDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
															userDetails += '<a class="dropdown-toggle icon-burger-mini cpoint" href="" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>'
															userDetails += '<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">'
															userDetails += '<li class="dropdown-item">'
															userDetails += '<a href="#"  data-target="#modal_view2" onclick="getPatientDetails($(this))" data-toggle="modal">View Patient Details</a>'
															userDetails += ' </li>'
															userDetails += '<li class="dropdown-item">'
															userDetails += '  <a href="#tbcontact"  onclick="viewContactList($(this))">View Contact List</a>'
															userDetails += ' </li>'
															userDetails += ' </ul>'
															userDetails += ' </div></td>';
															userDetails += '</tr>';
															slNo = slNo + 1;
														}
														$('#inspectorNotificationList').DataTable().destroy();
										                $('#inspectorNotificationList tbody tr').remove();
														table1 = $(
																'#inspectorNotificationList')
																.append(userDetails);
														table1.dataTable({
															"pageLength": 5 ,
															"lengthMenu": [[5, 10, 20, -1], [5, 10, 20, 'All']]
															});
														$("#inspectorNotificationList tbody tr div").click(function() { 
															$("#inspectorNotificationList tbody td").css("background-color", "#f0f8ff");                                                     
															var currentRow=$(this).closest("tr");      
															var col1=currentRow.find("td:eq(0)").html();
														    currentRow.find("td").css("background-color", "lightyellow");                                                    
														});

											}
		}
		
		function clearAllNotication (){
			 $("#searchByStatus").val("");
			 $("#searchByAssignee").val("");
			 $("#searchByAssignee").removeAttr("disabled");
			 $("#searchByStatus").removeAttr("disabled");
			 searchReference = "2";
			 $('#hideTab').hide(); 
			  /* var assignee = sessionStorage.getItem('nameen');
			  $('#searchByAssignee option').each(function() {
			    if ($(this).text() === assignee) {
			      $('#searchByAssignee').val($(this).val());
			    }
			  }); */
			refreshNotification();
		}
		
		function listNotificationBySearch(){
			 var myJSONObj = JSON.stringify({"reference": searchReference, "status" :searchStatus});
			 if(!($('#searchByStatus').val() == "" && $('#searchByAssignee').val() == "")){
				 $.ajax({
					type : "POST",
					url : context+"/apiResponse?method=srchinspectornotifs",
					contentType : "application/json",
					headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					crossDomain : true,
					data : myJSONObj,	
					dataType : "json",	
					success : function(response) {
						notificationList(response);
												},
												error : function(jqXHR, textStatus,
														errorThrown) {
													if (jqXHR.status == "401") {
													}
												}
											});
			 }
			 getToken();
		}
		
		function removeDisableAttr(){
			$("#passId").removeAttr("disabled");
			$("#nationalityOthers").removeAttr("disabled");
			$("#nameOthersEn").removeAttr("disabled");
			$("#nameOthersAr").removeAttr("disabled");
			$("#genderOthers").removeAttr("disabled");
			$("#dobOthers").removeAttr("disabled");
			$("#governorateOthers").removeAttr("disabled");
			$("#districtOthers").removeAttr("disabled");
		}
		function clearDetailsOtherId() {
			$("#manField").removeClass("displayBlock").addClass("displayNone");
			$('#passId').val('');
			$('#nameOthersEn').val('');
			$('#nameOthersAr').val('');
			$('#nationalityOthers').val('');
			$('#genderOthers').val('');
			$('#mobileOther').val('');
			$('#dobOthers').val('');
			$('#bloodgroupOthers').val('');
			$('#entryDateOthers').val('');
			$('#addressOthers').val('');
			$('#sponsorOther').val('');
			$('#occupationOthers').val('');
			$('#occupationOther1').val('');
			$('#worplaceOther').val('');
			$('#maritalOthers').val('');
			$('#districtOthers').val('');
			$('#governorateOthers').val('');
			$('#recidencyOthers').val('');
			$('#residencyOther1').val('');
			$('#patMobile0').val('');
			$('#mobileId1').hide();
			$('#residencyOtherPass').hide();
			$('#occupationOtherPass').hide();
			$('#saveDetailsSuccess').hide();
			$('#saveDetailsSuccess1').hide();
			$('#saveDetailsError1').hide();
			$('#passcivil').hide();
			$('#civilpassno').text('');
			$('#reference').val('');
			//$('#relationToIndexCase').val('');
			$('#relationToIndexCase').val([]).trigger('change');
			$("#relationToIndexCase option:selected").prop("selected", false);
			$('#occupationOthers').val('');
			$('#riskfactor').val('');
			$('#otherriskfactor').val('');
			$('#comorbodities').val('');
			$('#othercomorbodities').val('');
			$('#contactComment').val('');			
			Array.prototype.slice.call(document.querySelectorAll('[id^="mobileId"]'), 1)
				.forEach(elt => elt.parentNode.removeChild(elt))
			// $('#patPhone0').val(''); 
			//$('#idTypepass').attr("checked", "checked");
			$("#passId").removeAttr("disabled");
			$("#nationalityOthers").removeAttr("disabled");
			$("#nameOthersEn").removeAttr("disabled");
			$("#nameOthersAr").removeAttr("disabled");
			$("#genderOthers").removeAttr("disabled");
			$("#dobOthers").removeAttr("disabled");
			$("#governorateOthers").removeAttr("disabled");
			$("#districtOthers").removeAttr("disabled");
			removeDisableAttr()
		}
		
		$("#nameOthersEn").change(function () {
			$('#nameEnError').hide();
		 });
		
		$("#nameOthersAr").change(function () {
			$('#nameArError').hide();
		 });
		
		function registercontact(){
			$("#manField").removeClass("displayBlock").addClass("displayNone");
			$('#patManField').hide();
			$('#patManField1').hide();
			 //clearDetailsBasic();
			 var entryDateReg='';
			 var entryDateRegVar='';
			 var birthDateReg='';
			 var birthDateRegVar='';
			 var reg='O';
			 $('#notifId').val(notifId);
			 $('#residencyOther1').val('');
             $('#occupationOther1').val('');
             entryDateRegVar = $("#entryDateOthers").val();
			birthDateRegVar = $('#dobOthers').val();
			
			Idtype=$('input[name="idType"]:checked').val();
			var nameEn = $('#nameOthersEn').val();
			
			var nameAr = $('#nameOthersAr').val();
			
			idVal= $('#passId').val();
        	var nationtext=$('#nationalityOthers option:selected').text();
        	   if(nationtext.toString()=='Select'){
			    	nationtext='';
			    }
        	var nationality=$('#nationalityOthers').val();
        	nationalitycd=nationality;
        	var gendertext=$('#genderOthers option:selected').text();
        	var districttext=$('#districtOthers option:selected').text();
        	   if(districttext.toString()=='Select'){
        		   districttext='';
  			    }
     	   if((gendertext).indexOf('Select')!= -1){
     		  gendertext='';
		    }
     	    $('#district').text(districttext);
            var district=$('#districtOthers').val();
            districtcd=district;
        	$('#gender').text(gendertext);
        	var gender=$('#genderOthers').val();
        	gendercd=gender;
            var mobile = $(".patMobile").map(function(){ return $(this).val() }).get().join(',');
            $('#mobile').text(mobile);
        	$('#dob').text(birthDateRegVar);
        	var bloodgroup = $('#bloodgroupOthers').val()
        	$('#bloodgroup').text($('#bloodgroupOthers').val());
        	$('#entryDate').text(entryDateRegVar);
        	var address= $('#addressOthers').val()
        	$('#address').text( $('#addressOthers').val());
        	var sponsor= $('#sponsorOther').val()
        	$('#sponsor').text($('#sponsorOther').val());
        	var workplace = $('#worplaceOther').val()
        	$('#worplace').text( $('#worplaceOther').val());
        	var maritaltext=$('#maritalOthers option:selected').text();
      	    if(maritaltext.toString()=='Select'){
      		 maritaltext='';
			}
        	$('#marital').text(maritaltext);
        	var marital=$('#maritalOthers').val();
        	maritalcd=marital;
        	
        	recidencytext=$('#recidencyOthers option:selected').text();
     	    if(recidencytext.toString()=='Select'){
     		  recidencytext='';
			    }
     	   if(recidencytext.toString()=='Others'){
     		  recidencytext=$('#residencyOther1').val();
			    }
     	    $('#recidency').text(recidencytext);
     	    var recidency=$('#recidencyOthers').val();
     	   recidencycd= recidency;
     	   occupationtext=$('#occupationOthers option:selected').text();
    	    if(occupationtext.toString()=='Select'){
    	    	occupationtext='';
			    }
    	    if(occupationtext.toString()=='Others'){
    	    	occupationtext=$('#occupationOther1').val();
			    }
    	    $('#occupation').text(occupationtext);
    	    var occupation=$('#occupationOthers').val();
    	    occupationcd=occupation;
    	    
        	var governoratetext=$('#governorateOthers option:selected').text();
      	    if(governoratetext.toString()=='Select'){
      	    	governoratetext='';
			}
        	$('#governorate').text(governoratetext);
        	var governorate=$('#governorateOthers').val();	
        	governoratecd=governorate;
        	var residencyOther=$('#residencyOther1').val();
        	var occupationOth=$('#occupationOther1').val();
        	var riskfactor = $('#riskfactor').val();
        	var otherriskfactor = $('#otherriskfactor').val();
        	var comorbodities = $('#comorbodities').val();
        	var othercomorbodities = $('#othercomorbodities').val();
        	var multirelation = $('#relationToIndexCase').val();
        	var reference = $('#reference').val();
        	var patphone= new Array();
			$('input[name^="patMobile"]').each(function(){
					patphone.push($(this).val());
			});
				
        	 var myJSONObj =JSON.stringify({"idnumber":idVal,
            	 "idtype":Idtype,
            	 "nameen":nameEn,
            	 "namear":nameAr,
            	 "nationality":nationality,
            	 "gender":gender,
            	 "residency":recidency,
            	 "entrydate":entryDateRegVar,
            	 "address":address,
            	 "governorate":governorate,
            	 "district":district,
            	 "birthdate":birthDateRegVar,
            	 "occupation":occupation,
            	 "bloodgroup":bloodgroup,
            	 "maritalstatus": marital,
            	 "notifid":notifId
            });
		   if(($('input[name="idType"]:checked').val() =='G' && $('#passId').val() != '' &&  $('#nationalityOthers').val() != '')||($('input[name="idType"]:checked').val() =='U' && $('#genderOthers').val() != '') || ($('input[name="idType"]:checked').val() =='P' && $('#nationalityOthers').val() != '')|| (Idtype=='C') 
						&&($('#nameOthersEn').val() != '') && ($('#nameOthersAr').val() != '') && (birthDateRegVar != '') && (governorate != '') && (district != '') && ($('#addressOthers').val()!= '')
			){
			   if(occupation!= ""){  
				$('#patManField1').hide();
				$.ajax({
		                type: "POST",
		                url:context+"/apiResponse?method=registercontact",
		                headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {
		                		$('#occupationOtherError').hide();
			                    if(data.code=="1" || data.code== "-2"){
			                    	contId = data.result;
			                    	var contactComment =  $('#contactComment').val();
			                    	var myJSONObj =   JSON.stringify({
			                    		 "notifid":notifId,
			                             "contactid": contId,
			                             "comments":contactComment,
			                             "riskfactor":riskfactor,
			                             "otherriskfactor":otherriskfactor,
			                             "comorbodities":comorbodities,
			                             "othercomorbodities":othercomorbodities,
			                             "multirelation":multirelation,
			                             "reference":reference,
			                             "contactinfo":{
			                                 "occupation":occupation 
			                              }
			                });
			      //  if(occupation!= ""){           	
			        $.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=mapnotifcontact",
		               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					   contentType : "application/json",
					   crossDomain : true,
					   data:myJSONObj,	
					   dataType : "json",		
		               success: function (data) {			                 
			           if(data.code=="1"){
			              $('#saveDetailsSuccess1').show();
			              $('#saveDetailsError1').hide();
						  refreshContact();
			           }
			           if(data.code=="-2"){
			        	 $('#saveDetailsSuccess1').hide();
			             $('#saveDetailsError1').show();
					   }
			       			},
							error : function(jqXHR, textStatus, errorThrown) {
							if (jqXHR.status == "401"){
							
							}
							}
						});
			        /*  }
			        else {
			        	$('#saveDetailsSuccess1').hide();
			        	$('#updateDetailsSuccess').hide(); 
			        	$('#occupationOtherError').show();
			        	$('#patManField1').show();
			        } */
			                    /* if(reg=='O'){
			                    	 $('#saveDetailsSuccess1').show();
			                    	$('#updateDetailsSuccess').hide(); 
			                    } */
			                    /* if(Idtype=='U'){
			                    	idVal=data.type;
			                    	idValOther=data.type;
			                    	$('#civilid').val(idVal);
			                    } */
			                    }
			                    if(data.code=="-3"){
									$('#saveDetailsSuccess1').hide();
									$('#saveDetailsError1').hide();
						               }
			         },
			error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401"){
			
			}
			}
			});
			   }else {
		        	$('#saveDetailsSuccess1').hide();
		        	$('#saveDetailsError1').hide(); 
		        	$('#occupationOtherError').show();
		        	$('#patManField1').show();
		        }
			}else{
 	        	$('#patManField1').show();
				}
			getToken();
        	
		}
		$("#updateContactStatusBtn").on('click',function(){
			var riskFactorValEn=''; riskFactorValAr = '' ;  comorboditiesValEn=''; comorboditiesValAr = '' ;  relationValEn=''; relationValAr = '' ; 
			var status = $('#contactstatus').val();
			var room = $('#assignToRoom').val();
			var prcLoc = $('#prcLocation').val();
			var dateOfReferral = $('#dateOfReferral').val();
			var updateContactStatusObj =JSON.stringify({
				"contactid": contId,
				"notifid": notifId,
				"status": status,
				"room":room
			})
		if(status != "4" || (status == "4" && room != "")){
		$.ajax({
               type: "POST",
               url:context+"/apiResponse?method=updatecontactstatus",
               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			   contentType : "application/json",
			   crossDomain : true,
			   data:updateContactStatusObj,	
			   dataType : "json",		
               success: function (data) {			                 
	                    if(data.code=="1"){
	                    	if(status == "5"){
	                    		var createContactReferralsObj =JSON.stringify({
	                    				"notifid": notifId,
	                    				"contactid": contId,
	                    			    "appdate": dateOfReferral,	                    			    
	                    			    "location": prcLoc,
	                    			    "status":""
	                    			})
	                    		$.ajax({
	                                type: "POST",
	                                url:context+"/apiResponse?method=createcontactreferrals",
	                                headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	                 			   contentType : "application/json",
	                 			   crossDomain : true,
	                 			   data:createContactReferralsObj,	
	                 			   dataType : "json",		
	                                success: function (data) {			                 
	                 	                    if(data.code=="1"){
	                 	                    	var getContactReferralsObj = JSON.stringify({
	                 	                    			"notifid": notifId,
	                 	                    			"contactid": contId
	                 	                    		})
	                 	                   	$.ajax({
	        	                                type: "POST",
	        	                                url:context+"/apiResponse?method=getcontactreferrals",
	        	                                headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	        	                 			   contentType : "application/json",
	        	                 			   crossDomain : true,
	        	                 			   data:getContactReferralsObj,	
	        	                 			   dataType : "json",		
	        	                                success: function (data) {			                 
	        	                 	                    if(data.code=="1"){
	        	                 	                    	var result = { };
	        	                 	                    	$.each(mapriskfactor, function (index, value) {
	        	                 	         					   if(value.code == data.details.CNotificationInfo.riskfactor){
	        	                 	         						 result.riskFactorValEn = value.nameen;
	        	                 	         						 result.riskFactorValAr = value.namear;
	        	                 	         					   }
	        	                 	         				});
	        	                 	                    	$.each(mapcomorbodities, function (index, value) {
	        	              	         					   if(value.code == data.details.CNotificationInfo.comorbidities){
	        	              	         						 result.comorboditiesValEn = value.nameen;
	        	              	         						 result.comorboditiesValAr = value.namear;
	        	              	         					   }
	        	              	         					});
	        	                 	                    	$.each(maprelation, function (index, value) {
	        	              	         					   if(value.code ==data.details.CNotificationInfo.relation){
	        	              	         						 result.relationValEn = value.nameen;
	        	              	         						 result.relationValAr = value.namear;
	        	              	         					   }
	        	              	         					});
	        	                 	                    	printContactReferral(data,result);
	        	                 	                    	printContactReferral(data,riskFactorValEn,riskFactorValAr);
	        	                 	                    	$('#updateMessage').show();
	        	            	                    		$('#errorMessage').hide();
	        	            		        				$('#validationMessage').hide();
	        	            		        				$('#updateContactStatusBtn').prop('disabled', true);
	        	            		        				//viewContactReferralForm();
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
	                    	else {
	                    		$('#updateMessage').show();
	                    		$('#errorMessage').hide();
		        				$('#validationMessage').hide();
		        				$('#updateContactStatusBtn').prop('disabled', true);
	                    	}
	           			 var myJSONObj = JSON.stringify({"notifid":notifId});
	       			  $.ajax({
	       					type : "POST",
	       					url : context+"/apiResponse?method=lstnotifcontacts",
	       					contentType : "application/json",
	       					headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	       					crossDomain : true,
	       					data : myJSONObj,	
	       					dataType : "json",	
	       					success : function(response) {
	       						if(response.code == "1"){
	       						 var contactDetails = '';var table1='' ;
	       						 var slNo =1; attendContact = 0; pendingContact = 0;
								for (var i = 0; i < response.details.length; i++) {
									$("#totalContact").text(response.details.length);	       															
									var id = response.details[i];
									var reqid = id.reqid;
									contactDetails += '<tr  id=contactrow'+ i +'>';
									contactDetails += '<td>'+ slNo + '</td>';															
									//notifId = id.tbnotifId;
									contactDetails += '<td style="display:none;">'+ id.tbnotifId + '</td>';
									contactDetails += '<td style="display:none">'+ id.contId + '</td>';
									let idDesc ="";
					            	if(id.idtype =='G'){
					            		idDesc = " (GCC) ";
					            	}else if(id.idtype =='P'){
					            		idDesc = " (Passport) "
					            	}else if(id.idtype =='U'){
					            		idDesc = " (Unknown) "
					            	}else if(id.idtype =='C'){
					            		idDesc = " (Civil ID) "
					            	}
					            	let idnumber = '';
					            	idnumber = id.idnumber + idDesc;
									if (lang == 'en') {
										contactDetails += '<td>'+ id.contactnameen+ '<br><b>' +idnumber + '</td>';
									} else {
										contactDetails += '<td>'+ id.contactnamear+ '<br> <b>' +idnumber + '</td>';
									}
									if (id.docStatus == null){
											var status = "";
											contactDetails += '<td>'+ status + '</td>'
									}else {
									 $.each(doctorStatus, function(i, item) {
										 if(item.code == id.docStatus){
											 if (lang == 'en') {
												 contactDetails += '<td>'+ item.nameen + '</td>'
												} else {
												 contactDetails += '<td>'+ item.namear + '</td>'
												}
										 }
									 });
									}
									if (id.trackStatus == 1) {
										pendingContact ++ ;
										var status = "Pending";
										contactDetails += '<td> <span class=" danger_bg status_pd3">'+ status+'</span></td>';
									}
									else if (id.trackStatus == 2) {
										attendContact ++ ;
										var status = "Initiated";
										contactDetails += '<td> <span class="warning_bg status_pd3">'+ status+'</span></td>';
									} else if (id.trackStatus == 3) {
										attendContact ++ ;
										var status = "Complete";
										contactDetails += '<td> <span class="success_bg status_pd4">'+ status+'</span></td>';
									}else if (id.trackStatus == 4) {
										attendContact ++ ;
										var status = "Assign To Room";
										contactDetails += '<td> <span class="gray_bg">'+ status+'</span></td>';
									} else if (id.trackStatus == 5) {
										attendContact ++ ;
										var status = "Referred To PRC";
										contactDetails += '<td> <span class="info_bg">'+ status
										+'</span><a href="javascript:void(0)" class="c_point ml-4" onclick ="viewContactReferralForm($(this))"><img src="img/v1.png" title="view"></a></td>';
										referedByDate = id.refdate;
	                    				referedByLoc = id.reflocation;
									} else if (id.trackstatus == null){
										pendingContact ++ ;
										var status = "";
										contactDetails += '<td>'+ status+'</td>'
									}else {
										pendingContact ++ ;
										var status = "";
										contactDetails += '<td>'+ status+'</td>'
									}																
								contactDetails += '<td>'+ id.createdBy + '</td>';
								contactDetails += '<td style="display:none">'+ id.trackStatus + '</td>';
								contactDetails += '<td style="display:none">'+ id.room + '</td>';															
								contactDetails += '<td class="text-left bordrrad">'
								contactDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
								contactDetails += '<a class="dropdown-toggle icon-burger-mini cpoint" href="" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>'
								contactDetails += '<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">'
								contactDetails += '<li class="dropdown-item">'
								contactDetails += '<a class="cpoint" onclick="updateContactInfo($(this))" data-target="#modal_contact2" data-toggle="modal"> Edit Contact </a>'
								contactDetails += '</li>'	
								contactDetails += '<li class="dropdown-item"> <a class="cpoint" data-target="#contactModal" onclick = "mapStatusClicked($(this))" data-toggle="modal">Update Status</a>'
								contactDetails += '</li>'	       	 																				
								contactDetails += '<li class="dropdown-item">'
								contactDetails += '<a  href="#tbfollowup" onclick="followUp($(this))"  class="tblink">Follow Up</a>'
								contactDetails += '</li>'
								if (id.trackStatus == 1) {
								contactDetails += '<li class="dropdown-item">'
								contactDetails += '<a  class="cpoint" data-target="#deleteContactModal" data-toggle="modal" onclick="deleteContactClick($(this))"  class="tblink">Delete Contact</a>'
								contactDetails += '</li>'
								}
								contactDetails += '</ul>'
								contactDetails += '</div></td>';
								contactDetails += '<td style="display:none">'+ id.occupation + '</td>';
								contactDetails += '<td style="display:none">'+ id.comment + '</td>';
								contactDetails += '</tr>';
								slNo = slNo + 1;
								$("#attendContact").text(attendContact);
								$("#pendingContact").text(pendingContact);
							}
							$('#contactList').DataTable().destroy();
			                $('#contactList tbody tr').remove();
			                
							table1 = $('#contactList').append(contactDetails);
	       														
							table1.dataTable({
							    autoWidth: false,  
				                columns: [
				                    { "width": "7%" },
				                    { "width": "0%" },
	                    			{ "width": "0%" },
				                    { "width": "30%" },
				                    { "width": "18%" },
				                    { "width": "18%" },
				                    { "width": "17%" },
				                    { "width": "0%" },
				                    { "width": "0%" },
									{ "width": "20%" },
				                    { "width": "0%" },
				                    { "width": "0%" }
				                   ],
				   					"dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
				  			});
							 $('#contactnotifId').text(notifId);
							 $("#contactList tbody tr div").click(function() { 
								 $("#contactList tbody td").css("background-color", "#f0f8ff");                                                     
							     var currentRow=$(this).closest("tr");      
							     var col1=currentRow.find("td:eq(0)").html();
							     currentRow.find("td").css("background-color", "#ecffe0");                                                    
							     //followUp();                             
							});
	       	 				}
	       						},
							error : function(jqXHR, textStatus,
									errorThrown) {
								if (jqXHR.status == "401") {
								}
								}
							});
	                    	}
		                    if(data.code== "-1" || data.code == "-2" || data.code== "-3" || data.code == "-4"){
		                    	$('#errorMessage').show();
		                    	$('#updateMessage').hide();
		                    	$('#validationMessage').hide();
					        }
	         },
			error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401"){
			
				}
			}
			});
			}else {
				$('#validationMessage').show();
				$('#errorMessage').hide();
            	$('#updateMessage').hide();
			}
			getToken();
		});
		
		
		
		
				
		function otherIDpop() {
			clearDetailsOtherId();
			//$('#relationToIndexCase select option:first-child').prop("selected", true);
			$("#idTypeC").removeAttr("disabled");
			$("#idTypepass").removeAttr("disabled");
			$("#idTypegcc").removeAttr("disabled");
			$("INPUT[name=idType]").val(['C']);
			$('#changeIDName').text('<fmt:message key="label.civilID"/>');
			$('#labelAddUpdateContact').text('Add Contact');
			$('#updatecontact1').hide();
			$('#updatemedical').hide();			
			$('#registercontact1').show();
			$('#patManField1').hide();
		}
		
		function formatDate(dob){
			 var tempDate = new Date(dob);
			 month = '' + (tempDate.getMonth() + 1),
		        day = '' + tempDate.getDate(),
		        year = tempDate.getFullYear();
		    if (month.length < 2) 
		        month = '0' + month;
		    if (day.length < 2)	 
		        day = '0' + day;
             var formattedDate = [day, month, year].join('/');
             $('#dobOthers').val(formattedDate);
		}
		
		function formatEntryDate(date){
			 var tempDate = new Date(date);
			 month = '' + (tempDate.getMonth() + 1),
		        day = '' + tempDate.getDate(),
		        year = tempDate.getFullYear();
		    if (month.length < 2) 
		        month = '0' + month;
		    if (day.length < 2)	 
		        day = '0' + day;
            var formattedDate = [day, month, year].join('/');
            $('#entryDateOthers').val(formattedDate);
		}
		
		function formatReferralDate(date){
			 var tempDate = new Date(date);
			 month = '' + (tempDate.getMonth() + 1),
		        day = '' + tempDate.getDate(),
		        year = tempDate.getFullYear();
		    if (month.length < 2) 
		        month = '0' + month;
		    if (day.length < 2)	 
		        day = '0' + day;
           var formattedDate = [day, month, year].join('/');
           $('#dateOfReferral').val(formattedDate);
		}
		
		function disableInput(){
			$("#passId").attr("disabled", true);
			$("#nationalityOthers").attr("disabled", true);
			$("#nameOthersEn").attr("disabled", true);
			$("#nameOthersAr").attr("disabled", true);
			$("#genderOthers").attr("disabled", true);
			$("#dobOthers").attr("disabled", true);
			$("#governorateOthers").attr("disabled", true);
			$("#districtOthers").attr("disabled", true);
			$("#idTypegcc").attr("disabled", true);
		}
		function updateContactInfo(currentElement){
			$('#labelAddUpdateContact').text('Update Contact');				
			contId = currentElement.closest("tr").find('td:eq(2)').text(); 
			//$('select[name*="relations"] option').removeAttr('disabled');
			//$("#relationReplace1").prop('disabled', true);
			//$("#relationReplace2").prop('disabled', true);
			//$("#inspectorreplace2").prop('disabled', true);
			$('#registercontact1').hide();
			$('#updatecontact1').show();
			$('#updatemedical').show();
			$('#updateMedMessage').hide();
			$('#errorMedMessage').hide();
			$('#updateInfoMessage').hide();
			$('#errorInfoMessage').hide();
			$('#saveDetailsSuccess1').hide();
			$('#saveDetailsError1').hide();
			showpassDetails();			
			var val='Others';
			var myJSONObj =JSON.stringify({
				"contactid": contId,
				"notifid": notifId
			})
		$.ajax({
               type: "POST",
               url:context+"/apiResponse?method=getcontactnotifinfo",
               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			   contentType : "application/json",
			   crossDomain : true,
			   data:myJSONObj,	
			   dataType : "json",		
               success: function (data) {
            	   var response = JSON.parse(JSON.stringify(data));
	               var NotifcationInfo = response.details.NotifcationInfo;
	               var ContactInfo = response.details.ContactInfo;
	               document.querySelector("input[type=radio][name=idType][value='"+NotifcationInfo.idtype+"']").checked = true;
	               if(NotifcationInfo.idtype == "C"){
		   			   $('#changeIDName').text('<fmt:message key="label.civilID"/>');
		   			   $("#idTypepass").attr("disabled", true);
		   			 	disableInput();
	               }else if(NotifcationInfo.idtype == "P"){
	            	   $('#changeIDName').text('<fmt:message key="passportId"/>');
	            	   $("#idTypeC").attr("disabled", true);
	            	   hidepassDetails();
	            	   disableInput();
	            	   
	               }else {
	            	   $('#changeIDName').text('<fmt:message key="gccID"/>');
	            	   $("#idTypeC").attr("disabled", true);
	            	   $("#idTypepass").attr("disabled", true);
	            	   removeDisableAttr();
	               }
	               $('#passId').val(ContactInfo.register.idnumber);
	               $('#nationalityOthers').val(ContactInfo.register.natcd);
	               $('#nameOthersEn').val(ContactInfo.register.nameen);
	               $('#nameOthersAr').val(ContactInfo.register.namear);
	          	 if (ContactInfo.register.gender == "F"){
	          		 $('#genderOthers').val('F');
            	 }
            	 if (ContactInfo.register.gender == "M"){
            		 $('#genderOthers').val('M');
                		 }
            	 
             	 if (ContactInfo.register.maritalstatus == "S"){
             		 $('#maritalOthers').val('S');
            		 
            	 }
            	 if (ContactInfo.register.maritalstatus == "M"){
            		 $('#maritalOthers').val('M');
                		 }
             	 if (ContactInfo.register.maritalstatus == "D"){
             		 $('#maritalOthers').val('D');
             	 }
	               $('#governorateOthers').val(ContactInfo.register.governoratecd);
	               governoratecd=ContactInfo.register.governoratecd;
	               districtcd=ContactInfo.register.districtcd;
               		var myJSONObj =JSON.stringify({"code": governoratecd});
               	 	if(governoratecd !=''){
           			 	getDistrictVal(val,myJSONObj,'district'+val,districtcd) ; 
    				}
	               $('#bloodgroupOthers').val(ContactInfo.register.bloodgrp);
	               formatDate(ContactInfo.register.birthdate)
	               $('#addressOthers').val(ContactInfo.register.address);
	               $('#sponsorOther').val(ContactInfo.register.sponsorcid);
	               formatEntryDate(ContactInfo.register.entrydate)
	               $('#recidencyOthers').val(ContactInfo.register.residency);
	               /* $.each(ContactInfo.register.patphone , function(index, value) { 
                		if(index>0){
                		 $(".add_button").click();
                		}
                		 $('#patMobile'+index).val(value);
                	}); */
	               $('#occupationOthers').val(NotifcationInfo.occupation);
	               if(NotifcationInfo.occupation == "18"){
	  	  			 $('#occupationOtherPass').show();
		               $('#occupationOther1').val(ContactInfo.register.occupationOth);
	  				} else {
	  				   $('#occupationOtherPass').hide();
	  				}
	               $('#reference').val(NotifcationInfo.reference);
	               $('#riskfactor').val(NotifcationInfo.riskfactor);
	               if (NotifcationInfo.riskfactor == "17") {
	   					$('#hideRiskFactor').show();
	 	               $('#otherriskfactor').val(NotifcationInfo.otherriskfactor);
	   				} else {
	   					$('#hideRiskFactor').hide();
	   				}
	               $('#comorbodities').val(NotifcationInfo.comorbidities);
	               if (NotifcationInfo.comorbidities == "6") {
	   				   $('#hideComorbidities').show();
		               $('#othercomorbodities').val(NotifcationInfo.othercomorbidities);
	   				} else {
	   				   $('#hideComorbidities').hide();
	   				}
	               $('#contactComment').val(NotifcationInfo.comment);
	               pidUpdateContact = NotifcationInfo.contNotifId;
	               regcd = NotifcationInfo.regcd;
	              // $('#relationToIndexCase').val(NotifcationInfo.multirelation);
	              $("#relationToIndexCase option:selected").prop("selected", false);
	             // if(NotifcationInfo.multirelation != null || NotifcationInfo.multirelation != ""){
		          if(NotifcationInfo.multirelation != null && NotifcationInfo.multirelation != "")
		          {	   
		        	  var selectedOptions = NotifcationInfo.multirelation.split(",");
		               for(var i in selectedOptions) {
		                   var optionVal = selectedOptions[i];
		                   $("#relationToIndexCase").find("option[value="+optionVal+"]").prop("selected", "selected");
		               }
	              }	 else { 
	            	  $('#relationToIndexCase').val(NotifcationInfo.multirelation);
	              }
		          $('#relationToIndexCase').select2().trigger('change');
	         },
			error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401"){
			
				}
			}
			});
		}
		
		function  updateContact()  {		
			$('#errorInfoMessage').hide();
			$('#updateInfoMessage').hide();
			 var idVal =  $('#passId').val();
			 var idtype =  $('input[name="idType"]:checked').val();
			 var nameEn =  $('#nameOthersEn').val();
			 var nameAr =  $('#nameOthersAr').val();
			 var nat =  $('#nationalityOthers').val();
			 var gender =  $('#genderOthers').val();
			 var residency =  $('#recidencyOthers').val();
			 var entryDate =  $('#entryDateOthers').val();
			 var address =  $('#addressOthers').val();
			 var governorate =  $('#governorateOthers').val();
			 var district =  $('#districtOthers').val();
			 var dob =  $('#dobOthers').val();
			 var sponsor =  $('#sponsorOther').val();
			 var workplace =  $('#worplaceOther').val();
			 var marital =  $('#maritalOthers').val();
			 var bloodgroup =  $('#bloodgroupOthers').val();
             var myJSONObj =JSON.stringify({  
			           	 "patcd":regcd,
			             "patient":
			             {
			            "ptcd":regcd,
                        "idnumber": idVal,"idtype": idtype,"nameen": nameEn,
						"namear": nameAr,"nationality": nat,"gender":gender,"residency": residency,"residencyOther":"","entrydate":entryDate,"address":address,"governorate":governorate,"district":district,"birthdate":dob,
						"sponsorcid":sponsor,"patphone": [] ,"occupation":"","occupationOth":"","workplace":workplace,"maritalstatus":marital,"bloodgroup":bloodgroup}});
					$.ajax({
			               type: "POST",
			               url:context+"/apiResponse?method=updatepatient",
			               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
							contentType : "application/json",
							crossDomain : true,
							data:myJSONObj,	
							dataType : "json",		
			               success: function (data) {			                 
				                    if(data.code=="1"){
				                    	$('#updateInfoMessage').show();
				                    	$('#errorInfoMessage').hide();
				                    	
				                      }
				                    if(data.code=="-2"){
				                    	$('#errorInfoMessage').show();
				                    	$('#updateInfoMessage').hide();
							               }
},
error : function(jqXHR, textStatus, errorThrown) {
	if (jqXHR.status == "401"){
	    }
}
});  
			}
		
		function updateMedical(){
            var riskfactor = $('#riskfactor').val();
        	var otherriskfactor = $('#otherriskfactor').val();
        	var comorbodities = $('#comorbodities').val();
        	var othercomorbodities = $('#othercomorbodities').val();
        	var multirelation = $('#relationToIndexCase').val();
        	var reference = $('#reference').val();
        	var comments = $('#contactComment').val();
        	var occupation = $('#occupationOthers').val(); 
			var myJSONObj =JSON.stringify({"notifid": notifId,"contactid": contId,"pid":pidUpdateContact,"comments": comments,"riskfactor":riskfactor,
				"otherriskfactor":otherriskfactor,"comorbodities":comorbodities,"othercomorbodities":othercomorbodities,"multirelation":multirelation,"reference":reference,
				"contactinfo": {"occupation": occupation}
			})
			$.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=updatenotifcontact",
	               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	               success: function (data) {			                 
		                    if(data.code=="1"){
		                    	$('#updateMedMessage').show();
		                    	$('#errorMedMessage').hide(); 
		                    	
		                    }
		                    if(data.code=="-1" || data.code=="-2" || data.code=="-3" || data.code=="-4"){
		                    	$('#errorMedMessage').show(); 
		                    	$('#updateMedMessage').hide();
					        }
		         },
				error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401"){
				
				}
				}
			});
			getToken();
		}
		
		function deleteContactClick(currentRow){
			contId = currentRow.closest("tr").find('td:eq(2)').text();
			$('#ContactRowNo').val(currentRow.closest("tr").find('td:eq(0)').text());
			clearmesgContact();
		}
		
		function clearmesgContact() {
			$('#contactdeletesuccess').hide();
		}
		
		$("#deleteContact").on('click',function(){
			var rowno= $('#ContactRowNo').val();
			var appObject =JSON.stringify({
				 "contactid" : contId,
				 "notifid": notifId
				 })
        	$.ajax({
               type: "POST",
               url:context+"/apiResponse?method=deletenotifcontact",
               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			   contentType : "application/json",
			   crossDomain : true,
			   data:appObject,	
			   dataType : "json",		
               success: function (data) {			                 
	                    if(data.code=="1"){ 	                    	
	                    $('#contactdeletesuccess').show();
	                    $('#contactrow'+rowno).remove();
                   		//refreshContact();
	                    } else{
	                    $('#contactdeletesuccess').hide();
                   		
	                    }
	         },
			error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401"){
			
				}
			}
			});
			
			getToken();
		});	
		
		
		 function clearContactDetails(){
			 $("#collapseFour").collapse('show');			 
			 $("#btnFour").attr("aria-expanded","true");
			 $("#btnFive").attr("aria-expanded","false");
			  $('input[type=radio]').each(function() 
					  { 
					          this.checked = false; 
					  }); 
			  $("INPUT[name=idType]").val(['C']);
				$('#changeIDName').text('<fmt:message key="label.civilID"/>');
				 $('#passNotFound').hide();
				 $('#manField').hide();
				 $('#occupationOtherError').hide();				
		}
		
		function  clearPage() {
				 $('#hideTab').show();    
				 $('#hideContact').show();
				 $('#tbfollowup-tab').hide();
				 $("#tbcontact").addClass("active show");
				 $("#tbfollowup").removeClass("active show");
				 $('#contactList').DataTable().destroy();
                 $('#contactList tbody tr').remove();
                 $('#followUpList').DataTable().destroy();
                 $('#followUpList tbody tr').remove();
                 $('#totalContact').text('0');
                 $('#attendContact').text('0');
                 $('#pendingContact').text('0');
				contactOccupation = '', contactComment = '', pidUpdateContact = '' , followupPhoneno = '' , followupComment= ''; pidUpdateFollowUp = ''; activeUpdateFollowUp = ''; 
		 }
		
		function viewContactList(row){
			notifId = row.closest("tr").find('td:eq(1)').text();
			clearPage();
			refreshContact();
			getToken();
		}//onclick="followUp()"
		
		function refreshContact(){
			 var myJSONObj = JSON.stringify({"notifid":notifId});
			  $.ajax({
					type : "POST",
					url : context+"/apiResponse?method=lstnotifcontacts",
					contentType : "application/json",
					headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					crossDomain : true,
					data : myJSONObj,	
					dataType : "json",	
					success : function(response) {
					if(response.code == "1"){
					 var contactDetails = '', table1='' ;
					 var slNo =1;attendContact = 0; pendingContact = 0;
					for (var i = 0; i < response.details.length; i++) {
						$("#totalContact").text(response.details.length);															
						var id = response.details[i];
						var reqid = id.reqid;
						contactDetails += '<tr id=contactrow'+ (i+1) +'>';
						contactDetails += '<td>'+ slNo + '</td>';
						contactDetails += '<td style="display:none;">'+ id.tbnotifId + '</td>';
						contactDetails += '<td style="display:none">'+ id.contId + '</td>';
						let idDesc ="";
		            	if(id.idtype =='G'){
		            		idDesc = " (GCC) ";
		            	}else if(id.idtype =='P'){
		            		idDesc = " (Passport) "
		            	}else if(id.idtype =='U'){
		            		idDesc = " (Unknown) "
		            	}else if(id.idtype =='C'){
		            		idDesc = " (Civil ID) "
		            	}
		            	let idnumber = '';
		            	idnumber = id.idnumber + idDesc;
						if (lang == 'en') {
							contactDetails += '<td>'+ id.contactnameen+ '<br><b>' +idnumber + '</td>';
						} else {
							contactDetails += '<td>'+ id.contactnamear+ '<br> <b>' +idnumber + '</td>';
						}
						if (id.docStatus == null){
								var status = "";
								contactDetails += '<td>'+ status + '</td>'
							}
						else {
						 $.each(doctorStatus, function(i, item) {
							 if(item.code == id.docStatus){
								 if (lang == 'en') {
									 contactDetails += '<td>'+ item.nameen + '</td>'
								 } else {
									 contactDetails += '<td>'+ item.namear + '</td>'
								 }
							 }
						 });
						}
						if (id.trackStatus == 1) {
							pendingContact ++;
							var status = "Pending";
							contactDetails += '<td> <span class=" danger_bg status_pd3">'+ status
								+'</span></td>';
						}
						else if (id.trackStatus == 2) {
							attendContact ++;
								var status = "Initiated";
								contactDetails += '<td> <span class="warning_bg status_pd3">'+ status
								+'</span></td>';
						} else if (id.trackStatus == 3) {
							attendContact ++;
							var status = "Complete";
							contactDetails += '<td> <span class="success_bg status_pd4">'+ status
							+'</span></td>';
						}else if (id.trackStatus == 4) {
							attendContact ++;
							var status = "Assign To Room";
							contactDetails += '<td> <span class="gray_bg">'+ status
								+'</span></td>';
						} else if (id.trackStatus == 5) {
							attendContact ++;
							var status = "Referred To PRC";
							contactDetails += '<td> <span class="info_bg">'+ status
							+'</span><a href="javascript:void(0)" class="c_point ml-4" onclick ="viewContactReferralForm($(this))"><img src="img/v1.png" title="view"></a></td>';
							referedByDate = id.refdate;
	                    	referedByLoc = id.reflocation;
						} else if (id.trackstatus == null){
							pendingContact ++;
							var status = "";
							contactDetails += '<td>'+ status
							+'</td>'
						}	else {
							pendingContact ++;
							var status = "";
							contactDetails += '<td>'
									+ status
									+ '</td>';
						}														
						contactDetails += '<td>'+ id.createdBy + '</td>';
						contactDetails += '<td style="display:none">'+ id.trackStatus + '</td>';
						contactDetails += '<td style="display:none">'+ id.room + '</td>';															
						contactDetails += '<td class="text-left bordrrad">'
						contactDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
						contactDetails += '<a class="dropdown-toggle icon-burger-mini cpoint" href="" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>'
						contactDetails += '<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">'
						//contactDetails += '<li class="dropdown-item"><a href="#" data-target="#contactView" onclick="getContactDetails($(this))" data-toggle="modal">View Patient Details</a> </li>
						contactDetails += '</li>'						
						contactDetails += '<li class="dropdown-item">'
						contactDetails += '<a class="cpoint" onclick="updateContactInfo($(this))" data-target="#modal_contact2" data-toggle="modal"> Edit Contact </a>'
						contactDetails += '</li>'	
						contactDetails += '<li class="dropdown-item"> <a class="cpoint" data-target="#contactModal" onclick = "mapStatusClicked($(this))" data-toggle="modal">Update Status</a>'
						contactDetails += '</li>'	 																				
						contactDetails += '<li class="dropdown-item">'
						contactDetails += '<a  href="#tbfollowup" onclick="followUp($(this))"  class="tblink">Follow Up</a>'
						contactDetails += '</li>'
						if (id.trackStatus == 1) {
						 contactDetails += '<li class="dropdown-item">'
						 contactDetails += '<a  class="cpoint" data-target="#deleteContactModal" data-toggle="modal" onclick="deleteContactClick($(this))"  class="tblink">Delete Contact</a>'
						 contactDetails += '</li>' 
						}
						contactDetails += '<li class="dropdown-item"> <a class="cpoint" data-target="#contactView" onclick = "showContactDetails($(this))" data-toggle="modal">Examination Details</a>'
						contactDetails += '</li>'
						contactDetails += '</ul>'
						contactDetails += '</div></td>';
						contactDetails += '<td style="display:none">'+ id.occupation + '</td>';
						contactDetails += '<td style="display:none">'+ id.comment + '</td>';
					    contactDetails += '</tr>';
						slNo = slNo + 1;
						$("#attendContact").text(attendContact);
						$("#pendingContact").text(pendingContact);
					}
					$('#contactList').DataTable().destroy();
	                $('#contactList tbody tr').remove();
					table1 = $('#contactList').append(contactDetails);
					table1.dataTable({
					    autoWidth: false,  
		                columns: [
		                    { "width": "7%" },
		                    { "width": "0%" },
		                    { "width": "0%" },
		                    { "width": "30%" },
		                    { "width": "18%" },
		                    { "width": "18%" },
		                    { "width": "17%" },
		                    { "width": "0%" },
		                    { "width": "0%" },
							{ "width": "20%" },
		                    { "width": "0%" },
		                    { "width": "0%" },
		                   ],
		   			"dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
		  			});
					 $('#contactnotifId').text(notifId);
					 $("#contactList tbody tr div").click(function() { 
						 $("#contactList tbody td").css("background-color", "#f0f8ff");                                                     
					     var currentRow=$(this).closest("tr");      
					     var col1=currentRow.find("td:eq(0)").html();
					     currentRow.find("td").css("background-color", "#ecffe0");                                                    
					     //followUp();                             
					});

					 
					 
				}
				},
				error : function(jqXHR, textStatus,
						errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			});
		}
		
		 function showContactDetails(currentElement){
			//alert("Inside showContactDetails method");
			 contId = currentElement.closest("tr").find('td:eq(2)').text(); 
			 var patObj =JSON.stringify({"notifid": notifId,"contactid": contId})
			 getLabDetails(patObj);
 		     getRadiologyDetails(patObj);
 		     getPpdDetails(patObj);
 		     getIgraDetails(patObj);
		} 
		
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
		            		labtest.push({
		    		  			    value: id.name,
		    		  				testId:id.code,
		    		  			    requester: id.requester,
		    		  			  	drugsensitive:id.drugsensitive,
		    		  			  	specimenType:id.specimen,
		    		  			    resultId: id.result,
		    		  			    requestedBy:id.resultenteredby,
		    		  			   	requestedDate:id.resultentereddt,
		    		  			    resultTypeId:id.typecode,
		    		  			    exId:id.exid,
		    		  			   	exDate:id.exdate
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
	  		
	  		function createTableLab(labTempObj,status){			 
	  		  let  userDetails='';	
	  		  $.each(labTempObj, function(i, item) {			        	  
	         	  countLab++;
	         	  let rowNum=countLab;
	            let resenter='',resdate='' ;			            	
	                     if(item.requestedBy != null){
	                         resenter=item.requestedBy;
	                     }if(item.requestedDate != null){
	                         resdate=item.requestedDate;
	                     }
	             	  userDetails = '<tr id=labrow'+ countLab+'>';
	                  userDetails += '<td class="hidden">' +item.testId + '</td>'; //code //0
	                  userDetails += '<td class="hidden">' +item.exId+ '</td>'; //exid  //1
	                  userDetails += '<td width="25%">' + item.value  + '</td>';
	              	  userDetails += '<td><select class="form-control c_select col-sm-12" disabled  id="lSpecimenType' + rowNum + '"><option value=""></option></select></td>'; 
	              	  userDetails += '<td><select class="form-control c_select col-sm-12" disabled id="pcrlabresults' + rowNum + '"><option value=""></option></select></td>';
	  	              userDetails += '<td width="15%"><input  type="text" class="form-control labdatepicker" disabled   id="labDate' + rowNum + '""></td>';
	              	  userDetails += '<td><select class="form-control c_select col-sm-12" disabled  id="drugsensitive' + rowNum + '"><option value=""></option></select></td>'; 
	  			      userDetails += '<td class="hidden">' +rowNum + '</td>'; //9							  
	  			      userDetails += '</tr>';			                 
	                    $('#addLabTest1').append(userDetails); 
	                    $('#popover_info_lab'+rowNum).popover({
	                          html: true,
	                          trigger: 'hover',
	                          content: function() {
	                          return $('#popover_content_info_lab'+rowNum).html();
	                          }
	                     });
	                   /* 
	                     $(".labdatepicker").datepicker({
	  						changeMonth: true,
	  						changeYear: true,
	  						yearRange: "1930:2060",
	  						dateFormat: 'dd/mm/yy',
	  						maxDate: '+0d'
	  				  }); */
	                   
	                    getLabRequester(rowNum,item.requester);
	                    getLabResult(rowNum,item.resultId,item.resultTypeId);
	                    getLabDrugResistance(rowNum,item.drugsensitive);
	                    getSpecimenType(rowNum,item.specimenType);
	                    $('#labDate'+rowNum).val(item.exDate);
	                    
	             });		            		          
	  			         
	  	}
	  		function getLabRequester(rowNumLab,requesterVal){
		         $(getLocationTypediv_data).appendTo("#requester"+rowNumLab);
				 if(requesterVal!=''){
		  			$("#requester"+rowNumLab).val(requesterVal);
		  	  	 }
			}
			 function getLabDrugResistance(rowNumLab,drugVal){	
		           $(lDrugSensitive).appendTo('#drugsensitive'+rowNumLab); 
		           if(drugVal!=''){
		          		$("#drugsensitive"+rowNumLab).val(drugVal);          	  
		          	}

			   }
			 function getSpecimenType(rowNumLab,speciVal){	
		           $(labSpecimenTypeDivData).appendTo('#lSpecimenType'+rowNumLab); 
		           if(speciVal!=''){
		          		$("#lSpecimenType"+rowNumLab).val(speciVal);          	  }
			   }
			 
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
	  	            	  	  var type=raddata.code+","+raddata.exid;
	  	            	  		radtest.push({
	  	            			  			    value: raddata.name,
	  	            			  			    type: type,
	  	            			  				requester: raddata.requester,
	  	            		  			    	result: raddata.result,
	  	            		  			    	abnormalResult:raddata.abnormalResult,
	  	            		  			    	requestedBy: raddata.resultenteredby,
	  	            		  			    	requestedDate: raddata.resultentereddt,
	  	            		  			    	testCode:raddata.code,
	  	            		  			    	exId:raddata.exid,
	  	            		  			    	notes:raddata.notes,
	  	            		  			    	exdate:raddata.exdate,
	  	            		  			    	abnormalOth:raddata.abnormalOth,
	  	            		  			    	resultName:raddata.resultname
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
	  		
			 function createTableRad(tempRadObj,status){
				  var userDetails1='';
			      $.each(tempRadObj, function(i, item) {
			    	 // alert("Inside: "+$('#contRadTest tbody tr').length);
				      countRad++;
				      let count=countRad;
				      let resenter='',resdate='';
				      if(item.requestedBy != null){
	                    resenter=item.requestedBy;
	                  }if(item.requestedDate != null){
	                    resdate=item.requestedDate;
	                  }    	    
	            	   userDetails1 = '<tr id=radrw'+countRad + '>';
	            	   //userDetails1 += '<td class="hidden" width:0%>' +slNo + '</td>';
	            	   userDetails1 += '<td class="hidden"  width:0%>' +item.testCode+ '</td>';//testId 0
	            	   userDetails1 += '<td class="hidden"  width:0%>' +item.exId+ '</td>';//exid 1
	            	   userDetails1 += '<td width:10%>' +item.value  + '</td>';
	                   if (item.value == "Other"){
	                	   userDetails1 += '<td width:9%><input  disabled type="text" class="form-control radresults" name ="radresults" id="radresults'+count+'"></td>'; 
	                   }else {
	                	   userDetails1 += '<td width:9%><select disabled class="form-control radresults c_select col-sm-12"  name ="radresults" id="radresults'+count+'"><option value=""></option> </select></td>';
	                   }
	                   userDetails1 += '<td width:10%><select class="form-control abnormalList c_select col-sm-12" disabled name= "abnormalList" id="abnormallist'+count+'"><option value=""></option> </select></td>';
	                   userDetails1 += '<td width:10%><input readonly="readonly" type="text" class="form-control"  name ="radresults"  id="otherabnormaldiseasevalue'+count+'"></td>';
	                   userDetails1 += '<td width:18%><textarea  class="form-control"  disabled maxlength="300" id="notesRad'+count+'"  rows="2" cols="50"></textarea></td>';
	                   userDetails1 += '<td width:9%><input  type="text" class="form-control   raddatepicker"  disabled id="radDate'+count+'"></td>';
	                   userDetails1 += '<td class="hidden" width:0%>' +count+ '</td>';
	                   userDetails1 += '</tr>';
	                  // alert("end: "+$('#contRadTest tbody tr').length);
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
	                    	//getAbnormalResult(count,"abnormallist",item.abnormalResult);
		                    $('#otherabnormaldiseasevalue'+count).val(item.abnormalOth);
	                   }
	                   $('#popover_info_rad'+count).popover({
                            html: true,
                            trigger: 'hover',
                            content: function() {
                              return $('#popover_content_info_rad'+count).html();
                            }
                        });
					});
		           
		   }
			 getLocationTypediv_data = "";
			 function getRadRequester(rowNumRad,requesterVal){	
			     $.ajax({
			         type: "GET",
			         url:context+"/getlistresponse?method=getlocationtypes",
			 			contentType : "application/json",
			 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			 			crossDomain : true,
			 			dataType : "json",		
			          success: function (datahere) {			                 
			         	 var response = JSON.parse(JSON.stringify(datahere));	
			            	  $.each(response,function(j,response)
			 	 		   {
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
		            $(getLocationTypediv_data).appendTo('#requesterRad'+rowNumRad); 
		            if(requesterVal!=''){
		           		$("#requesterRad"+rowNumRad).val(requesterVal);          	  }
		          }
		      lstctscanresultsdiv_data = '';
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
				function getAbnormalList(countAbnormal){	
					$(lstabnormalresultsdiv_data).appendTo('#abnormallist'+countAbnormal);
				   
				}

				
				function getAbnormalResult(countAbnormal,abnormallist,abnormalresult){	
					$(lstabnormalresultsdiv_data).appendTo('#abnormallist'+countAbnormal);
					 if(abnormallist != '' && abnormalresult != ''){
		               	 $('#abnormallist'+countAbnormal).val(abnormalresult);
		           	 }
				    
				}	
	  		
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
		                     $('#contPpdTestResult tbody tr').remove();
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
			  countLab = 0;
	 	      countpd =0;
	          function createTablePPD(ppdtest,status){
	              let  userDetails='';
	             $.each(ppdtest, function(i, item) {
	                  countpd++;
	                  let countPPD = countpd;
	                  let resenter='';
	                  let resdate='';
	                 if(item.resultenteredby != null){
	              	   resenter=item.resultenteredby;
	                 }if(item.resultentereddt != null){
	              	   resdate=item.resultentereddt;
	                 }                            
	                  userDetails = '<tr id=ppdrow'+countPPD+'>';
	                  if(item.testTypeName != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.testTypeName  + '</td>';
	                  }else { 
	                	  let testTypeName = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +testTypeName  + '</td>';
	                  }
	                  if(item.testReasonName != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.testReasonName  + '</td>';
	                  }else { 
	                	  let testReasonName = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +testReasonName  + '</td>';
	                  }
	                  if(item.ppd1TestDate != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd1TestDate  + '</td>';
	                  }else { 
	                	  let ppd1TestDate = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd1TestDate  + '</td>';
	                  }
	                  if(item.ppd2TestDate != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd2TestDate  + '</td>';
	                  }else { 
	                	  let ppd2TestDate = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd2TestDate  + '</td>';
	                  }
	                  if(item.ppd1ReadingDate != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd1ReadingDate  + '</td>';
	                  }else { 
	                	  let ppd1ReadingDate = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd1ReadingDate  + '</td>';
	                  }
	                  if(item.ppd2ReadingDate != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd2ReadingDate  + '</td>';
	                  }else { 
	                	  let ppd2ReadingDate = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd2ReadingDate  + '</td>';
	                  }
	                  if(item.ppd1Reading != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd1Reading  + '</td>';
	                  }else { 
	                	  let ppd1Reading = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd1Reading  + '</td>';
	                  }
	                  if(item.ppd2Reading != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd2Reading  + '</td>';
	                  }else { 
	                	  let ppd2Reading = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd2Reading  + '</td>';
	                  }
	                  if(item.ppd1Result != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd1Result  + '</td>';
	                  }else { 
	                	  let ppd1Result = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd1Result  + '</td>';
	                  }
	                  if(item.ppd2Result != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd2Result  + '</td>';
	                  }else { 
	                	  let ppd2Result = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd2Result  + '</td>';
	                  }
	                  if(item.ppd1Notes != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd1Notes  + '</td>';
	                  }else { 
	                	  let ppd1Notes = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd1Notes  + '</td>';
	                  }
	                  if(item.ppd2Notes != null){
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +item.ppd2Notes  + '</td>';
	                  }else { 
	                	  let ppd2Notes = "";
		                  userDetails += '<td width=10% id=testtypeval'+countPPD+' width=10%>' +ppd2Notes  + '</td>';
	                  }
	                  userDetails += '<td width=0% class="hidden"  id=testTypeval'+countPPD+'>' +item.testType+ '</td>';
	                  userDetails += '<td width=0%  iclass="hidden" d=testReasonIdval'+countPPD+'>' +item.testReasonId+ '</td>';
	                  userDetails += '<td width=0% class="hidden" id=ppdIdval'+countPPD+'>' +item.ppdId+ '</td>';
	                  userDetails += '<td width=0% class="hidden">' +countPPD+ '</td>'; //16
	                  userDetails += '<td class="hidden" id=ppd1docinterpret'+countPPD+'>' +item.ppd1docinterpret+ '</td>';
	                  userDetails += '<td class="hidden" id=ppd2docinterpret'+countPPD+'>' +item.ppd2docinterpret+ '</td>';
	                  userDetails += '</tr>';
	                    $('#contPpdTestResult').append(userDetails);  
	                    $('#popover_info_ppd'+countPPD).popover({
	                        html: true,
	                        trigger: 'hover',
	                        content: function() {
	                          return $('#popover_content_info_ppd'+countPPD).html();
	                        }
	                    });
	                  });
	                 }
	          
	          function viewppdtest(row){
	               $('#ppdOutMsg').hide();
	               $('#contSaveMsg').hide();
	               $('#update_ppdtest').modal('show');
	               $('#updateppdbutton').show();
	               $('#rowppdid').val(row.closest("tr").find('td:eq(16)').text());
	               var ppdid =  $('#ppdid').val(row.closest("tr").find('td:eq(15)').text());
	               $('#exampleModalLongTitleUpdate').show();
	               $('#exampleModalLongTitleAdd').hide();
	               $('#addppd').hide();$('#ppdupdate').hide();                         
	               var test =  $('#updatetypeoftest').val(row.closest("tr").find('td:eq(13)').text());
	               $('#updatereasonoftest').val(row.closest("tr").find('td:eq(13)').text());
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
	               $('#ppd1docinterpret').val(row.closest("tr").find('td:eq(20)').text()=='null'?'':row.closest("tr").find('td:eq(20)').text());
				   $('#ppd2docinterpret').val(row.closest("tr").find('td:eq(21)').text()=='null'?'':row.closest("tr").find('td:eq(21)').text());
	               if($('#updatetypeoftest').val() == "1"){
	                  $('#hideppd2').show();         
	               } else {
	                  $('#hideppd2').hide();    
	               }
	       }
				function getIgraDetails(patObj){
					//$('#contIgraTest tbody tr').destroy();	 
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
				
			    function createTableIgra(tempIgraObj,status){
			    	  var  userDetailsIgra='';
				       $.each(tempIgraObj, function(i, item) {
				    	//  alert("inside: "+$('#contIgraTest tbody tr').length);
			        	  countIgra++;
			        	  let count=countIgra;
			        	  let resenter='';
			              let resdate='';
			              if(item.resultenteredby != null){
			          	   resenter=item.resultenteredby;
			              }if(item.resultentereddt != null){
			          	   resdate=item.resultentereddt;
			              }
			        	  userDetailsIgra = '<tr id=igrarow'+countIgra+'>';
			        	  userDetailsIgra += '<td width="20%"><select  disabled class="form-control c_select col-sm-12" disabled id="exTypeName'+count+'"><option value=""></option> </select></td>';
			        	  userDetailsIgra += '<td><select disabled class="form-control c_select col-sm-12" id="resultName'+count+'"></td>';
			        	  userDetailsIgra += '<td width="15%"><input type="text" class="form-control igradatepicker" disabled   id="igraexdate'+count+'"></td>';
			        	  userDetailsIgra += '<td><textarea class="form-control" maxlength="300" disabled id="notesIgra'+count+'"  rows="2" cols="50"></textarea></td>';
			              userDetailsIgra += '<td class="hidden" width:0%>' +count+ '</td>'; //9
			              userDetailsIgra += '<td class="hidden" width:0%>' +item.exid+ '</td>'; //10
			              userDetailsIgra += '<td class="hidden" width:0%>' +item.result+ '</td>';
			              userDetailsIgra += '<td class="hidden" width:0%>' +item.extype+ '</td>';
			              userDetailsIgra += '</tr>';
			              $('#contIgraTest').append(userDetailsIgra);
			              $('#popover_info_igra'+count).popover({
			                  html: true,
			                  trigger: 'hover',
			                  content: function() {
			                    return $('#popover_content_info_igra'+count).html();
			                  }
			              });
			            //  alert("End: "+$('#contIgraTest tbody tr').length);
					      $('#igraexdate'+count).val(item.exdate);
			              $('#notesIgra'+count).val(item.notes);
			              getIgraRequester(count,item.requester);
			              getIgraResult(count,item.result);
			              getIgraTestType(count,item.extype);
				       });
				       /* $(".igradatepicker").datepicker({
				      		changeMonth: true,
				      		changeYear: true,
				      		yearRange: "1930:2060",
				      		dateFormat: 'dd/mm/yy',
				      		maxDate: '+0d'
				 	    }); */
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
	  		
		function viewContactReferralForm(currentElement){
			var riskFactorValEn=''; riskFactorValAr = '' ;  comorboditiesValEn=''; comorboditiesValAr = '' ;  relationValEn=''; relationValAr = '' ; 
			//alert(currentElement.closest("tr").find('td:eq(0)').text());
			contId = currentElement.closest("tr").find('td:eq(2)').text(); //currentElement.closest("tr").find('td:eq(0)').text();
			var getContactReferralsObj =JSON.stringify({"notifid": notifId,"contactid": contId})
			$.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=getcontactreferrals",
	               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:getContactReferralsObj,	
					dataType : "json",		
	               success: function (data) {			                 
		                    if(data.code=="1"){	
		                    	var result = { };
		                    	let relarrnameEn=''; relarrnameAr = '';
	         					  
     	                    	$.each(mapriskfactor, function (index, value) {
     	         					   if(value.code == data.details.CNotificationInfo.riskfactor){
     	         						 result.riskFactorValEn = value.nameen;
     	         						 result.riskFactorValAr = value.namear;
     	         					   }
     	         				});
     	                    	$.each(mapcomorbodities, function (index, value) {
  	         					   if(value.code == data.details.CNotificationInfo.comorbidities){
  	         						 result.comorboditiesValEn = value.nameen;
  	         						 result.comorboditiesValAr = value.namear;
  	         					   }
  	         					});
     	                    	$.each(maprelation, function (index, value) {
     	                    		if(data.details.CNotificationInfo.multirelation != null){
     	                    			let relarr=data.details.CNotificationInfo.multirelation.split(',');
        	                    		if(relarr.includes(value.code)){
     	         							relarrnameEn+=value.nameen +',' ; 
     	         							relarrnameAr+=value.namear +',' ;
     	         						}  	
     	                    		}
  	         					});
     	                    	result.relationValEn = relarrnameEn;
	         					result.relationValAr = relarrnameAr;
     	                    	printContactReferral(data,result);
		                    }
		         },
				error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401"){
				
				}
				}
			});
		}
		
		function mapStatusClicked(row){
			$('#updateMedMessage').hide();
			$('#updateMessage').hide();
			$('#updateContactStatusBtn').show();
			$('#errorMedMessage').hide();
			$('#errorMessage').hide();
			$('#updateContactStatusBtn').prop('disabled', false);
			contId =  row.closest("tr").find('td:eq(2)').text()
			contactOccupation =  row.closest("tr").find('td:eq(10)').text()
			contactComment =  row.closest("tr").find('td:eq(11)').text()
			var contactStatus = row.closest("tr").find('td:eq(7)').text()
			$('#contactstatus').val(contactStatus);
			if(contactStatus == "4"){
				$('#hideAssignToRoom').show();
				$('#hideReferredToPRC').hide(); 
				$('#assignToRoom').val(row.closest("tr").find('td:eq(8)').text());
			}
			else if(contactStatus == "5"){
				$('#hideReferredToPRC').show();
				$('#hideAssignToRoom').hide(); 
				$('#prcLocation').val(referedByLoc);
				$('#dateOfReferral').val(referedByDate);
				$('#updateContactStatusBtn').hide();
			}
			else {
				 $('#assignToRoom').val('');
				 $('#hideAssignToRoom').hide();
				 $('#hideReferredToPRC').hide(); 
			}
			
		
}

		$("#occupationOthers").change(function () {
			 $('#occupationOther1').val('');			
			 var value = this.value;
			 $('#occupationOtherError').hide();
			 $('#patManField1').hide();
			if(value == "18"){
	  			 $('#occupationOtherPass').show();
			} else {
				$('#occupationOtherPass').hide();
			}
		});
		
		$("#comorbodities").change(function() {
			var value = this.value;
			if (value == "6") {
				$('#hideComorbidities').show();
			} else {
				$('#hideComorbidities').hide();

			}
		});
		
		

		$("#riskfactor").change(function() {
			var value = this.value;
			if (value == "17") {
				$('#hideRiskFactor').show();
			} else {
				$('#hideRiskFactor').hide();

			}
		});
		
		
		$("#searchByStatus").change(function() {
			var value = this.value;
			searchStatus = value;
			searchReference = "1";
			if (value != "") {
				$("#searchByAssignee").attr("disabled", true);
				$("#searchByAssignee").val('');
			} else {
				$("#searchByAssignee").removeAttr("disabled");
			}
			
		});
		
		$("#searchByAssignee").change(function() {
			var value = this.value;
			searchStatus = value;
			searchReference = "2";
			if (value != "") {
				$("#searchByStatus").attr("disabled", true);
			} else {
				$("#searchByStatus").removeAttr("disabled");

			}
		});

	
			function clearTableList() {
				 $("#tbfollowup").addClass("active show");
				 $("#tbcontact").removeClass("active show");
				 $('#followUpList').DataTable().destroy();
                 $('#followUpList tbody tr').remove();
			 }
			
			function followUp(currentElement){
				clearTableList();
				$('#tbfollowup-tab').show(); 
				contId = currentElement.closest("tr").find('td:eq(2)').text(); 
				$('#hideFollowUp').show();
				//$('.tblink').click(function () {
			        var href1 = $('.tblink').attr('href');
			         $(".new_cls" ).removeClass('active');
			          $(".sub-pane" ).removeClass('show active');
			       $('[href*="tbfollowup"]').addClass('active');
			          $(href1).addClass('show active');
			        //  });
				
				
				  var myJSONObj =JSON.stringify({"notifid": notifId,"contactid": contId});
				  $.ajax({
						type : "POST",
						url : context+"/apiResponse?method=lstcontactfollowup",
						contentType : "application/json",
						headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
						crossDomain : true,
						data : myJSONObj,	
						dataType : "json",	
						success : function(response) {
							if(response.code == "1"){
				            var userDetails = '', table1='' ;
							var slNo =1, notifyloc='';
							for (var i = 0; i < response.details.length; i++) {
								countFollowUp++;
								var id = response.details[i];
								userDetails += '<tr  id=followuprow'+ (i+1) +'>';
								userDetails += '<td>'+ slNo + '</td>';
								userDetails += '<td>'+ id.phoneno + '</td>';
								followupPhoneno = id.phoneno;
																
								if (id.trackstatus == 1) {
									var status = "Pending";
									userDetails += '<td class= "text-center"> <span class=" danger_bg status_pd6">'+ status
										+'</span></td>';
								}
								else if (id.trackstatus == 2) {
										var status = "Not Responded";
										userDetails += '<td class= "text-center"> <span class="info_bg">'+ status
										+'</span></td>';
								} else if (id.trackstatus == 3) {
									var status = "Contacted";
									userDetails += '<td class= "text-center"> <span class="success_bg status_pd5">'+ status
									+'</span></td>';
								} else if (id.trackstatus == null){
									var status = "";
									userDetails += '<td class= "text-center">'+ status
									+'</td>'
								}else{
									var status = "";
									userDetails += '<td class= "text-center">'
											+ status
											+ '</td>';
								}	
								userDetails += '<td style="display:none">'+ id.trackstatus + '</td>';
								userDetails += '<td>' + id.comment + '</td>';
								followupComment = id.comment;
								activeUpdateFollowUp = id.active;
								userDetails += '<td>' + id.createdBy + '</td>';
								userDetails += '<td class="text-left bordrrad">'
								userDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
								userDetails += '<a class="dropdown-toggle icon-burger-mini cpoint" href="" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>'
								userDetails += '<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">'
								userDetails += '<li class="dropdown-item"> <a  class="cpoint" data-target="#updateFollowUpModal" onclick = "updateFollowUp($(this))" data-toggle="modal">Update Status</a>'
								if (id.trackstatus == 1) {																			
								userDetails += '</li>'
				 				userDetails += '<li class="dropdown-item">'
					 			userDetails += '<a   class="cpoint" onclick="deleteFollowUpClick($(this))" data-target="#deleteFollowUpModal" data-toggle="modal">Delete FollowUp</a>'
						 		userDetails += '</li>' }
							 	userDetails += '</ul>'
								userDetails += '</div></td>';
								userDetails += '<td style="display:none">'+  id.contnotifphnid + '</td>';
								userDetails += '<td style="display:none">' + countFollowUp+ + '</td>';
								userDetails += '</tr>';
								slNo = slNo + 1;
								}
								table1 = $('#followUpList').append(userDetails);
								table1.dataTable();
								 $('#followupnotifId').text(notifId);
							}
						},
						error : function(jqXHR, textStatus,
								errorThrown) {
							if (jqXHR.status == "401") {
							}
						}
					});
				
			}
		
		function updateFollowUp(row){			
			var followupstatus = row.closest("tr").find('td:eq(3)').text();
			followupcomment = row.closest("tr").find('td:eq(4)').text();
			$('#followupstatus').val(followupstatus);
			$('#updateFollowUpMessage').hide();
			$('#errorFollowUpMessage').hide();
			pidUpdateFollowUp = row.closest("tr").find('td:eq(7)').text();
		}
		
		
		
		function deleteFollowUpClick(currentRow){
			followupPid = currentRow.closest("tr").find('td:eq(7)').text();
			$('#followupRowNo').val(currentRow.closest("tr").find('td:eq(0)').text());
			clearmesgFollowUp();
		}
		
		function clearmesgFollowUp() {
			$('#followUpdeletesuccess').hide();
		}
		
		$("#deleteFollowUp").on('click',function(){
			var rowno = $('#followupRowNo').val();
			var followupObject = JSON.stringify({"pid":followupPid,"active":"N","status" :"","notifid": notifId,"contactid": contId,
			     "comments": "","phone": ""});
        	$.ajax({
               type: "POST",
               url:context+"/apiResponse?method=contactfollowup",
               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			   contentType : "application/json",
			   crossDomain : true,
			   data:followupObject,	
			   dataType : "json",		
               success: function (data) {			                 
	                    if(data.code=="1"){ 	                    	
	                    $('#followUpdeletesuccess').show(); 
	                    $('#followuprow'+rowno).remove();
	                   // refreshFollowUp();
	                    } else{
	                    $('#followUpdeletesuccess').hide();
                   		
	                    }
	         },
			error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401"){
			
				}
			}
			});
			
		});	
		
		var countFollowUp = 0;
		function refreshFollowUp(){
         	  var myJSONObj =JSON.stringify({"notifid": notifId,"contactid": contId});
			  $.ajax({
					type : "POST",
					url : context+"/apiResponse?method=lstcontactfollowup",
					contentType : "application/json",
					headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					crossDomain : true,
					data : myJSONObj,	
					dataType : "json",	
					success : function(response) {
						if(response.code == "1"){
						var userDetails = '';var table1='' ;
						var slNo =1;var notifyloc='';
						for (var i = 0; i < response.details.length; i++) {
						    countFollowUp++;
							var id = response.details[i];
							userDetails += '<tr  id=followuprow'+ (i+1) +'>';
							userDetails += '<td>'+ slNo + '</td>';
							userDetails += '<td>'+ id.phoneno + '</td>';
							if (id.trackstatus == 1) {
								var status = "Pending";
								userDetails += '<td class="text-center"> <span class=" danger_bg status_pd6">'+ status
									+'</span></td>';
							}
							else if (id.trackstatus == 2) {
									var status = "Not Responded";
									userDetails += '<td class="text-center"> <span class="warning_bg">'+ status
									+'</span></td>';
							} else if (id.trackstatus == 3) {
								var status = "Contacted";
								userDetails += '<td class="text-center"> <span class="success_bg status_pd5">'+ status
								+'</span></td>';
							} else if (id.trackstatus == null){
								var status = "";
								userDetails += '<td class="text-center">'+ status
								+'</td>'
							}else{
								var status = "";
								userDetails += '<td class="text-center">'
										+ status
										+ '</td>';
							}	
							userDetails += '<td style="display:none">'+ id.trackstatus + '</td>';
							userDetails += '<td>' + id.comment + '</td>';
							followupComment = id.comment;
							activeUpdateFollowUp = id.active;
							userDetails += '<td>' + id.createdBy + '</td>';
							userDetails += '<td class="text-left bordrrad">'
							userDetails += '<div class="dropdown show d-inline-block widget-dropdown">'
							userDetails += '<a class="dropdown-toggle icon-burger-mini cpoint" href="" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>'
							userDetails += '<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">'
							userDetails += '<li class="dropdown-item"> <a  class="cpoint" data-target="#updateFollowUpModal" onclick = "updateFollowUp($(this))" data-toggle="modal">Update Status</a>'
							if (id.trackstatus == 1) {																		userDetails += '</li>'
							  userDetails += '<li class="dropdown-item">'
							  userDetails += '<a   class="cpoint" onclick="deleteFollowUpClick($(this))" data-target="#deleteFollowUpModal" data-toggle="modal">Delete FollowUp</a>'
							  userDetails += '</li>' 
							}
							  userDetails += '</ul>'
							  userDetails += '</div></td>';
							  userDetails += '<td style="display:none">'+  id.contnotifphnid + '</td>';
							  userDetails += '<td style="display:none">' +countFollowUp + '</td>';
							  userDetails += '</tr>';
							  slNo = slNo + 1;
							}
						
						$('#followUpList').DataTable().destroy();
					    $('#followUpList tbody tr').remove();
						table1 = $('#followUpList').append(userDetails);
						table1.dataTable();
						$('#followupnotifId').text(notifId);
					}
				},
				error : function(jqXHR, textStatus,errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			});
		}
		
		function hidepassDetails() {
			$('#nameenPass').hide();
			$('#namearPass').hide();
			$('#govPass').hide();
			// $('#mobilePass').hide();
			$('#govPass').hide();
			$('#addressPass').hide();
			$('#maritalPass').hide();
			$('#worplacePass').hide();
			$('#sponsorPass').hide();
			$('#genderPass').hide();
			$('#bloodgrpPass').hide();
			//$('#occupationPass').hide();
			$('#entryPass').hide();
			$('#recidencyPass').hide();
			$('#dobPass').hide();
			$('#districtPass').hide();
			$('#field_wrapper').hide();
		}
		function showpassDetails() {
			$('#nameenPass').show();
			$('#namearPass').show();
			$('#govPass').show();
			$('#mobilePass').show();
			$('#govPass').show();
			$('#addressPass').show();
			$('#maritalPass').show();
			$('#worplacePass').show();
			$('#sponsorPass').show();
			$('#genderPass').show();
			$('#bloodgrpPass').show();
			//$('#occupationPass').show();
			$('#entryPass').show();
			$('#recidencyPass').show();
			$('#dobPass').show();
			$('#districtPass').show();
			$('#field_wrapper').show();
		}
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
		     		   	       	       		nationalityVal+="<option value="+response.code+">"+response.nameen+"</option>";
		     		   	       	          }else{
		     		   	       	       		nationalityVal+="<option value="+response.code+">"+response.namear+"</option>";
		     		   	   	       	      }
			     	               });
			                   	 $(nationalityVal).appendTo('#nationalityOthers');
			                   	$(nationalityVal).appendTo('#patNationality');
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
       		   	       	           nationalityValGCC+="<option value="+response.code+">"+response.nameen+"</option>";
       		   	       	        }else{
       		   	       	     		nationalityValGCC+="<option value="+response.code+">"+response.namear+"</option>";
       		   	   	       	    }
	       	                });
	                   },
	                error : function(jqXHR, textStatus, errorThrown) {
	        				if (jqXHR.status == "401"){
	        				    }
	        			}
	            }); 
	     	}
			
			
			 function getinfoOther(){
				   // clearDetailsBasic();
				    clearPageData();
				     $('#pass1').hide();
				    historyold='';
	                val='Others';
				    $('#nameOthersEn').val('');
		         	$('#nameOthersAr').val('');
		         	$('#nationalityOthers').val('');
		         	$('#genderOthers').val('');
		         	$('#mobileOther').val('');
		         	$('#dobOthers').val('');
		         	$('#bloodgroupOthers').val('');
		         	$('#entryDateOthers').val('');
		         	$('#addressOthers').val('');
		         	$('#sponsorOther').val('');
		         	$('#occupationOthers').val('');
		         	$('#worplaceOther').val('');
		         	$('#maritalOthers').val('');
		         	$('#notifyIDShow').hide();
		         	$('#governorateOthers').val('');
		         	$('#recidencyOthers').val('');
				    $('#saveNoti').show();
				    $('#registerOther').removeAttr("disabled");
		            dataAvailable();
				  $('#updateNoti').hide();
				  idVal=$('#passId').val();
				  Idtype=$('input[name="idType"]:checked').val();
				   if(Idtype=='P'){
	       		    $('#IDName').text('<fmt:message key="passportId"/>:');
	       		    }
	       		    if(Idtype=='G'){
	        		    $('#IDName').text('<fmt:message key="gccID"/>:');
	                      $('#registerOther').show();
	        		    }
	       		  $('#civilid').val(idVal);
				  var myJSONObj =JSON.stringify({"idnumber": idVal,"idtype": Idtype});
			     //pathistory(idVal,Idtype);
			    	 findpat(val,myJSONObj);
			     //validatepassAPI()
				 }
			 
	         function findpat(val,myJSONObj){
	        	$('#recidencyRegOther1').val('');
	      		$('#occupationRegOther1').val('');
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
				                    	dataNotAvailable();
				                    	$('#registercontact1').removeAttr('disabled');
				                    	$('#contact-tab1').show();
										if(val=='Other'){
									        showpassDetails();
	    			                    	 $('#genderPass').show();
	    			                    	 $('#bloodgrpPass').show();
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
				                     	$("#gender"+val).val(data.details.gender); 
				                     	$("#nationality"+val).val(data.details.nationality); 
				                     	nationalitycd=data.details.nationality;
				                  	    $("#entryDate"+val).val(data.details.entrydate); 
				                    	 $("#address"+val).val(data.details.address); 
				                    	 $("#sponsor"+val).val(data.details.sponsorcid);
				                    	 $("#recidency"+val).val(data.details.residency);
				                    	 if(data.details.residency == "5"){
				                    		 $('#residencyOtherPass').show();
				                    		 $("#residencyOther1").val(data.details.residencyOther);
					                     	}			                     	
				                    	 recidencycd=data.details.residency;
				                     	$("#marital"+val).val(data.details.maritalstatus);
				                     	maritalcd=data.details.maritalstatus;
				                     	$("#dob"+val).val(data.details.birthdate);
				                    	$("#worplace"+val).val(data.details.workplace);
				                    	$("#occupation"+val).val(data.details.occupation);
				                     	occupationcd = data.details.occupation;
				                     	           	if(data.details.occupation == "18"){
				                     		$('#occupationOtherPass').show();
				                     		$("#occupationOther1").val(data.details.occupationOth);
				                     	}
				                     	$("#bloodgroup"+val).val(data.details.bloodgroup);
				                    	$("#governorate"+val).val(data.details.governorate);
				                    	governoratecd=data.details.governorate;
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
				                    if(Idtype == "C"){
				                   	var myJSONObjCivil =JSON.stringify({"civilid": idVal});
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
				        			                    	dataNotAvailable();
				        			                    	$('#registercontact1').removeAttr('disabled');
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
				          			                    	$('#nameAr').text(data.details.namear); 
				          			                    	$('#nameEn').text(data.details.nameen);
				          			                    	$('#mobile').text(data.details.patphone);
				          			                     	$('#gender').text(gender); 
				          			                     	$('#nationality').text(nationality);
				          			                     	$('#entryDate').text(data.details.entrydate);
				          			                  	    $('#dob').text(data.details.birthdate);
				          			                    	$('#address').text(data.details.address);
				          			                    	$('#sponsor').text(data.details.sponsorcid); 
				          			                     	$('#recidency').text(residency);
				          			                     	recidencycd=data.details.residency;
				        			                 		 if(data.details.residency == "5"){
				        			                    		 $('#recidencyRegOther').show();
				        			                    		 $("#recidencyRegOther1").val(data.details.residencyOther);
				        			                    		 $('#recidency').text(data.details.residencyOther);  
				        				                     	}
				          			                     	$('#marital').text(marital); 
				          			                    	$('#worplace').text(data.details.workplace);
				          			                    	$('#occupation').text(data.details.occupation);
				          			                    	occupationcd=data.details.occupation;
						                     	           	if(data.details.occupation == "18"){
						                     					$('#occupationRegOther').show();
						                     					$("#occupationRegOther1").val(data.details.occupationOth);
						                     					$('#occupation').text(data.details.occupationOth);
						                     				}					                     	          
				          			                        $('#bloodgroup').text(data.details.bloodgroup);
				          			                    	$('#governorate').val(data.details.governorate);
				          			                    	$('#governorate').text(governorate); 
				          			                         Idtype=data.details.idtype;
				        			                     	var reg="reg";	 
				        			                 		var residencyOther=$('#recidencyRegOther1').val();
				        			                 		var occupationOthers=$('#occupationRegOther1').val();
				        			                     	regPatient(idVal,gendercd,nationalitycd,governoratecd,maritalcd,reg,districtcd,recidencycd,residencyOther,occupationcd,occupationOthers);
				        			                      
				        			                        $('#approvalSec').hide();
				        			                      
				        			                    }
				        			                    
				        			                    if(data.code=="-3"){
				        			                    	dataNotAvailable();
				        			                    	$('#dataUnavailable').show(); 
				        			                         }
				        			                    
				        			                   if(data.code=="-2"){
				        			                	   dataNotAvailable();
				        			                    	 $('#dataUnavailable').show();  
	                                                                                    $('#dbError').hide();
	                                                                                   $('#civilid').val('');   
	                                                                                   }

				        			                      if(data.code=="-4"){
				        			                	 $('#dbError').show(); dataNotAvailable();	
	                                                                                  $('#dataUnavailable').hide();
				        			                    	}
				                                              },
				                             error : function(jqXHR, textStatus, errorThrown) {

				                       if (jqXHR.status == "401"){
				        	

				                       }
				                       }
				                       }); 
				                    }
				                    else if(Idtype == "P"){
				                    	  $('#pass1').show();
				                    	  $('#passNotFound').hide();
				                    	  $("#manField").removeClass("displayBlock").addClass("displayNone");
				                    	  //validatepassAPI();
				                    } else {
				                    	 $('#pass1').hide();
				                    	  $('#passNotFound').hide();
				                    	  $("#manField").removeClass("displayBlock").addClass("displayNone");
				                    }
									
				                         }
				                    
				                
				                 },
	  				error : function(jqXHR, textStatus, errorThrown) {
	  					if (jqXHR.status == "401") {
	  					
	  					}
	  				}
	  		 });
	             getToken();
			 } 
	         
	         
	       function dataNotAvailable(){
	        	$('#passId').attr('disabled', 'true');
            	$('#nationalityOthers').attr('disabled', 'true');
            	$('#nameOthersEn').attr('disabled', 'true');
            	$('#nameOthersAr').attr('disabled', 'true');
            	$('#genderOthers').attr('disabled', 'true');
            	$('#dobOthers').attr('disabled', 'true');
            	$('#governorateOthers').attr('disabled', 'true');
            	$('#districtOthers').attr('disabled', 'true');
            	//$('#bloodgroupOthers').attr('disabled', 'true');
            	$('#registercontact1').attr('disabled', 'true');
	        }
	        
	       function dataAvailable(){
	        	$('#passId').removeAttr('disabled');
            	$('#nationalityOthers').removeAttr('disabled');
            	$('#nameOthersEn').removeAttr('disabled');
            	$('#nameOthersAr').removeAttr('disabled');
            	$('#genderOthers').removeAttr('disabled');
            	$('#dobOthers').removeAttr('disabled');
            	$('#governorateOthers').removeAttr('disabled');
            	$('#districtOthers').removeAttr('disabled');
            	//$('#bloodgroupOthers').removeAttr('disabled');
            	$('#registercontact1').removeAttr('disabled');
	        }
	         function validatepassAPI(){
				 var nationality=$('#nationalityOthers').val();
				 $('#passNotFound').hide();
				 var myJSONObjPass =JSON.stringify({
					 "idtype":Idtype,
					 "passportnumber":idVal,
					 "nationality":nationality,
					 "civilidnumber":"",
					  });
						          			        				
				  if(nationality==''){
					  $('#pass1').show();
					  $("#manField").removeClass("displayNone").addClass("displayBlock"); 
				  }
				                         if(idVal!=''&& nationality!=''){
				                        	 $("#manField").removeClass("displayBlock").addClass("displayNone");
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
						          			        			                    	dataNotAvailable();
						          			        			                    	$('#registercontact1').removeAttr('disabled');
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
						          			          			                    	$('#nameOthersEn').val(data.details.nameen); 
						          			          			                    	$('#nameEn').text(data.details.nameen);
						          			          			                    	$('#nameOthersAr').val(data.details.namear); 
						          			          			                    	$('#mobile').text(data.details.phone); 
						          			          			                    	$('#mobileOther').val(data.details.patphone); 
						          			          			                     	$('#genderOthers').val(data.details.gender); 
						          			          			                     	$('#gender').text(gender); 
						          			          			                     	$('#nationality').text(nationality);
						          			          			                     	$('#nationalityOthers').val(data.details.nationality); 
						          			          			                     	$('#entryDate').text(data.details.entrydate);
						          			          			                  	    $('#entryDateOthers').val(data.details.entrydate);
						          			          			                  	    $('#dob').text(data.details.birthdate);
					       			          			                  	            $('#dobOthers').val(data.details.birthdate);
						          			          			                    	$('#address').text(data.details.address);
						          			          			                    	$('#addressOthers').val(data.details.address); 
						          			          			                    	$('#sponsor').text(data.details.sponsorcid); 
						          			          			                    	$('#sponsorOther').val(data.details.sponsorcid);
						          			          			                    	$('#recidencyOthers').val(data.details.residency);
						          			          			                     	$('#recidency').text(residency);  
						          			          			                     	$('#marital').text(marital); 
						          			          			                     	$('#maritalOthers').val(data.details.maritalstatus); 
						          			          			                    	$('#worplace').text(data.details.workplace);
						          			          			                    	$('#worplaceOther').val(data.details.workplace);
						          			          			                    	$('#occupationOthers').val(data.details.occupation);
						          			          			                     	$('#occupation').text(data.details.occupation);
						          			          			                        $('#bloodgroup').text(data.details.bloodgroup);
						          			          			                    	$('#bloodgroupOthers').text(data.details.bloodgroup);
						          			          			                    	$('#governorateOthers').val(data.details.governorate);
						          			          			                    	$('#governorate').text(governorate); 
						          			          			                        $('#districtOthers').val(data.details.district);
						          			          			                        if(data.details.civilidnumber!='' || data.details.civilidnumber!=null){
						          			          			                             $('#civilpassno').text(data.details.civilidnumber);					          			          			                  
							          			          			                         $("#passcivil").show();
							          			          			                         $("#passcivilOpenNotif").hide();
						          			          			                             $('#passcivilAvailable').show();
						          			          			                             $("#registerOther").hide();
						          			          			                             $('#footerPass').hide();
						          			          			                             $('#IDName').text('<fmt:message key="label.civilid"/>:');
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
						          			        			                    	  $('#passNotFound').show();
						          			        			                    	  $('#IDName').text('<fmt:message key="label.civilid"/>:');
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
	         function clearPageData() {
	        		ptcd='';
	        		$('#edit').hide();
	        		$('#contact-tab1').hide();
	        		$('#openNotifyModel').modal('hide');
	        		$('#passcivil').hide();
	        		$('#civilpassno').text('');
	        		$("#registerOther").removeAttr("disabled");
	        		$('#passcivilOpenNotif').hide();
	        		$('#hospCatError').hide();
	        		$('#hospNameErrorG').hide();
	        		$('#hospNameErrorP').hide();
	        		$('#notifyPass').text('');
	        		$('#civilpassno').text('');
	        		$('#civilid').val('');
	        		$('#nameOthersEn').val('');
	        		$('#riskFactorPRCother1').val('');
	        		$('#estimatedContact').val('');
	        		$('#refferredContact').val('');
	        		$('#receivedContact').val('');
	        		$('#locDisease').val('');
	        		$('#occupationOther1').val('');
	        		$('#hospNameOther').val('');
	        		$('#nameOthersAr').val('');
	        		$('#nationalityOthers').val('');
	        		$('#genderOthers').val('');
	        		$('#mobileOther').val('');
	        		$('#dobOthers').val('');
	        		$('#bloodgroupOthers').val('');
	        		$('#entryDateOthers').val('');
	        		$('#addressOthers').val('');
	        		$('#sponsorOther').val('');
	        		$('#occupationOthers').val('');
	        		$('#worplaceOther').val('');
	        		$('#maritalOthers').val('');
	        		$('#districtOthers').val('');
	        		$('#subdiagnosisother1').val('');
	        		$('#subdiagnosisHosother1').val('');
	        		$('#diagnotes').val('');
	        		$('#governorateOthers').val('');
	        		$('#recidencyOthers').val('');
	        		$('#saveDetailsSuccess').hide();
	        		$('#notifyCatError').hide();
	        		$('#diagError').hide();
	        		$('#subdiagnosisError').hide();
	        		//$('#idTypepass').attr("checked", "checked");
	        		$('#labICDDeletesuccess').hide();
	        		$('#civilFileUploadError').hide();
	        		$('#passFileUploadError').hide();
	        		$('#civilFileExtError').hide();
	        		$('#passFileExtError').hide();
	        		$('#fileCivilId').val('');
	        		$('#filePassport').val('');
	        		Array.prototype.slice.call(document.querySelectorAll('[id^="mobileId"]'), 1)
	        			.forEach(elt => elt.parentNode.removeChild(elt))
	        		$('#patMobile0').val('');
	    			$('#occupationOtherError').hide();
	    			$("#registerOther").removeAttr("disabled");	        		
	        	}
	         
	         $("#governorateOthers").change(function () {
		    	  var value = this.value;
			      var myJSONObj =JSON.stringify({"code": value});
			      if(value !=""){
				      getDistrictVal('Others',myJSONObj,'','') ; 
					 }
			 });
	         
	  	   function  getDistrictVal(val,myJSONObj,districtcomp,districtval){		   
			   $("#district"+val+" option").remove();
			   $("#district"+val).append($('<option>', {
	       	    value: "",
	       	   text:'<fmt:message key="label.select" />'
	       	}));
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
	  	   
	  	   function addFollowUpBtn(){
	  		 $('#followupPhonenumber').val('');
	  		 $('#followupNote').val('');
	  		 $('#addFollowUpMessage').hide();   
        	 $('#addFollowUpErrorMessage').hide();
        	 $('#addFollowUpValidationMessage').hide();
        	 $('#followupPhonenumberValidationMsg').hide();
	  	   }
	  	   
	  	   function addFollowup(){
	  		   var followupPhonenumber = $('#followupPhonenumber').val();
	  		   var followupNote = $('#followupNote').val();
			   var myJSONObj = JSON.stringify({"pid":"","active":"","status" :"","notifid": notifId,"contactid": contId,
				     "comments": followupNote,"phone": followupPhonenumber});
			   if(followupPhonenumber!= "" && followupNote != ""){
	  		 $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=contactfollowup",
	    			contentType : "application/json",
	    			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	    			crossDomain : true,
	    			data:myJSONObj,
	    			dataType : "json",		
	                success: function (datahere) {			                 
	               	 var response = JSON.parse(JSON.stringify(datahere));	
	               	if(response.code=="1"){
	               		$('#addFollowUpMessage').show();   
	               		$('#addFollowUpErrorMessage').hide();
	               		$('#addFollowUpValidationMessage').hide();
	               		clearTableList();
	               		refreshFollowUp();
	               	  }
	               	else{
	               		$('#addFollowUpMessage').hide();   
	               		$('#addFollowUpErrorMessage').show();
	               		$('#addFollowUpValidationMessage').hide();	
		         	}
	                }, 
	             error : function(jqXHR, textStatus, errorThrown) {
	     				
	     				if (jqXHR.status == "401"){
	     					
	     				    }
	     			}
	         });
			   }else {
           		$('#addFollowUpValidationMessage').show();	 
           	  }
	  		 getToken();
	  	   }
	  	   
	  	   function updateFollowUpStatus(){
	  		   var followupStatus = $('#followupstatus').val();
			   var myJSONObj = JSON.stringify({"pid":pidUpdateFollowUp,"active":activeUpdateFollowUp,"status" : followupStatus,"notifid": notifId,"contactid": contId,
				     "comments": followupComment,"phone": followupPhoneno});	  		   
	  		 $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=contactfollowup",
	    			contentType : "application/json",
	    			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	    			crossDomain : true,
	    			data:myJSONObj,
	    			dataType : "json",		
	                success: function (datahere) {			                 
	               	 var response = JSON.parse(JSON.stringify(datahere));	
	               	if(response.code=="1"){
	               		$('#updateFollowUpMessage').show();   
	               		$('#errorFollowUpMessage').hide();   
	               		clearTableList();
	               		refreshFollowUp();
			         }
	               	if(response.code=="-2"){
	               		$('#updateFollowUpMessage').hide();   
	               		$('#errorFollowUpMessage').show();	               		
		         	}
	                },
	             error : function(jqXHR, textStatus, errorThrown) {
	     				
	     				if (jqXHR.status == "401"){
	     					
	     				    }
	     			}
	         });
	  		 getToken();
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
		   
		  function clearAllSearch(){
			   document.querySelector('input[name="searchOption"][value="C"]').checked = true;
			   $('#searchLabel').text('<fmt:message key="label.civilid"/>:');
			   $('#searchByOption').val('');
			   $("#searchListByIDType").find("tr:gt(0)").remove();
			   $('#contactNameHide').hide(''); 
		   }
		  
		  $("#searchByOption").keyup(function(event) {
			    if (event.keyCode === 13) {
			    	searchList();
			    }
			});
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
							 if(response.details != null){
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
		  
	</script>
	<script src="js/printReport.js"></script>
</body>
</html>
