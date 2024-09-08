
$(document).ready(function() {
	$('#contactOpenPopUp').modal('hide');
	$('#hospCatError').hide();
	$('#patManField1').hide();
	$('#popover1').popover({
		html: true,
		trigger: 'manual',
		content: function() {
			return $('#popover_content_wrapper1').html();
		}
	});
	/*var t = $('#notificationList').DataTable({
		columns: [
			{ "width": "5%" },
			{ "width": "3%" },
			{ "width": "20%" },
			{ "width": "67%" },
			{ "width": "5%" }
		],
	});*/

	$(".datepicker").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy'
	});
	
	$("#referralDate").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	
	$("#notificationDate").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	
	$("#entryDateOther").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	
	$("#entryDateReg").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});	

	$("#PPDTestDate1").datepicker({
		container: '#add_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	$("#PPDTestDate2").datepicker({
		container: '#add_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});

	$("#PPDReadingDate1").datepicker({
		container: '#add_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});


	$("#startDoseDt").datepicker({
		container: '#viewPRCReferredPat',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});

	$("#PPDReadingDate2").datepicker({
		container: '#add_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	$("#updatePPDTestDate1").datepicker({
		container: '#update_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	$("#updatePPDTestDate2").datepicker({
		container: '#update_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	$("#updatePPDReadingDate1").datepicker({
		container: '#update_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	$("#updatePPDReadingDate2").datepicker({
		container: '#update_ppdtest',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});
	$("#medicalExaminationDate").datepicker({
		container: '#add_medicaltreatment',
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2060",
		dateFormat: 'dd/mm/yy',
		maxDate: '+0d'
	});



});
function initialiseDataPicker() {
	$(".datepicker").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "1930:2090",
		dateFormat: 'dd/mm/yy',
	});
}


function clearDetailsBasic() {
	$("#registerOther").removeAttr("disabled");
	$('#nameEn').text('');
	$('#nameAr').text('');
	$('#nationality').text('');
	$('#gender').text('');
	$('#mobile').text('');
	$('#dob').text('');
	$('#bloodgroup').text('');
	$('#entryDate').text('');
	$('#address').text('');
	$('#sponsor').text('');
	$('#occupation').text('');
	$('#worplace').text('');
	$('#marital').text('');
	$('#bloodgroup').text('');
	$('#governorate').text('');
	$('#recidency').text('');
	$('#district').text('');
}
function clearDetailsOtherId() {
	clearPageData();
	$('#manField').hide();
	$('#passportId').val('');
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
	$('#occupationOther1').val('');
	$('#worplaceOther').val('');
	$('#maritalOther').val('');
	$('#districtOther').val('');
	$('#governorateOther').val('');
	$('#recidencyOther').val('');
	$('#residencyOther1').val('');
	$('#patMobile0').val('');
	$('#mobileId1').hide();
	$('#residencyOtherPass').hide();
	$('#occupationOtherPass').hide();
	$('#saveDetailsSuccess').hide();
	$('#passcivil').hide();
	$('#civilpassno').text('');
	Array.prototype.slice.call(document.querySelectorAll('[id^="mobileId"]'), 1)
		.forEach(elt => elt.parentNode.removeChild(elt))
	$('#idTypeP').attr("checked", "checked");
	getToken();
}

function clearDetailsCivil() {
	nationalitycd = '';
	gendercd = '';
	maritalcd = '';
	recidencycd = '';
	governoratecd = '';
	districtcd = '';
	$('#nameRegEn').val('');
	$('#nameRegAr').val('');
	$('#nationalityReg').val('');
	$('#genderReg').val('');
	$('#mobileReg').val('');
	$('#dobReg').val('');
	$('#bloodgroupReg').val('');
	$('#entryDateReg').val('');
	$('#addressReg').val('');
	$('#sponsorReg').val('');
	$('#occupationReg').val('');
	$('#worplaceReg').val('');
	$('#maritalReg').val('');
	$('#governorateReg').val('');
	$('#recidencyReg').val('');
	getToken();
}

$("#profile-tab").click(function() {
	$('#searchByStartDate').val('');
	$('#searchByEndDate').val('');
	$('#searchByDiseaseList').val('');
	$('#searchByStatusList').val('');
	$('input[name="searchOption"]').prop('checked', false);
	$('.searchByDateOptions').hide();
	$('.searchByDiseaseOptions').hide();
	$('.searchByStatusOptions').hide();
	$('.bs-popover-left').removeClass('show');
	$('#history').hide();
	$('#dateError').hide();
	getprofiletabdata();
	$('#notifyUpdate').hide();
});


