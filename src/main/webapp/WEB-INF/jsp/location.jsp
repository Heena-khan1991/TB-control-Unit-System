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
<meta name="keyword" content="Dashboard">
<title>TB Unit</title>

<!-- Favicons -->
<link href="img_admin/favicon.png" rel="icon">
<link href="img_admin/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="lib_admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="lib_admin/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="css_admin/zabuto_calendar.css">
<!-- <link rel="stylesheet" type="text/css"
	href="lib_admin/gritter/css/jquery.gritter.css" /> -->
<!-- Custom styles for this template -->
<link href="css_admin/style.css" rel="stylesheet">
<link href="css_admin/style-responsive.css" rel="stylesheet">
<link href="css_res_admin/main.css" rel="stylesheet">
<link href="admin/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
	


<!-- <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />  -->


<!--  <script src="lib/chart-master/Chart.js"></script>-->

<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<style>
.vertical-alignment-helper {
	display: table;
	height: 100%;
	width: 100%;
	pointer-events: none;
}

.vertical-align-center {
	/* To center vertically */
	display: table-cell;
	vertical-align: middle;
	pointer-events: none;
}

.modal-content {
	/* Bootstrap sets the size of the modal in the modal-dialog class, we need to inherit it */
	width: inherit;
	max-width: inherit;
	/* For Bootstrap 4 - to avoid the modal window stretching full width */
	height: inherit;
	/* To center horizontally */
	margin: 0 auto;
	pointer-events: all;
}
</style>
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<jsp:include page="adminHeader.jsp"></jsp:include>

		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<jsp:include page="adminSidebar.jsp"></jsp:include>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<!--main content start-->
		<section id="main-content">





			<section class="wrapper ">
				<!--pd_lr0-->

				<nav aria-label="breadcrumb " class="row">

					<ol class="breadcrumb ">
						<li class="breadcrumb-item active" aria-current="page">
							<p id="role"></p>
						</li>
						<li class="breadcrumb-item active pull-right" aria-current="page">
							<p id="loc"></p> <i class="fa fa-user"></i>&nbsp;<span
							id="userName"></span>
						</li>
					</ol>

				</nav>

				<!--CUSTOM CHART START -->
				<!-- <div class="border-head">
              <h3>CREATE NEW USER </h3>
            </div>-->

				<!--custom chart end-->
				<div class="row mt">
					<div class="col-lg-12">
						<!-- SERVER STATUS PANELS -->

						<div class="form-horizontal style-form">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#home" data-toggle="tab"
									id="addLoc"><fmt:message key="label.addlocation" /></a></li>
								<li class=""><a href="#profile" data-toggle="tab"
									id="locList">Location List</a></li>

							</ul>

							<div class="tab-content">
								<div class="tab-pane fade active in" id="home">

									<div class="row">

										<div class="col-md-12 pd_lr10 ">


											<div class="panel panel-default">
												<div class="bg-navy panel-heading">
													<fmt:message key="label.addlocation" />
												</div>
												<div class="panel-body">




													<div id="hid">


														<div class="col-sm-12">

															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="namear" class="col-sm-4 col-form-label"><fmt:message
																			key="label.nameAr" />:</label>
																	<div class="col-sm-10">
																		<input type="text" class="form-control" name="namear"
																			id="namear"
																			placeholder="<fmt:message key="label.nameAr" />"
																			placeholder="Name">

																	</div>
																</div>
															</div>



															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="nameen" class="col-sm-4 col-form-label"><fmt:message
																			key="label.nameEn" />:</label>
																	<div class="col-sm-10">
																		<input type="text" class="form-control" id="nameen"
																			name="nameen"
																			placeholder="<fmt:message key="label.nameEn" />"
																			placeholder="Name">
																	</div>
																</div>
															</div>



														</div>


														<div class="col-sm-12">

															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="loctype"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.locationType" /> :</label>
																	<div class="col-sm-10">

																		<select name="sel" id="loctype" class="form-control">
																		</select> <span id="locationTypeErr"><font color="red"><fmt:message
																					key="label.locationTypeErr" /></font></span>

																	</div>
																</div>
															</div>



															<div class="col-sm-6">
																<div class="form-group no-border">
																	<label for="locsector"
																		class="col-sm-4 col-form-label"><fmt:message
																			key="label.category" /> :</label>
																	<div class="col-sm-10">
																		<select name="sel" id="locsector" class="form-control">
																		</select> <span id="userTypeErr"><font color="red"><fmt:message
																					key="label.categoryErr" /></font></span>
																	</div>
																</div>
															</div>
														</div>


													</div>





												</div>

											</div>
											<!-- end panel-body-->
											<div class="panel-footer text-center">
												<button class="btn btn-success" id="updateLoc"
													onclick="updateloc()" style="display: none;">
													<fmt:message key="label.update" />
												</button>

												<button class="btn btn-success" id="saveLoc"
													onclick="save()">
													<fmt:message key="label.save" />
												</button>
												<button class="btn btn-primary" id="clear"
													onclick="clearlocdata()">
													<fmt:message key="label.clear" />
												</button>
												<span id="locCreate" style="display: none;"><b><font
														color="green"><fmt:message key="label.locCreate" /></font></b></span>
												<span id="failed" style="display: none;"><b><font
														color="red"><fmt:message key="label.techError" /></font></b></span>
												<span id="exist" style="display: none;"><b><font
														color="red"><fmt:message key="label.locexist" /></font></b></span> <span
													id="locUpdate" style="display: none;"><b><font
														color="green"><fmt:message key="label.locUpdate" /></font></b></span>
											</div>
										</div>
									</div>
								</div>


								<!-- /row -->



								<div class="tab-pane fade" id="profile">

									<div class="row mt">
										<div class="col-lg-12">

											<div class="panel panel-default">
												<!--<div class="bg-navy panel-heading">CREATE NEW USER </div>-->
												<div class="panel-body">
													<table class="table table-striped table-bordered no-wrap"
														id="listOflocTable" style="width: 100%">

														<thead>
															<tr>
																<th>Sl.No</th>
																<th hidden="true">Loc ID</th>
																<th>Name EN</th>
																<th>Name AR</th>
																<th>Created By</th>
																<th>Created Date</th>
																<th>Active</th>
																<th>Edit</th>
																<th hidden="true">Sector Type</th>
																<th hidden="true">Location Type</th>
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








					<!-- /row -->
			</section>
			<!--main content end-->
			<!--footer start-->
			<footer class="site-footer">
				<div class="text-center">
					<p>
						&copy; 2021 <strong>Ministry Of Health, Kuwait</strong>. All
						Rights Reserved
					</p>

					<a href="index.html#" class="go-top"> <i class="fa fa-angle-up"></i>
					</a>
				</div>
			</footer>
			<!--footer end-->
		</section>
		<!-- js placed at the end of the document so the pages load faster -->
		<script src="lib/jquery/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
		<script class="include" type="text/javascript"
			src="lib/jquery.dcjqaccordion.2.7.js"></script>
		<!-- <script src="lib/jquery/jquery-3.6.0.js"></script> -->
		<script src="lib/jquery.scrollTo.min.js"></script>
		<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="lib/jquery.sparkline.js"></script>


