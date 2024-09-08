function printLab(currentElement,count) {
	let age = '';
	if ($('#dob').text() != '') {
		age = calculateAge($('#dob').text())
	}
	let nationalityval = '';
	if($('#nationality').is("select")){
		nationalityval=$("#nationality option:selected").text() === 'Select' ? '' : $("#nationality option:selected").text();
	}else{
		nationalityval=$('#nationality').text() === 'null' ? '' : $('#nationality').text()
	}
	var specimenType = currentElement.closest("tr").find(".lSpecimenType");
	var labDate = $('#labDate' + count).datepicker('getDate');
	var labDatedt = $.datepicker.formatDate('dd/mm/yy', labDate);
	var jsonObj = {
		"civilId": idVal === 'null' ? '' : idVal,
		"nameEn": $('#nameEn').text() === 'null' ? '' : $('#nameEn').text(),
		"nameAr": $('#nameAr').text() === 'null' ? '' : $('#nameAr').text(),
		"nationality": nationalityval,
		"age": age === 'null' ? '' : age,
		"gender": $('#gender').text() === 'null' ? '' : $('#gender').text(),
		"fileNo": $('#fileNo').val() === 'null' ? '' : $('#fileNo').val(),
		"locHeader": sessionStorage.getItem('locen') === 'null' ? '' : sessionStorage.getItem('locen'),
		"nameHeader": sessionStorage.getItem('nameen') === 'null' ? '' : sessionStorage.getItem('nameen'),
		"diagnosisMain": $("#diagnosisMain option:selected").text() === 'Select' ? '' : $("#diagnosisMain option:selected").text(),
		"subdiagnosisMain": $("#subdiagnosisMain option:selected").text() === 'Select' ? '' : $("#subdiagnosisMain option:selected").text(),
		"subdiagnosisother1": $('#subdiagnosisother1').val() === 'null' ? '' : $('#subdiagnosisother1').val(),
		"labtestName": currentElement.closest("tr").find('td:eq(3)').text() === 'Select' ? '' : currentElement.closest("tr").find('td:eq(3)').text(),
		"specimenType": specimenType.find(":selected").text() === 'Select' ? '' : specimenType.find(":selected").text(),
		"innoDate": $('#lInoculationDate' + count).val() === 'null' ? '' : $('#lInoculationDate' + count).val(),
		"labNo": $('#lLabNo' + count).val() === 'null' ? '' : $('#lLabNo' + count).val(),		"labDate": labDatedt === 'null' ? '' : labDatedt,
	};
	$.ajax({
		type: "POST",
		url: context + "/printSlipReportLab",
		contentType: "application/json",
		data: JSON.stringify(jsonObj),
		crossDomain: true,
		success: function(response) {
			var url = context + "/printReportLab";
			var wOpen;
			var sOptions;
			var popupWindowWidth = 1000;
			var popupWindowheight = 900;
			sOptions = 'status=no,menubar=no,scrollbars=yes,width=100%,height=100%,toolbar=no';
			wOpen = window.open(url, '_blank', sOptions);
			wOpen.focus();
			wOpen.moveTo((screen.availWidth - popupWindowWidth) / 2, (screen.availHeight - popupWindowheight) / 2);
			wOpen.resizeTo(1000, 900);
			wOpen.focus();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		}
	});
}

