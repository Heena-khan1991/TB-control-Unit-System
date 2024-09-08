var tkn = sessionStorage.getItem("tbcid");
function getToken() {

	$.ajax({
		type: "POST",

		url: context + "/postlistresponse?method=gettbtoken",
		contentType: "application/json",
		headers: { "Authorization": "Bearer " + tkn },
		crossDomain: true,
		success: function(datahere) {

			var data = JSON.parse(datahere);
			if (data.code == '1') {
				window.sessionStorage.removeItem('tbcid');
				sessionStorage.setItem("tbcid", data.result);
			}

		},
		error: function(jqXHR, textStatus, errorThrown) {
			logout();

		}
	});

}
	function logout() {
		$.ajax({
			type: "POST",
			crossDomain: true,
			url: context + "/postlistresponse?method=tblogout",
			contentType: "application/json",
			headers: { "Authorization": "Bearer " + tkn },
			success: function(datahere) {
			}
		});
		window.sessionStorage.removeItem('tbcid');
		window.sessionStorage.removeItem("namear");
	    window.sessionStorage.removeItem("nameen");
	    window.sessionStorage.removeItem("locar");
	    window.sessionStorage.removeItem("locen");
	    window.sessionStorage.removeItem("roleen");
	    window.sessionStorage.removeItem("rolear");
	    window.sessionStorage.removeItem("loccode");
	  	window.sessionStorage.removeItem("loctype");
	    window.sessionStorage.removeItem("roletitle");
	    window.sessionStorage.removeItem("rolePrivilege");
		window.location.href = context + "/login";
		//window.location.href = context + "/loginActDir";
	}	