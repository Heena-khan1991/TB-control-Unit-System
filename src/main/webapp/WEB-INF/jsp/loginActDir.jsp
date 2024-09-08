<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword" content="PCIS,kuwait">
<title>TB unit</title>
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<!--  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">-->
<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap_${lang}.min.css"
	rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="css/style_${lang}.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<div id="login-page">
		<div class="container">
			<div class=" form-login2">
				<br /> <br />
				<div class="logo">
					<!--<img src="img/MOH_Logo120.png" class="newlogo">-->

					<div class=" imgnew">
						<img src="img/MOH_Logo120.png" class="newlogo">
					</div>

					<span class="logohd"><b>TB Control Unit System <br>
							<span class="headfont">وحدة مكافحة الدرن</span>
					</b></span>
					<!--<img src="img/logo1.png"  class="newlogo" style="border: 1px dotted #388ddf;">-->


					<!--PCIS-Clinic Statistics</h1>-->
				</div>

				<!--	 <br/><br/>-->

				<div class="form-login">
					<div class="login-wrap">
						<!-- <select name="select" class="form-control"><option>Select Location</option></select>-->
						<label class="checkbox"> <!-- <input type="checkbox" value="remember-me"> Remember me-->
							<span class="mb-10 pull-right"> <a> <b>Logout
										Successfully?</b></a></span></label>

						<button class="btn btn-primary btn-block" type="button"
							onClick="validateform()">
							<i class="fa fa-lock"></i> &nbsp;SIGN IN
						</button>
						<hr style="margin-bottom: 10px">


					</div>

				</div>

			</div>
		</div>
	</div>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="lib/app.js" type="text/javascript"></script>
	<!--BACKSTRETCH-->
	<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
	<script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>

	<script type="text/javascript">
    $.backstretch("img/7.jpg", {
      speed: 500
    });
	
    $(document).ready(function(){ 
 	   var lang = '<%=response.getLocale().getLanguage()%>';

			if (lang == 'en') {
				$('#arabic').show();
				$('#english').hide();
			} else {
				$('#arabic').hide();
				$('#english').show();
			}
			$('#arabic').click(function() {
				$(this).hide();
				$('#english').show();
			});
			$('#english').click(function() {
				$(this).hide();
				$('#arabic').show();
			});
		});
	</script>
	<script type="text/javascript">
		var context = "${pageContext.request.contextPath}"
		var language = "${pageContext.response.locale.language}"

		function validateform() {
			window.location.href = context + "/login";
		}// close of form validation
	</script>

</body>

</html>