function printRad(currentElement, count) {
	var age = '';
	if ($('#dob').text() != '') {
		age = calculateAge($('#dob').text())
	}
	var radDate = $('#radDate' + count).datepicker('getDate');
	var radDatedt = $.datepicker.formatDate('dd/mm/yy', radDate);
	var abnormalList = currentElement.closest("tr").find(".abnormalList");
	var radresults = currentElement.closest("tr").find(".radresults");
	var jsonObj = {
		"civilId": idVal === 'null' ? '' : idVal,
		"nameEn": $('#nameEn').text() === 'null' ? '' : $('#nameEn').text(),
		"nameAr": $('#nameAr').text() === 'null' ? '' : $('#nameAr').text(),
		"nationality": $('#nationality').text() === 'null' ? '' : $('#nationality').text(),
		"age": age === 'null' ? '' : age,
		"gender": $('#gender').text() === 'null' ? '' : $('#gender').text(),
		"locHeader": sessionStorage.getItem('locen') === 'null' ? '' : sessionStorage.getItem('locen'),
		"nameHeader": sessionStorage.getItem('nameen') === 'null' ? '' : sessionStorage.getItem('nameen'),
		"radtest": currentElement.closest("tr").find('td:eq(0)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(0)').text(),
		"radtestName": currentElement.closest("tr").find('td:eq(2)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(2)').text(),
		"radNote": $('#notesRad' + count).val() === 'null' ? '' : $('#notesRad' + count).val(),
		"fileNo": $('#fileNo').val() === 'null' ? '' : $('#fileNo').val(),
		"radResult": radresults.find(":selected").text() === 'null' ? '' : radresults.find(":selected").text(),
		"abnormalResult": abnormalList.find(":selected").text() === 'null' ? '' : abnormalList.find(":selected").text(),
		"otherAbnormalResult": $('#otherabnormaldiseasevalue' + count).val() === 'null' ? '' : $('#otherabnormaldiseasevalue' + count).val(),
		"diagnosisMain": $("#diagnosisMain option:selected").text() === 'Select' ? '' : $("#diagnosisMain option:selected").text(),
		"subdiagnosisMain": $("#subdiagnosisMain option:selected").text() === 'Select' ? '' : $("#subdiagnosisMain option:selected").text(),
		"subdiagnosisother1": $('#subdiagnosisother1').val() === 'null' ? '' : $('#subdiagnosisother1').val(),
		"radDate": radDatedt === 'null' ? '' : radDatedt,
	};
	$.ajax({
		type: "POST",
		url: context + "/printSlipReportRad",
		contentType: "application/json",
		data: JSON.stringify(jsonObj),
		crossDomain: true,
		success: function(response) {
			var url = context + "/printReportRad";
			var wOpen;
			var sOptions;
			var popupWindowWidth = 1000;
			var popupWindowheight = 900;
			sOptions = 'status=no,menubar=no,scrollbars=yes,width=100%,height=100%,toolbar=no';
			wOpen = window.open(url, '_blank', sOptions);
			wOpen.focus();
			wOpen.moveTo((screen.availWidth - popupWindowWidth) / 2, (screen.availHeight - popupWindowheight) / 2);
			wOpen.resizeTo(1000, 900);
			wOpen.focus();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		}
	});
}

function printPPD(currentElement, count) {
	var age = '';
	if ($('#dob').text() != '') {
		age = calculateAge($('#dob').text())
	}
	var jsonObj = {
		"bcgTest": BCGTest,
		"vaccinationList": vaccinationList,
		"nameEn": $('#nameEn').text() === 'null' ? '' : $('#nameEn').text(),
		"nameAr": $('#nameAr').text() === 'null' ? '' : $('#nameAr').text(),
		"nationality": $('#nationality').text() === 'null' ? '' : $('#nationality').text(),
		"age": age === 'null' ? '' : age,
		"gender": $('#gender').text() === 'null' ? '' : $('#gender').text(),
		"nameHeader": sessionStorage.getItem('nameen'),
		"ppd1DateOfTest": currentElement.closest("tr").find('td:eq(3)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(3)').text(),
        "ppd2DateOfTest": currentElement.closest("tr").find('td:eq(4)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(4)').text(),
        "ppd1DateOfReading": currentElement.closest("tr").find('td:eq(5)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(5)').text(),
        "ppd2DateOfReading": currentElement.closest("tr").find('td:eq(6)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(6)').text(),
        "ppd1Reading": currentElement.closest("tr").find('td:eq(7)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(7)').text(),
        "ppd2Reading": currentElement.closest("tr").find('td:eq(8)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(8)').text(),
        "ppd1Result": currentElement.closest("tr").find('td:eq(9)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(9)').text(),
        "ppd2Result": currentElement.closest("tr").find('td:eq(10)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(10)').text(),
        "typeOfTest": currentElement.closest("tr").find('td:eq(13)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(13)').text(),
        "reasonOfTest": currentElement.closest("tr").find('td:eq(14)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(14)').text(),
		};
	$.ajax({
		type: "POST",
		url: context + "/printSlipReportPPD",
		contentType: "application/json",
		data: JSON.stringify(jsonObj),
		crossDomain: true,
		success: function(response) {
			var url = context + "/printReportPPD";
			var wOpen;
			var sOptions;
			var popupWindowWidth = 1000;
			var popupWindowheight = 900;
			sOptions = 'status=no,menubar=no,scrollbars=yes,width=100%,height=100%,toolbar=no';
			wOpen = window.open(url, '_blank', sOptions);
			wOpen.focus();
			wOpen.moveTo((screen.availWidth - popupWindowWidth) / 2, (screen.availHeight - popupWindowheight) / 2);
			wOpen.resizeTo(1000, 900);
			wOpen.focus();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		}
	});
}