$("#notif-Alert-tab").click(function() {
	$('#history').hide();
	$('.bs-popover-left').removeClass('show');
	getAlertNotifProfile();
	$('#notifyUpdate').hide();
});
$("#pendingrequest-tab").click(function() {
	$('.bs-popover-left').removeClass('show');
	$('#history').hide();
	$('#notifyUpdate').hide();
	getPendingRequest();
});
function clearppd() {
	$('#updatetypeoftestError').hide();
	clearPPDVal();
}
function clearPPDVal() {
	$('#exampleModalLongTitleAdd').show();
	$('#addppd').show();
	$('#hideppd2').hide();
	$('#ppdupdate').hide();
	$('#updateppdbutton').hide();
	$('#exampleModalLongTitleUpdate').hide();
	$('#updatetypeoftest').val('');
	$('#updatereasonoftest').val('');
	$('#updatePPDTestDate1').val('');
	$('#updatePPDReadingDate1').val('');
	$('#updatePPDTestDate2').val('');
	$('#updatePPDReadingDate2').val('');
	$('#updateppdreading1').val('');
	$('#updateppdreading2').val('');
	$('#updateppdresult1').val('');
	$('#updateppdresult2').val('');
	$('#updateppdnotes1').val('');
	$('#updateppdnotes2').val('');
	$('#ppd1docinterpret').val('');
	$('#ppd2docinterpret').val('');
	$('#updatetypeoftest').prop('disabled', false);
	$('#updatereasonoftest').prop('disabled', false);
}
function clearMedical() {
	$('#medicalResultNameError').hide();
	$('#medicalExaminationTypeError').hide();
	clearMedicalVal();
}
function clearMedicalVal() {
	$('#medicalResult').val('');
	$('#medicalResultName').val('');
	$('#medicalExaminationDate').val('');
	$('#medicalDoctor').val('');
	$('#medicalNote').val('');
	$('#medicalExaminationType').val('');
}

function clearPrcDetails() {
	$('#startDoseDate').val('');
}


function otherIDpop() {
	clearDetailsOtherId();
	$('#registerOther').removeAttr("disabled");
	hidepassDetails();
	$('#genderPass').hide();
	$('#bloodgrpPass').hide();
	$('#registerOther').hide();
	$('#pass').show();
	$('#pass1').hide();
	$('#passcivilOpenNotif').hide();
	$('#nationalityPass').show();
	$('#patAlreadyRegCivilId').hide();
	$('#passcivil').hide();
	$('#passcivilAvailable').hide();
	$('#phoneValidationMsg').hide();
	$('#notifyPass').text('');
	$('#civilpassno').text('');
	document.querySelector('input[name="idType"][value="P"]').checked = true;
	reqid= "";
	notifcd = "";
}

function closepopupOther() {
	$('#exampleModalLongTitle').dialog('close');
}


function clearcheck() {
	$('input[type=checkbox]').each(function() {
		this.checked = false;
	});

}

function clearcheckrad() {
	$('input[type=checkbox]').each(function() {
		this.checked = false;
	});

}


function clearmesgICD() {
	$('#labICDDeletesuccess').hide();
}
function clearmesgLab() {
	$('#labdeletesuccess').hide();
}
function clearmesgRad() {
	$('#raddeletesuccess').hide();
}
function clearmesgDisease() {
	$('#diseasedeletesuccess').hide();
}
function clearmesgMedical() {
	$('#medicaldeletesuccess').hide();
}
function clearmesgPPD() {
	$('#ppddeletesuccess').hide();
}
function clearmesgAssignees() {

}


function senderlocchange() {
	$("#hospNameErrorP").hide();

	if ($("#hospNameP").val() == '' || $("#hospNameP").val() == null) {

		$("#hospNameErrorP").show();
	}
	else {
		$("#hospNameErrorP").hide();
	}

}

$("#notifycat").on('change', function() {
	$('#notifyCatError').hide();
});


$("#hospCat").on('change', function() {
	$('#hospCatError').hide();
});


$("#hospName").on('change', function() {
	$('#hospNameErrorG').hide();
});

