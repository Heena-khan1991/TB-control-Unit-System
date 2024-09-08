function clearUpload() {
		xUploadDoc_n = 1;
		yUploadDoc_n = 0;
		$('.fileUpload_n').val('');
		Array.prototype.slice.call(document.querySelectorAll('[id^="uploadDoc_n"]'), 1)
		.forEach(elt => elt.parentNode.removeChild(elt))
		$('#fileCivilId_n0').val('');
		$('#fileUploadSuccessImageName_n').hide();
	}

	var xUploadDoc_n = 1;
	var yUploadDoc_n = 0;
	var maxField_n = 10; //Input fields increment limitation
	var addButton12 = $('.add_button12');
	var wrapper12 = $('#field_wrapper12');
	$(addButton12).click(function() {
		if (xUploadDoc_n < maxField_n) {
			xUploadDoc_n++; //Increment field counter
			yUploadDoc_n++;
			var fieldHTML = '<div class="form-group row" id=uploadDoc_n' + yUploadDoc_n + ' ><label for="fileCivilId_n" class=" col-sm-3 col-form-label"></label><div class="col-sm-9" id=fileId_n' + yUploadDoc_n + '><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="file" class="form-control fileUpload_n" name="fileupload_n" id=fileCivilId_n' + yUploadDoc_n + '  value=""/><div class="input-group-append"><div id=downlodcivil_n' + yUploadDoc_n + ' style="display:none"><img src="img/down.png" onclick="downloadAsPDFCivil()" style="height: 38px;"></div><span id=civilFileUploadError_n' + yUploadDoc_n + '  style="display:none"> <b><font color="red"><fmt:message key="label.FileUploadError" /></font></b></span> <span style="display:none;" id=civilFileExtError_n' + yUploadDoc_n + '  style="display:none;"> <b><font color="red"><fmt:message key="label.FileExtError" /></font></b></span></td><td><a href="javascript:void(0);" class="remove_button12" title="delete" title="Delete"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>';
			$(wrapper12).append(fieldHTML); //Add field html
		}
	});

	$(wrapper12).on('click', '.remove_button12', function(e) {
		e.preventDefault();
		$(this).closest("div.row").remove();
		xUploadDoc_n--; //Decrement field counter
	});

	
	
	$("input[name='fileUpload_notif']").change(function() {
	myfile = $(this).val();
	fileType = myfile.split('.').pop().toLowerCase();
	proctype1 = "notif";

	});


$("#updateppdbutton").on('click',function(){
		let rowppdID = $('#rowppdid').val();
		$('#validateusername').val(sessionStorage.getItem('username'));
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
		$('#ppdupdate').hide();
		$('#validateUser').modal('show');
		$('#update_ppdtest').modal('hide');
		$('#validatepassword').val('');	
		
	});

