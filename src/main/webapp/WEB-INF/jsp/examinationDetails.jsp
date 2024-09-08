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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- <link href="admin/fontawesome-free/css/all.min.css" rel="stylesheet"type="text/css">
 --><!-- Custom styles for this template-->
<!-- <link href="css_pharmacy/sb-admin-2.css" rel="stylesheet"> -->
<!-- <link href="admin/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
 --><!-- <link href="css_pharmacy/main.css" rel="stylesheet"> -->
<!-- <link rel="stylesheet" href="css_pharmacy/jquery-ui.css"> -->

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

/* .dropdown-item {  display: inline !important;background: rgb(224, 230, 233)!important;}
 */</style>
</head>
 <body id="page-top">
<div class="row" id="exContent">
	<div class="col-sm-12" id="examinationNavTab">
		<!-- <div class="card  border-bottom-grey mt-2 mb-2 p-2"> -->
  			<div class="tab" role="tabpanel" id="hideTab1">
				<ul class="nav nav-tabs1 " id="examNavList" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="labTest_1" data-toggle="tab" href="#labTest1"
							role="tab" aria-controls="labTest1"
							aria-selected="true"><fmt:message key="label.lab" /></a></li>
						<li class="nav-item"><a class="nav-link"
							id="radTest_1" data-toggle="tab" href="#radTest1"
							role="tab" aria-controls="radTest1" 
							aria-selected="true"><fmt:message key="label.radiology" /></a></li>	
						<li class="nav-item"><a class="nav-link"
							id="ppdTest_1" data-toggle="tab" href="#ppdTest1"
							role="tab" aria-controls="ppdTest1" 
							aria-selected="true"><fmt:message key="label.PPDTestTuberculinSkinTest" /></a></li>		
						<li class="nav-item"><a class="nav-link" 
							id="igraTest_1" data-toggle="tab" href="#igraTest1"
							role="tab" aria-controls="igraTest1"
							aria-selected="true"><fmt:message key="label.Igra" /></a></li>
						<li class="nav-item"><a class="nav-link" 
							id="medHistTest_1" data-toggle="tab" href="#medHistTest1"
							role="tab" aria-controls="medHistTest1"
							aria-selected="true"><fmt:message key="label.medicalTreatment" /></a></li>
						
						
					</ul>
							
<div class="tab-content1  p-1" id="examinationTab">
<!-- LAB START -->
<div class="tab-pane show active" id="labTest1" role="tabpanel" aria-labelledby="labTest_1">
<div id="aLabTable" >
		<%-- <div class="card border-bottom-info">
			<div class="card-header bg-gradient-info"
				id="heading8">
				<h5 class="mb-0 panel-title_plus ">
					<a class="btn-link collapsed text-white opencollapsed" data-toggle="collapse" data-parent="#aLabTable" href="#collapse8" aria-expanded="true"
						aria-controls="collapse8"> <fmt:message key="label.labTest" /></a>
				</h5>
			</div> 
			<div id="collapse8" class="collapse hideshow" aria-labelledby="heading8" data-parent="#aLabTable">--%>
				<div class="card-body">
					<div class="row">
						<div class="col-sm-12">
							<div class="text-right">
								<a href="#" class="btn btn-blue" data-toggle="modal" data-target="#adddrug_m" title="Add Lab" id="addLabBtn"> 
								<i class="fas fa-plus"></i><span class="text"><fmt:message key="add" /></span></a>
							</div>
							<table id="addLabTest1" width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-bordered mt-2" >
								<thead>
									<tr>
										<th  class="hidden"><fmt:message key="label.testcode" /></th>
										<th  class="hidden"><fmt:message key="label.labrow" /></th>
										<th class="hidden"><fmt:message key="label.ExID" /></th>
										<th width="15%"><fmt:message key="label.testName" /></th>
										<th><fmt:message key="label.specimenType" /></th>
										<th><fmt:message key="label.LabNo" /></th>
										<th><fmt:message key="label.inoculationDate" /></th>
										<th><fmt:message key="label.releaseDate" /></th>
										<th><fmt:message key="label.result" /></th>
										<th><fmt:message key="label.drugSensitive" /></th>
										<th><fmt:message key="label.requestedBy" /></th>
										<th><fmt:message key="label.info" /></th>
										<th><fmt:message key="label.examAction" /></th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
							<div class="text-right">
								<span id="labOutMsg" style="display: none;"><b><font color="green"> <fmt:message key="label.labCreated" /></font></b></span> <span
									id="labOutErrMsg" style="display: none;"><b><font color="red"><fmt:message key="label.labCreateErr" /></font></b></span>
							</div>
						</div>
					</div>
				</div>
			<!-- </div>
		</div> -->
	</div>
																	
