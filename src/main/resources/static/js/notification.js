	$('input[name="allInspector"]').prop('checked', true);
	$('select[name*="assignees"] option').removeAttr('disabled');
	$("#inspectorreplace").prop('disabled', true);
	$("#inspectorreplace1").prop('disabled', true);
	$("#inspectorreplace2").prop('disabled', true);
	$('#exampleModalLongTitleUpdate').hide();
	$('#updateppdbutton').hide();
	$('#contact-tab1').hide();
	$('#passFileExtError').hide();
	$('#civilFileExtError').hide();
	$('#passcivilOpenNotif').hide();
	$('#saveDetailsSuccess').hide();
	$('#updateDetailsSuccess').hide();
	$('#notifyIDShow').hide();
	$('#edit').hide();
	$('#patientHistory').hide();
	$('#updateNoti').hide();
	$('#diagError').hide();
	$('#subdiagnosisError').hide();
	$('#notifyUpdate').hide();
	$('#notifyCreate').hide();
	$('#subdiagnosisHosother').hide();
	$('#subdiagnosisother').hide();
	$('#govhospNameOther').hide();
	$('#residencyOtherPass').hide();
	$('#otherabnormaldisease').hide();
	$('#abnormalresult').hide();
	$('#recidencyRegOther').hide();
	$('#riskFactorPRCother').hide();
	$('#patupdateCivilId').hide();
	$('#patEditManField').hide();
	$('#icdtableD').hide();
	$('#icdtablePRC').hide();
	$('#sourceTB').hide();
	$('#civilIdErr').hide();
	$('#civilIdChk').hide();
	$('#pcrdate').hide();
	$('#isolateddate').hide();
	$('#approvalSec').hide();
	$('#labdeletesuccess').hide();
	$('#raddeletesuccess').hide();
	$('#deletediseasehos').hide();
	$('#ppddeletesuccess').hide();
	$('#updatetypeoftestError').hide();
	$('#ppdupdate').hide();
	$('#hospCatError').hide();
	$('#hospNameErrorP').hide();
	$('#hospNameErrorG').hide();
	$('#patRegCivilId').hide();
	$('#patAlreadyRegCivilId').hide();
	$('#passcivil').hide();
	$('#civilFileUploadError').hide();
	$('#passFileUploadError').hide();
	$('#civilIDRegErr').hide();
	$('#nameRegEnErr').hide();
	$('#nameRegArErr').hide();
	$('#genderRegErr').hide();
	$('#dobRegErr').hide();
	$('#sponsorRegErr').hide();
	$('#mobileRegErr').hide();
	$('#worplaceRegErr').hide();
	$('#maritalRegErr').hide();
	$('#occupationRegErr').hide();
	$('#entryDateRegErr').hide();
	$('#recidencyRegErr').hide();
	$('#bloodgroupRegErr').hide();
	$('#nationalityRegErr').hide();
	$('#notifyCatError').hide();
	$('#labICDDeletesuccess').hide();
	$('#occupationOtherPass').hide();
	$('#occupationRegOther').hide();
	$('#ppd2').hide();
	$('#hideppd2').hide();
	//$('#hideupdateppd').hide();
	$('#reuploadButton').hide();
	$('#viewDocumentButton').hide();
	$('#viewDocumentButton1').hide();
	$('#reuploadButton1').hide();
	$('#gov').hide();
	$('#private').hide();
	$('#hideDiv').hide();
	$('#diseasedeletesuccess').hide();
	$('#medicaldeletesuccess').hide();
	//$("#ppdtestResult tbody td:nth-child(8)").hide();
	$('.searchByDateOptions').hide();
	$('.searchByDiseaseOptions').hide();
	$('.searchByStatusOptions').hide();
	$('#locDisease').val("1");
	//$('#fileError').hide();
	//$('#fileError_n').hide();
	//$('#fileError_notif').hide();
	$(document).on("click", "#close_p", function() {
		$(this).parents(".popover").popover('hide');
	});
	/*trigger: 'manual',*/
	$(document).on('click', '#popover1', function() {
		$(this).popover('toggle');
	});
	$(document).on("click", "#patient_1", function() {
		$('#myModal').modal('show');
	});

	$(document).on("click", "#patient_2", function() {
		$('#myModal1').modal('show');
	});

	$(document).on("click", "#patient_3", function() {
		$('#myModal2').modal('show');
	});
	$(document).on("click", "#patient_4", function() {
		$('#myModal3').modal('show');
	});
	$(document).on("click", "#patient_5", function() {
		$('#ppdHistoryModal').modal('show');
	});
	//});

 $('#addmitedDate').change(function() {
	lAdmissionDt = $(this).datepicker('getDate');
	$('#disDate').datepicker('option', 'minDate', lAdmissionDt);
});