$("#hospCat").change(function() {
	var value = this.value;
	$('#hospNameOther').val('');
	$("#hospName").val('');
	$('#hospNameP').val('');
	$('#govhospNameOther').hide();
	if (value == "U") {
		$('#private').show();
		$('#gov').hide();
		$("#hospNameP").attr('disabled', true);
	} if (value == "G") {
		$('#gov').show();
		$('#private').hide();
		$("#hospName").attr('disabled', false);
	}
	if (value == "P") {
		$("#hospNameP").attr('disabled', false);
		$('#gov').hide();
		$('#private').show();
	}
});


$("#action").change(function() {
	var value = this.value;
	$('#pcrdate').hide();
	$('#isolateddate').hide();
	if (value == '3') {
		$('#pcrdate').show();
	}
	if (value == '4') {
		$('#pcrdate').hide();
		$('#isolateddate').show();
	}
});

$(function() {

});


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
	$('#occupationPass').hide();
	$('#entryPass').hide();
	$('#recidencyPass').hide();
	$('#dobPass').hide();
	$('#districtPass').hide();
	$('#field_wrapper1').hide();


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
	$('#occupationPass').show();
	$('#entryPass').show();
	$('#recidencyPass').show();
	$('#dobPass').show();
	$('#districtPass').show();
	$('#field_wrapper1').show();
}
function clearAddMore() {
	xReg = 1;
	yReg = 0;
	xPatPhone = 1;
	yPatPhone = 0;
	xMobileID = 1;
	yMobileID = 0;
	xUploadDoc = 1;
	yUploadDoc = 0;
}


var xReg = 1;
var yReg = 0;
var xPatPhone = 1;
var yPatPhone = 0;
var xMobileID = 1;
var yMobileID = 0;
var xUploadDoc = 1;
var yUploadDoc = 0;
var maxField = 10; //Input fields increment limitation
var addButton = $('.add_button'); //Add button selector
var addButton1 = $('.add_button1');
var addButton2 = $('.add_button2');
var addButton3 = $('.add_button3');
var addButton4 = $('.add_button4');
var addButtonICD = $('.add_buttonICD');
var wrapper = $('#field_wrapper');
var wrapper1 = $('#field_wrapper1');
var wrapper2 = $('#field_wrapper2');
var wrapper3 = $('#field_wrapper3');
var wrapper4 = $('#field_wrapper4');
var wrapperICD = $('#field_wrapperICD');
var wrapperICDPCR = $('#field_wrapperICDPCR');
var add_buttonedit = $('.add_buttonedit');
var edit_field_wrapper = $('#edit_field_wrapper');
//Once add button is clicked
$(add_buttonedit).click(function() {
	//Check maximum number of input fields
	if (xReg < maxField) {
		xReg++; //Increment field counter
		yReg++;
		var fieldHTML = '<div class="form-group row" id=mobilePass' + yReg + ' ><label for="inputPassword" class=" col-sm-5 col-form-label"></label><div class="col-sm-7"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="tel" maxlength="14" class="form-control phone_namereg" name="phoneReg"  id=mobileReg' + yReg + '  value="" onchange="validateMobileReg(' + yReg + ')"/></td><td><a href="javascript:void(0);" class="remove_button_edit" title="Delete"><img src="img_admin/delete.png"/></a></td></tr></table><div style="color: red;" id=mobileRegValidationMsg' + yReg + '></div></div></div>';
		$(edit_field_wrapper).append(fieldHTML); //Add field html
	}
});

//Once remove button is clicked
$(edit_field_wrapper).on('click', '.remove_button_edit', function(e) {
	e.preventDefault();
	$(this).closest("div.row").remove();
	xReg--; //Decrement field counter
});
//Once add button is clicked
$(addButton).click(function() {
	//Check maximum number of input fields
	if (xPatPhone < maxField) {
		xPatPhone++; //Increment field counter
		yPatPhone++;
		var fieldHTML = '<div class="form-group row" id=phoneId' + yPatPhone + ' ><label for="inputPassword" class=" col-sm-5 col-form-label"></label><div class="col-sm-7"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="tel" maxlength="14" class="form-control phone_name" id=patPhone' + yPatPhone + '  value=""  onchange="validatePatPhone(' + yPatPhone + ')"/></td><td><a href="javascript:void(0);" class="remove_button" title="Delete"><img src="img_admin/delete.png"/></a></td></tr></table><div style="color: red;" id=phoneValidationMsg' + yPatPhone + '></div></div></div>';
		$(wrapper).append(fieldHTML); //Add field html
	}
});
//Once remove button is clicked
$(wrapper).on('click', '.remove_button', function(e) {
	e.preventDefault();
	$(this).closest("div.row").remove();
	xPatPhone--; //Decrement field counter
});