</div>
<!-- LAB END -->
<!-- Igra STARt -->
<div class="tab-pane " id="igraTest1" role="tabpanel" aria-labelledby="igraTest_1">
<div id="aIgraTable"  style="display: none;">
<%--<div class="card border-bottom-info">
	 <div class="card-header bg-gradient-info" id="heading_igra">
		<h5 class="mb-0 panel-title_plus ">
			<a class=" btn-link collapsed text-white opencollapsed" data-toggle="collapse" data-parent="#aIgraTable" href="#collapse_igra" aria-expanded="true"
				aria-controls="collapse_igra"> <fmt:message key="label.Igra" />
			</a>
		</h5>
	</div> --%>
	<!-- <div id="collapse_igra" class="collapse hideshow" aria-labelledby="heading_igra" data-parent="#aIgraTable"> -->
		<div class="card-body">
			<div class="row">
				<div class="col-sm-12">
					<div class="text-right" id="igraAddBtn"
						style="display: none;">
						<a href="#" class="btn btn-blue" data-toggle="modal" data-target="#igraTestModel" title="Add IGRA">
							<i class="fas fa-plus"></i> <span class="text" onclick="clearIgra()"><fmt:message key="add" /></span>
						</a>
					</div>
					<!-- <hr class="my-2"> -->
					<table id="contIgraTest" class="display table table-bordered mt-2" style="width: 100%">
						<thead>
							<tr>
							<th><fmt:message key="label.testType" /></th>
							<th><fmt:message key="label.result" /></th>
							<th><fmt:message key="label.date" /></th>
							<th><fmt:message key="label.notes" /></th>
							<th id='iRequesterTh' class="hidden"><fmt:message key="label.requestedBy" /></th>
							<th class="hidden"><fmt:message key="label.rowcount" /></th>
							<th class="hidden"><fmt:message key="label.ExID" /></th>
							<th class="hidden"><fmt:message key="label.resultval" /></th>
							<th class="hidden"><fmt:message key="label.testType" /></th>
							<th><fmt:message key="label.info" /></th>
							<th><fmt:message key="label.examAction" /></th>
							
							</tr>
						</thead>
						<tbody class="tbody">
						</tbody>
					</table>
					<div class="text-right">
						<span id="igraOutMsg" style="display: none;"><b><font
								color="green"> <fmt:message
										key="label.igraCreated" /></font></b></span> <span
							id="igraOutErrMsg" style="display: none;"><b><font
								color="red"><fmt:message
										key="label.igraCreateErr" /></font></b></span>
						</div>
					</div>
				</div>
			
		<!-- </div> </div> -->
	</div>
</div>
</div>
<!-- Igra END -->
<!-- PPD STARt -->
<div class="tab-pane" id="ppdTest1" role="tabpanel" aria-labelledby="ppdTest_1">
<div id="aPPDTable" style="display: none;">
<%-- <div class="card border-bottom-info">
	<div class="card-header bg-gradient-info"
		id="headingPPD">
		<h5 class="mb-0 panel-title_plus ">
			<a
				class=" btn-link collapsed text-white opencollapsed"
				data-toggle="collapse" data-parent="#aPPDTable"
				href="#collapsePPD" aria-expanded="true"
				aria-controls="collapsePPD"> <fmt:message
				key="label.PPDTestTuberculinSkinTest" />
		</a>
	</h5>