$('#startDoseDate').change(function() {
	lStartDoseDt = $(this).datepicker('getDate');

	$('#enddosesDate').datepicker('option', 'minDate', lStartDoseDt);
});

$('#enddosesDate').change(function() {
	lEndDoseDt = $(this).datepicker('getDate');

	$('#startDoseDate').datepicker('option', 'maxDate', lEndDoseDt);
});

$('#disDate').change(function() {
	lDischargeDt = $(this).datepicker('getDate');

	$('#nextapp').datepicker('option', 'maxDate', lDischargeDt);
});

function checkSrchDate() {
	let sDate = $("#searchByStartDate").val()
	let eDate = $("#searchByEndDate").val()
	if (sDate && eDate && (eDate < sDate)) {
		$('#dateError').text();
		$('#dateError').show();
	} else {
		$('#dateError').hide();
	}
}

function clearNotificationData() {
	$('#history').hide();
	$('.bs-popover-left').removeClass('show');
	$("#clearNotificationModal").modal('show');
	//clearPageData();
}
function clearPageData() {
	ptcd = '';
	validPhone = true;
	$('#locDisease').val("1");
	$("#inspectorreplace").prop('disabled', true);
	$("#inspectorreplace1").prop('disabled', true);
	$("#inspectorreplace2").prop('disabled', true);
	$('input[name="allInspector"]').prop('checked', true);
	$('#edit').hide();
	$('#patientHistory').hide();
	$('#contact-tab1').hide();
	$('#openNotifyModel').modal('hide');
	$('#passcivil').hide();
	$('#civilpassno').text('');
	$("#registerOther").removeAttr("disabled");
	$("#fileNoPRC").removeAttr("disabled");
	$("#fileNoTB").removeAttr("disabled");
	$('#passcivilOpenNotif').hide();
	$('#hospCatError').hide();
	$('#hospNameErrorG').hide();
	$('#hospNameErrorP').hide();
	$('#notifyPass').text('');
	$('#civilpassno').text('');
	clearall();
	clearppd();
	clearMedical();
	resetTabAccordion();
	clearAddMore();
	$('#civilid').val('');
	$('#nameOtherEn').val('');
	$('#riskFactorPRCother1').val('');
	$('#estimatedContact').val('');
	$('#refferredContact').val('');
	$('#fileNoTB').val('');
	$('#receivedContact').val('');
	$('#locDisease').val('1');
	$('#occupationOther1').val('');
	$('#hospNameOther').val('');
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
	$('#districtOther').val('');
	$('#subdiagnosisother1').val('');
	$('#subdiagnosisHosother1').val('');
	$('#diagnotes').val('');
	$('#governorateOther').val('');
	$('#recidencyOther').val('');
	$('#saveDetailsSuccess').hide();
	$('#notifyCatError').hide();
	$('#diagError').hide();
	$('#subdiagnosisError').hide();
	$('#idTypeP').attr("checked", "checked");
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
}

function populatebasicdata() {
	clearAddMore();
	if(Idtype == "C" || Idtype == "P"){
		$("#nameRegEn").attr('disabled', true);
		$("#nameRegAr").attr('disabled', true);
		$("#genderReg").attr('disabled', true);
		$("#nationalityReg").attr('disabled', true);
		$("#addressReg").attr('disabled', true);
		let bldgrp = $("#bloodgroup").text();
		if(bldgrp != "" && bldgrp != "null" && bldgrp != null){
			$("#bloodgroupReg").attr('disabled', true);
		}else {
			$('#bloodgroupReg').removeAttr("disabled");
		}
		$("#dobReg").attr('disabled', true);
	}
	if(Idtype == "G" || Idtype == "U"){
		$('#nameRegEn').removeAttr("disabled");
		$('#nameRegAr').removeAttr("disabled");
		$('#genderReg').removeAttr("disabled");
		$('#nationalityReg').removeAttr("disabled");
		$('#addressReg').removeAttr("disabled");
		$('#bloodgroupReg').removeAttr("disabled");
		$('#dobReg').removeAttr("disabled");
	}
	$('#patEditManField').hide();
	$('#patUpdateCivilId').hide();
	$('#occupationRegOther').hide();
	$('#recidencyRegOther').hide();
	$('#mobileValidationMsg').hide();
	Array.prototype.slice.call(document.querySelectorAll('[id^="mobilePass"]'), 1)
		.forEach(elt => elt.parentNode.removeChild(elt))
	$('#civilIDReg').val($('#civilid').val());
	$('#nameRegEn').val($('#nameEn').text());
	$('#nameRegAr').val($('#nameAr').text());
	$('#nationalityReg').val(nationalitycd);
	$('#genderReg').val(gendercd);
	$('#dobReg').val($('#dob').text());
	$('#entryDateReg').val($('#entryDate').text());
	$('#bloodgroupReg').val($('#bloodgroup').text());
	var mobile = $('#mobile').text();
	var mobileedit = new Array();
	mobile.split(',').map(function(item) {
		mobileedit.push(item.trim());
	});
	$.each(mobileedit, function(index, value) {
		if (index > 0) {
			$(".add_buttonedit").click();
		}
		$('#mobileReg' + index).val(value);
	});
	$('#addressReg').val($('#address').text());
	$('#sponsorReg').val($('#sponsor').text());
	$('#occupationReg').val(occupationcd);
	if (occupationcd == "18") {
		$('#occupationRegOther').show();
		$("#occupationRegOther1").val($('#occupation').text());
	}
	$('#worplaceReg').val($('#worplace').text());
	$('#maritalReg').val(maritalcd);
	$('#recidencyReg').val(recidencycd);
	if (recidencycd == "5") {
		$('#recidencyRegOther').show();
		$("#recidencyRegOther1").val($('#recidency').text());
	}
	$('#governorateReg').val(governoratecd);
	
	var myJSONObj = JSON.stringify({ "code": governoratecd });
	if (governoratecd != '') {
		getDistrictVal('Reg', myJSONObj, 'districtReg', districtcd);
	}
}