//Once add button is clicked
$(addButton1).click(function() {
	//Check maximum number of input fields
	if (xMobileID < maxField) {
		xMobileID++; //Increment field counter
		yMobileID++;
		var fieldHTML = '<div class="form-group row" id=mobileId' + yMobileID + ' ><label for="inputPassword" class=" col-sm-3 col-form-label"></label><div class="col-sm-9"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="tel" maxlength="14" class="form-control patMobile" name ="patMobile" id=patMobile' + yMobileID + '  value="" onchange="validateMobile(' + yMobileID + ')"/></td><td><a href="javascript:void(0);" class="remove_button1" title="delete"><img src="img_admin/delete.png"/></a></td></tr></table><div style="color: red;" id=mobileValidationMsg' + yMobileID + '></div></div></div>';
		$(wrapper1).append(fieldHTML); //Add field html
	}
});
//Once remove button is clicked
$(wrapper1).on('click', '.remove_button1', function(e) {
	e.preventDefault();
	//$(this).parent('div').remove(); //Remove field html
	$(this).closest("div.row").remove();
	xMobileID--; //Decrement field counter
});
//Once add button is clicked
$(addButton2).click(function() {
	//Check maximum number of input fields
	if (xUploadDoc < maxField) {
		xUploadDoc++; //Increment field counter
		yUploadDoc++;
		var fieldHTML = '<div class="form-group row" id=uploadDoc' + yUploadDoc + ' ><label for="inputPassword" class=" col-sm-3 col-form-label"></label><div class="col-sm-9" id=fileId' + yUploadDoc + '><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="file" class="form-control fileUpload_notif" name="fileUpload_notif" id=fileCivilId_notif' + yUploadDoc + '  value=""/><span id=fileError_notif' + yUploadDoc + ' style="color: red;display:none;"><div class="input-group-append"><div id=downlodcivil' + yUploadDoc + ' style="display:none"><img src="img/down.png" onclick="downloadAsPDFCivil()" style="height: 38px;"></div><span id=civilFileUploadError' + yUploadDoc + '  style="display:none"> <b><font color="red"><fmt:message key="label.FileUploadError" /></font></b></span> <span style="display:none;" id=civilFileExtError' + yUploadDoc + '  style="display:none;"> <b><font color="red"><fmt:message key="label.FileExtError" /></font></b></span></td><td><a href="javascript:void(0);" class="remove_button2" title="delete" title="Delete"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>';
		$(wrapper2).append(fieldHTML); //Add field html
	}
});
//Once remove button is clicked
$(wrapper2).on('click', '.remove_button2', function(e) {
	e.preventDefault();
	$(this).closest("div.row").remove();
	xUploadDoc--; //Decrement field counter
});

$(addButton3).click(function() {
	//Check maximum number of input fields
	if (xUploadDoc < maxField) {
		xUploadDoc++; //Increment field counter
		yUploadDoc++;
		var fieldHTML = '<div class="form-group row" id=uploadDoc' + yUploadDoc + ' ><label for="inputPassword" class=" col-sm-3 col-form-label"></label><div class="col-sm-9" id=fileId' + yUploadDoc + '><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="file" class="form-control fileUpload_n" name="fileUpload_n" onchange = "fileUpload_more(' + yUploadDoc + ')" id=fileCivilId' + yUploadDoc + '  value=""/><span id=fileError_n style="color: red;display:none;"><fmt:message key="label.fileError" /></span><div class="input-group-append"><div id=downlodcivil' + yUploadDoc + ' style="display:none"><img src="img/down.png" onclick="downloadAsPDFCivil()" style="height: 38px;"></div><span id=civilFileUploadError' + yUploadDoc + '  style="display:none"> <b><font color="red"><fmt:message key="label.FileUploadError" /></font></b></span> <span style="display:none;" id=civilFileExtError' + yUploadDoc + '  style="display:none;"> <b><font color="red"><fmt:message key="label.FileExtError" /></font></b></span></td><td><a href="javascript:void(0);" class="remove_button3" title="delete" title="Delete"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>';
		$(wrapper3).append(fieldHTML); //Add field html
	}
});