</div>
<div id="collapsePPD" class="collapse hideshow" aria-labelledby="headingPPD" data-parent="#aPPDTable"> --%>
	<div class="card-body">
		<div class="row">
			<div class="col-sm-12">
				<div class="text-right" id="addPpdBtn">
					<a href="#" class="btn btn-blue" data-toggle="modal" data-target="#update_ppdtest" title="Add Ppd Test"> 
					<i class="fas fa-plus"></i> <span class="text" onclick="clearppd()"><fmt:message key="add" /></span>
					</a>
				</div>
				<!-- <hr class="my-2"> -->
		<table id="ppdtestResult" class="display table table-bordered mt-2" style="width: 100%">
			<thead>
				<tr>
					<th width="25%"><fmt:message key="label.testType" /></th>
					<th width="35%"><fmt:message key="label.reason" /></th>
					<th><fmt:message key="label.reading" /></th>
					<th class="hidden"><fmt:message key="label.ppd1TestDate" /></th>
					<th class="hidden"><fmt:message key="label.ppd2TestDate" /></th>
					<th class="hidden"><fmt:message key="label.ppd1ReadingDate" /></th>
					<th class="hidden"><fmt:message key="label.ppd2ReadingDate" /></th>
					<th class="hidden"><fmt:message key="label.ppd1Reading" /></th>
					<th class="hidden"><fmt:message key="label.ppd2Reading" /></th>
					<th class="hidden"><fmt:message key="label.ppd1Result" /></th>
					<th class="hidden"><fmt:message key="label.ppd2Result" /></th>
					<th class="hidden"><fmt:message key="label.ppd1Notes" /></th>
					<th class="hidden"><fmt:message key="label.ppd2Notes" /></th>
					<th class="hidden"><fmt:message key="label.testTypeValue" /></th>
					<th class="hidden"><fmt:message key="label.reasonValue" /></th>
					<th class="hidden"><fmt:message key="label.PPDID" /></th>
					<th class="hidden"><fmt:message key="label.rowcount" /></th>
					<th class="hidden"><fmt:message key="label.docinterpret" /></th>
					<th class="hidden"><fmt:message key="label.docinterpret" /></th>
					<th><fmt:message key="label.info" /></th>
					<th><fmt:message key="label.examAction" /></th>																											
				</tr>
			</thead>
		<tbody class="tbody"></tbody>
	</table>
				<div class="text-right">
					<span id="ppdOutMsg" style="display: none;"><b><font color="green"> <fmt:message key="label.ppdCreated" /></font></b></span> 
					<span id="ppdOutErrMsg" style="display: none;"><b><font color="red">
					<fmt:message key="label.ppdCreateErr" /></font></b></span>
				</div>
					</div>
				</div>
			</div>
		<!-- </div>
	</div> -->