function clearall() {
	$('#passNotFound').hide();
	$('#manField').hide();
	$('#divColapseBarHistoryold').empty();
	$('#divColapseBarHistoryDiagonsis').empty();
	$('#divColapseBarHistoryLab').empty();
	$('#divColapseBarHistoryRadiology').empty();
	$('#reuploadButton').hide();
	$('#viewDocumentButton').hide();
	$('#reuploadButton1').hide();
	$('#viewDocumentButton1').hide();
	setcivilIDlabel();
	$('#saveNotify').removeAttr("disabled");
	var labtest = {};
	var radtest = {};
	labtestdata = [];
	radtestData = [];
	historyold = '';
	$('#notifyIDShow').hide();
	$("#notifycat option[value='1']").attr("disabled", false);
	$('#ppdupdate').hide();
	$('#dbError').hide();
	$('#dataUnavailable').hide();
	$('#saveNoti').show();
	$('#updateNoti').hide();
	$("#addLabTest1").find("tr:gt(0)").remove();
	$('#medicalhistory tr th:nth-child(9),tr td:nth-child(9)').hide();
	$("#icdtableD tr").slice(1).remove();
	$("#icdtablePRC tr").slice(1).remove();
	$("#contRadTest").find("tr:gt(0)").remove();
	$("#ppdtestResult").find("tr:gt(0)").remove();
	$("#medicalhistory").find("tr:gt(0)").remove();
	$("#diseasetablehos").find("tr:gt(0)").remove();
	$('#approvalSec').hide();
	$('#notifyID').text('');
	$('#hideppd2').hide();
	$('#notifyCreate').hide();
	$('#notifyUpdate').hide();
	$('#downlodcivil').hide();
	$('#downlodpass').hide();
	$('#fileUploadSuccess').hide();
	$('#fileUploadError').hide();
	clearDetailsBasic();
	clearDetailsCivil();
	clearnotifydata();
	labtest.length = 0;
	radtest.length = 0;

}
function clearnotifydata() {
	countRad = 0;
	count = 0;
	base64StringCivil = '';
	base64StringPass = '';
	$('#labICDDeletesuccess').hide()
	$('#notifycat').val('');
	$('#hospCat').val('');
	$('#hospName').val('');
	$('#fileNo').val('');
	$('#diagnosisMain').val('');
	$('#subdiagnosisMain').val('');
	$('#phyName').val('');
	$('#phyNo').val('');
	$('#patPhone').val('');
	$('#patPosition').val('');
	$('#action').val('');
	$('#pcrdateref').val('');
	$('#isolateddateref').val('');
	$('#fileNoPRC').val('');
	$('#addmitedDate').val('');
	$('#daignosisHos').val('');
	$('#subdiagnosisHos').val('');
	$('#treatStartdate').val('');
	$('#medResistance').val('');
	$('#treatCat').val('');
	$('#referralDate').val('');
	$('#patPositionPRC').val('');
	$('#riskFactorPRC').val('');
	$('#disDate').val('');
	$('#startDoseDate').val('');
	$('#enddosesDate').val('');
	$('#treatOutcome').val('');
	$('#nextapp').val('');
	$('#assignees').val('');
	$('#inspectorreplace').val('');
	$('#inspectorreplace1').val('');
	$('#inspectorreplace2').val('');
	$('#tbsource').val('');
	$('#phyNamePRC').val('');
	Array.prototype.slice.call(document.querySelectorAll('[id^="phoneId"]'), 1)
		.forEach(elt => elt.parentNode.removeChild(elt))
	$('#patPhone0').val('');
	Array.prototype.slice.call(document.querySelectorAll('[id^="uploadDoc0"]'), 1)
		.forEach(elt => elt.parentNode.removeChild(elt))
	$('#fileCivilId0').val('');
	Array.prototype.slice.call(document.querySelectorAll('[id^="uploadDoc1"]'), 1)
		.forEach(elt => elt.parentNode.removeChild(elt))
	$('#fileCivilId_notif0').val('');

}