<!-- 		<script src="admin/datatables/js/jquery.dataTables.min.js"></script> -->
					<script src="admin/datatables/jquery.dataTables.min.js"></script>
				<script src="admin/datatables/dataTables.bootstrap4.min.js"></script>
				
		<!--   <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>   -->

		<!--common script for all pages-->
		<script src="lib/common-scripts.js"></script>
		<!--  <script src="lib/bootbox.min.js"></script> -->
		<!--  <script src="lib/jquery/jquery-2.1.3.js"></script>
	<script src="lib/jquery/jquery-ui.js"></script>   -->







		 <!--  <script language="javascript">
		
		$('#zero_config').DataTable({/*"bLengthChange":     false *//*"dom": 'lrtip',"bFilter" : true,*/
		})
		
		 <!--"dom": '<"top"i>rt<"bottom"flp><"clear">'-->
		
		 <!--</script>-->




		<script type="text/javascript">
  /*   $.backstretch("img/7.jpg", {
      speed: 500
    }); */
	
    $(document).ready(function(){
  	   var lang = '<%=response.getLocale().getLanguage()%>';
 var requestContextPath = '${pageContext.request.contextPath}';
  	   var myDate = new Date();
  	   
  	  $('#locCreate').hide();
        $('#failed').hide();
        $('#exist').hide();
        $('#locationTypeErr').hide();   
        $('#userTypeErr').hide();   
          $('#locUpdate').hide();    
  	   
  	         

 	           
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
  			
  			
  			

  			
  			var myJSONObject =JSON.stringify({"usercd":sessionStorage.getItem('username')});	
   	      $.ajax({
                 type: "POST",
                 url:requestContextPath+"/apiResponse?method=getuserdetails",
  				contentType : "application/json",
  				headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
  				crossDomain : true,
  				data:myJSONObject,	
  				dataType : "json",		
                  success: function (datahere) {			                 
                 	 var response = JSON.parse(JSON.stringify(datahere));	
                    	 if(response.code==1){
                    		$('#userrole').val(sessionStorage.getItem('type'));
                    		$('#userName').append(response.details.usernameen);
                    		
                    	 }
                    	
                  },
               error : function(jqXHR, textStatus, errorThrown) {
  	 				
  	 				if (jqXHR.status == "401"){
  	 					
  	 				   
  	 				    }
  	 			}
           });
  			
  			

   	   $("#locList").click(function() {
   		 $("#locUpdate").hide();
   		getlocList();
		});			
  			
   	      
   	      
   	      
   	   function getlocList(){
   	     $.ajax({
 			type : "GET",
 			url : requestContextPath+"/getlistresponse?method=getlocations",
 			contentType : "application/json",
 			headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
 			crossDomain : true,
 			success : function(response) {
 				
 				 var locDetails = '',activeVal="";	
 				 var slNo =1;
 				$("#listOflocTable tr").slice(1).remove();  
 				$.each(JSON.parse(response), function(i, item) {
 				if (item.active == "Y"
 						&& lang == "en")
 					activeVal = "Active";
 				if (item.active == "N"
 						&& lang == "en")
 					activeVal = "Deactivated";
 				if (item.active == "Y"
 						&& lang == "ar")
 					activeVal = "Active";
 				if (item.active == "N"
 						&& lang == "ar")
 					activeVal = "Deactivated";
 							
 					locDetails += '<tr>';
 					locDetails += '<td>' +slNo + '</td>';
 					locDetails += '<td  hidden="true">' +item.locationcd +'</td>';
 				    locDetails += '<td>' +item.locationnameen   + '</td>';
 					locDetails += '<td>' +item.locationnamear   + '</td>';
 					locDetails += '<td>' +item.createdby   + '</td>';
 					locDetails += '<td>' +item.createddt  + '</td>';
                     locDetails += '<td>' +activeVal + '</td>';
                    locDetails += '<td> <img src="img_new/edit1.png" onclick="editlocation($(this))"> </td>';
                    locDetails += '<td  hidden="true">' +item.sectortype + '</td>';
                    locDetails += '<td  hidden="true">' +item.locTypecode + '</td>';
 					locDetails += '</tr>';
                     slNo =slNo + 1;	
 				});
 				
 				 $('#listOflocTable').DataTable().destroy();
                 
                 $('#listOflocTable tbody tr').remove();
                 var locListTable = $('#listOflocTable').append(locDetails);
                 locListTable.dataTable();
 			},
 			error : function(jqXHR, textStatus, errorThrown) {
 				if (jqXHR.status == "401") {
 				
 				}
 			}
 	 });
   	    
   	   }
   	   
   	     $("#loctype option").remove();
          var value="";
          var select= "<fmt:message key="label.select"/>";
          var div_data="<option value="+value+">"+select+"</option>";
          $(div_data).appendTo('#loctype'); 
   	    
   	    
   	    
   	    
   	    $.ajax({
            type: "GET",
            url:requestContextPath+"/getlistresponse?method=getlocationtypes",
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
 		   	       	           var div_data="<option value="+response.loctypecode+">"+response.loctypeen+"</option>";
 		   	       	          }
 		   	       	          else{
 		   	       	        var div_data="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
 		   	   	       	          }
 	 		                  $(div_data).appendTo('#loctype'); 
 	 		                
 	 		    		  
 	                       });
               	
             },
          error : function(jqXHR, textStatus, errorThrown) {
  				
  				if (jqXHR.status == "401"){
  					
  				   
  				    }
  			}
      });
   	    
   	  var value="";
       var select= "<fmt:message key="label.select"/>";
       var div_data1="<option value="+value+">"+select+"</option>";
       $(div_data1).appendTo('#locsector'); 
 	    
   	    
   	    $.ajax({
            type: "GET",
            url:requestContextPath+"/getlistresponse?method=getlocsector",
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
 	 		                  $(div_data).appendTo('#locsector'); 
 	 		                
 	 		    		  
 	                       });
               	
             },
          error : function(jqXHR, textStatus, errorThrown) {
  				
  				if (jqXHR.status == "401"){
  					
  				   
  				    }
  			}
      });
   	    
   	    
   	    
   	    
   	    
   	  
   	  //$( "#sdatepickerVal" ).datepicker({
   		//  changeMonth: true,
   		//  changeYear: true,
   		//  dateFormat: 'dd/mm/yy',	
   		//  maxDate: 0, 
   		//  showOn : 'both',
   	        // buttonImageOnly : true,
   	        // buttonImage : "img/cal.gif" 
   		//});	
   	    
   	    
   	    
   	    
   	    
   	    
 	 
  			
     });	
	
  </script>
		<script type="text/javascript">
		var context = "${pageContext.request.contextPath}"
		var language = "${pageContext.response.locale.language}"
  
			var context = "${pageContext.request.contextPath}"
				var language = "${pageContext.response.locale.language}"
		  
					
				
					// save 
					function save() {
							
						 
						    var namear = $('#namear').val();
							var nameen = $('#nameen').val();
							var loctype = $('#loctype').val();
							var locsector = $('#locsector').val();
							
							
							
				//after save
							var myJSONObj =JSON.stringify({"nameen": nameen,"namear": namear,
								"type": loctype,"category": locsector});

						if(nameen != null &&  namear != '' && namear!= null && loctype != '0' &&  role != '0' ){
							
							$.ajax({
					               type: "POST",
					               url:context+"/apiResponse?method=addlocation",
					               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
									contentType : "application/json",
									crossDomain : true,
									data:myJSONObj,	
									dataType : "json",		
					               success: function (data) {			                 
					            	   
						                    if(data.code=="1"){
						                    	$('#locCreate').show();        
						                    	   $('#locUpdate').hide();    
						                    	
									               }
						                 
		               
		              
		},
		error : function(jqXHR, textStatus, errorThrown) {
			
			if (jqXHR.status == "401"){
				
			   
			    }
		}
		}); 
						}
						getToken();
					}
					  
				
				
				
				
				
					var code='';
				
				function  editlocation(currentElement){
				 $('#updateLoc').show();			
			     $('#saveLoc').hide();
				code = currentElement.closest("tr").find('td:eq(1)').text();			
				$('#locsector').val(currentElement.closest("tr").find('td:eq(8)').text().trim());			
				$('#namear').val(currentElement.closest("tr").find('td:eq(3)').text());			
				$('#nameen').val(currentElement.closest("tr").find('td:eq(2)').text());
				$('#loctype').val(currentElement.closest("tr").find('td:eq(9)').text().trim());
				$("#addLoc").trigger("click");
				
				
				}		
							
							
							
							
							
							function updateloc() {
							
						 
						    var namear = $('#namear').val();
							var nameen = $('#nameen').val();
							var loctype = $('#loctype').val();
							var locsector = $('#locsector').val();
							
							
							
				//after save
							var myJSONObj =JSON.stringify({"code":code,"nameen": nameen,"namear": namear,
								"type": loctype,"category": locsector});

						if(nameen != null &&  namear != '' && namear!= null && loctype != '0' &&  role != '0' ){
							
							$.ajax({
					               type: "POST",
					               url:context+"/apiResponse?method=updlocation",
					               headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
									contentType : "application/json",
									crossDomain : true,
									data:myJSONObj,	
									dataType : "json",		
					               success: function (data) {			                 
					            	   
						                    if(data.code=="1"){
						                    	$('#locCreate').hide();        
						                    	 $('#locUpdate').show();   
						                    	
									               }
						                 
		               
		              
		},
		error : function(jqXHR, textStatus, errorThrown) {
			
			if (jqXHR.status == "401"){
				
			   
			    }
		}
		}); 
						}
						getToken();
					}
				
				
				
				
				
				
				        function getToken(){
				 
					$.ajax({
				        type: "POST",
				     
				        url:context+"/postlistresponse?method=gettbtoken",
				        contentType : "application/json",
					    headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
					    crossDomain : true,
				        success: function (datahere) {
					      
					    var data = JSON.parse(datahere);
				        if(data.code=='1'){
				        	 window.sessionStorage.removeItem('tbcid');
				        	 sessionStorage.setItem("tbcid", data.result);
					      }
				           
					 },
                     error : function(jqXHR, textStatus, errorThrown) {
                    logout();
                
                }
				      }); 
				 
    	 } 
				
				
				
				
				
				
				
				
				
				
				function logout(){
								$.ajax({
							        type: "POST",
							     
							        url:context+"/postlistresponse?method=tblogout",
							        contentType : "application/json",
								    headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
							        success: function (datahere) {
								      
								    var data = JSON.parse(datahere);
							        if(data.code=='1'){

								      }
							            }
							      });

							         window.sessionStorage.removeItem('tbcid');
							         window.sessionStorage.removeItem('namear');
							         window.sessionStorage.removeItem('nameen');
							         window.sessionStorage.removeItem('locar');
							         window.sessionStorage.removeItem('locen');
							         window.sessionStorage.removeItem('type');
							         window.sessionStorage.removeItem('username');
							      
							 		 var context = "${pageContext.request.contextPath}"
							 	    window.location.href = context+"/login";
							 		//window.location.href = context+"/loginActDir";
							} 	
					
				
			
			
			
			
			
			
			function clearlocdata(){
			
			  $('#namear').val('');
							 $('#nameen').val('');
							 $('#loctype').val('');
							 $('#locsector').val('');
			
				$('#locCreate').hide();        
			   $('#locUpdate').hide(); 
			 $('#saveLoc').show();
			 $('#updateLoc').hide();
			}
			
			
			
			
			
		
		
		
</script>
</body>
</html>