</div>
</div>
<!-- PPD END  -->
<!-- Radiology STARt -->
<div class="tab-pane" id="radTest1" role="tabpanel" aria-labelledby="radTest_1">
<div id="aRadTable" style="display: none;">
<%-- <div class="card+ border-bottom-info mt-2">
	<div class="card-header bg-gradient-info panel-title_plus sick-table5" id="heading_s">
		<a class="btn-link collapsed text-white opencollapsed" data-toggle="collapse" data-parent="#aRadTable" href="#collapse_s" aria-expanded="true"
			aria-controls="collapse_s"> <fmt:message key="label.radiology" />
		</a>
	</div>
	<div id="collapse_s" class="collapse hideshow" aria-labelledby="heading_s" data-parent="#aRadTable"> --%>
		<div class="card-body">
			<div class="row">
				<div class="col-sm-12">
					<div class="text-right">
						<a href="#" class="btn btn-blue" data-toggle="modal" data-target="#radTestModel" title="Add Radiology" onclick="clearcheckrad()">
							<i class="fas fa-plus"></i> <span class="text">
								<fmt:message key="add" />
						</span>
						</a>
					</div>
					<!-- <hr class="my-2"> -->
					<table id="contRadTest" class="display table table-bordered mt-2" style="width: 100%">
						<thead>
							<tr>
								
								<th class="hidden"><fmt:message key="sl.No" /></th>
								<th class="hidden"><fmt:message key="label.testcode" /></th>
								<th class="hidden"><fmt:message key="label.radrow" /></th>
								<th width="10%"><fmt:message key="label.testName" /></th>
								<th width="20%"><fmt:message key="label.result" /></th>
								<th width="15%"> <fmt:message key="label.abnormalResult" /></th>
								<th width="15%"><fmt:message key="label.otherAbnormalResult" /></th>
								<th width="15%"><fmt:message key="label.notes" /></th>
								<th width="10%"><fmt:message key="label.date" /></th>
								<th width="13%"><fmt:message key="label.requestedBy" /></th>
								<th class="hidden"  width="0%"><fmt:message key="label.rowCount" /></th>
								<th><fmt:message key="label.info" /></th>
								<th><fmt:message key="label.examAction" /></th>	
							</tr>
						</thead>
						<tbody class="tbody">
						</tbody>
					</table>
					<div class="text-right">
						<span id="radOutMsg" style="display: none;"><b><font color="green"> <fmt:message key="label.radCreated" /></font></b></span> 
						<span id="radOutErrMsg" style="display: none;"><b><font color="red"><fmt:message key="label.radCreateErr" /></font></b></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
	<!-- Radiology END -->
	
	<!--  Medical Treatment STARt-->
<div class="tab-pane" id="medHistTest1" role="tabpanel" aria-labelledby="medHistTest_1">
<div id="medTreatHistTest" style="display: none;">
<%-- <div class="card border-bottom-info">
	<div class="card-header bg-gradient-info" id="heading91">
		<h5 class="mb-0 panel-title_plus ">
			<a class=" btn-link collapsed text-white opencollapsed"
				data-toggle="collapse"
				data-parent="#accordion91" href="#collapse91"
				aria-expanded="true"
				aria-controls="collapse91"><fmt:message
									key="label.medicalTreatment" /> </a>
	</h5>
</div>
<div id="collapse91" class="collapse hideshow"
	aria-labelledby="heading91"
	data-parent="#accordion91"> --%>
	<div class="card-body">
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
				<!-- <hr class="my-2"> -->
				<table id="medicalhistory"
					class="display table table-bordered mt-2"
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
							<th class="hidden"><fmt:message
									key="label.rowcount" /></th>
							<th class="hidden"><fmt:message
									key="label.ExID" /></th>
							<th><fmt:message key="label.info" /></th>
							<th><fmt:message key="label.examAction" /></th>
						</tr>
					</thead>
					<tbody class="tbody">
					</tbody>
				</table>
				</div>
				</div>
			</div>
		</div>
<!-- 	</div>
</div> -->
</div>
<!-- Medical Treatment END -->
</div>
</div>  
 </div>
</div>  
</body>
	
<script src="admin/jquery/jquery.min.js"></script>
<!-- <script src="admin/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="admin/jquery-easing/jquery.easing.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>	
<script type="text/javascript" src="js/updateWithAuthenticate.js"></script>
<script type="text/javascript" src="js/tokenValidator.js"></script>
<script src="js/sb-admin-2_d.js"></script>
<script src="js/printReport.js"></script> -->
<script src="admin/datatables/jquery.dataTables.min.js"></script>
<script src="admin/datatables/dataTables.bootstrap4.min.js"></script>
<script src="js/demo/datatables-demo.js"></script> 	
		
</html> 