function getAlertNotifProfile() {
	let myJSONObj = JSON.stringify({});
	$.ajax({
		type: "POST",
		url: context + "/apiResponse?method=lstmedresitpatients",
		contentType: "application/json",
		headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
		crossDomain: true,
		data: myJSONObj,
		dataType: "json",
		success: function(response) {
			var userDetails = '';
			var slNo = 1;
			var idname = '';
			$("#alertNotifList tr").slice(1).remove();
			$.each(response.details, function(i, item) {
				userDetails += '<tr>';
				userDetails += '<td>' + slNo + '</td>';
				let idDesc = "";
				if (item.idtype == 'G') {
					idDesc = " (GCC) ";
				} else if (item.idtype == 'P') {
					idDesc = " (Passport) "
				} else if (item.idtype == 'U') {
					idDesc = " (Unknown) "
				} else if (item.idtype == 'C') {
					idDesc = " (Civil ID) "
				}
				let idnumber = '';
				idnumber = item.idnumber + idDesc;
				userDetails += '<td>' + idnumber + '</td>';
				userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification(' + item.processid + ')">' + item.nameen + '</a></td> ';
				userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification(' + item.processid + ')">' + item.namear + '</a></td> ';
				userDetails += '<td>' + item.medresist + '</td>';
				if(item.processid != null && item.processid != ""){
				userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification(' + item.processid + ')">' + item.processid + '</a></td>';
	            }
	            else {
					let processid = "";
					userDetails += '<td>' + processid + '</td>';
				}
				userDetails += '</tr>';
				slNo = slNo + 1;
			});
			$('#alertNotifList').DataTable().destroy();
			$('#alertNotifList tbody tr').remove();
			var notificationListTable = $('#alertNotifList').append(userDetails);
			notificationListTable.dataTable({
				autoWidth: false, columns: [{ width: '10%' }, { width: '20%' }, { width: '20%' }, { width: '20%' }, { width: '40%' }, { width: '10%' }]
			});
		},
		error: function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {

			}
		}
	});
}

function getPendingRequest() {
	let myJSONObj = JSON.stringify({});
	$.ajax({
		type: "POST",
		url: context + "/apiResponse?method=lstpendingrequests",
		contentType: "application/json",
		headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
		crossDomain: true,
		data: myJSONObj,
		dataType: "json",
		success: function(response) {
			var userDetails = '';
			var slNo = 1;
			$("#pendingrequestList tr").slice(1).remove();
			$.each(response.details, function(i, item) {
				userDetails += '<tr>';
				userDetails += '<td>' + slNo + '</td>';
				if (item.reqid != null && item.reqid != "") {
					userDetails += '<td>' + item.reqid + '</td> ';
				} else {
					let reqid = '';
					userDetails += '<td>' + reqid + '</td> ';
				}
				let idDesc = "";
				if (item.idtype == 'G') {
					idDesc = " (GCC) ";
				} else if (item.idtype == 'P') {
					idDesc = " (Passport) "
				} else if (item.idtype == 'U') {
					idDesc = " (Unknown) "
				} else if (item.idtype == 'C') {
					idDesc = " (Civil ID) "
				}
				let idnumber = "";
				idnumber = item.idnumber + idDesc;
				if (lang == 'en') {
					userDetails += '<td>' + item.patnameen + '<br><b>' + idnumber + '</td>';
				} else {
					userDetails += '<td>' + item.patnamear + '<br><b>' + idnumber + '</td>';
				}
				if (item.sendernameen != null && item.sendernameen != "") {
					userDetails += '<td>' + item.sendernameen +'</td>';
				} else {
					let sendernameen = '';
					userDetails += '<td>' + sendernameen + '</td> ';

				}
				if (item.notifdate != null && item.notifdate != "") {
					userDetails += '<td>' + item.notifdate + '</td> ';

				} else {
					let notifdate = '';
					userDetails += '<td>' + notifdate + '</td> ';

				}
				if (item.createddate != null && item.createddate != "") {
					userDetails += '<td>' + item.createddate + '</td> ';

				} else {
					let createddate = '';
					userDetails += '<td>' + createddate + '</td> ';

				}
				userDetails += '<td> <img src="img_new/edit1.png" title="process" class="c_point" onclick="editpendingrequest($(this),\'' + item.idnumber + '\')" ></td>';
				userDetails += '<td class="hidden">' + item.patcd + '</td> ';
				userDetails += '<td class="hidden">' + item.id + '</td> ';
				userDetails += '<td class="hidden">' + item.idtype  +'</td> ';
				userDetails += '</tr>';
				slNo = slNo + 1;
			});
			$('#pendingrequestList').DataTable().destroy();
			$('#pendingrequestList tbody tr').remove();
			var pendingrequestList = $('#pendingrequestList').append(userDetails);
			pendingrequestList.dataTable({
				autoWidth: false, columns: [{ width: '0%' }, { width: '10%' }, { width: '30%' }, { width: '30%' }, { width: '15%' }, { width: '20%' }, { width: '10%' }, { width: '0%' }, { width: '0%' }, { width: '0%' }]
			});
		},
		error: function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {

			}
		}
	});
}
function viewUnknowPatient(){
	$('#viewUnknowPatientModal').modal('show');
	getUnknownPatient();
}