function printContactReferral(data, result) {
	var age = '';
	if (data.details.IndexPatientInfo.IndexInfo.birthdate != null) {
		age = calculateAge(data.details.IndexPatientInfo.IndexInfo.birthdate)
	}
	var contactAge = '';
	if (data.details.ContactInfo.birthdate != null) {
		contactAge = calculateAge(data.details.ContactInfo.birthdate,)
	}
	var fileNo="";
	let dateOfAdmission ="";
	let doseStartDate = "";
	let treatmentStartDt = "";
	if(data.details.IndexPatientInfo.IndexPRCInfo != null){
		fileNo = data.details.IndexPatientInfo.IndexPRCInfo.prcfile !=null?data.details.IndexPatientInfo.IndexPRCInfo.prcfile:'';
		dateOfAdmission = data.details.IndexPatientInfo.IndexPRCInfo.admitteddt != null ? data.details.IndexPatientInfo.IndexPRCInfo.admitteddt :'';
		doseStartDate = data.details.IndexPatientInfo.IndexPRCInfo.dosesstartdt != null ? data.details.IndexPatientInfo.IndexPRCInfo.dosesstartdt:'';
		treatmentStartDt = data.details.IndexPatientInfo.IndexPRCInfo.treatstartdt != null ? data.details.IndexPatientInfo.IndexPRCInfo.treatstartdt :'';
	}
	var jsonObj = {
		"referralDate": data.details.CReferralInfo.referraldt,
		"fileNo": fileNo,
		"tbcFileNo": "",
		"nameEn": data.details.IndexPatientInfo.IndexInfo.nameen,
		"nameAr": data.details.IndexPatientInfo.IndexInfo.namear,
		"idnumber": data.details.IndexPatientInfo.IndexInfo.idnumber,
		"age": age,
		"gender": data.details.IndexPatientInfo.IndexInfo.gender,
		"sputumTestResult": data.details.IndexPatientInfo.IndexMedicalInfo.sputumsmear,
		"cultureTestResult": data.details.IndexPatientInfo.IndexMedicalInfo.sputumculture,
		"medicalResistanceResult": data.details.IndexPatientInfo.IndexMedicalInfo.medresistance,
		"dateOfadmission": dateOfAdmission,
		"symptomsStartDate": doseStartDate,
		"treatmentStartDate": treatmentStartDt,
		"contactFullNameEn": data.details.CNotificationInfo.contactnameen,
		"contactFullNameAr": data.details.CNotificationInfo.contactnamear,
		"contactIdNumber": data.details.CNotificationInfo.idnumber,
		"contactAge": contactAge,
		"contactGender": data.details.ContactInfo.gender,
		"contactPhone": data.details.ContactInfo.patphone,
		"contactNationalityEn": data.details.ContactInfo.nationalityen,
		"contactNationalityAr": data.details.ContactInfo.nationalityar,
		"contactPlaceOfResidencyEn": data.details.ContactInfo.residencynameen,
		"contactPlaceOfResidencyAr": data.details.ContactInfo.residencynamear,
		"contactresidencyStatusEn": data.details.ContactInfo.residencynameen,
		"contactresidencyStatusAr": data.details.ContactInfo.residencynamear,
		"contactOccupationEn": data.details.ContactInfo.occupationnameen,
		"contactOccupationAr": data.details.ContactInfo.occupationnamear,
		"referringClinicEn": data.details.CReferralInfo.referredbylocnameen,
		"referringClinicAr": data.details.CReferralInfo.referredbylocnamear,
		"relationToIndexCaseEn": result.relationValEn,
		"relationToIndexCaseAr": result.relationValAr,
		"comorbiditiesEn": result.comorboditiesValEn,
		"comorbiditiesAr": result.comorboditiesValAr,
		"riskFactorEn": result.riskFactorValEn,
		"riskFactorAr": result.riskFactorValAr,
		"tstIGRA": "",
		"tstReading": "",
		"chestXprivate String RayResult": "",
		"testDate": "",
		"comment": data.details.CNotificationInfo.comment
	};
	$.ajax({
		type: "POST",
		url: context + "/printSlipReportContactReferral",
		contentType: "application/json",
		data: JSON.stringify(jsonObj),
		crossDomain: true,
		success: function(response) {
			var url = context + "/printReportContactReferral";
			var wOpen;
			var sOptions;
			var popupWindowWidth = 1000;
			var popupWindowheight = 900;
			sOptions = 'status=no,menubar=no,scrollbars=yes,width=100%,height=100%,toolbar=no';
			wOpen = window.open(url, '_blank', sOptions);
			wOpen.focus();
			wOpen.moveTo((screen.availWidth - popupWindowWidth) / 2, (screen.availHeight - popupWindowheight) / 2);
			wOpen.resizeTo(1000, 900);
			wOpen.focus();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		}
	});
}