$(wrapper3).on('click', '.remove_button3', function(e) {
	e.preventDefault();
	$(this).closest("div.row").remove();
	xUploadDoc--; //Decrement field counter
});

$(addButton4).click(function() {
	//Check maximum number of input fields
	if (xUploadDoc < maxField) {
		xUploadDoc++; //Increment field counter
		yUploadDoc++;
		var fieldHTML = '<div class="form-group row" id=uploadDoc' + yUploadDoc + ' ><label for="inputPassword" class=" col-sm-3 col-form-label"></label><div class="col-sm-9" id=fileId' + yUploadDoc + '><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="file" class="form-control fileUpload" name="fileupload" id=fileCivilId' + yUploadDoc + '  value=""/><div class="input-group-append"><div id=downlodcivil' + yUploadDoc + ' style="display:none"><img src="img/down.png" onclick="downloadAsPDFCivil()" style="height: 38px;"></div><span id=civilFileUploadError' + yUploadDoc + '  style="display:none"> <b><font color="red"><fmt:message key="label.FileUploadError" /></font></b></span> <span style="display:none;" id=civilFileExtError' + yUploadDoc + '  style="display:none;"> <b><font color="red"><fmt:message key="label.FileExtError" /></font></b></span></td><td><a href="javascript:void(0);" class="remove_button4" title="delete" title="Delete"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>';
		$(wrapper4).append(fieldHTML); //Add field html
	}
});

$(wrapper4).on('click', '.remove_button4', function(e) {
	e.preventDefault();
	$(this).closest("div.row").remove();
	xUploadDoc--; //Decrement field counter
});

$('#spanYear').html(new Date().getFullYear());

function addAssigneesModal() {
	$('#multipleAssignees').val('');
	/*    $('.btnClicked').on('click', function(e) {
		var trigger = $(this),
		clickCount = trigger.data('btnClicked');
		clickCount++;
		trigger.data('btnClicked', clickCount);
		if(clickCount <= 3) {*/
	$('#assigneesModal').modal('show');
	/* }
	 else {
		 alert("you are exceeded limit")
	 }
 });*/
}

$("#igraExamDt").datepicker({
	container: '#igraTestModel',
	changeMonth: true,
	changeYear: true,
	yearRange: "1930:2060",
	dateFormat: 'dd/mm/yy',
	maxDate: '+0d'
});

$('#side_modal').modal({
	backdrop: 'static', // Disables closing the modal when clicking outside of it
	keyboard: false // Disables closing the modal with the keyboard
});


function clearcheckrad() {

	$('input[type=checkbox]').each(function() {
		this.checked = false;
	});

	//$('#saveContReq').hide();
	//$('#radOutMsg').addClass('displayNone');

}

function clearContExamDetails(labObject, radObject, ppdObject) {

	labObject.length = 0;
	radObject.length = 0;
	ppdObject.length = 0;
	console.log("Clear Lab Details");
}


function clearIgra() {
	$('#resultErr1').hide();
	$('#resultErr2').hide();
	$('#resultErr3').hide();
	clearIgraVal();
}

function clearIgraVal() {
	$('#igraResult').val('');
	$('#igraTypeOfTest').val('');
	$('#igraExamDt').val('');
	//$('#igraDoctor').val('');
	$('#igraNote').val('');
}


function clearMsgIgra() {
	$('#igradeletesuccess').hide();
}


function validateMobile(index) {
	// Get and trim phone number input
	let patMobile = $('#patMobile' + index).val();
	let pattern = /^\+?\(?([0-9]*)([)\s.-]+)*([0-9]*)([\s.-]+([0-9]*))?$/;
	// Validate phone number and update message
	let isValid = pattern.test(patMobile);
	if(index > 0){
		$('#mobileValidationMsg' + index).show();
		document.getElementById('mobileValidationMsg' + index).textContent = isValid ? '' : 'Please enter a valid phone number.';
	}else {
		$('#patMobileValidationMsg0').show();
		document.getElementById('patMobileValidationMsg0').textContent = isValid ? '' : 'Please enter a valid phone number.';
	}
	// Return validation status
	return isValid;
}