function getUnknownPatient(){
		$.ajax({
		type: "GET",
		url: context + "/getlistresponse?method=lstunknownpatients",
		contentType: "application/json",
		headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
		crossDomain: true,
		success: function(response) {
			var userDetails = '';
			var slNo = 1;
			var loc = '';
			$("#tableListUnkown tr").slice(1).remove();
			$.each(JSON.parse(response), function(i, item) {
				if (lang == "en")
					loc = item.locnameen;

				if (lang == "ar")
					loc = item.locnamear;

				if (item.notifid == null) {
					item.notifid = '';
				}
				userDetails += '<tr>';
				userDetails += '<td>' + slNo + '</td>';
				userDetails += '<td>' + item.patidnumber + '</td>';
				userDetails += '<td>' + loc + '</td>';
				userDetails += '<td>' + item.notifid + '</td>';
				userDetails += '</tr>';
				slNo = slNo + 1;
			});
			$('#tableListUnkown').DataTable().destroy();
			$('#tableListUnkown tbody tr').remove();
			var unkownListTable = $('#tableListUnkown').append(userDetails);
			unkownListTable.dataTable({
				autoWidth: false, columns: [{ width: '20%' }, { width: '20%' }, { width: '40%' }, { width: '20%' }]
			});
		},
		error: function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {
			}
		}
	});
}
function getprofiletabdata() {
	$.ajax({
		type: "POST",
		url: context + "/postlistresponse?method=lstlocnotifications",
		contentType: "application/json",
		headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
		crossDomain: true,
		success: function(response) {
			response = JSON.parse(response);
			listNotificationDetails(response);
		},
		error: function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {
			}
		}
	});
	getToken();
}