//calculate age based on birthday
function calculateAge(birthday) {
	var today = new Date();
	var birthDate = new Date(birthday.split("/").reverse().join("-")); // Convert to yyyy-mm-dd format
	var age = today.getFullYear() - birthDate.getFullYear();
	var m = today.getMonth() - birthDate.getMonth();
	if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
		age--;
	}
	return age;
}

function formatReferralDate(date) {
	var tempDate = new Date(date);
	month = '' + (tempDate.getMonth() + 1),
		day = '' + tempDate.getDate(),
		year = tempDate.getFullYear();
	if (month.length < 2)
		month = '0' + month;
	if (day.length < 2)
		day = '0' + day;
	var formattedDate = [day, month, year].join('/');
	return formattedDate;
}

function printIgra(currentElement, count) {
	var age = '';
	if ($('#dob').text() != '') {
		age = calculateAge($('#dob').text())
	}
	let igraExDate = $('#igraexdate' + count).datepicker('getDate');
	let igraDate = $.datepicker.formatDate('dd/mm/yy', igraExDate);
	let exTypeName = currentElement.closest("tr").find('td:eq(8)').text() === 'null' ? '' : currentElement.closest("tr").find('td:eq(8)').text();
	var rst="";
	$('#resultName'+count).each(function () {
	    rst+=$(this).find('option:selected').val();
	});
	console.log(rst);
    var jsonObj = {
		"exTypeName": exTypeName,
		//"exTypeName": igraTestList.find(":selected").text() === 'null' ? '' : igraTestList.find(":selected").text(),
		"igraDate": igraDate,
		"patientType": '1',
		"nameEn": $('#nameEn').text() === 'null' ? '' : $('#nameEn').text(),
		"nationality": $('#nationality').text() == 'null' ? '' : $('#nationality').text(),
		"fileNo": "",
		"Job": "",
		"nameAr": $('#nameAr').text() === 'null' ? '' : $('#nameAr').text(),
		"ppdReading": "",
		"age": age === 'null' ? '' : age,
		"gender": $('#gender').text() === 'null' ? '' : $('#gender').text(),
		"result":rst
};


	$.ajax({
		type: "POST",
		url: context + "/printSlipReportIGRA",
		contentType: "application/json",
		data: JSON.stringify(jsonObj),
		crossDomain: true,
		success: function(response) {
			var url = context + "/printReportIGRA";
			var wOpen;
			var sOptions;
			var popupWindowWidth = 1000;
			var popupWindowheight = 900;
			sOptions = 'status=no,menubar=no,scrollbars=yes,width=100%,height=100%,toolbar=no';
			wOpen = window.open(url, '_blank', sOptions);
			wOpen.focus();
			wOpen.moveTo((screen.availWidth - popupWindowWidth) / 2, (screen.availHeight - popupWindowheight) / 2);
			wOpen.resizeTo(1000, 900);
			wOpen.focus();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		}
	});
}