function updateWithData(examinationData) {
	var examObj = JSON.parse(examinationData.getAttribute('examData'));
	if(examObj[0].exId != ""){
	$('#validateUser').modal('show');
	$('#validateusername').val(sessionStorage.getItem('username'));
	$('#validatepassword').val('');
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
}

function validateUser(){	
		let usernameUpper =$('#validateusername').val().toUpperCase();
		let password = $('#validatepassword').val(); 
		let p_updateTestObj = [];
			p_updateTestObj.push({
					'exId' : $('#updateExid').val(),
					'reqId' :$('#updateReqId').val(),
					'rowNum' : $('#updateCount').val(),
					'testId':  $('#updateCode').val(),
					'patCd' : $('#updatePatCd').val(),
					'procType':$('#updateTest').val(),
					'isPatient':$('#updatePatient').val(),
					'username':usernameUpper,
					'contId':$('#updateContId').val(),
					'notifId':$('#updateNotifId').val(),
					
		}); 
		 let encodedpwd = btoa(password);
		 let myJSONObject =JSON.stringify({"username":usernameUpper,"password":encodedpwd});
		 if(usernameUpper!= "" &&  password!= ""){
		 $.ajax({
			    type: "POST",
			    url:context+"/apiResponse?method=authenticateuser",
			    headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObject,	
					dataType : "json",		
			        success: function (data) {			                 
			             if(data.code=="1"){
							 updateTestWithAuthentication(JSON.stringify(p_updateTestObj));
			            	 $('#credentialError').hide();
			             }
			             else{
			            	 $('#credentialError').show(); 
			             }
			                },
			          error : function(jqXHR, textStatus, errorThrown) {
			    if (jqXHR.status == "401"){
			     }
			          }
			});
		 }
	 }

function updateTestWithAuthentication(p_updateTestObj) {
	var examObj = JSON.parse(p_updateTestObj);
	if (examObj[0].isPatient == 'Y') {
		updatePatientTest(p_updateTestObj);
	} else {
		updateContactTest(p_updateTestObj);
	}

}

function updatePatientTest (p_updateTestObj ){
	let examObj = JSON.parse(p_updateTestObj);
	let updateCount = examObj[0].rowNum;
	let updateExid = examObj[0].exId; 
	let updateCode = examObj[0].testId; 
	let updatedByUsername = examObj[0].username;
	let ptcd =  examObj[0].patCd;
	let updatedTest = examObj[0].procType;
	let updateReqId = examObj[0].reqId;
	let notifcd = examObj[0].notifId;
	//let updateContId = examObj[0].contId;
	
	
	 if(updatedTest == "ppd"){
	 updatePPDWithAuthentication(p_updateTestObj);
  	}
  	
  	if (updatedTest == "lab") {
			var jsonObj = {
				"reqid": updateReqId,
				"patcd": ptcd,
				"prc": null,
				"notifid": notifcd,
				"patient": {
					"idnumber": '',
					"idtype": '',
					"ptcd": ptcd
				},
				"lab": [
				]
			};
			var labtest = {};
			labtest.code = updateCode;
			labtest.result = $('#tstLabResults' + updateCount).val();
			labtest.requester = $('#requester' + updateCount).val();
			labtest.drugsensitive = $('#drugSensitive' + updateCount).val();
			let labDate = $('#labDate' + updateCount).datepicker('getDate');
			let labDatedt = $.datepicker.formatDate('dd/mm/yy', labDate);
			labtest.exdate = labDatedt;
			labtest.doctorname = '';
			labtest.locationtype = 'E';
			labtest.exid = updateExid;
			labtest.isprc = 'N';
			labtest.resultupdatedby = updatedByUsername;
			labtest.specimen = $('#lSpecimenType' + updateCount).val(); 
			labtest.exno = $('#lLabNo' + updateCount).val() ;
			let innoDate = $('#lInoculationDate' + updateCount).datepicker('getDate');
			let innoDatedt = $.datepicker.formatDate('dd/mm/yy', innoDate);
			labtest.inoculationdate = innoDatedt;
			jsonObj.lab.push(labtest);
			var myJSONObj = JSON.stringify(jsonObj);
			if ((labtest.result != "" && labtest.exdate == "") || (labtest.result == "" && labtest.exdate != "")) {
				$('#validateUser').modal('hide');
				$('#errorModal').modal('show');
				return;
			}
			$.ajax({
				type: "POST",
				url: context + "/apiResponse?method=updatenotiflabtest",
				headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
				contentType: "application/json",
				crossDomain: true,
				data: myJSONObj,
				dataType: "json",
				success: function(data) {
					if (data.code == "1") {
						$('#validateUser').modal('hide');
						$('#updateLabData').modal('show');
					}
				},
				error: function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			});
		}
		if (updatedTest == "rad") {
			var jsonObj = {
				"reqid": updateReqId,
				"patcd": ptcd,
				"prc": null,
				"notifid": notifcd,
				"patient": {
					"idnumber": '',
					"idtype": '',
					"ptcd": ptcd
				},
				"radiology": [
				]
			};
			var radtest = {}
			var self = $(this);
			radtest.code = updateCode;
			radtest.result = $('#radresults' + updateCount).val();
			var selectedRadText = $('#radresults' + updateCount).find('option:selected').text();
			if (selectedRadText == "Abnormal") {
				radtest.abnormalOth = $('#otherabnormaldiseasevalue' + updateCount).val();
				radtest.abnormalResult = $('#abnormallist' + updateCount).val();
			}
			radtest.requester = $('#requesterRad' + updateCount).val();
			radtest.notes = $('#notesRad' + updateCount).val();
			var radDate = $('#radDate' + updateCount).datepicker('getDate');
			var radDatedt = $.datepicker.formatDate('dd/mm/yy', radDate);
			radtest.exdate = radDatedt;
			radtest.doctorname = '';
			radtest.locationtype = 'E';
			radtest.exid = updateExid;
			radtest.isprc = 'N';
			radtest.resultupdatedby = updatedByUsername;
			jsonObj.radiology.push(radtest);
			var myJSONObj = JSON.stringify(jsonObj);
			if ((radtest.result != "" && radtest.exdate == "") || (radtest.result == "" && radtest.exdate != "")) {
				$('#validateUser').modal('hide');
				$('#errorModal').modal('show');
				return;
			}
			$.ajax({
				type: "POST",
				url: context + "/apiResponse?method=updatenotifradiology",
				headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
				contentType: "application/json",
				crossDomain: true,
				data: myJSONObj,
				dataType: "json",
				success: function(data) {
					if (data.code == "1") {
						$('#updateRadData').modal('show');
						$('#validateUser').modal('hide');
					}
				},
				error: function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			});
		}
		if (updatedTest == "medtreat") {
			var jsonObj = []
			var medicalHistorytest = {}
			medicalHistorytest.code = updateReqId;
			medicalHistorytest.patientcd = ptcd;
			medicalHistorytest.extype = $('#extype' + updateCount).val();
			medicalHistorytest.resultname = $('#resultname' + updateCount).val();
			medicalHistorytest.result = $('#result' + updateCount).val();
			medicalHistorytest.notes = $('#notes' + updateCount).val();
			var exdate = $('#exdate' + updateCount).datepicker('getDate');
			var exDatedt = $.datepicker.formatDate('dd/mm/yy', exdate);
			medicalHistorytest.exdate = exDatedt;
			medicalHistorytest.doctorname = $('#doctorname' + updateCount).val();
			medicalHistorytest.exid = updateExid;
			medicalHistorytest.resultupdatedby = updatedByUsername;
			jsonObj.push(medicalHistorytest);
			var myJSONObj = JSON.stringify(jsonObj);
			if (myJSONObj.length != 0) {
				$.ajax({
					type: "POST",
					url: context + "/apiResponse?method=updateNotifMedTreatHist",
					headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
					contentType: "application/json",
					crossDomain: true,
					data: myJSONObj,
					dataType: "json",
					success: function(data) {
						if (data.code == "1") {
							$('#validateUser').modal('hide');
							$('#updateMedicalData').modal('show');
						}
					},
					error: function(jqXHR, textStatus, errorThrown) {
						if (jqXHR.status == "401") {
						}
					}
				});
			}
		}
		
		
		if (updatedTest == "igra") {
				$('#igraOutMsg').hide();
				$('#contSaveMsg').hide();
				var jsonObj = {
					"reqid" : updateReqId,
					"patcd" : patCd,
					"prc" : null,
					"notifid" : '',
					"patient" : {
						"idnumber" : idVal,
						"idtype" : idType,
						"ptcd" : patCd
					},
					"igra" : []
				};

				let igraObj = {};
				igraObj.exid = updateExid;
				igraObj.result = $('#resultName' + updateCount).val();
				igraObj.extype = $('#exTypeName' + updateCount).val();
				let exDate = $('#igraexdate' + updateCount).datepicker('getDate');
				let exDatedt = $.datepicker.formatDate('dd/mm/yy', exDate);
				igraObj.exdate = exDatedt;
				igraObj.locationtype = 'E';
				igraObj.location = sessionStorage.getItem("loccode");
				igraObj.notes = $('#notesIgra' + updateCount).val();
				igraObj.requester = $('#requesterIgra' + updateCount).val();
				igraObj.resultupdatedby = updatedByUsername, jsonObj.igra
						.push(igraObj);
				let myJSONObj = JSON.stringify(jsonObj);
				if ((igraObj.result != null && igraObj.exdate == "")
						|| (igraObj.result == null && igraObj.exdate != "")) {
					$('#errorModal').modal('show');
					$('#validateUser').modal('hide');
					return;
				}
				$.ajax({
					type : "POST",
					url : context + "/apiResponse?method=updatenotifigra",
					headers : {
						"Authorization" : "Bearer " + sessionStorage.getItem('tbcid')
					},
					contentType : "application/json",
					crossDomain : true,
					data : myJSONObj,
					dataType : "json",
					success : function(data) {
						if (data.code == "1") {
							let tempLabObj = data.details.failurelist;
							if(tempLabObj.length > 0){
								$('#validateUser').modal('hide');
								$('#errorLabData').modal('show');
							}else{
							
							$('#validateUser').modal('hide');
							$('#updateIgraData').modal('show');
							$("#hospGovName").attr('disabled', false);
					    	$("#hospNameP").attr('disabled', false);
					    	$("#subdiagnosisMain").attr('disabled', false);
							}
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						if (jqXHR.status == "401") {
						}
					}
				});
			}
}

function updateContactTest(p_updateTestObj){
	let examObj = JSON.parse(p_updateTestObj);
	let updateCount = examObj[0].rowNum;
	let updateExid = examObj[0].exId; 
	let updateCode = examObj[0].testId; 
	let updatedByUsername = examObj[0].username;
	
	let updatedTest = examObj[0].procType;
	//let updateReqId = examObj[0].reqId;
	let updateNotifcd = examObj[0].notifId;
	let updateContId = examObj[0].contId;
	
	if(updatedTest == "ppd"){
			updatePPDWithAuthentication(p_updateTestObj);
		}
	
	if (updatedTest == "lab") {
			var jsonObj = {
				"contactid": updateContId,
				"notifid": updateNotifcd,
				"lab": [
				]
			};
			let labtest = {};
			labtest.exid = updateExid;
			labtest.code = updateCode;
			labtest.result = $('#tstLabResults' + updateCount).val();
			labtest.requester = $('#requester' + updateCount).val();
			labtest.drugsensitive = $('#drugSensitive' + updateCount).val();
			labtest.specimen = $('#lSpecimenType' + updateCount).val(); 
			labtest.exno = $('#lLabNo' + updateCount).val() ;
			let innoDate = $('#lInoculationDate' + updateCount).datepicker('getDate');
			let innoDatedt = $.datepicker.formatDate('dd/mm/yy', innoDate);
			labtest.inoculationdate = innoDatedt;
			let labDate = $('#labDate' + updateCount).datepicker('getDate');
			let labDatedt = $.datepicker.formatDate('dd/mm/yy', labDate);
			labtest.exdate = labDatedt;
			labtest.locationtype = 'E';
			labtest.location = sessionStorage.getItem("loccode");
			labtest.doctorname = '';
			labtest.notes = "";
			labtest.isprc = 'N';
			labtest.resultupdatedby = updatedByUsername;
			jsonObj.lab.push(labtest);
			let myJSONObj = JSON.stringify(jsonObj);
			if ((labtest.result != "" && labtest.exdate == "") || (labtest.result == "" && labtest.exdate != "")) {
				$('#errorModal').modal('show');
				$('#validateUser').modal('hide');
				return;
			}
			$.ajax({
				type: "POST",
				url: context + "/apiResponse?method=updatecontactlab",
				headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
				contentType: "application/json",
				crossDomain: true,
				data: myJSONObj,
				dataType: "json",
				success: function(data) {
					if (data.code == "1") {
						let labTempObj = data.details.failurelist;
						if (labTempObj.length > 0) {
							$('#validateUser').modal('hide');
							$('#errorLabData').modal('show');
						} else {
							$('#validateUser').modal('hide');
							$('#updateLabData').modal('show');
						}

					}
				},
				error: function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			});
		}

		if (updatedTest == "rad") {
			$('#radOutMsg').hide();
			$('#contSaveMsg').hide();
			let jsonObj = {
				"contactid": updateContId,
				"notifid": updateNotifcd,
				"radiology": [
				]
			};
			let updateRadObj = {}
			let self = $(this);
			updateRadObj.exid = updateExid;
			updateRadObj.code = updateCode;
			updateRadObj.result = $('#radresults' + updateCount).val();
			let selectedRadText = $('#radresults' + updateCount).find('option:selected').text();
			if (selectedRadText == "Abnormal") {
				updateRadObj.abnormalOth = $('#otherabnormaldiseasevalue' + updateCount).val();
				updateRadObj.abnormalResult = $('#abnormallist' + updateCount).val();
			}
			updateRadObj.requester = $('#requesterRad' + updateCount).val();
			updateRadObj.notes = $('#notesRad' + updateCount).val();
			var radDate = $('#radDate' + updateCount).datepicker('getDate');
			var radDatedt = $.datepicker.formatDate('dd/mm/yy', radDate);
			updateRadObj.exdate = radDatedt;
			updateRadObj.location = sessionStorage.getItem("loccode");
			updateRadObj.doctorname = '';
			updateRadObj.locationtype = 'E';
			updateRadObj.isprc = 'N';
			updateRadObj.resultupdatedby = updatedByUsername;
			jsonObj.radiology.push(updateRadObj);
			let myJSONObj = JSON.stringify(jsonObj);
			if ((updateRadObj.result != "" && updateRadObj.exdate == "") || (updateRadObj.result == "" && updateRadObj.exdate != "")) {
				$('#errorModal').modal('show');
				$('#validateUser').modal('hide');
				return;
			}

			$.ajax({
				type: "POST",
				url: context + "/apiResponse?method=updatecontactradiology",
				headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
				contentType: "application/json",
				crossDomain: true,
				data: myJSONObj,
				dataType: "json",
				success: function(data) {
					let radTempObj = data.details.failurelist;
					if (radTempObj.length > 0) {
						$('#validateUser').modal('hide');
						$('#errorLabData').modal('show');
					} else {
						$('#validateUser').modal('hide');
						$('#updateRadData').modal('show');
					}
				},
				error: function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			});
		}

		if (updatedTest == "igra") {
			$('#igraOutMsg').hide();
			$('#contSaveMsg').hide();
			let jsonObj = {
				"contactid": updateContId,
				"notifid": updateNotifcd,
				"igra": [
				]
			};
			let igraObj = {};
			igraObj.exid = updateExid;
			igraObj.result = $('#resultName' + updateCount).val();
			igraObj.extype = $('#exTypeName' + updateCount).val();
			let exDate = $('#igraexdate' + updateCount).datepicker('getDate');
			let exDatedt = $.datepicker.formatDate('dd/mm/yy', exDate);
			igraObj.exdate = exDatedt;
			igraObj.locationtype = 'E';
			igraObj.location = sessionStorage.getItem("loccode");
			igraObj.notes = $('#notesIgra' + updateCount).val();
			igraObj.requester = $('#requesterIgra' + updateCount).val();
			igraObj.resultupdatedby = updatedByUsername,
				jsonObj.igra.push(igraObj);
			let myJSONObj = JSON.stringify(jsonObj);
			if ((igraObj.result != null && igraObj.exdate == "") || (igraObj.result == null && igraObj.exdate != "")) {
				$('#errorModal').modal('show');
				$('#validateUser').modal('hide');
				return;
			}
			$.ajax({
				type: "POST",
				url: context + "/apiResponse?method=updatecontactIgra",
				headers: { "Authorization": "Bearer " + sessionStorage.getItem('tbcid') },
				contentType: "application/json",
				crossDomain: true,
				data: myJSONObj,
				dataType: "json",
				success: function(data) {
					if (data.code == "1") {
						$('#validateUser').modal('hide');
						$('#updateIgraData').modal('show');
					}
				},
				error: function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					}
				}
			});
		}
		
			
}	 
function updatePPDWithAuthentication(p_updateTestObj){
	let examObj = JSON.parse(p_updateTestObj);
	let contactId = examObj[0].contId;
	let notifcd =  examObj[0].notifId;
	let updatedByUsername = examObj[0].username;
	let updateExid = examObj[0].exId; 
	let updateCode = examObj[0].testId; 
	let updatePatient = examObj[0].isPatient; 
	let updatedTest = examObj[0].procType;
	let reqid = examObj[0].reqId;
	let ptcd =  examObj[0].patCd;
	
	 $('#ppdOutMsg').hide();
        $('#contSaveMsg').hide();
        var ppdId=$('#ppdid').val();
        if( ($('#updatetypeoftest').val() == '') && ($('#updatereasonoftest').val() == '' && ppdId =='' && ppdId =='null')){
          $('#updatetypeoftestError').show();$('#updatereasonoftestError').show();
        }else{    
          $('#updatetypeoftestError').hide();
          $('#updatereasonoftestError').hide();
          let rowppdID = $('#rowppdid').val();
					
			
			let  ppdId=$('#ppdid').val();
			let testReasonId=  $('#ppdtestResult tbody tr').find( 'td#testReasonIdval'+rowppdID).text();
		   let  testType=   $('#ppdtestResult tbody tr').find( 'td#testTypeval'+rowppdID).text();
		   let  ppd1TestDate= $('#ppdtestResult tbody tr').find( 'td#ppd1TestDateval'+rowppdID).text();
		   let  ppd1ReadingDate= $('#ppdtestResult tbody tr').find( 'td#ppd1ReadingDateval'+rowppdID).text();
		   let  ppd1Reading= $('#ppdtestResult tbody tr').find( 'td#ppd1Readingval'+rowppdID).text();
		   let  ppd1Result=  $('#ppdtestResult tbody tr').find( 'td#ppd1Resultval'+rowppdID).text();
		   let  ppd1Notes=  $('#ppdtestResult tbody tr').find( 'td#ppd1Notesval'+rowppdID).text();
		    let ppd2TestDate=  $('#ppdtestResult tbody tr').find( 'td#ppd2TestDateval'+rowppdID).text();
		   let  ppd2ReadingDate=  $('#ppdtestResult tbody tr').find( 'td#ppd2ReadingDateval'+rowppdID).text();
		   let  ppd2Reading= $('#ppdtestResult tbody tr').find( 'td#ppd2Readingval'+rowppdID).text();
		  let   ppd2Result= $('#ppdtestResult tbody tr').find( 'td#ppd2Resultval'+rowppdID).text();
		  let   ppd2Notes=  $('#ppdtestResult tbody tr').find( 'td#ppd2Notesval'+rowppdID).text();
		  let   ppd1docinterpret= $('#ppdtestResult tbody tr').find( 'td#ppd1docinterpret'+rowppdID).text();
		  let   ppd2docinterpret=  $('#ppdtestResult tbody tr').find( 'td#ppd2docinterpret'+rowppdID).text();
		          
		          if(updatePatient == 'Y'){
					  			if(reqid!= "" && ppdId != "null"){  
			var jsonObj = {  
		  				    "reqid":reqid,
		  					"patcd":ptcd,
		  				    "notifid":notifcd,
		  				     "ppdTest":[
		  					]
		  				  };
			
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
		  			    headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
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
		  			     }}});
		  			     }
				  }
				 
				  if(updatePatient == 'N' && contactId !='' && notifcd != ''){
					          if(ppdId != "null"){  
		          var jsonObj = 
	                 {  
	                  "contactid":contactId,
	                  "notifid":notifcd,
	                  "resultupdatedby":updatedByUsername,
	                  "ppdTest":[]
	                 };
	                 var ppdTest = {
	                 ppdId:ppdId,
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
	                 resultupdatedby:updatedByUsername
	                 }
	                 jsonObj.ppdTest.push(ppdTest);
	                 var myJSONObj =JSON.stringify(jsonObj);
	                 $.ajax({
	                        type: "POST",
	                        url:context+"/apiResponse?method=updatecontactppd",
	                        headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	                                                    contentType : "application/json",
	                                                    crossDomain : true,
	                                                    data:myJSONObj,            
	                                                    dataType : "json",                            
	                            success: function (data) {
	                                   if(data.code=="1"){
	                                	   $('#validateUser').modal('hide');
	   		  	  			            $('#updatePpdData').modal('show');
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
		          
			                
		 }