function listNotificationDetails(response){
		var userDetails = '';
			var slNo = 1;
			var idname = '';
			$("#notificationList tr").slice(1).remove();
			$.each(response, function(i, item) {
				if (item.patient.idtype == 'U') {
					idname = item.patient.idnumber;
				}
				else {
					idname = item.patient.namear;
				}
				userDetails += '<tr>';
				userDetails += '<td>' + slNo + '</td>';
				userDetails += '<td>' + item.notifid + '</td>';
				let idDesc = "";
				if (item.patient.idtype == 'G') {
					idDesc = " (GCC) ";
				} else if (item.patient.idtype == 'P') {
					idDesc = " (Passport) "
				} else if (item.patient.idtype == 'U') {
					idDesc = " (Unknown) "
				} else if (item.patient.idtype == 'C') {
					idDesc = " (Civil ID) "
				}
				let idnumber = '';
				idnumber = item.patient.idnumber + idDesc;
				userDetails += '<td>' + idnumber + '</td>';
				if (item.patient.idtype != 'U') {
					userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification(' + item.notifid + ')">' + idname + '<br/>' + item.patient.nameen + '</a></td> ';
				}
				else {
					userDetails += '<td><a href="javascript:void(0);" title="update" onclick="editNotification(' + item.notifid + ')">' + idname + '</a></td> ';
				}
				if (item.createdlocationname != '') {
					userDetails += '<td>' + item.createdlocationname + '</td> ';
				}
				else {
					let createdlocationname = '';
					userDetails += '<td>' + createdlocationname +'</td> ';
				}
				userDetails += '<td> <img src="img_new/edit1.png" title="update" class="c_point" onclick="editNotification(' + item.notifid + ')"> </td>';
				userDetails += '</tr>';
				slNo = slNo + 1;
			});

			$('#notificationList').DataTable().destroy();
			$('#notificationList tbody tr').remove();
			var notificationListTable = $('#notificationList').append(userDetails);
			notificationListTable.dataTable({
				autoWidth: false, columns: [{ width: '5%' }, { width: '10%' }, { width: '20%' }, { width: '40%' }, { width: '35%' }, { width: '5%' }]
			});
}
 function getPRCDetails(prc){
	        $('#patPositionPRC').val(prc.position);
			$('#medResistance').val(prc.medresistance);
			$('#treatCat').val(prc.treatcategory);
			$('#treatStartdate').val(prc.treatstartdt);
			$('#addmitedDate').val(prc.admitteddt);
			$('#disDate').val(prc.dischargedt);
			$('#startDoseDate').val(prc.dosesstartdt);
			$('#enddosesDate').val(prc.dosesenddt);
			$('#phyNamePRC').val(prc.physicname);
			$('#diagnotes').val(prc.notes);
			$('#fileNoPRC').val(prc.prcfile);
 }
 
 function getDiagnosisDetails(diagnosis){
	 		var subcodeval = '';
			var subcodevalHos = '';
	 		for (var j = 0; j < diagnosis.length; j++) {
			var diagdata = '';
			diagdata = diagnosis[j];
			if ((diagdata.extype).toString() == 'D' && (diagdata.isprc).toString() == 'N') {
				exidMain = diagdata.exid;
				$("#diagnosisMain").val(diagdata.code);
				subcodeval = diagdata.subcode;
				$('#sourceTB').hide();
				var myJSONObj = JSON.stringify({ "type": diagdata.code });
				getSubdiagnosis("Main", myJSONObj, subcodeval)
				if (subcodeval == "12") {
					$('#subdiagnosisother').show();
					$('#subdiagnosisother1').val(diagdata.subOtherCodeName);
				} else {
					$('#subdiagnosisother').hide();
				}
				if (diagdata.code == '1') {
					pulmonarytbcase = true;
					$('#sourceTB').show();
				}
				if (diagdata.code == '2') {
					extrapulmonarytbcase = true;
					$('#sourceTB').show();
				}
				if (diagdata.code == '3') {
					$("#subdiagnosisMain").attr('disabled', true);
				}
			}
			if ((diagdata.extype).toString() == 'D' && (diagdata.isprc).toString() == 'Y') {
				$("#daignosisHos").val(diagdata.code);
				subcodevalHos = diagdata.subcode;
				exidPRC = diagdata.exid;
				var myJSONObj = JSON.stringify({ "type": diagdata.code });
				getSubdiagnosis("Hos", myJSONObj, subcodevalHos)
				if (diagdata.code == '3') {
					$("#subdiagnosisHos").attr('disabled', true);
				}
				if (subcodevalHos == "12") {
					$('#subdiagnosisHosother').show();
					$('#subdiagnosisHosother1').val(diagdata.subOtherCodeName);
				} else {
					$('#subdiagnosisHosother').hide();
				}
			}
		}
 }
 
 function getDiseaseDetails(diseaseIdList){
	 var diseasetablehosData = []
		if (diseaseIdList.length != 0) {
			for (var j = 0; j < diseaseIdList.length; j++) {
				diseasetablehosData.push(diseaseIdList[j]);
			}
			createTableDisease(diseasetablehosData, "hos");
		}
 }


function examinationLabDetails(lab) {
	labtestdata = [];
	labtest = [];
	labtest.length = 0;
	countLab = 0;
    var labdata = '';
	for (var j = 0; j < lab.length; j++) {
			labdata = lab[j];
			let type = labdata.typecode + "," + labdata.code + "," + labdata.exid;
			labtest.push({
				value: labdata.name,
				testId: labdata.code,
				requester: labdata.requester,
				drugSensitive: labdata.drugsensitive,
				resultId: labdata.result,
				requestedBy: labdata.resultenteredby,
				requestedDate: labdata.resultentereddt,
				labRequestedBy: labdata.testRequestedby,
				labRequestedOn: labdata.testrequestedon,
				resultTypeId: labdata.typecode,
				exId: labdata.exid,
				exDate: labdata.exdate,
				reqId:labdata.reqid,
				specimenType:labdata.specimen,
  			    labNo:labdata.exno,
  			    inoculationDate: labdata.inoculationdate
			});
		}
		createTable(labtest, "update");
}

function examinationRadDetails(radiology){
	radtestData = [];
	radtest.length = 0;
	countRad = 0;
	var raddata = '';
	for (var j = 0; j < radiology.length; j++) {
			raddata = radiology[j];
			countRad = 0;
			let type = raddata.code + "," + raddata.exid;
			radtest.push({
				value: raddata.name,
				type: type,
				requester: raddata.requester,
				result: raddata.result,
				abnormalResult: raddata.abnormalResult,
				requestedBy: raddata.resultenteredby,
				requestedDate: raddata.resultentereddt,
				radRequestedBy: raddata.testRequestedby,
				radRequestedOn: raddata.testrequestedon,
				testCode: raddata.code,
				exId: raddata.exid,
				notes: raddata.notes,
				exdate: raddata.exdate,
				abnormalOth: raddata.abnormalOth,
				reqId:raddata.reqid,
				resultname:raddata.resultname
			});
		}
		createTableRad(radtest);
}