function validateMobileReg(index) {
	// Get and trim phone number input
	let mobileReg = $('#mobileReg' + index).val();
	let pattern = /^\+?\(?([0-9]*)([)\s.-]+)*([0-9]*)([\s.-]+([0-9]*))?$/;
	// Validate phone number and update message
	let isValid = pattern.test(mobileReg);
	if(index > 0){
	$('#mobileRegValidationMsg' + index).show();
	document.getElementById('mobileRegValidationMsg' + index).textContent = isValid ? '' : 'Please enter a valid phone number.';
	}else {
		$('#mobileRegValidationMsg0').show();
		document.getElementById('mobileRegValidationMsg0').textContent = isValid ? '' : 'Please enter a valid phone number.';
	}
	// Return validation status
	return isValid;
}

function validatePatPhone(index) {
	// Get and trim phone number input
	let phoneNumber = $('#patPhone' + index).val();
	let pattern = /^\+?\(?([0-9]*)([)\s.-]+)*([0-9]*)([\s.-]+([0-9]*))?$/;
	// Validate phone number and update message
	let isValid = pattern.test(phoneNumber);
	if(index > 0){
		$('#phoneValidationMsg' + index).show();
		document.getElementById('phoneValidationMsg' + index).textContent = isValid ? '' : 'Please enter a valid phone number.';
	}
	else {
		$('#patPhoneValidationMsg0').show();
		document.getElementById('patPhoneValidationMsg0').textContent = isValid ? '' : 'Please enter a valid phone number.';
	}
	return isValid;
}

function clearUser() {
	$('#validateusername').val(sessionStorage.getItem('username'));
	$('#validatepassword').val('');
	$('#credentialError').hide();
}


var fileType = ""; validImageTypes = ['gif', 'jpeg', 'png', 'pdf']; idTypeForUpload = "";

$("input[name='fileUpload_n").change(function() {
	myfile = $(this).val();
	//alert(myfile);
	fileType = myfile.split('.').pop().toLowerCase();
	if (idTypeForUpload == 'P') {
		//$('#IDName').text('<fmt:message key="passportId"/>:');
		$('#docName').text('<fmt:message key="label.uploadPassportId"/>');
		proctype = "pass";
	}
	if (idTypeForUpload == 'U') {
		//$('#IDName').text('<fmt:message key="unknown"/>:');
		$("#field_wrapper3").hide();
	}
	if (idTypeForUpload == 'G') {
		//$('#IDName').text('<fmt:message key="gccID"/>:');
		$('#docName').text('<fmt:message key="label.uploadGccID"/>');
		proctype = "gcc";
	}
	if (idTypeForUpload == 'C') {
		//$('#IDName').text('<fmt:message key="label.civilid"/>:');
		$('#docName').text('<fmt:message key="label.uploadCivilID"/>');
		proctype = "cid";
	}
});


$("input[name='fileUpload_notif']").change(function() {
	myfile = $(this).val();
	fileType = myfile.split('.').pop().toLowerCase();
	proctype1 = "notif";
	
});

function getLogsForUpdate(myJSONObj, trans_tblid) {
	let maplogs = [];
	$('#' + trans_tblid + ' table').remove();
	$('#' + trans_tblid + ' thead').remove();
	$('#' + trans_tblid).find("tr:gt(0)").remove();
	updatedLogs = '<table id ="' + trans_tblid + '" width="100%" border="0" cellspacing="0" cellpadding="5" class="table table-bordered font-weight-bold font"><thead><tr class="bg-gradient-info"><th>Details</th><th>Changed From</th><th>Changed To</th><th>Changed By</th><th>Changed Date</th></tr>';
	$.ajax({
		type: "POST",
		url: context + "/apiResponse?method=lsttranslogs",
		headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
		contentType: "application/json",
		crossDomain: true,
		async: false,
		data: myJSONObj,
		dataType: "json",
		success: function(datahere) {
			var response = JSON.parse(JSON.stringify(datahere));
			if (response.code == "1") {
				$.each(response.details, function(i, response) {
					updatedLogs += '<tr><td style="color:#4e73df">' + response.fieldname + '</td><td>' + response.currentval + '</td><td>' + response.updatedval
						+ '</td><td>' + response.updatedby + ':' + response.updatedusernameen + '</td><td>' + response.updateddt + '</td></tr>';
				});
			}
			updatedLogs += "</thead></table>";
		},
		error: function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {
				getToken();
			}
		}
	});
	return updatedLogs;
}


