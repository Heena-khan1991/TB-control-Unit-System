function authPage() {
	 var inputObj = {
        		"locType":sessionStorage.getItem("loctype"),
        		"roleTiitle":sessionStorage.getItem("roletitle"),
        		"rolePrivilege":sessionStorage.getItem("rolePrivilege"),
        		"page":page
        	}
	var myJSONObj = JSON.stringify(inputObj);
	$.ajax({
		type: "POST",
		url: context + "/pageAuthentication",
		contentType: "application/json",
		data: myJSONObj,
		success: function(response) {
			if (response == "False") {
				logout();
			}
		},
		error: function(jqXHR) {
			if (jqXHR.status == "401") {

			}
		}
	});
}

$(document).ready(function(){
	authPage();
	});


	