function examinationPPDDetails(ppdTest){
	ppdtestdata = [];
	countPD = 0;
	if (ppdTest.length != 0) {
			for (var j = 0; j < ppdTest.length; j++) {
				ppdtestdata.push(ppdTest[j]);
			}
			createTablePPD(ppdtestdata);
		}
}

function examinationMedDetails(medicalHistory){
	radtestData = [];
	medcount = 0;
	var medicalHistoryData = [];
		if (medicalHistory.length != 0) {
			for (var j = 0; j < medicalHistory.length; j++) {
				medicalHistoryData.push(medicalHistory[j]);
			}
			createTableMedicalHistory(medicalHistoryData);
		}
}
function getNotificationDetails(response) {
        // Check if the response is an array or a single object
        if (Array.isArray(response)) {
            // Process the array of objects
            response.forEach(function(item) {
                reqid = item.reqid;
                $('#notifyID').text(notifcd);
                processGetNotification(item);
            });
        } else if (typeof response === 'object') {
            // Process a single object
            processGetNotification(response);
        } else {
            console.error('Unexpected data format');
        }
    }
    
function processGetNotification(id) {
	$("#diseasetablehos").find("tr:gt(0)").remove();
	$("#addLabTest1").find("tr:gt(0)").remove();	
	$("#contRadTest").find("tr:gt(0)").remove();
	$("#ppdtestResult").find("tr:gt(0)").remove();
	$("#medicalhistory").find("tr:gt(0)").remove();
	$('#divColapseBarHistoryold').empty();
	$('#divColapseBarHistoryDiagonsis').empty();
	$('#divColapseBarHistoryLab').empty();
	$('#divColapseBarHistoryRadiology').empty();
	$('#divColapseBarHistoryPPD').empty();
	$('select[name*="assignees"] option').removeAttr('disabled');
	$("#inspectorreplace").prop('disabled', true);
	$("#inspectorreplace1").prop('disabled', true);
	$("#inspectorreplace2").prop('disabled', true);
	$("#field_wrapper3").show();
	$('#edit').show();
	$('#patientHistory').show();
	//$('#notifyID').text(notifcd);
	$("#notifyIDShow").show();
	$("#isolateddate").hide();
	$("#approvalSec").hide();
	$("#pcrdate").hide();
	$("#govhospNameOther").hide();
	$('#viewDocumentButton').show();
	$('#reuploadButton').show();
	$('#viewDocumentButton1').show();
	$('#reuploadButton1').show();
	$("#hospName").attr('disabled', false);
	$("#hospNameP").attr('disabled', false);
	$("#subdiagnosisMain").attr('disabled', false);
	$("#subdiagnosisHos").attr('disabled', false);
	$('#contact-tab1').show();	
	civilbasestring = '';
	base64StringCivil = '';
	base64StringPass = '';	
	BCGTest = "", vaccinationList = "";
	exidPRC = '';
	exidMain = '';
	idVal = ''; Idtype = '';ptcd = ''
	//for (var i = 0; i < data.details.length; i++) {
	   // var id = data.details;
		//getMedicalHistory(id.patcd);
		getMedicalHistoryByVaccination(id.patcd);
		$("#riskFactorPRC").val(id.riskfactor);
		if (id.riskfactor == "17") {
			$('#riskFactorPRCother').show();
			$('#riskFactorPRCother1').val(id.riskfactorOther);
		} else {
			$('#riskFactorPRCother').hide();
		}
		$("#hospCat").val(id.notiflocationtype);
		if (id.notiflocationtype == 'G') {
			$("#gov").show();
			$("#private").hide();
			var myJSONObj = JSON.stringify({ "type": id.notiflocationtype });
			getHospitalName(myJSONObj, id.notifsender);
			if (id.notifsender == "22") {
				$('#govhospNameOther').show();
				$('#hospNameOther').val(id.notifSenderOther);
			}
		}
		if (id.notiflocationtype == 'P') {
			$("#private").show();
			$("#gov").hide();
			$("#hospNameP").val(id.notifsender);
		}
		if (id.notiflocationtype == 'U') {
			$("#private").show();
			$("#gov").hide();
			$("#hospNameP").attr('disabled', true);
		}
		$("#approvalSec").show();
		$("#approvedby").text(id.approvedby);
		$("#approvedbyName").text(id.approvedbyname);
		$("#approvedate").text(id.approveddate);
		$("#action").val(id.action);
		let assigneesArray = [];
		$("#assignees").val(id.assignto);
		assigneesArray.push(id.assignto)
		if (id.allinspector == "1") {
			$("#allinspector").prop("checked", true);
		} else {
			$("#allinspector").prop("checked", false);
		}
		if (id.assignto != null && id.assignto != "") {
			$("#inspectorreplace").prop('disabled', false);
			$("#inspectorreplace1").prop('disabled', false);
			$("#inspectorreplace2").prop('disabled', false);
		}
		if (id.inspectorreplace != "") {
			$("#inspectorreplace").val(id.inspectorreplace);
			$("#inspectorreplace").prop('disabled', false);
			assigneesArray.push(id.inspectorreplace);

		} else {
			$("#inspectorreplace").val(id.inspectorreplace);
		}
		if (id.inspectorreplace1 != "") {
			$("#inspectorreplace1").val(id.inspectorreplace1);
			$("#inspectorreplace1").prop('disabled', false);
			assigneesArray.push(id.inspectorreplace1);
		} else {
			$("#inspectorreplace1").val(id.inspectorreplace1);
		}
		if (id.inspectorreplace2 != "") {
			$("#inspectorreplace2").val(id.inspectorreplace2);
			$("#inspectorreplace2").prop('disabled', false);
			assigneesArray.push(id.inspectorreplace2);
		} else {
			$("#inspectorreplace2").val(id.inspectorreplace2);
		}
		var selectedOptions = $('select[name*="assignees"] option:selected');
		//$('select[name*="assignees"] option').removeAttr('disabled');
		/* $.each(myArray, function(index, value) {
				console.log(index + ": " + value);
		  });
	   */
		$.each(assigneesArray, function(index, value) {
			var value = value;
			if (value !== '') {
				var id = $(this).parent('select[name*="assignees"]').attr('id');
				var options = $('select:not(#' + id + ') option[value=' + value + ']');
				options.attr('disabled', 'true');
			}
		});
		$("#treatOutcome").val(id.outcome);
		$("#patPosition").val(id.position);
		$("#notifycat").val(id.notifcategory);		
		if(id.diseasecd == null){
          $('#locDisease').val("1");
        }
        else {
		  $("#locDisease").val(id.diseasecd);
		}
		$("#phyName").val(id.physicname);
		$("#phyNo").val(id.physicphone);
		$("#fileNo").val(id.fileno);
		$("#fileNoTB").val(id.Notiflocfileno);
		$("#referralDate").val(id.referreddate);
		if ((id.action == '4')) {
			$("#isolateddate").show();
			$("#isolateddt").val(id.isolateddt);
		}
		if ((id.action == '3')) {
			$("#pcrdate").show();
			$("#pcrdateref").val(id.prcreferraldt);
		}
		if (id.pulmonarytbcase != '') {
			$('#tbsource').val(id.pulmonarytbcase);
		}
		else {
			$('#tbsource').val(id.extrapulmonarytbcase);
		}
		getPatientDetails(id.patient);
		if (id.prc != null) {
			getPRCDetails(id.prc);
		}
		base64StringCivil = id.attachment1;
		base64StringPass = id.attachment2;
		$('#estimatedContact').val(id.estimatedContacts);
		$('#receivedContact').val(id.receivedContacts);
		$('#refferredContact').val(id.referredContacts);
		$('#notificationDate').val(id.notifdate);
		if (!(base64StringCivil == null || base64StringCivil.trim() === '')) {
			$('#downlodcivil').show();
		}
		if (!(base64StringPass == null || base64StringPass.trim() === '')) {
			$('#downlodpass').show();
		}
		examinationLabDetails(id.lab);
		examinationRadDetails(id.radiology);
		examinationPPDDetails(id.ppdTest);
		examinationMedDetails(id.medicalHistory);		
		getDiseaseDetails(id.diseaseIdList);
		getDiagnosisDetails(id.diagnosis);
		getRegFiles(id.patcd);
	//}
	$("#home-tab").trigger("click");
	$(".datepicker").datepicker("destroy");
	initialiseDataPicker();
	if (!(idVal == null || idVal == "") && !(Idtype == null || Idtype == "")) {
		pathistory(idVal, Idtype);
		$('#history').show();
	}
	resetTabAccordion();

} 
var nationality_divData = "";
			function  getSearchNationality(){
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
  		   	       	            nationality_divData+="<option value="+response.code+">"+response.nameen+"</option>";
  		   	       	          }else{
  		   	       	         	nationality_divData+="<option value="+response.code+">"+response.namear+"</option>";
  		   	   	       	          }
  		   	       	});
                 },
              error : function(jqXHR, textStatus, errorThrown) {
      				if (jqXHR.status == "401"){
      				    }
      			}
          });
		}
		
$('#contact-tab1').click(function() {
	$('#labTest_1').addClass('active');
	$('#labTest1').addClass('show active');
	$('#radTest1').removeClass('show active');
	$('#ppdTest1').removeClass('show active');
	$('#medHistTest1').removeClass('show active');
});