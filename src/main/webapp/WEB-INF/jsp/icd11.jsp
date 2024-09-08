<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="lang" value="${pageContext.response.locale.language}"/>
<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TB Unit</title>
	<link href="img/favicon.png" rel="icon">
    <!-- Custom fonts for this template-->
<!--    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">-->
	
<!--    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"  rel="stylesheet">-->

    <!-- Custom styles for this template-->
<!--		<link href="css/sb-admin-2.css" rel="stylesheet">-->
		<link href="css/icd11windows.css" rel="stylesheet">
		<!--<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
		<link href="css/main.css" rel="stylesheet">
	-->
	<style>
	#page-top{ padding:10px 0;} /*.newm{margin:0 -10px;}*/
	.form-control-feedback{pointer-events: auto !important;   cursor:pointer; }
	</style>
		
</head>



<body id="page-top" >

    <!-- Page Wrapper -->
    <div id="wrapper">

		
		<spring:eval expression="@environment.getProperty('icd.url')" var="icdURL" />
		
		<!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
				
				

		  <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <!--<h1 class="h3 mb-4 text-gray-800">Blank Page</h1>-->
										
					<div class="row">

                        <div class="col-lg-12" style="padding-bottom:1.5em;">	

						<div class="card-body text-center "> <img src="img/icd11.png" /> </div>
         </div>
		 
		 
		 
		 
	 <div class="col-lg-2"> </div>
	<!--<div class="col-lg-4">	-->

						<!--<div class="col-md-8 jumbotron searchdiv">
            <form>
			
               <span class="working hide" id="loading-gif">
                    <img src="../../img/loading.gif">
                </span>
                <input id="searchbox"
                       type="text"
                       placeholder="Type for starting the search"
                       autocomplete="off"
                       class="form-control ctw-input"
                       data-ctw-ino="1"
                       > 
                    <span class="clear" onclick="ECT.Handler.clear('1');">â </span>
                </form>
        </div>-->


			 <div class="col-lg-8" style="padding: 0 30px;"> 
			 <div class="row"><div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title text-info">Search</h3>
  </div>
  <div class="panel-body">
    <div class="form-group  has-feedback ">
 <!-- <label class="control-label" for="inputError2"></label>-->
<!--   <input type="text" class="form-control" id="inputError2" placeholder="Type for starting the search"> -->
  <input name="searchval" type="text"  id="search"  readonly value="${searchval}"  style="visibility: hidden">  
  <input type="text" class="form-control ctw-input" autocomplete="off"	data-ctw-ino="1" placeholder="Type for starting the search">
	<div class="ctw-window" data-ctw-ino="1"></div>
	<input type="text" id="selectedcode" value="" style="display:none"> 
    <input type="text" id="selectedtitle" value="" style="display:none">
  <span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span></div>
  </div>
</div></div>
			 </div>			

<!--</div>-->

<div class="col-lg-2"> </div>	




		 
		 
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->
            
        </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	<!-- End of Content Wrapper -->	
		
 </div>
    <!-- End of Page Wrapper -->


<script src="js/icd11windows.js"></script>
<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>


    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.js"></script>

<script>
	/* var searchvalue="na"; */
	var icdURL  = "${icdURL}";
	
 	var context = "${pageContext.request.contextPath}";
        const mySettings = {
            apiServerUrl: icdURL   
        };
        var searchval = window.location.href.slice(window.location.href.indexOf('?') + 1)
        var hash = [];
        hash=searchval.split('=');
        var search=hash[1];
        var val="new";
        var exid=null;
       // var searchval=$("#search").val();  
        const myCallbacks = {
            selectedEntityFunction: (selectedEntity) => {  
            	
            	
            	document.getElementById('selectedcode').value= selectedEntity.code ; 

            	
            	document.getElementById('selectedtitle').value= selectedEntity.title ; 
            		
                window.opener.ProcessICDTableCreate(selectedEntity.code,selectedEntity.title,search,val,exid); 
            		
        		$("#selectedcode").val('');    
        		$("#selectedtitle").val('');
        		//sessionStorage.setItem("searchval","na");                    
                ECT.Handler.clear("1") ;
                window.close();              
            }
        };
        ECT.Handler.configure(mySettings, myCallbacks);

         function ProcessParentMessage(searchval) {
        	 searchvalue=searchval;
        }
         
        </script>
<script language="javascript">
$(".has-feedback").each(function() {
  
  const $inp = $(this).find("input:text"),
      $cle = $(this).find(".clearable__clear");

  $inp.on("input", function(){
    $cle.toggle(!!this.value);
  });
  
  $cle.on("touchstart click", function(e) {
    e.preventDefault();
    $inp.val("").trigger("input");
  });
  
});
</script>
</body>
</html>
