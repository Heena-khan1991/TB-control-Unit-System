<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <title>TB Unit</title>
	<link href="img_new/favicon.png" rel="icon">
    <!-- Custom fonts for this template-->
    <link href="admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	


    <!-- Custom styles for this template-->
		<link href="css_pharmacy/sb-admin-2.css" rel="stylesheet">
		<link href="admin/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
		<link href="css_pharmacy/main.css" rel="stylesheet">
       <link rel="stylesheet" href="css_pharmacy/jquery-ui.css">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<style>


   

.toast {
    position: absolute;
    top: 226px;
    right: 45px;
    border: 1px solid rgb(40 143 158);
}
.modal {
	z-index: 9999;
}
.modal .close { color:#fff;opacity:1}
.n_head .close { color:#000 !important;}
</style>
</head>

<body id="page-top" >

    <!-- Page Wrapper -->
    <div id="wrapper">

         <jsp:include page="notificationSidebar.jsp"></jsp:include>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
		
            <!-- Main Content -->
            <div id="content">
							
				<div class="fixed-top">
                <!-- Topbar -->
                  <jsp:include page="notificationHeader.jsp"></jsp:include>
                <!-- End of Topbar -->
	<ol class="breadcrumb bg-primary"><!--bg-navy-->
				<li class="col-sm-4 text-left mt-2" style="color:#fff;" aria-current="page"><p id="locHeader"></p></li>
				<li class="col-sm-4 text-center phar_head"  aria-current="page"><b><fmt:message key="label.TBunit" /></b></li>
				<li class="col-sm-4 text-right newclss mt-2" style="color:#fff;" aria-current="page"><p id="nameHeader"></p></li> <!--text-right-->
	</ol>
</div>

                <!-- Begin Page Content -->
		 <div class="container-fluid">
		 
		 	<div class="row">

                        <div class="col-lg-12">
						
						<div class="card mb-4 border-bottom-secondary"><!--border-bottom-blue-->
                             
                <div class="card-body">
						
						<div class="row mb-2"> 
										
						<div class="col-lg-12 mt-2">
						
						<div class="tab" role="tabpanel">							
									
		<ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item">
				<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" ="tab" aria-controls="home" aria-selected="true">New Notification Request </a>	  </li>
			  <li class="nav-item">
				
			  <a class="nav-link " id="profile-tab" data-toggle="tab" href="#profile" ="tab" aria-controls="profile" aria-selected="false">Notification List</a>  </li>
			  <li class="nav-item">
				<a class="nav-link " id="search-tab" data-toggle="tab" href="#search" role="tab" aria-controls="search" aria-selected="false">Search</a>  </li>
		</ul>
		<div class="tab-content pl-2 pr-2" id="myTabContent">
		  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
		  
			  <div class="row ">
							
					<!-- <div class="col-xl-12  pl-0" > -->
						<div class="col-xl-7 col-md-7 mb-1 ">
                            <div class="card border-left-primary shadow h-100">
                                <div class="card-body pt-2 pb-2">
                                    <div class="row no-gutters align-items-center">
                                      <table width="90%" border="0" cellspacing="0" cellpadding="0" class="">
										  <tr>
											<td><label  class="col-form-label" id="IDName">Civil ID :</label></td>
											<td><input name="civilid" id="civilid" type="text" class="form-control" onchange="getInfo()">

<span id="dataUnavailable"  style="display:none;"><b><font color="red"><fmt:message key="label.unAvailable" /></font></b></span>
<span id="dbError"  style="display:none;"><b><font color="red"><fmt:message key="label.dbfetchError" /></font></b></span>
</td>					

											<td width="5%"></td>
											<td width="30%"><img src="img_new/w2.png"  width="51px"/> 
									<button type="button" class="btn btn-blue  status-badge1"  data-toggle="modal" onclick="otherIDpop()" data-target="#waiting_list">
								Other ID</button></td>
											<td width="15%">
											<button type="button" class="btn btn-danger status-badge1"  onclick="clearPageData()">
								        <fmt:message key="label.clear" /></button>
								       
								        </td>
											
											</td>
											<td width="15%"  id="saveNoti">
											<button type="button" class="btn btn-green" id="saveNotify" onclick="saveRequest()"><fmt:message key="label.save" /> 
			                       </button>
			<span id="notifyCreate"  style="display:none;"><b><font color="green"><fmt:message key="label.notifyCreated" /></font></b></span> 
				</td>
				<td width="15%" id="updateNoti"  style="display:none;">											
			<button type="button" class="btn btn-green" id="updateNotify" onclick="updateNotify()" ><fmt:message key="label.update" />
			</button> 
			<span id="notifyUpdate"  style="display:none;"><b><font color="green"><fmt:message key="label.notifyUpdated" /></font></b></span>
											
											</td>
											</tr>
										</table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="col-xl-3  mb-1 ">
                            <div class="card  bg-gradient-info shadow h-100">
                                <div class="card-body ">
                                    <div class="row no-gutters align-items-center"  >
                                      <table width="55%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  
    <td class="text-white "><b><fmt:message key="label.notifNo" /></b></td>
    <td class="text-white ><b><span class="notifyIDShow" id="notifyID"></span></b></td>
   
  </tr>
</table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
						
						
						<div class="col-lg-5">
						<div class="card shadow border-left-primary">
						
												<div class="card-header  d-flex bg-gradient-light">
													<h6 class="m-0 font-weight-bold text-primary  hdd"><fmt:message key="label.personalInfo" /></h6>
													
													<div class=" text-green  font-weight-bold text-center col-sm-6"></div>
												</div>
												<div class="card-body pt-1 pb-1">
												   
																					
												<table width="100%" border="0" cellspacing="0" cellpadding="5" class="text-dark">
													  <tr>
													   <td colspan="2"><fmt:message key="label.name" /> : 
													      <b><span id="nameEn"></span></b>
													 
														</td>
													
													   <td colspan="2"> 
													    
														 <b><span id="nameAr"></span></b> 
														</td>
													  </tr>
													  <tr>
													    <td colspan="2"><fmt:message key="label.nationality" /> : <b><span id="nationality"></span></b></td>
													    <td colspan="2"><fmt:message key="label.gender" />  : <b><span id="gender"></span></b></td>
										      </tr>
													  <tr>
													    <td colspan="2"><fmt:message key="label.mobile" />: <b><span id="mobile" name="phonenumber"></span> </b></td>
													     <td colspan="2"><fmt:message key="label.dob" />: <b><span id="dob"></span> </b></td>
													    
										      </tr>
										      
													  <tr>
													    <td colspan="2"><fmt:message key="label.bloodgroup" />: <b><span id="bloodgroup"></span> </b></td>
													   <td colspan="2"><fmt:message key="label.address" /> : <b><span id="address"></span> </b></td> 
													    
										      </tr>
											  </table>
											
											
					  <!--start waiting List-->
		  
		  <div class="modal fade" id="waiting_list_1" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document"><!--modal-dialog-centered-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">Edit </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	
	  
	  
	  
	  <div class="card shadow border-bottom-primary">
					            <div class="card-header  d-flex bg-gradient-light ">
													<h6 class="m-0 font-weight-bold text-primary  hdd"> Personal Information</h6>
												</div>
												<div class="card-body pt-2 pb-1">
	  
	   <div class="container">
	  <div class="row"> 
	  
		
		<div class="col-sm-6">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label">ID Number:</label>
							<div class="col-sm-7">
								 <input type="text" class="form-control" id="civilIDReg"  disabled="disabled">
							</div>
						</div>	
       
	   
	   
	   </div>
	   
	   
	   	<div class="col-sm-6">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"> </label>
							<div class="col-sm-7">
								 
							</div>
						</div>	
       
	   
	   
	   </div>
	   
	   
	  <div class="col-sm-6">  						
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.nameEn" /> :</label>
							<div class="col-sm-7">
								 <input type="text" class="form-control" id="nameRegEn"  disabled="disabled">				
							</div>
						</div>	
        
	   
	   </div>
	   
	   
	   
	   	   <div class="col-sm-6">  						
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.nameAr" /> :</label>
							<div class="col-sm-7">
								 <input type="text" class="form-control" id="nameRegAr" disabled="disabled">				
							</div>
						</div>	
        
	   
	   </div>
	   
	   
	   
	  <div class="col-sm-6">  								
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.nationality" /> :</label>
							<div class="col-sm-7">
								<select class="form-control" id="nationalityReg" disabled="disabled">
									 <option value=""><fmt:message key="label.select"/>
								</select>				
							</div>
						</div>	
       
	      
	   </div>
	   
	   
	  
	   
	   
	   
	   	   
	  <div class="col-sm-6">  								
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.governorate" /> :</label>
							<div class="col-sm-7">
								<select class="form-control" id="governorateReg" >
									 <option value=""><fmt:message key="label.select"/>
								</select>				
							</div>
						</div>	
       
	      
	   </div>
	   
	   
	   
	   
	     <div class="col-sm-6">  								
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.district" /> :</label>
							<div class="col-sm-7">
								<select class="form-control" id="districtReg" >
								 <option value=""><fmt:message key="label.select"/>
								</select>				
							</div>
						</div>	
       
	      
	   </div>
	   
	   
	   
	   
	   <div class="col-sm-6">  
					  	
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.gender" />:</label>
							<div class="col-sm-7">
								<select class="form-control" id="genderReg"  disabled="disabled">
								 <option value=""><fmt:message key="label.select"/>
						  <option value="M"><fmt:message key="label.male"/>
						  <option value="F"><fmt:message key="label.female"/>
								</select>				
							</div>
						</div>	
       
	   
	   
	   </div>
	   <div class="col-sm-6">  					  
								
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.dob" /> :</label>
							<div class="col-sm-7">
								 <input type="text" class="form-control datepicker " id="dobReg" disabled="disabled">
							</div>
						</div>	
       
	   
	   
	   </div>
	    <div class="col-sm-6">  
					  			
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.sponsor" /> :</label>
							<div class="col-sm-7">
								<input type="text" class="form-control"  id="sponsorReg" >
							</div>
						</div>	
       
	     
	   </div>
	   <div class="col-sm-6">    							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.address" /> :</label>
							<div class="col-sm-7">
								 <input type="text" class="form-control" id="addressReg" disabled="disabled">				
							</div>
						</div>	
       
	   
	   
	   </div>
	<!--    <div class="col-sm-6">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.mobile" /> :</label>
							<div class="col-sm-7">
						<div class="input-group"  id="mobilePass">
						<input type="text" class="form-control phone_name" id="mobileReg">
							<div class="input-group-append">
							<button class="btn btn-info add_button" type="button"><i class="fas fa-plus"></i> </button>
							 
						  </div>
</div>
								 
							</div>
						</div>	
       
	   
	   
	   </div> -->
	   <div class="col-sm-6">  
					  								
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.marital" /> :</label>
							<div class="col-sm-7">
							
								<select class="form-control" id="maritalReg" >
								 <option value=""><fmt:message key="label.select"/>
								
								</select>
							</div>
						</div>	
       
	   
	   
	   </div>
	  
	   <div class="col-sm-6">  
					  			
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.worplace" />:</label>
							<div class="col-sm-7">
								 <input type="text" class="form-control" id="worplaceReg" >
							</div>
						</div>	
         
	   
	   </div>
	   <div class="col-sm-6">  
					  					
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.occupation" /> :</label>
							<div class="col-sm-7">
							<select class="form-control" id="occupationReg" >
							 <option value=""><fmt:message key="label.select"/>
							</select> 
							</div>
						</div>	
          	   
	   </div> 
	   
	   <div class="col-sm-6">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.entryDate" /> :</label>
							<div class="col-sm-7">
							 <input type="text" class="form-control datepicker" id="entryDateReg" >
							</div>
						</div>	
       
	      
	   </div>
	   
	   <div class="col-sm-6">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.recidency" />  :</label>
							<div class="col-sm-7">
							<select class="form-control" id="recidencyReg" >
							 <option value=""><fmt:message key="label.select"/>
							</select>  	
							</div>
						</div>	
          
	   </div>
	   
	   	    <div class="col-sm-6" id="recidencyRegOther">						
						
						<div class="form-group row">
<!-- 							<label for="inputPassword" class="col-sm-3 col-form-label">Other Recidency :</label>
 -->							<div class="col-sm-9">
									 <input type="text" class="form-control" id="recidencyRegOther1">		
							</div>
						</div>	
	   </div>
	   
	   	   <div class="col-sm-6">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.bloodgroup" />  :</label>
							<div class="col-sm-7">
								 <input type="text" class="form-control" id="bloodgroupReg" disabled="disabled">		
							</div>
						</div>	
          
	   </div>
	   </div>
	  </div>
	 </div>
	  </div>
	 
	    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info"  onclick="regPatientCiviledit()" data-dismiss="modal"><fmt:message key="label.edit"/></button> 
           <span id="patupdateCivilId"  style="display:none;"><b><font color="green"><fmt:message key="label.DetailsUpdate" /></font></b></span> 
           
           	
		 
       
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
						  <div class="col-lg-6">
						  
						  <div class="card shadow border-left-primary">
						<div class="card-header  d-flex bg-gradient-light">
													<h6 class="m-0 font-weight-bold text-primary  hdd"><fmt:message key="label.residencyInfo" /></h6>
																										
												</div>
												<div class="card-body pt-1 pb-1">
						  
						  						<table width="100%" border="0" cellspacing="0" cellpadding="5" class="text-dark">
													  
													  <tr>
														<td width="" colspan="2"><fmt:message key="label.entryDate" /> : <b><span id="entryDate"></span></b></td>
														<td colspan="2"><fmt:message key="label.occupation" />  : <b><span id="occupation"></span></b></td>
														
													  </tr>
													  <tr>
													    <td colspan="2"><fmt:message key="label.sponsor" />  : <b><span id="sponsor"></span></b></td>
													    <td colspan="2"><fmt:message key="label.recidency" />: <b><span id="recidency"></span></b></td>
										      </tr>
													  <tr>
													    <td colspan="2"><fmt:message key="label.marital" />: <b><span id="marital"></span> </b></td>
													    <td colspan="2"><fmt:message key="label.worplace" /> : <b><span id="worplace"></span> </b></td>
										      </tr>
													  <tr>
														<td colspan="2"><fmt:message key="label.governorate" />  : <b><span id="governorate"></span></b></td>
														<td colspan="2"><fmt:message key="label.district" /> : <b><span id="district"></span> </b></td>
														<td>&nbsp;</td>
														<td  width="19%" align="right"><a href="#" id="edit" data-toggle="modal" onclick="populatebasicdata()" 
														data-target="#waiting_list_1" class="font-weight-bold text-green" style="text-decoration:underline" >
														<fmt:message key="label.edit" /></a></td>
													  </tr>
											</table>
						  
										  </div>
						  
						 			 </div>
</div>
						  
<div class="col-xl-12  pl-0 pt-1" >	
					
						<div class="col-xl-7 col-md-7 mb-1 pr-1">
                            <div class="card border-left-primary shadow h-100">
                                <div class="card-body pt-4 pb-2">
								
								
				<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label text-navy"><b><fmt:message key="label.notifytype" /> :</b> <span class="red" style="color: red;">*</span> </label>
							<div class="col-sm-4">
								<select name="sell" id="notifycat" class="form-control">
								 <option selected="selected" value="">Select</option>								
																		
								</select>
						<span id="notifyCatError"  style="display:none;"><b><font color="red"><fmt:message key="label.reqError" /></font></b></span>						
							</div>
							</div>	
								<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label text-navy"><b><fmt:message key="label.disease" /> :</b> </label>
							<div class="col-sm-4">
<!-- 								<select name="sell" id="locDisease" class="form-control"  disabled="disabled"> -->	
								

 <select name="sell" id="locDisease" class="form-control">	
 <option selected="selected" value="">Select</option>								
								</select>					
							</div>	
									</div>				
							</div>
								</div>
								
								</div>
					</div>
						
					
		<div class="col-sm-12">		
					<div class="row mt-2">	
				<div class="col-sm-6">	

 <div id="accordion3"> 
  <div class="card border-bottom-primary">
    <div class="card-header bg-gradient-light" id="headingTwo"><!--border-top-primary-->
      <h5 class="mb-0 panel-title_plus ">
      
		<a class=" btn-link  text-primary" data-toggle="collapse" data-parent="#accordion3" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
         Initial Hospital Notification   </a>      </h5>
    </div>
    <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordion3">
      <div class="card-body">
	  
	 <div class="row"> 
	 
	 <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.hospCat" />:<span class="red" style="color: red;">*</span></label>
							<div class="col-sm-7">
							 <select name="sel" id="hospCat" class="form-control">
						  <option selected="selected" value=""><fmt:message key="label.select"/></option>
							   </select>
							   <span id="hospCatError"  style="display:none;"> <b><font color="red"><fmt:message key="label.reqError" /></font></b></span>														
							</div>
						</div>	
				 </div>
	  <div class="col-sm-6" id="gov">  
					  <div class="form-group row">
					  
							<label for="inputPassword" class="col-sm-5 col-form-label text-right"><fmt:message key="label.hospName" />:<span class="red" style="color: red;">*</span></label>
							<div class="col-sm-7">
								
								<select name="sel" id="hospName" class="form-control">
								  <option selected="selected" value=" "><fmt:message key="label.select"/></option>
							   </select>
							   <span id="hospNameErrorG"  style="display:none;"> <b><font color="red"><fmt:message key="label.reqError" /></font></b></span>		
							   </div>
							   </div>	
							    </div>	
						
							   
					<div class="col-sm-6" id="private">  
					  <div class="form-group row"> 
					  <label for="inputPassword" class="col-sm-5 col-form-label text-right"><fmt:message key="label.hospName" />:<span class="red" style="color: red;">*</span></label> 
					  <div class="col-sm-7"> 
							  
							 <input type="text" class="form-control" id="hospNameP" onchange="senderlocchange()" >
							  <span id="hospNameErrorP"  style="display:none;"> <b><font color="red"><fmt:message key="label.reqError" /></font></b></span>							
							  
							    </div>				
							</div>
						</div>	
          
	  <div class="col-sm-6" id="govhospNameOther">  							
						<div class="form-group row">
<!-- 							<label for="inputPassword" class="col-sm-3 col-form-label">Other Recidency :</label>
 -->							<div class="col-sm-7">
									 <input type="text" class="form-control" id="hospNameOther">		
							</div>
						</div>	
	   </div>
	   
		  <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label "><fmt:message key="label.fileNo" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="fileNo" name="last_name">					
							
										
							</div>
						</div>	
				 </div>
				
	<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.referralDate" />:</label>
							<div class="col-sm-7">
							<input type="text" class="form-control datepicker" id="referralDate" name="last_name">														
							</div>
						</div>	
				 </div>
		<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.diagnosis" />: <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-7">
								<select name="diagnosis1" id="diagnosisMain" class="form-control">
								  <option selected="selected" value=" "><fmt:message key="label.select"/></option>
								 </select>	
								  <span id="diagError"  style="display:none;"> <b><font color="red"><fmt:message key="label.reqError" /></font></b></span>			
							</div>
						</div>	
				 </div>
				
				<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.subdiagnosis" />:</label>
							<div class="col-sm-7">
							<select name="subdiagnosis1" id="subdiagnosisMain" class="form-control">
								 <option value="0" selected><fmt:message key="label.select"/>	
							 </select>
							 <span id="subdiagnosisError"  style="display:none;"> <b><font color="red"><fmt:message key="label.reqError" /></font></b></span>																
							</div>
						</div>	
				 </div>
		
			<div class="col-sm-6" id="subdiagnosisother">
						<div class="form-group row">
<%-- 							<label for="inputPassword" class="col-sm-5 col-form-label text-right"><fmt:message key="label.subdiagnosis" />Other Sub Diagnosis:</label>
 --%>							<div class="col-sm-7">
								<input type="text" class="form-control " id="subdiagnosisother1" name="last_name">		
							</div>
						</div>	
				 </div>
				 
				 <div class="col-sm-6">
								<div class="form-group row">
									<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.phyName" />:</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="phyName" name="hhhh">	
									</div>
								</div>	
						 </div>	
						 <div class="col-sm-6">
								<div class="form-group row">
									<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.phyNo" />:</label>
									<div class="col-sm-7">
										<input type="text" class="form-control " id="phyNo" name="last_name">				
									</div>
								</div>	
						 </div>
						
						 
						  	<div class="col-sm-6">
								<div class="form-group row">
									<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.patPosition" />:</label>
									<div class="col-sm-7">
										<select name="patPosition" id="patPosition" class="form-control">
											 <option value=""><fmt:message key="label.select"/>
										  </select>	
												
							 
									</div>
								</div>	
						 </div>	
						 
<div class="col-sm-6">
								<div class="form-group row">
									<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.action" />:</label>
									<div class="col-sm-7">
									<select name="sel" id="action" class="form-control">
										 <option value=""><fmt:message key="label.select"/>	
										</select>
													
									</div>
								</div>	
						 </div>	
						 
						 <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label "><fmt:message key="label.riskFactor" />:</label>
							<div class="col-sm-7">
								<select id="riskFactorPRC"  class="form-control">
									 <option value=""><fmt:message key="label.select"/></select>
							</div>
						</div>	
				 </div> 
				 
				 
				 <div class="col-sm-6" id="riskFactorPRCother">
						<div class="form-group row">
<%-- 							<label for="inputPassword" class="col-sm-5 col-form-label text-right"><fmt:message key="label.subdiagnosis" />Other Sub Diagnosis:</label>
 --%>							<div class="col-sm-7">
								<input type="text" class="form-control " id="riskFactorPRCother1" name="last_name">		
							</div>
						</div>	
				 </div>
					
						 	 <div class="col-sm-6" id="pcrdate">
								<div class="form-group row">
									<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.pcrdateref" />:</label>
									<div class="col-sm-7">
									<input type="text" class="form-control datepicker" id="pcrdateref">		
									</div>
								</div>	
						 </div>
						 
						 
						   <div class="col-sm-6" id="isolateddate">
								<div class="form-group row">
									<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.isolateddate" />:</label>
									<div class="col-sm-7">
									<input type="text" class="form-control datepicker" id="isolateddateref">		
									</div>
								</div>	
						 </div>
						 
						 <div class="col-sm-6" id="field_wrapper">
								<div class="form-group row" id="phoneId0">
									<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.patPhone" />:</label>
									<div class="col-sm-7">
										<div class="input-group">
						<input type="text" class="form-control phone_name" id="patPhone0" >
							<div class="input-group-append">
							<button class="btn btn-info add_button"  type="button"  ><i class="fas fa-plus"></i> </button>
							 
						  </div>
</div>
</div>	
							</div>	
						 </div>
						 
						 
			<div class="col-xl-12  pl-0 pt-1">
                          
<div class="card-header  d-flex bg-gradient-light">
<h6 class="m-0 font-weight-bold text-primary  hdd">Other Communicable Diseases</h6>
<div class=" text-green  font-weight-bold text-center col-sm-6"></div>
</div>
                                <div class="card-body pt-2 pb-2">
                                   
 <div class="row" id="field_wrapperICD"> 
                        <div class="col-sm-6" >
								<div class="form-group row">
								
									<div class="col-sm-12">
									<!-- <img src="img_new/s.png"  onclick="openICD()"> -->
									<button type="button" class="btn btn-blue  status-badge1" data-toggle="modal"  data-target="#waiting_list_2">
								<i class="fas fa-plus"></i> Diseases</button>
									</div>	
									</div>
									</div>
								<div class="col-sm-6">
								<div class="form-group row">
								</div>	
						 </div>
								<div  class="col-sm-6">
								<div class="form-group row">
								<!-- <table id="icdtableD" class="display table table-bordered" style="width:100%"> -->
								<table id="diseasetablehos"  class="display table table-bordered" style="width:100%">
				        <thead>
					       <tr>               
					<th style="display: none;">Disrow</th>
						
  		
 						<th>Disease Name</th>
						<th>Delete </th>
						<th style="display: none;">rowCount</th>
					<th style="display: none;">Discode</th>	
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
	</div>
  
 </div>
   
  
<div id="accordion4"> 
  <div class="card border-bottom-info mt-2">
																																																																																																																																																																										<div class="card-header bg-gradient-info" id="heading67"><!--border-top-primary-->
      <h5 class="mb-0 panel-title_plus">
      
		<a class=" btn-link collapsed text-white" data-toggle="collapse" data-parent="#accordion4" href="#collapse67" aria-expanded="false" aria-controls="collapse67">
         <fmt:message key="label.prcNotify" />   </a>      </h5>
    </div>
    <div id="collapse67" class="collapse" aria-labelledby="heading67" data-parent="#accordion4">
      <div class="card-body">
	  
	 <div class="row"> 

	    <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label "><fmt:message key="label.fileNo" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="fileNoPRC" name="last_name">					
							
										
							</div>
						</div>	
				 </div>
	  
	  <div class="col-sm-6">  					
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label text-right"><fmt:message key="label.addmitedDate" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control datepicker" id="addmitedDate">							
							</div>
						</div>	
         
	   </div>
	   		
		<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label"><fmt:message key="label.diagnosis" />:</label>
							<div class="col-sm-7">
								<select class="form-control" id="daignosisHos" name="diagnosis">
									 <option value=""><fmt:message key="label.select"/>
								</select>
											
							</div>
						</div>	
				 </div>
				
				<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label text-right"><fmt:message key="label.subdiagnosis" />:</label>
							<div class="col-sm-7">
							<select name="subdiagnosis"  id="subdiagnosisHos" class="form-control">
							
								 <option value="0"><fmt:message key="label.select"/>
							</select>
							
																							
							</div>
						</div>
							
				 </div> 
				 <div class="col-sm-6" id="subdiagnosisHosother">
						<div class="form-group row">
<%-- 							<label for="inputPassword" class="col-sm-5 col-form-label text-right"><fmt:message key="label.subdiagnosis" />Other Sub Diagnosis:</label>
 --%>							<div class="col-sm-7">
								<input type="text" class="form-control " id="subdiagnosisHosother1" name="last_name">		
							</div>
						</div>	
				 </div>
				
				 
				  <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.treatStartdate" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control datepicker" id="treatStartdate" name="ee">		
							</div>
						</div>	
				 </div>
				 
				 
				 
				 <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label text-right"><fmt:message key="label.treatCat" />:</label>
							<div class="col-sm-7">
							 <select name="sel" id="treatCat" class="form-control">
							 	 <option value=""><fmt:message key="label.select"/>
						  </select>		
							</div>
						</div>	
				 </div>
				 
				 
				 
				  <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.startDoseDate" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control datepicker" id="startDoseDate">		
							</div>
						</div>	
				 </div>
				 <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label text-right"><fmt:message key="label.enddosesDate" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control datepicker" id="enddosesDate" name="last_name">		
							</div>
						</div>	
				 </div>
				 
				 
				 
				 
				 
				 
				 <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label "><fmt:message key="label.medResistance" />:</label>
							<div class="col-sm-7">
													
							   <select name="medResistance" id="medResistance" class="form-control">
							   	 <option value=""><fmt:message key="label.select"/>
							   </select>	
										
							</div>
						</div>	
				 </div>
		
		
	
			
				  
				  
				  
				  
				   <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label text-right"><fmt:message key="label.treatOutcome" />:</label>
							<div class="col-sm-7">
								<select name="sel" id="treatOutcome" class="form-control">
									 <option value=""><fmt:message key="label.select"/>
							   </select>	
							</div>
						</div>	
				 </div>
				  
				  
				  
				  
				  <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.patPosition" />:</label>
							<div class="col-sm-7">
									 <select name="patPosition" id="patPositionPRC" class="form-control">
									 	 <option value=""><fmt:message key="label.select"/>
									 </select>	
									
							</div>
						</div>	
				 </div>
				 
				
				 
				 
				 
				 <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-5 col-form-label  text-right"><fmt:message key="label.phyName" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="phyNamePRC" name="phyName">	
										
							</div>
						</div>	
				 </div>
				 
				 
				 
<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label"><fmt:message key="label.disDate" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control datepicker" id="disDate" >		
							</div>
						</div>	
				 </div>
				
				
				<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label  text-right"><fmt:message key="label.comments" />:</label>
							<div class="col-sm-7">
								<textarea id="diagnotes" cols="" rows="" class="form-control"></textarea>		
							</div>
						</div>	
				 </div>
				<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class=" col-sm-5 col-form-label "><fmt:message key="label.nextapp" />:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control datepicker" id="nextapp">		
							</div>
						</div>	
				 </div>		 
				 
				 
				 
	<div class="col-xl-12  pl-0 pt-1">
                          
<div class="card-header  d-flex bg-gradient-light">
<h6 class="m-0 font-weight-bold text-primary  hdd">Other Communicable Diseases</h6>
<div class=" text-green  font-weight-bold text-center col-sm-6"></div>
</div>
                                <div class="card-body pt-2 pb-2">
                                   
 <div class="row" id="field_wrapperICDPCR"> 
                        <div class="col-sm-6" >
								<div class="form-group row">
								
									<div class="col-sm-12">
									<!-- <img src="img_new/s.png"  onclick="openICDPCR()"> -->
									<button type="button" class="btn btn-blue  status-badge1" data-toggle="modal"  data-target="#waiting_list_3">
									<i class="fas fa-plus"></i> Diseases</button>
									</div>	
												
								 </div>
									
								</div>
					<div class="col-sm-6">
								<div class="form-group row">
							
									
								</div>	
						 </div>
					 
					<div class="col-sm-6">
								<div class="form-group row">
								
								<table id="diseasetableprc" class="display table table-bordered" style="width:100%">
				        <thead>
					       <tr>               
						
						
<!-- 						<th >ICD Test Code</th>
 -->
 <th>Disease Name</th>
						<th> Delete</th>
			<th style="display: none;">Discode</th>	
			 <th style="display: none;">Disrow</th>										
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
	
  </div>
  
  
  </div><!--end of PRC-->
  
  <div id="accordion5"> 
  <div class="card border-bottom-info mt-2">
    <div class="card-header bg-gradient-info" id="heading5"><!--border-top-primary-->
      <h5 class="mb-0 panel-title_plus ">
      
		<a class=" btn-link collapsed text-white" data-toggle="collapse" data-parent="#accordion5" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
       TB Control Unit       </a>      </h5>
    </div>
    <div id="collapse5" class="collapse" aria-labelledby="heading5" data-parent="#accordion5">
      <div class="card-body">
	  
	 <div class="row"> 
	  		<div class="col-sm-6">  
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-7 col-form-label">Number of Estimated Contacts:</label>
							<div class="col-sm-5">
								<input type="text" class="form-control " id="estimatedContact" name="last_name">		
							</div>
						</div>	
	   		</div>
	   
		  	<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-7 col-form-label text-right">Number of Received Contacts :</label>
							<div class="col-sm-5">
							<input type="text" class="form-control " id="receivedContact" name="last_name">												
							</div>
						</div>	
			</div>
			
			<div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-7 col-form-label">Number of Refferred Contacts :</label>
							<div class="col-sm-5">
							<input type="text" class="form-control " id="refferredContact" name="last_name">												
							</div>
						</div>	
			</div>
		  
		  <div class="col-sm-6">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-7 col-form-label text-right"><fmt:message key="label.assignees" /> :</label>
							<div class="col-sm-5">
							<select name="assignees" id="assignees"  class="form-control">
								 <option value=""><fmt:message key="label.select"/>
							</select>													
							</div>
						</div>	
				 </div>
				
		 <div class="col-sm-6" id="field_wrapper2">
						<div class="form-group row" id="fileCivil0">
							<label for="inputPassword" class="col-sm-5 col-form-label">Notification upload :</label>
						<div class="col-sm-7"  >
							<div class="input-group">
							
								<input name="fileupload" type="file" class="form-control fileUpload" id="fileCivilId0">	
							<div class="input-group-append">
							<div id="downlodcivil0" style="display:none">
								<img src="img/down.png" onclick="downloadAsPDFCivil()" style="height: 38px;">
							</div>
							<div class="input-group-append">
							<button class="btn btn-info add_button2" type="button"><i class="fas fa-plus"></i> </button>
						 	</div>
						 	<span id="civilFileUploadError0" style="display:none;"> <b><font color="red"><fmt:message key="label.FileUploadError" /></font></b></span>
							<span id="civilFileExtError0"  style="display:none;"> <b><font color="red">
								<fmt:message key="label.FileExtError" /></font></b></span>
							</div>
       		            </div>
						</div>
						</div>	
				 </div>
				 
			 
				<!--  <input type="file" id="fileInput" multiple> -->
				<div class="col-sm-6">
								<div class="form-group row">
								
									<div class="col-sm-12">
									<button id="reuploadButton" class="btn btn-blue  status-badge1">Reupload Files</button> 
									</div>	
									</div>
									</div>

				 <div class="col-sm-6" id="sourceTB">
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-7 col-form-label  text-right"><fmt:message key="label.tbsource" /> :</label>
							<div class="col-sm-5">
								<select name="sel" id="tbsource" class="form-control">
									 <option value=""><fmt:message key="label.select"/>
							   </select>												
							</div>
						</div>	
				 </div>
			</div>
			
	</div>
	
	
	 </div>
	
  </div>
  
  
  </div>

  
  
  </div>
 	
  <div class="col-sm-6">
  	
 <div id="accordion8"> 
  <div class="card border-bottom-primary">
    <div class="card-header bg-gradient-light" id="heading8">
      <h5 class="mb-0 panel-title_plus ">
      
		<a class=" btn-link  text-primary" data-toggle="collapse" data-parent="#accordion8" href="#collapse8" aria-expanded="true" aria-controls="collapse8">
      Lab Test      </a>      </h5>
    </div>
    <div id="collapse8" class="collapse show" aria-labelledby="heading8" data-parent="#accordion8">
      <div class="card-body">
	  
	 <div class="row">
	 
	 <div class="col-sm-12">
		
		<div class="text-right">
		<a href="#" class="btn btn-info" data-toggle="modal" data-target="#adddrug_m">
									
										<i class="fas fa-plus"></i>
									
									<span class="text"><fmt:message key="add" /></span>
		</a>
		
	
		</div>
	
	
	
	<div class="modal fade" id="deleteICDTest" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.deleteICDTest" /></h5>
        <button type="button" class="close"  data-dismiss="modal" onclick="clearmesgICD()" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
						<input type="hidden" 	id="ICDVal">				
					<input type="hidden" 	id="ICDNew">	
				<input type="hidden" 	id="ICDValSearch">	
				<input type="hidden" 	id="ICDValCount">	
                        <fmt:message key="label.deleteICDTestConfirm" />
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-green" onclick="deleteICD()"><fmt:message key="label.yes" /></button>
        <span id="labICDDeletesuccess" ><font color="green"><fmt:message key="label.labICDDeletesuccess" /></font></span>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearmesgICD()"><fmt:message key="label.cancel" /></button>
       
      </div>
    </div>
  </div>
</div>
		
		
	
	
<div class="modal fade" id="deleteLabData" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.deleteLabTest" /></h5>
        <button type="button" class="close"  data-dismiss="modal" onclick="clearmesgLab()" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
								
					<input type="hidden" 	id="labIDNew" 	>	
					<input type="hidden" 	id="labRowNo" 	>	
				
                        <fmt:message key="label.deleteLabConfirm" />
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-green" onclick="deleteLab()"><fmt:message key="label.yes" /></button>
        <span id="labdeletesuccess" ><font color="green"><fmt:message key="label.labdeletesuccess" /></font></span>
        <button type="button" class="btn btn-secondary" data-dismiss="modal"  onclick="clearmesgLab()"><fmt:message key="label.cancel" /></button>
       
      </div>
    </div>
  </div>
</div>
		
<div class="modal fade" id="deleteDiseasehos" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.deleteLabTest" /></h5>
        <button type="button" class="close"  data-dismiss="modal" onclick="clearmesgLab()" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
								
					<input type="hidden" 	id="labIDNew" 	>	
					<input type="hidden" 	id="labRowNo" 	>	
				
                        <fmt:message key="label.deleteLabConfirm" />
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-green" onclick="deletediseasehos()"><fmt:message key="label.yes" /></button>
        <span id="labdeletesuccess" ><font color="green"><fmt:message key="label.labdeletesuccess" /></font></span>
        <button type="button" class="btn btn-secondary" data-dismiss="modal"  onclick="clearmesgLab()"><fmt:message key="label.cancel" /></button>
       
      </div>
    </div>
  </div>
</div>	


<div class="modal fade" id="deleteDiseaseprc" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.deleteLabTest" /></h5>
        <button type="button" class="close"  data-dismiss="modal" onclick="clearmesgLab()" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
								
					<input type="hidden" 	id="labIDNew" 	>	
					<input type="hidden" 	id="labRowNo" 	>	
				
                        <fmt:message key="label.deleteLabConfirm" />
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-green" onclick="deletediseaseprc()"><fmt:message key="label.yes" /></button>
        <span id="labdeletesuccess" ><font color="green"><fmt:message key="label.labdeletesuccess" /></font></span>
        <button type="button" class="btn btn-secondary" data-dismiss="modal"  onclick="clearmesgLab()"><fmt:message key="label.cancel" /></button>
       
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="openNotifyModel" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body" style="color: red;">
				
				
                        <fmt:message key="label.opennotifyAvailable" /><span id="notifyNo"></span>
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><fmt:message key="label.close" /></button>
       
      </div>
    </div>
  </div>
</div>




<div class="modal fade" id="adddrug_m" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.addLabTest" /></h5>
        <button type="button" class="close" data-dismiss="modal" onclick="clearcheck()" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
								
								
							<table width="100%" border="0" cellspacing="0" cellpadding="0" id="labTestlist" class="table  table-striped table-bordered bdrr1">
			
				  <tbody>
   
                 </tbody>
                    </table>
</div>
                            </div>
	  
	  </div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearcheck()"><fmt:message key="label.close" /></button>
       
      </div>
    </div>
  </div>
</div>
		 
		 
		 
		
		 <hr/>
		 
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-bordered" id="addLabTest">				
			<thead ><!--bg-primary text-white-->
			 <tr>
			<th style="display: none;"><fmt:message key="sl.No" /></th>
			<th style="display: none;">Testcode</th>
			<th style="display: none;">Labrow</th>	
			<th>Test Name</th>
		   	<th>Result</th>
		   	<th style="display: none;">Notes</th>
		   	<th>Date</th>
		    <th>Requested By</th>		     
			<th>Delete </th>
			<!-- <th>Print </th> -->
			<th style="display: none;">Update </th>
			 <th style="display: none;">RowNo</th> 
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
  
  
 
		<div id="accordion_s">	
		<div class="card border-bottom-primary mt-2">
		   <div class="card-header bg-gradient-light panel-title_plus sick-table5" id="heading_s">
		   <a class=" btn-link   text-primary" data-toggle="collapse" data-parent="#accordion_s" href="#collapse_s" aria-expanded="true" aria-controls="collapse_s">
			  Radiology   </a> 
		  </div>
		  
			<div id="collapse_s" class="collapse show" aria-labelledby="heading_s" data-parent="#accordion_s">
			  <div class="card-body ">
								
					
					<div class="row">
				
				<div class="col-sm-12">
				
				<div class="text-right">
				
				
				<a href="#" class="btn btn-info" data-toggle="modal" data-target="#radTestModel">
				<i class="fas fa-plus"></i> <span class="text"><fmt:message key="add" /> </span></a> </div>
				
			<!-- Add rad model -->
				
				<div class="modal fade" id="radTestModel" tabindex="-1" aria-labelledby="tit" style="display: none;" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="addRadTest" /></h5>
        <button type="button" class="close" onclick="clearcheckrad()" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
								
								
							<table width="100%" border="0" cellspacing="0" cellpadding="0" id="radTestlist" class="table  table-striped table-bordered bdrr1">
			
				  <tbody>
                     </tbody>
                    </table>

						</div>
                            </div>
	  
	  </div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="clearcheckrad()" data-dismiss="modal"><fmt:message key="label.close" /></button>
       
      </div>
    </div>
  </div>
</div>
				
				
	
	
	<!-- END rad model -->				
				
				
				
<div class="modal fade" id="deleteRadData" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.deleteRadTest" /></h5>
        <button type="button" class="close" data-dismiss="modal"  onclick="clearmesgRad()" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
								
					<input type="hidden" 	id="radID" 	>	
					<input type="hidden" 	id="radRowNo" 	>	
				
                        <fmt:message key="label.deleteradConfirm" />
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-green" onclick="deleteRad()"><fmt:message key="label.yes" /></button>
        <span id="raddeletesuccess" ><font color="green"><fmt:message key="label.raddeletesuccess" /></font></span>
        <button type="button" class="btn btn-secondary" data-dismiss="modal"  onclick="clearmesgRad()"> <fmt:message key="label.cancel" /></button>
       
      </div>
    </div>
  </div>
</div>				
				
				
				
				
				
				
				
	<div class="modal fade" id="updateLabData" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.updateLabData" /></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body" style="color: green;">
								
					
				
                        <fmt:message key="label.labUpdatesuccess" />
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-dismiss="modal"><fmt:message key="label.close" /></button> 
        
       
      </div>
    </div>
  </div>
</div>				
				
				
				
				
				
<div class="modal fade" id="updateRadData" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle"><fmt:message key="label.updateRadData" /></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body" style="color: green;">
								
					
				
                        <fmt:message key="label.RadUpdatesuccess" />
								
							
                                </div>
                            </div>		
								
							</div>
	  </div>
	  
	  
	    </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-dismiss="modal"><fmt:message key="label.close" /></button> 
        
       
      </div>
    </div>
  </div>
</div>		
				<hr/>		
			<table id="radTestlistResult" class="display table table-bordered" style="width:100%">
				<thead>
					<tr>               
						
						<th style="display: none;">Sl.No</th>
						<th style="display: none;">Test Code</th>
						<th style="display: none;">Radrow</th>
						<th>Test Name</th>
						<th>Result</th>
						<th>Abnormal Result</th>
<%-- 						 id="otherabnormaldisease"
 --%>					<th>Other Abnormal Result </th>
						<th>Notes</th>
						<th>Date</th>	
						<th style="display:block;">Requested By</th>
						<th>Delete </th>
						<th style="display: none;">Update </th>
						<th style="display: none;">Rowcount</th>
					</tr>
				</thead>
				 <tbody class="tbody">
   
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
				
			</div>		
				
				
				
			
			
			
			<div class="col-sm-12 text-right p-4"><hr/>
			<div class="float-left col-sm-5" id="approvalSec"> 
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
   
    <td width="3%"><small>Approved By</small></td>
    <td width="1%"><!--<mark></mark>--><span class="badge bg-info text-white" id="approvedby"></span></td>
    <td width="3%">&nbsp;</td>
    <td width="2%"><small>Name</small></td>
    <td width="1%"><!--<mark></mark>--><span class="badge bg-info text-white" id="approvedbyName"></span></td>
    <td width="3%">&nbsp;</td>
    <td width="2%"><small>Date</small></td>
    <td width="1%"><!--<mark></mark>--><span class="badge bg-info text-white" id="approvedate"></span></td>
  </tr>
</tbody></table>
</div>	
</div>			
							
			  </div>
			  </div>
		  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
		  	  
		  
		  <div class="row ">
		  			
					<div class="col-lg-12 mt-1">
						<div class="card shadow border-left-primary">
					
								<div class="card-body pt-3 pb-1">
								  <div class="row ">
									<div class="col-lg-7">	
									<div class="card-header  d-flex bg-gradient-light">
<h6 class="m-0 font-weight-bold text-primary  hdd"><fmt:message key="label.notificationList" /></h6>
<div class=" text-green  font-weight-bold text-center col-sm-6"></div>
</div>
										
									
									<hr style="border-top: 1px solid #3b7ddd;"/>
									
	<table width="100%" border="0" cellspacing="0"  cellpadding="5" class="text-dark table table-striped table-bordered" id="notificationList" > <!--id="dataTable1"-->
			<thead>
			<tr >
			<th class="bg-table"><fmt:message key="sl.No" /></th>
			<th class="bg-table"><fmt:message key="label.notificationId" /></th>
			<th class="bg-table"><fmt:message key="label.IDNum" /></th>
			<th class="bg-table"><fmt:message key="label.name" /></th>
			
			<th class="bg-table"><fmt:message key="label.edit" /></th>
			</tr>
			</thead>
			
			<tbody>
								  </tbody>
								</table>
								</div>
								
								
								
								<div class="col-lg-5 border-left-primary"  style="border-left:1px solid #ccc;">
									<div class="card-header  d-flex bg-gradient-light">
<h6 class="m-0 font-weight-bold text-primary  hdd"><fmt:message key="unkownList" /></h6>
<div class=" text-green  font-weight-bold text-center col-sm-6"></div>
</div>
								
										
									
									<hr style="border-top: 1px solid #3b7ddd;"/>
								
																
	<table width="100%" border="0" cellspacing="0"  cellpadding="5" class="text-dark table table-striped table-bordered" id="tableListUnkown" ><!--id="dataTable1"-->
			<thead>
			<tr >
			<th class="bg-table"><fmt:message key="sl.No" /></th>
		
			<th class="bg-table"><fmt:message key="label.id" /></th>
			
			<th class="bg-table"><fmt:message key="label.loc" /></th>
			 <th class="bg-table"><fmt:message key="label.notificationId" /></th>
			
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
		  
		  <div class="tab-pane fade" id="search" role="tabpanel" aria-labelledby="search-tab">
		  
			   <div class="row ">
		  			
					<div class="col-lg-12 mt-1">
												<div class="col-xl-5 col-md-6 mb-1">
                            <div class="card border-left-primary shadow h-100">
                                <div class="card-body pt-2 pb-2">
                                    <div class="row no-gutters align-items-center">
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="">
										  <tr>
											<td><label  class="col-form-label"><fmt:message key="label.civilid" /> :</label></td>
											<td><input  type="text" class="form-control"  id= "idTypeHis" onchange="searchPatient()" ></td>
											<td width="20%"></td>
											</tr>
										</table>
                                    </div>
                                </div>
                            </div>
                        </div>
<div class="col-lg-8 mt-3">	
						
						
			<table width="100%" border="0" cellspacing="0"  cellpadding="5" class="text-dark table table-striped table-bordered" id="notifyhistory" >
			<thead>
			<tr>
			<th class="bg-table"><fmt:message key="sl.No" /></th>
			<th class="bg-table"><fmt:message key="label.notifyId" /></th>
			<th class="bg-table"><fmt:message key="label.nameEn" /></th>
			<th class="bg-table"><fmt:message key="label.nameAr" /></th>
			<th class="bg-table"><fmt:message key="label.notifyDate" /></th>
			<th class="bg-table"><fmt:message key="label.loc" /></th>
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
		  </div><!--end tab-->
							</div>
						</div>
				</div><!--card body-->
						</div><!--card-->
		 				</div>
			</div>
		 </div>
		 <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
             <jsp:include page="notificationFooter.jsp"></jsp:include>
            <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>    </a>




  <!--start waiting List-->
		  
		  <div class="modal fade" id="waiting_list" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog  modal-xl" role="document"><!--modal-dialog-centered-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">Other ID Type</h5>
        <button type="button" class="close" data-dismiss="modal" onclick="clearcheckother()" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	
	  
	  
	  
	  <div class="card shadow border-bottom-primary">
						
												<div class="card-header  d-flex bg-gradient-light ">
													<h6 class="m-0 font-weight-bold text-primary  hdd">Enter Personal Information</h6>
												</div>
												<div class="card-body pt-2 pb-1">
	  
	   <div class="container">
	  <div class="row"> 
	  <div class="col-lg-12">
	  <label for="last_name" class="text-navy pt-0 col-form-label"><b>Please Select : </b></label>
				  <div class="form-check form-check-inline pl-5">
				  <input class="form-check-input" type="radio" id="idTypeP" name="idType" value="P"  >&nbsp;
			     <label class="form-check-label" for="inlineRadio1" name="idType"><fmt:message key="passport"/></label>
			</div>
			
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" id="idTypeU" name="idType" value="U" value="option2">
			  <label class="form-check-label" for="inlineRadio2"><fmt:message key="unknown"/></label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" id="idTypeG" name="idType" value="G" value="option2">
			  <label class="form-check-label" for="inlineRadio2"><fmt:message key="gcc"/></label>
			</div>
						
	 
	    </div>
	
		<div class="col-sm-6" id="pass">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label" id="changeIDName"><fmt:message key="passportId"/>:</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
								 <input type="text" class="form-control" id="passportId" onchange="getinfoOther()">
							</div>
						</div>	
	   </div>
	   
	   
	   		  <div class="col-sm-6" id="nationalityPass">  								
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.nationality"/> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
								 <select name="sel" id="nationalityOther" class="form-control">
						  </select>			
							</div>
						</div>	
	   </div>
	   	<div class="col-sm-6" id="pass1">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label" id="">  </label>
							<div class="col-sm-9">
							 <button class="btn btn-primary btn-block"  type="button" onClick="validatepassAPI()"><fmt:message key="label.submit"/> </button>	 
							</div>
						</div>	
       
	   	   </div>
	   
<div id="hrPass">	   
<hr/>
</div>	 
	   <div class="col-sm-6" id="nameenPass">  						
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.nameEn"/> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
								 <input type="text" class="form-control" id="nameOtherEn">				
							</div>
						</div>	
	   </div>
	   
	   
	   
	   <div class="col-sm-6" id="namearPass">  
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.nameAr"/>:</b> <span class="red" style="color: red;">*</span> </label>
							<div class="col-sm-9">
								 <input type="text" class="form-control" id="nameOtherAr">				
							</div>
						</div>	
	   </div>
	   
	   

	   <div class="col-sm-6" id="genderPass">  
					  	
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.gender"/> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
								 <select name="sel" id="genderOther" class="form-control">
								  <option value=" "><fmt:message key="label.select"/>
						          <option value="M"><fmt:message key="label.male"/>
						          <option value="F"><fmt:message key="label.female"/>	
								 </select>		
							</div>
						</div>	
       
	   
	   
	   </div>
	   <div class="col-sm-6" id="dobPass">  
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.dob"/> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
								 <input type="text" class="form-control  datepicker" id="dobOther" >
							</div>
						</div>	
	   </div>
	   
	   
	 <div class="col-sm-6" id="bloodgrpPass">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.bloodgroup" /> :</label>
							<div class="col-sm-9">
									  <input type="text" class="form-control" id="bloodgroupOther">		
							</div>
						</div>	
       
	   
	   
	   </div> 
	   
	   
	 <div class="col-sm-6" id="govPass">    							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.governorate"/> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
							<select name="sel" id="governorateOther" class="form-control">
								 </select>			
							</div>
						</div>	
						</div>
						
	 <div class="col-sm-6" id="districtPass">    							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.district"/> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
							<select name="sel" id="districtOther" class="form-control">
							<option  value=" "><fmt:message key="label.select"/></option>
								 </select>			
							</div>
						</div>	
						</div>  
						
	   	   <div class="col-sm-6" id="addressPass">   							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.address"/> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
								 <input type="text" class="form-control" id="addressOther">				
							</div>
						</div>	
			</div>
						
	   	     <div class="col-sm-6" id="field_wrapper1">  							
						
						<div class="form-group row" id="mobileId0">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.mobile"/>:</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
							<div class="input-group">
								<input type="text" class="form-control patMobile" name = "patMobile" id="patMobile0"><div class="input-group-append">
								<button class="btn btn-info add_button1"  type="button"  ><i class="fas fa-plus"></i> </button>							 
						  </div>
						  </div>
							</div>
						</div>	
	    	</div>
	    				 
	<div class="col-sm-6" id="maritalPass">  
					  								
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.marital" />  :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
									<select class="form-control" id="maritalOther" >
								<option value=""><fmt:message key="label.select"/></option>
								</select>
							</div>
						</div>	
	   </div>
	   
	   <div class="col-sm-6" id="worplacePass">  
					  			
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.worplace" /> :</label>
							<div class="col-sm-9">
							 <input type="text" class="form-control" id="worplaceOther">		
							</div>
						</div>	
	   </div>
	   
	      <div class="col-sm-6" id="sponsorPass">  
					  			
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.sponsor" /> :</label>
							<div class="col-sm-9">
								<input type="number" class="form-control"  id="sponsorOther" >
							</div>
						</div>	
	   </div>
	   
	   <div class="col-sm-6" id="occupationPass">  
					  					
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.occupation" /> :</b> <span class="red" style="color: red;">*</span></label>
							<div class="col-sm-9">
								<!--  <input type="text" class="form-control" id="occupationOther">	 -->
								 <select class="form-control" id="occupationOther" >
							<option selected="selected" value=""><fmt:message key="label.select"/></option>
									 </select>
							</div>			
							</div>
						</div>	
	   </div>
	   <div class= "row">
	   <div class="col-sm-6" id="recidencyPass">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.recidency" /> :</label>
							<div class="col-sm-9">
							<select class="form-control" id="recidencyOther" >
							<option selected="selected" value=""><fmt:message key="label.select"/></option>
									 </select>
							</div>
						</div>	
	   </div>
	    <div class="col-sm-6" id="residencyOtherPass">  							
						<div class="form-group row">
<!-- 							<label for="inputPassword" class="col-sm-3 col-form-label">Other Recidency :</label>
 -->							<div class="col-sm-9">
									 <input type="text" class="form-control" id="residencyOther1">		
							</div>
						</div>	
	   </div>
	   </div>
	   	   <div class="col-sm-6" id="entryPass">  							
						
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-3 col-form-label"><fmt:message key="label.entryDate" /> :</label>
							<div class="col-sm-9">
									 <input type="text" class="form-control datepicker" id="entryDateOther">		
							</div>
						</div>	
	   </div>
	    </div>
	  </div>
	  </div>
	  </div>
	  
	
      <div class="modal-footer">
        <button type="button" class="btn btn-info"  id="registerOther" onclick="registerOther()" data-dismiss="modal"><fmt:message key="label.save" /> </button>
        <span id="saveDetailsSuccess"><font color="green"><fmt:message
										key="label.DetailsSuccess" /></font></span>
										    <span id="passcivilOpenNotif"  style="display:none;"><font color="red"> <fmt:message key="label.opennotifyAvailable" /></font>
										    </span>
										   <span id="notifyPass"></span>
										     <span id="passcivilAvailable"  style="display:none;"><font color="red"> <fmt:message key="label.passcivil" /></font></span>
										   <span id="civilpassno"></span>
        </div>
            </div>
    </div>
  </div>
</div>

		  <!--end waiting list-->
 <!-- start Disease Modal-->
 <div class="modal fade" id="waiting_list_2" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document"><!--modal-dialog-centered-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">Disease </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
                                	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="diseaselist" class="table  table-striped table-bordered bdrr1"> <tbody>
   
                 </tbody>
                    </table>
</div>
                            </div>
	  
	  </div>
	  </div>
	  </div>
	  <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearcheck()">Close</button>
       
      </div>
      
    </div>
  </div>
  </div>
   <!-- end of Disease Modal-->
    <!-- start Disease Modal-->
 <div class="modal fade" id="waiting_list_3" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document"><!--modal-dialog-centered-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">Disease </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
                                	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="diseaselist1" class="table  table-striped table-bordered bdrr1"> <tbody>
   
                 </tbody>
                    </table>
</div>
                            </div>
	  
	  </div>
	  </div>
	  </div>
	  <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearcheck()">Close</button>
       
      </div>
      
    </div>
  </div>
  </div>
   <!-- end of Disease Modal-->
   <!-- start of  Radiology Sub Result Modal-->
 <%-- <div class="modal fade" id="radsubresults" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document"><!--modal-dialog-centered-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">Results </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
                                <div class="row">
                                	<div class="col-sm-6">  
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-6 col-form-label">Abnormal List :</label>
							<div class="col-sm-6">
							<select class="form-control" id="abnormallist" >
							<option selected="selected" value=""><fmt:message key="label.select"/></option>
							</select>
							</div>
						</div>	
	   </div>
	   
	   
	    <div class="col-sm-6" id="otherabnormaldisease">						
						<div class="form-group row">
							<div class="col-sm-6">
									 <input type="text" class="form-control" id="otherabnormaldiseasevalue">		
							</div>
						</div>	
	   </div>
</div>
                            </div>
	  
	  </div>
	  </div>
	  </div>
	  </div>
	  <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearcheck()">Close</button>
       
      </div>
      
    </div>
  </div>
  </div>
   --%> <!-- end of Radiology Sub Result Modal-->
   
      <!-- start of  Radiology Sub Result Modal-->
<%--  <div class="modal fade" id="radsubresults1" tabindex="-1" role="dialog" aria-labelledby="tit" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document"><!--modal-dialog-centered-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">Results </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>        </button>
      </div>
      <div class="modal-body">
	
	  <div class="row"> <div class="col-lg-12">
	  <div class="card shadow mb-4">
                                
                                <div class="card-body">
                                <div class="row">
                                	<div class="col-sm-6">  
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-6 col-form-label">Abnormal List :</label>
							<div class="col-sm-6">
							<select class="form-control" id="abnormallists1" disabled>
							<option selected="selected" value=""><fmt:message key="label.select"/></option>
							</select>
							</div>
						</div>	
	   </div>
	   
	   
	    <div class="col-sm-6" id="otherabnormaldisease1">						
						<div class="form-group row">
							<div class="col-sm-6">
									 <input type="text" class="form-control" id="otherabnormaldiseasevalues1">		
							</div>
						</div>	
	   </div>
</div>
                            </div>
	  
	  </div>
	  </div>
	  </div>
	  </div>
	  <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearcheck()">Close</button>
       
      </div>
      
    </div>
  </div>
  </div>
   --%> <!-- end of Radiology Sub Result Modal-->
    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal"><fmt:message key="label.cancel" /></button>
                    <a class="btn btn-primary"  onclick="logout()"><fmt:message key="label.logout" /></a></div>
            </div>
        </div>
    </div>
 <div class="modal fade" id="icdpop" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
<div class="modal-content">
<div class="modal-header bg-gradient-primary text-white">
<h5 class="modal-title" id="exampleModalLongTitle">search
</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<div class="row">
<div class="ctw-window" data-ctw-ino="1"></div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal"><fmt:message key="label.close" /></button>
</div>
</div>
</div>
</div>
 <!--toast notification -->	

<div class="toast toast-danger" id="myToast"> <!--bg-primary text-white -->
        <div class="bg-gradient-info  toast-header ">
           <strong class="me-auto"><i class="fas fa-bell"></i> <fmt:message key="label.history" /></strong> <!--fa-exclamation-triangle-->
           <!-- <small>11 mins ago</small>-->
            <!--<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>-->
			
			<button type="button" class="close" data-dismiss="toast" aria-label="Close">
				  <span aria-hidden="true">&times;</span>        </button>
        </div>
        <div class="toast-body">
            <h6 class="text-center"><fmt:message key="label.hashistory" /> - <a href="#" id="popover1"   data-original-title='Patient History <a href="#" class="close" id="close_p" data-dismiss="alert" >&times;</a>' data-placement="left" class="btn btn-danger" style="padding: 0.175rem 0.75rem"><fmt:message key="label.show" /></a></h6>
			
			
			<div class="mt-2 pt-2 border-top">
    
    </div>
        </div>
    </div>
	<!--end notification-->	
	<div id="popover_content_wrapper1" style="display: none">

	   <ul class="list-group_1">
		  <li class=" listyle ml-3"><a href="#"   class="show-pop-list2"  id="patient_1" ><fmt:message key="notifInfo" /></a> </li>
		  <li class=" listyle ml-3"><a href="#"   class="show-pop-list2"  id="patient_2" ><fmt:message key="label.diagnosis" /></a></li>
		  <li class=" listyle ml-3"><a href="#"   class="show-pop-list2"  id="patient_3" ><fmt:message key="label.lab" /></a></li>
		  <li class=" listyle ml-3"> <a href="#"   class="show-pop-list2" id="patient_4" data-toggle="modal" data-target="#myModal3" ><fmt:message key="label.radiology" /></a></li> 
		</ul>
	   
	   
    </div>
    <!--Patient info modal-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document"><!--modal-xl-->
            <div class="modal-content">
                <div class="modal-header n_head ">
                    <h5 class="modal-title" id="exampleModalLabel1"><b><fmt:message key="notifInfo" /></b></h5>
					<button class="close " type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>                    </button>
                </div>
                <div class="modal-body">
				
		<div class="col-sm-10">	  
	<div id="divColapseBarHistoryold"></div>

</div>
				<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal"><fmt:message key="label.close" /></button>
				   </div>
            </div>
        </div>
    </div>
	</div>
	
	<!--Diagonsis modal-->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document"><!--modal-xl-->
            <div class="modal-content">
                <div class="modal-header n_head ">
                    <h5 class="modal-title" id="exampleModalLabel1"><b><fmt:message key="label.diagnosisInfo" /></b></h5>
					<button class="close " type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>                    </button>
                </div>
                <div class="modal-body">
				
		<div class="col-sm-10">	  
	<div id="divColapseBarHistoryDiagonsis"></div>

</div>
				<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal"><fmt:message key="label.close" /></button>
				   </div>
            </div>
        </div>
    </div>
	</div>
	<!--Lab modal-->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document"><!--modal-xl-->
            <div class="modal-content">
                <div class="modal-header n_head ">
                    <h5 class="modal-title" id="exampleModalLabel1"><b><fmt:message key="label.labInfo" /></b></h5>
					<button class="close " type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>                    </button>
                </div>
                <div class="modal-body">
				
		<div class="col-sm-10">	  
	<div id="divColapseBarHistoryLab"></div>

</div>
				<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal"><fmt:message key="label.close" /></button>
				   </div>
            </div>
        </div>
    </div>
	</div>
    <!--Radiology modal-->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document"><!--modal-xl-->
            <div class="modal-content">
                <div class="modal-header n_head ">
                    <h5 class="modal-title" id="exampleModalLabel1"><b><fmt:message key="label.radiologyInfo" /></b></h5>
					<button class="close " type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>                    </button>
                </div>
                <div class="modal-body">
				
		<div class="col-sm-10">	  
	<div id="divColapseBarHistoryRadiology"></div>

</div>
				<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal"><fmt:message key="label.labInfo" /></button>
				   </div>
            </div>
        </div>
    </div>
	</div>
    
    <!-- Bootstrap core JavaScript-->
    <script src="admin/jquery/jquery.min.js"></script>
    <script src="admin/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="admin/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->	
   
		<!--<script src="js/jquery-3.6.0.js"></script>-->
		<script src="js/jquery-ui.js"></script>
		<script src="js/icd11windows.js"></script>
		 <script type="text/javascript" src="js/common.js"></script>
		
	<script type="text/javascript">
  /*   $.backstretch("img/7.jpg", {
      speed: 500
    }); */
	
    $(document).ready(function(){
 	   var lang = '<%=response.getLocale().getLanguage()%>';
             var context = '${pageContext.request.contextPath}';
 	   var myDate = new Date();
 	 
	        if (lang == 'en') {
 				$('#arabic').show();
 				$('#english').hide();
 				$('#nameHeader').append(localStorage.getItem('nameen'));
 				$('#locHeader').append(localStorage.getItem('locen'));
 				$('#role').text(localStorage.getItem('roleen'));
 				
 			} else {
 				$('#arabic').hide();
 				$('#english').show();
 				$('#nameHeader').append(localStorage.getItem('namear'));
 				$('#locHeader').append(localStorage.getItem('locar'));
 				$('#role').text(localStorage.getItem('rolear'));
 			}
 			$('#arabic').click(function() {
 				$(this).hide();
 				$('#english').show();
 			});
 			$('#english').click(function() {
 				$(this).hide();
 				$('#arabic').show();
 			});
 			getprofiletabdata(); 	
 			
			$.ajax({
			type : "GET",
			url : context+"/getlistresponse?method=lstlabtests",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			success : function(response) {
				 var userDetails = '';
				 var slNo =1;
				$.each(JSON.parse(response), function(i, item) {
					if ((i)% 4 == 0 ){
                   	 userDetails += '<tr>';
                    }
					 userDetails += '<td width="12%" style="border-right:0px;" >' +item.nameen + '</td>';
                     userDetails += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="labtestcheck" id="'+item.typecode+','+item.code+','+item.id+'" value="'+item.nameen +'" class="chk"></td>';
                 	 slNo =slNo + 1;
				});
				 userDetails +=' <td colspan="10" align="right"> <input type="button" class="btn btn-primary btn-sm" onclick="multipleCheck()" value="Add"/> </td>';
				table1 = $('#labTestlist').append(userDetails);
				//table1.dataTable();	
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				
				}
			}
	 });
	    
	$.ajax({
			type : "GET",
			url : context+"/getlistresponse?method=lstradiologytests",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			success : function(response) {
				 var userDetails = '';
				 var slNo =1;
				$.each(JSON.parse(response), function(i, item) {
					
                  	userDetails += '<tr>';
                    userDetails += '<td width="12%" style="border-right:0px;" >' +item.nameen + '</td>';
                     userDetails += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="radtestcheck" id="'+item.code+','+item.id+'" value="'+item.nameen +'" class="chk"></td>';
					userDetails += '</tr>';
                   
                   slNo =slNo + 1;
                   
				});
				 userDetails +=' <td colspan="10" align="right"> <input type="button" class="btn btn-primary btn-sm" onclick="multipleCheckRad()" value="Add"/> </td>';
				table1 = $('#radTestlist').append(userDetails);
				//table1.dataTable();	
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status == "401") {
				
				}
			}
	 });   
	
	$.ajax({
		type : "GET",
		url : context+"/getlistresponse?method=lstDiseases",
		contentType : "application/json",
		headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		crossDomain : true,
		success : function(response) {
			 var userDetailsHos = ''; userDetailsPcr = '';
			 var slNo =1;
			$.each(JSON.parse(response), function(i, item) {
				if ((i)% 4 == 0 ){
               	 userDetailsHos += '<tr>';userDetailsPcr += '<tr>';
                }
				userDetailsHos += '<td width="12%" style="border-right:0px;" >' +item.diseaseName + '</td>';
				userDetailsPcr += '<td width="12%" style="border-right:0px;" >' +item.diseaseName + '</td>';
				userDetailsHos += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="labtestcheck" id="'+item.diseaseId+'" value="'+item.diseaseName +'" class="chk"></td>';
				userDetailsPcr += '<td width="4%" style="border-left:0px; "><input type="checkbox" name="labtestcheck" id="'+item.diseaseId+'" value="'+item.diseaseName +'" class="chk"></td>';                 
			});
			userDetailsHos +=' <td colspan="10" align="right"> <button  type="button" class="btn btn-primary btn-sm" id="hosdisease"> Add </button></td>';
			userDetailsPcr +=' <td colspan="10" align="right"> <button  type="button" class="btn btn-primary btn-sm" id="pcrdisease"> Add </button></td>';
			$('#diseaselist').append(userDetailsHos);
			$('#diseaselist1').append(userDetailsPcr);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401") {
			}
		}
 });
	
      $.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lstresidencystats",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(j,response)
	 		            	 {
		   	                  
		   	             
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#recidencyReg');
	 		                 $(div_data).appendTo('#recidencyOther'); 
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    });  
$.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lstmedresistance",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(j,response)
	 		            	 {
		   	                  
		   	             
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#medResistance'); 
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    }); 
      $.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lstmaritalstats",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(j,response)
	 		            	 {
		   	                  
		   	              
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#maritalReg'); 
	 		                  $(div_data).appendTo('#maritalOther'); 
	 		                 
		   	                  
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    });
      $.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=getlocations",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(j,response)
	 		            	 {
		   	                  
		   	               
		   	                if(response.sectortype == 'G'){
		   	       	          if(lang=='en'){
		   	       	        	  
		   	       	           var div_data="<option value="+response.locationcd+">"+response.locationnameen+"</option>";
		   	       	          }
		   	       	         
		   	       	          else{
		   	       	        var div_data="<option value="+response.locationcd+">"+response.locationnamear+"</option>";
		   	   	       	          }
		   	       	          }
	 		                  $(div_data).appendTo('#hospName'); 
	 		                
		   	                  
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    }); 
      $.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lstnotifcategory",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(i,response)
	 		            	 {
		   	                    
		   	               
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                
	 		                  $(div_data).appendTo('#notifycat'); 
	 		                
	 		    		  
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    });     
      
      
      
      
      $.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lstldiseases",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(i,response)
	 		            	 {
		   	                    
		   	              
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+" >"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+" >"+response.namear+"</option>";
		   	   	       	          }
	 		                
	 		                  $(div_data).appendTo('#locDisease'); 
	 		                
	 		    		  
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    }); 
      
      
      
    $.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lstriskfactors",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(i,response)
	 		            	 {
		   	                    
		   	            
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                
	 		                  $(div_data).appendTo('#riskFactorPRC'); 
	 		                
	 		    		  
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    });  
      
      
$.ajax({
          type: "GET",
          url:context+"/getlistresponse?method=lsttbdiagnosis",
			contentType : "application/json",
			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			crossDomain : true,
			
			dataType : "json",		
           success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(i,response)
	 		            	 {
		   	                    
		   	             
		   	       	          if(lang=='en'){
		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		   	       	          }
		   	       	          else{
		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
		   	   	       	          }
	 		                  $(div_data).appendTo('#diagnosisMain'); 
	 		                  $(div_data).appendTo('#daignosisHos'); 
	 		                
	 		    		  
	                       });
             	
           },
        error : function(jqXHR, textStatus, errorThrown) {
				
				if (jqXHR.status == "401"){
					
				   
				    }
			}
    });
  	      
      	 getvalues();  
  
      	    $.ajax({
                type: "GET",
                url:context+"/getlistresponse?method=lsttbsources",
     			contentType : "application/json",
     			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
     			crossDomain : true,
     			
     			dataType : "json",		
                 success: function (datahere) {			                 
                	 var response = JSON.parse(JSON.stringify(datahere));	
                   	   $.each(response,function(i,response)
     	 		            	 {
     		   	                    
     		   	               
     		   	       	          if(lang=='en'){
     		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
     		   	       	          }
     		   	       	          else{
     		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
     		   	   	       	          }
     	 		                  $(div_data).appendTo('#tbsource'); 
     	 		                
     	 		    		  
     	                       });
                   	
                 },
              error : function(jqXHR, textStatus, errorThrown) {
      				
      				if (jqXHR.status == "401"){
      					
      				   
      				    }
      			}
          });   
  	    
  	    
     	    $.ajax({
                  type: "GET",
                  url:context+"/getlistresponse?method=lstnationality",
       			contentType : "application/json",
       			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
       			crossDomain : true,
       			
       			dataType : "json",		
                   success: function (datahere) {			                 
                  	 var response = JSON.parse(JSON.stringify(datahere));	
                     	  $.each(response,function(i,response)
       	 		            	 {
       		   	                    
       		   	              
       		   	       	          if(lang=='en'){
       		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
       		   	       	          }
       		   	       	          else{
       		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
       		   	   	       	          }
       	 		                  $(div_data).appendTo('#nationalityReg'); 
       	 		                  $(div_data).appendTo('#nationalityOther'); 
       	 		                
       	 		    		  
       	                       });
                     	
                   },
                error : function(jqXHR, textStatus, errorThrown) {
        				
        				if (jqXHR.status == "401"){
        					
        				   
        				    }
        			}
            });   
     	    
     	    
         	    $.ajax({
                  type: "GET",
                  url:context+"/getlistresponse?method=lstgovernorates",
       			contentType : "application/json",
       			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
       			crossDomain : true,
       			
       			dataType : "json",		
                   success: function (datahere) {			                 
                  	 var response = JSON.parse(JSON.stringify(datahere));	
                     	  $.each(response,function(i,response)
       	 		            	 {
       		   	                    
       		   	               
       		   	       	          if(lang=='en'){
       		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
       		   	       	          }
       		   	       	          else{
       		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
       		   	   	       	          }
       	 		                  $(div_data).appendTo('#governorateReg'); 
       	 		                  $(div_data).appendTo('#governorateOther'); 
       	 		                
       	 		              
       	                       });
                     	
                   },
                error : function(jqXHR, textStatus, errorThrown) {
        				
        				if (jqXHR.status == "401"){
        					
        				   
        				    }
        			}
            });   
     	    
         	   
                $.ajax({
                      type: "GET",
                      url:context+"/getlistresponse?method=lstassignees",
           			contentType : "application/json",
           			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
           			crossDomain : true,
           			
           			dataType : "json",		
                       success: function (datahere) {			                 
                      	 var response = JSON.parse(JSON.stringify(datahere));	
                        
                         	
                        	 for(var i = 0; i < response.details.length; i++)
        					 {
        					     var id = response.details[i];
        					     if(lang=='en'){
      		   	       	           var div_data="<option value="+id.usernameen+">"+id.usernameen+"</option>";
      		   	       	          }
      		   	       	           else{
      		   	       	        var div_data="<option value="+id.usernamear+">"+id.usernamear+"</option>";
      		   	   	       	          }
      	 		                  $(div_data).appendTo('#assignees');
        					    
        					 }
                         	
                       },
                    error : function(jqXHR, textStatus, errorThrown) {
            				
            				if (jqXHR.status == "401"){
            					
            				   
            				    }
            			}
                }); 	    
         	    
         	    
             	       $.ajax({
                         type: "GET",
                         url:context+"/getlistresponse?method=getlocsector",
              			contentType : "application/json",
              			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
              			crossDomain : true,
              			
              			dataType : "json",		
                          success: function (datahere) {			                 
                         	 var response = JSON.parse(JSON.stringify(datahere));	
                            	
                            	  $.each(response,function(i,response)
              	 		            	 {
              		   	                    
              		   	               var lang = '<%= response.getLocale().getLanguage() %>'; 
              		   	       	          if(lang=='en'){
              		   	       	           var div_data="<option value="+response.code+">"+response.result+"</option>";
              		   	       	          }
              		   	       	          else{
              		   	       	        var div_data="<option value="+response.code+">"+response.result+"</option>";
              		   	   	       	          }
              	 		                  $(div_data).appendTo('#hospCat'); 
              	 		                
              	 		    		  
              	                       });
                            	
                          },
                       error : function(jqXHR, textStatus, errorThrown) {
               				
               				if (jqXHR.status == "401"){
               					
               				   
               				    }
               			}
                   });     
         	    
         	    
         	    
              	    $.ajax({
                        type: "GET",
                        url:context+"/getlistresponse?method=lsttreatcategory",
             			contentType : "application/json",
             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
             			crossDomain : true,
             			
             			dataType : "json",		
                         success: function (datahere) {			                 
                        	 var response = JSON.parse(JSON.stringify(datahere));	
                           	
                           	  $.each(response,function(i,response)
             	 		            	 {
             		   	                    
             		   	              
             		   	       	          if(lang=='en'){
             		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
             		   	       	          }
             		   	       	          else{
             		   	       	         var div_data="<option value="+response.code+">"+response.namear+"</option>";
             		   	   	       	          }
             	 		                  $(div_data).appendTo('#treatCat'); 
             	 		                
             	 		    		  
             	                       });
                           	
                         },
                      error : function(jqXHR, textStatus, errorThrown) {
              				
              				if (jqXHR.status == "401"){
              					
              				   
              				    }
              			}
                  });    
         	    
    });	   
         	    
     
    var maxField = 10; //Input fields increment limitation
    var addButton = $('.add_button'); //Add button selector
    var addButton1 = $('.add_button1');
    var addButton2 = $('.add_button2');
    var addButtonICD = $('.add_buttonICD');
	var wrapper = $('#field_wrapper');   
	var wrapper1 =$('#field_wrapper1');
	var wrapper2 =$('#field_wrapper2');
 	var wrapperICD = $('#field_wrapperICD');
    var wrapperICDPCR = $('#field_wrapperICDPCR');
   
    
   // var fieldHTML = '<div class="form-group row" ><label for="inputPassword" class=" col-sm-5 col-form-label"></label><div class="col-sm-7"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="text" class="form-control phone_name" id="patPhone"  value=""/></td><td><a href="javascript:void(0);" class="remove_button"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>'; 
     
    //Once add button is clicked
    $(addButton).click(function(){ ///alert("sedfre");
        //Check maximum number of input fields
        var x = 1;
        var y = 0;
        if(x < maxField){ 
            x++; //Increment field counter
            y++;
            var fieldHTML = '<div class="form-group row" id=phoneId'+y+' ><label for="inputPassword" class=" col-sm-5 col-form-label"></label><div class="col-sm-7"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="text" class="form-control phone_name" id=patPhone'+y+'  value=""/></td><td><a href="javascript:void(0);" class="remove_button"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>'; 
            $(wrapper).append(fieldHTML); //Add field html
        }
    });

    //Once add button is clicked
    $(addButton1).click(function(){ ///alert("sedfre");
        //Check maximum number of input fields
        var x = 1;
        var y = 0;
        if(x < maxField){ 
            x++; //Increment field counter
            y++;
            var fieldHTML = '<div class="form-group row" id=mobileId'+y+' ><label for="inputPassword" class=" col-sm-5 col-form-label"></label><div class="col-sm-7"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="text" class="form-control patMobile" name ="patMobile" id=patMobile'+y+'  value=""/></td><td><a href="javascript:void(0);" class="remove_button1"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>'; 
            $(wrapper1).append(fieldHTML); //Add field html
        }
    });
    
  //Once add button is clicked
    $(addButton2).click(function(){ ///alert("sedfre");
        //Check maximum number of input fields
        var x = 1;
        var y = 0;
        if(x < maxField){ 
            x++; //Increment field counter
            y++;
            var fieldHTML = '<div class="form-group row" id=fileCivil'+y+' ><label for="inputPassword" class=" col-sm-5 col-form-label"></label><div class="col-sm-7"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><input type="file" class="form-control fileUpload" name="fileupload" id=fileCivilId'+y+'  value=""/><div class="input-group-append"><div id=downlodcivil'+y+' style="display:none"><img src="img/down.png" onclick="downloadAsPDFCivil()" style="height: 38px;"></div><span id=civilFileUploadError'+y+'  style="display:none"> <b><font color="red"><fmt:message key="label.FileUploadError" /></font></b></span> <span style="display:none;" id=civilFileExtError'+y+'  style="display:none;"> <b><font color="red"><fmt:message key="label.FileExtError" /></font></b></span></td><td><a href="javascript:void(0);" class="remove_button2"><img src="img_admin/delete.png"/></a></td></tr></table></div></div>'; 
            $(wrapper2).append(fieldHTML); //Add field html
        }
    });
    
 //Once remove button is clicked
    $(wrapper).on('click', '.remove_button', function(e){ 
        e.preventDefault();
        var x = 1;
        //$(this).parent('div').remove(); //Remove field html
        $(this).closest("div.row").remove();
        x--; //Decrement field counter
    });    
    
    //Once remove button is clicked
    $(wrapper1).on('click', '.remove_button1', function(e){ 
        e.preventDefault();
        var x = 1;
        //$(this).parent('div').remove(); //Remove field html
        $(this).closest("div.row").remove();
        x--; //Decrement field counter
    });     
    
    
    
    //Once remove button is clicked
    $(wrapper2).on('click', '.remove_button2', function(e){ 
        e.preventDefault();
        var x = 1;
        //$(this).parent('div').remove(); //Remove field html
        $(this).closest("div.row").remove();
        x--; //Decrement field counter
    });     
    
    
    //Once remove button is clicked
    $(wrapperICD).on('click', '.remove_buttonICD', function(e){
        e.preventDefault();
        var x = 1;
        $(this).parent('div').remove(); //Remove field html
        x--; //Decrement field counter
    }); 
    
    //Once remove button is clicked
    $(wrapperICDPCR).on('click', '.remove_buttonICD', function(e){
        e.preventDefault();
        var x = 1;
        $(this).parent('div').remove(); //Remove field html
        x--; //Decrement field counter
    });
    
    </script>	  
    
   	<script>
	 var context = '${pageContext.request.contextPath}';		 
    function getprofiletabdata(){
 		 
 			
 			
	  	    $.ajax({
				type : "GET",
				url :context+"/getlistresponse?method=lstunknownpatients",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				success : function(response) {
					 var userDetails = '';
					 var slNo =1;
					 var loc='';
					   var lang = '<%= response.getLocale().getLanguage() %>'; 
					$("#tableListUnkown tr").slice(1).remove();  
					$.each(JSON.parse(response), function(i, item) {
			
						
					if (lang == "en")
						loc = item.locnameen;
				
					if (lang == "ar")
						loc = item.locnamear;
					
					if(item.notifid==null){
						item.notifid='';	
					}
						userDetails += '<tr>';
						userDetails += '<td>' +slNo + '</td>';
					
	                    userDetails += '<td>' +item.patidnumber   + '</td>';
	                 
	                    userDetails += '<td>' +loc   + '</td>';
	                	userDetails += '<td>' +item.notifid + '</td>';
	                    
	                    userDetails += '</tr>';
	                    slNo =slNo + 1;	
					});
					//table1 = $('#tableListUnkown').append(userDetails);
					//table1.dataTable();	
					
					   $('#tableListUnkown').DataTable().destroy();
	                 
	                   $('#tableListUnkown tbody tr').remove();
	                   var unkownListTable = $('#tableListUnkown').append(userDetails);
	                   unkownListTable.dataTable();
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 });
	  	    
	  	    
	  	  $.ajax({
				type : "POST",
				url : context+"/postlistresponse?method=lstnotifications",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				success : function(response) {
					 var userDetails = '';
					 var slNo =1;
					 var idname='';
					$("#notificationList tr").slice(1).remove();  
					$.each(JSON.parse(response), function(i, item) {
			            
			            if(item.patient.idtype =='U'){
			            	idname=item.patient.idnumber;
			            }
			            else{
			            	idname=item.patient.namear;
			            	
			            }
					
					
					userDetails += '<tr>';
					userDetails += '<td>' +slNo + '</td>';
	              
	                 userDetails += '<td>' +item.notifid   + '</td>';
	                 userDetails += '<td>' +item.patient.idnumber   + '</td>';
	                 if(item.patient.idtype !='U'){
	                 userDetails += '<td><a href="javascript:void(0);" onclick="editNotification($(this))">' +idname  +'<br/>' +item.patient.nameen   +'</a></td> ';
			            }
	                 else{
	                 userDetails += '<td><a href="javascript:void(0);" onclick="editNotification($(this))">' +idname +'</a></td> ';
	                 }
	                userDetails += '<td> <img src="img_new/edit1.png" onclick="editNotification($(this))"> </td>';
	                userDetails += '</tr>';
	                slNo =slNo + 1;	
					});
				  // $('#notificationList').append(userDetails);
				  // $('#notificationList').dataTable();	
				 
			         $('#notificationList').DataTable().destroy();
                 
                   $('#notificationList tbody tr').remove();
                   var notificationListTable = $('#notificationList').append(userDetails);
                   notificationListTable.dataTable();
				   
                  
				
				    },
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 });
		          
	   
		         
       getToken();

	} 


		
		var mapaction =[]; 
		var mapoutcome = []; 
		var mapposition = [];
		
		var base64StringCivil='';
		var base64StringPass='';	
		var Idtype=''; 
	    var idVal='';
	    var idValOther='';
	    var pulmonarytbcase=false;
	    var extrapulmonarytbcase=false;
	    var ptcd='';
	    var reqid='';
		var labtest = []; 
		var phones = []; 
		var radtest = []; 
		var civilbasestring='';
		  var nationality='';
		  var district='';
		  var residency='';
		  var governorate='';
		  var gender='';
		  var marital='';
		  var nationalitycd='';
		  var governoratecd='';
		  var gendercd='';
		  var maritalcd='';
		  var notifcd='';
		  var districtcd='';
		  var recidencycd='';
		  var historyold=''; 
		  var oldnotify='';
		
		  var lang = '<%= response.getLocale().getLanguage() %>'; 
		  
		   $(':radio').click(function() {
	      
	       clearDetailsOtherId();

	    	   if($('input[name="idType"]:checked').val() =='P'){
	    		   $('#pass').show();
	    		   $('#pass1').hide(); 
	    		     hidepassDetails();
	    		     $('#genderPass').hide();
	    		     $('#bloodgrpPass').hide();
	    		     $('#registerOther').hide();
	    		     $('#nationalityPass').show();
	    		     $('#passcivilOpenNotif').hide();
	    		     $('#passcivilAvailable').hide();
	    	   $('#changeIDName').text('<fmt:message key="passportId"/>:');
	    	   }
	    	   if($('input[name="idType"]:checked').val() =='G'){
	    		   $('#pass').show();
	    		   //$('#pass1').show();
                           $('#pass1').hide(); 
	    		      showpassDetails();
	    		     $('#genderPass').show();
	    		     $('#bloodgrpPass').show();
	    		     $('#registerOther').show();
	    		     $('#nationalityPass').show();
	    		     $('#passcivilOpenNotif').hide();
	    		     $('#passcivilAvailable').hide();
	    	   $('#changeIDName').text('<fmt:message key="gccID"/>:');
	    	   }
	    	   
	    	   
	    	   
	    	   if($('input[name="idType"]:checked').val() =='U'){
	    		   $('#pass').hide();
	    		   $('#pass1').hide();
	    		   hidepassDetails();
	    		   $('#genderPass').show();
	    		    $('#bloodgrpPass').show();
	    		    $('#registerOther').show();
	    		    $('#nationalityPass').hide();
	    		    $('#passcivilOpenNotif').hide();
	    		    $('#passcivilAvailable').hide();
	    	   }
	    	}) ; 
	    

	    	function getvalues(){
	    	
	    	
	    	
			   $.ajax({
	               type: "GET",
	               url:context+"/getlistresponse?method=lstpataction",
	    			contentType : "application/json",
	    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
	    			crossDomain : true,
	    			
	    			dataType : "json",		
	                success: function (datahere) {			                 
	               	 var response = JSON.parse(JSON.stringify(datahere));	
	                  	  $.each(response,function(i,response)
	    	 		            	 {
	    		   	                    
	    		   	              
	    		   	       	          if(lang=='en'){
	    		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	    		   	       	           mapaction.push({
	    		   	       	        	code: response.code, 
	    		   	       	            nameen: response.nameen
	    		   	                   });
	    		   	       	          
	    		   	       	          }
	    		   	       	          else{
	    		   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
	    		   	   	       	          }
	    	 		                  $(div_data).appendTo('#action'); 
	    	 		                
	    	 		    		  
	    	                       });
	                  	
	                },
	             error : function(jqXHR, textStatus, errorThrown) {
	     				
	     				if (jqXHR.status == "401"){
	     					
	     				   
	     				    }
	     			}
	         });
			   
			   
			   
			    $.ajax({
	                type: "GET",
	                url:context+"/getlistresponse?method=lstpatposition",
	     			contentType : "application/json",
	     			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
	     			crossDomain : true,
	     			
	     			dataType : "json",		
	                 success: function (datahere) {			                 
	                	 var response = JSON.parse(JSON.stringify(datahere));	
	                   	  $.each(response,function(i,response)
	     	 		            	 {
	     		   	                    
	     		   	              
	     		   	       	          if(lang=='en'){
	     		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
	     		   	       	    
	     		   	       	            mapposition.push({
  		   	       	        	        code: response.code, 
  		   	       	                    nameen: response.nameen
  		   	                            });
	     		   	       	          }
	     		   	       	          else{
	     		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
	     		   	   	       	          }
	     	 		                  $(div_data).appendTo('#patPosition'); 
	     	 		                  $(div_data).appendTo('#patPositionPRC'); 
	     	 		                
	     	 		    		  
	     	                       });
	                   	
	                 },
	              error : function(jqXHR, textStatus, errorThrown) {
	      				
	      				if (jqXHR.status == "401"){
	      					
	      				   
	      				    }
	      			}
	          });
	    	


		  	    $.ajax({
                    type: "GET",
                    url:context+"/getlistresponse?method=lsttreatoutcome",
         			contentType : "application/json",
         			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
         			crossDomain : true,
         			
         			dataType : "json",		
                     success: function (datahere) {			                 
                    	 var response = JSON.parse(JSON.stringify(datahere));	
                       	  $.each(response,function(i,response)
         	 		            	 {
         		   	                    
         		   	             
         		   	       	          if(lang=='en'){
         		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
         		   	       	        mapoutcome.push({
	   	       	        	        code: response.code, 
	   	       	                    nameen: response.nameen
	   	                            });
         		   	       	          }
         		   	       	          else{
         		   	       	        var div_data="<option value="+response.code+">"+response.namear+"</option>";
         		   	   	       	          }
         	 		                  $(div_data).appendTo('#treatOutcome'); 
         	 		                
         	 		    		  
         	                       });
                       	
                     },
                  error : function(jqXHR, textStatus, errorThrown) {
          				
          				if (jqXHR.status == "401"){
          					
          				   
          				    }
          			}
              });
	    	
		   } 	
	    	
	    	
	    	
	    	function openICD(){
				  
				
		    	 var searchval="D";
		    	  openicdWindow(searchval);	
		    }
			 
		    function openICDPCR(){
		    	
		    	var searchval="PRC";
		    	  openicdWindow(searchval);	
		    } 
		
			 
			 function downloadAsPDFCivil(){
				 downloadfile(base64StringCivil);
				 }
			 
			 
	             function downloadAsPDFPass(){
				 downloadfile(base64StringPass);
				 } 
		       
	     
             
             
             
       function downloadfile(base64String){
		
		
		 var myJSONObj =JSON.stringify({"civilData": base64String});
	   	 $.ajax({
    	        url: context+"/getFileUploaded",
    	  
    	        type: "POST",
    	        data:myJSONObj,	
    	        
    	        contentType: "application/json;charset=UTF-8",
    	      
    	          
    	        success: function (data) {
    	        	   var context = "${pageContext.request.contextPath}" 
    	           
    	        	  window.open( context+"/getFile", "_blank") || window.location.replace(context+"/getFile");
    	            },
    	            error: function(request,status,errorThrown) {
    	        
    	           
    	         }
    	    });
	   	 }  

       
 function updateLab(currentElement,count){
    	   
    	 
			
    		 var jsonObj = {  
    				    "reqid":reqid ,
    					"patcd":ptcd,
    				    "prc":null,
    				    "notifid":notifcd,
    					"patient":{
    						"idnumber":idVal,
    						"idtype":Idtype,
    						"ptcd":ptcd
    					 },
    				     "lab":[
    						
    					]
    				  };
				   var labtest = {};
                  
				   labtest.code = currentElement.closest("tr").find('td:eq(1)').text();
				 
				   labtest.result=$('#pcrlabresults'+count).val();
				  
				   labtest.requester=$('#requester'+count).val();
				   var labDate = $('#labDate'+count). datepicker('getDate');
					var labDatedt=$.datepicker.formatDate('dd/mm/yy', labDate);  
                    labtest.exdate=labDatedt;
				   labtest.doctorname='';
				   labtest.locationtype='E'; 
				   labtest.exid=currentElement.closest("tr").find('td:eq(2)').text();
				   labtest.isprc='N';
				   jsonObj.lab.push(labtest);
                 
             
		 
    		 var myJSONObj =JSON.stringify(jsonObj);
       
    		   $.ajax({
    			    type: "POST",
    			    url:context+"/apiResponse?method=updatenotiflabtest",
    			    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
    					contentType : "application/json",
    					crossDomain : true,
    					data:myJSONObj,	
    					dataType : "json",		
    			        success: function (data) {			                 
    			 	  
    			             if(data.code=="1"){
    			          
    			            	 $("#updateLabData").modal('show');
    			            	 
    			             	
    			             	
    			             }
    			          


    			                },
    			          error : function(jqXHR, textStatus, errorThrown) {

    			    if (jqXHR.status == "401"){


    			     }
    			     
    			          }
    			});
       
       
       
       }   
       
       
 function clearcheckother(){
	   
	  $('input[type=radio]').each(function() 
			  { 
				 
			          this.checked = false; 
			  }); 
	  $('#changeIDName').text('<fmt:message key="passportId"/>:');
}  
       
 
	 
function updateRad(currentElement,count){
    	   
    	   
			
  		 var jsonObj = {  
  				    "reqid":reqid ,
  					"patcd":ptcd,
  				    "prc":null,
  				    "notifid":notifcd,
  					"patient":{
  						"idnumber":idVal,
  						"idtype":Idtype,
  						"ptcd":ptcd
  					 },
  				     "radiology":[
  						
  					]
  				  };
  	   
  		        var radtest = {}
                var self = $(this);
				 radtest.code =  currentElement.closest("tr").find('td:eq(1)').text();
				 
				 radtest.result=$('#radresults'+count).val();
				  
				 radtest.requester=$('#requesterRad'+count).val();
				  
				 radtest.notes=$('#notesRad'+count).val();
				 var radDate = $('#radDate'+count). datepicker('getDate');
				 var radDatedt=$.datepicker.formatDate('dd/mm/yy', radDate);  
				 radtest.exdate=radDatedt;
				 radtest.doctorname='';
				 radtest.locationtype='E';
				 radtest.exid=currentElement.closest("tr").find('td:eq(2)').text();
				 radtest.isprc='N';
				   jsonObj.radiology.push(radtest);
               
            
		 
  		 var myJSONObj =JSON.stringify(jsonObj);
     
  		   $.ajax({
  			    type: "POST",
  			    url:context+"/apiResponse?method=updatenotifradiology",
  			    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
  					contentType : "application/json",
  					crossDomain : true,
  					data:myJSONObj,	
  					dataType : "json",		
  			        success: function (data) {			                 
  			 	  
  			             if(data.code=="1"){
  			          
  			            	$('#updateRadData').modal('show');
  			            		
  			             	}
  			                },
  			          error : function(jqXHR, textStatus, errorThrown) {

  			    if (jqXHR.status == "401"){


  			     }
  			     
  			          }
  			});
     
     
     
     }  
       
       
       
  function setcivilIDlabel(){
	  $('#IDName').text('<fmt:message key="label.civilid"/>:');
  }
     
     
     
   function editNotification(currentElement){
	   $('#edit').hide(); 
			 var id = currentElement.closest("tr").find('td:eq(1)').text();
			 notifcd=id;
			 var subcodeval='';
			 var subcodevalHos='';
			  var myJSONObj =JSON.stringify({"notifid": id});
			  
			  
			     clearPageData();
			     $('#notifyID').text(notifcd);
			     $("#addLabTest").find("tr:gt(0)").remove();
			     $("#notifyIDShow").show();
				 $("#isolateddate").hide();
				 $("#approvalSec").hide();
				 $("#pcrdate").hide();
				  labtestdata=[];
				  labtest = [];
				  radtestData=[];
				$.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=getnotificationinfo",
		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
		            	  
			                    if(data.code=="1"){
			         
			                    	
			                    	labtest.length = 0; 
			                    	radtest.length = 0; 
			                    	var labdata='';
			                    	var raddata='';
			                    	
			                    	civilbasestring='';
			                    	base64StringCivil='';
			                    	base64StringPass='';
			                    	
			                    	count = 0;
			                    	countRad = 0;
			                    	for(var i = 0; i < data.details.length; i++){
			                    	
			                    		  var id = data.details[i];
			                    		  reqid=id.reqid;
			                    		 
			                    		  $("#riskFactorPRC").val(id.riskfactor);
			                    		  $("#hospCat").val(id.notiflocationtype);
			                    		  
			                    		  if(id.notiflocationtype=='G'){
			                    			  $("#gov").show(); 
			                    			  $("#hospName").val(id.notifsendertype);
			                    			  
			                    		  }
			                    		  if(id.notiflocationtype=='P'){
			                    			  $("#private").show();
			                    			  $("#hospName").val(id.notifsender);
			                    			  
			                    		  }
			                    		  
			                    		  $("#approvalSec").show();
			                    	
			                    		  $("#approvedby").text(id.approvedby);
			                    		  $("#approvedbyName").text(id.approvedbyname);
			                    		  $("#approvedate").text(id.approveddate);
			                    		  $("#action").val(id.action);
			                    		  $("#assignees").val(id.assignto);
			                    		  $("#treatOutcome").val(id.outcome);
			                    		
			                    		  $("#patPosition").val(id.position);
			                    		  $("#notifycat").val(id.notifcategory);
			                    		  $("#locDisease").val(id.diseasecd);
			                    		  $("#phyName").val(id.physicname);
			                    		  $("#phyNo").val(id.physicphone);
			                    		  $("#fileNo").val(id.fileno);
			                    	         $("#referralDate").val(id.referreddate);
			                    		  if((id.action=='4')){
			                    			 
			                    			  $("#isolateddate").show();
			                    		      $("#isolateddt").val(id.isolateddt);
			                    		  }
			                    		  if((id.action=='3')){
			                    			  $("#pcrdate").show();
			                    		      $("#pcrdateref").val(id.prcreferraldt);
			                    		  }
			                    		  
			                    		    ptcd=id.patient.ptcd;
			                    		    $('#civilid').val(id.patient.idnumber);
			                    		    
			                    		    if(id.patient.idtype=='P'){
			                    		    $('#IDName').text('<fmt:message key="passportId"/>:');
			                    		    }
			                    		    if(id.patient.idtype=='U'){
				                    		    $('#IDName').text('<fmt:message key="unknown"/>:');
				                    		    }
			                    		    
			                    		    if(id.patient.idtype=='G'){
				                    		    $('#IDName').text('<fmt:message key="gccID"/>:');
				                    		    }
			                    		    if(id.patient.idtype=='C'){
			                    		    $('#IDName').text('<fmt:message key="label.civilid"/>:');
			                    		    }
			                    		    
			                    		    ptcd=id.patient.ptcd;
			                    		    Idtype=id.patient.idtype;
			                    		    idVal=id.patient.idnumber;
			                    		    $('#nameAr').text(id.patient.namear);
          			                    	$('#nameEn').text(id.patient.nameen);    
          			                    	$('#mobile').text(id.patient.patphone);
          			                    	if(id.patient.gender=='M'){
          			                    		$('#gender').text('Male');
          			                    		}
          			                  	    if(id.patient.gender=='F'){
      			                    		$('#gender').text('Female');
      			                    		}
          			                  	   if(id.patient.maritalstatus=='M'){
      			                    		$('#marital').text('Married');
      			                    		}
      			                  	       if(id.patient.maritalstatus=='S'){
  			                    		    $('#marital').text('Sindgle');
  			                    		    }
      			                  	        if(id.patient.maritalstatus=='D'){
 			                    		    $('#marital').text('Divorced');
 			                    		    }
          			                    	if(lang=='en'){
          			                    	$('#governorate').text(id.patient.govnameen);	
          			                    	$('#nationality').text(id.patient.natnameen); 
          			                    	$('#district').text(id.patient.distnameen); 
          			                       $('#recidency').text(id.patient.residencynameen);  
          			                    	}
          			                  	   if(lang=='ar'){
          			                  			$('#governorate').text(id.patient.govnamear);
              			                    	$('#nationality').text(id.patient.natnamear);
              			                    	$('#district').text(id.patient.distnamear); 
              			                    	 $('#recidency').text(id.patient.residencynamear);  
              			                    	}
          			                  	   // 
          			                  	    gendercd=id.patient.gender;
          			                  	    nationalitycd=id.patient.nationality;
          			                  	    governoratecd=id.patient.governorate;
          			                  	    districtcd=id.patient.district;
          			                  	    recidencycd=id.patient.residency;
          			                  	    maritalcd=id.patient.maritalstatus;
          			                     	$('#entryDate').text(id.patient.entrydate); 
          			                     	$('#address').text(id.patient.address); 
          			                    	$('#sponsor').text(id.patient.sponsorcid); 
          			                      
          			                     	//$('#marital').text(marital);
          			                     	$('#dob').text(id.patient.birthdate);
          			                        $("#patPhone").val(id.patient.patphone);
          			                     	$('#worplace').text(id.patient.workplace); 
          			                    	$('#occupation').text(id.patient.occupation);
          			                        $('#bloodgroup').text(id.patient.bloodgroup);
          			                      // $('#governorate').text(governorate);
          			                        $('#patPositionPRC').val(id.prc.position);
          			                        $('#medResistance').val(id.prc.medresistance);
          			                        $('#treatCat').val(id.prc.treatcategory);
          			                         $('#treatStartdate').val(id.prc.treatstartdt);
          			                        $('#addmitedDate').val(id.prc.admitteddt);
          			                        $('#disDate').val(id.prc.dischargedt);
          			                        $('#startDoseDate').val(id.prc.dosesstartdt);
          			                        $('#enddosesDate').val(id.prc.dosesenddt);
          			                        $('#phyNamePRC').val(id.prc.physicname);
          			                        $('#diagnotes').val(id.prc.notes);
          			                        $('#fileNoPRC').val(id.prc.prcfile);
          			                       base64StringCivil=id.attachment1;
          			                       base64StringPass=id.attachment2;  
          			                    if(id.outcome!=''&& id.outcome!="null"){
			                    			  $('#edit').show();
			                    		  }
          			                    else{
          			                      $('#edit').hide();
          			                    	
          			                    }
          			                         	if (!(base64StringCivil == null || base64StringCivil.trim() === '')){	
          			                        	 $('#downlodcivil').show();	
          			                         }
          			                        	if (!(base64StringPass == null || base64StringPass.trim() === '')){	 
          			                     
        			                        	
          			                    	 $('#downlodpass').show();
       			                           }
          			                       
          			                      if(id.patient.phones!=null){
          			                      if(id.patient.phones.indexOf(",")!=-1){
          			                    	
          			                        var	phonesVal =[]; 
          			                      phonesVal=id.patient.phones.split(",");
          			                        
          			                        	
          			                        	
          			                        	$.each(phonesVal , function(index, val) { 
          			                        		if(index>0){
          			                        		 $(".add_button").click();
          			                        		}
          			                        		 $('#patPhone'+index).val(val);
          			                        	});

          			                      }
          			                      else{
          			                    	  
          			                    	$('#patPhone0').val(id.patient.phones);
          			                    	  
          			                      }
          			                       }   	
          			                 for(var j = 0; j < id.lab.length; j++){ 
          			                        
          			                    	  labdata= id.lab[j];
          			                      var type=labdata.typecode+","+labdata.code+","+labdata.exid;

          			                 	
          			                      
          			                      labtest.push({
          			                 		  			    value: labdata.name,
          			                 		  			    type: type
          			                 		  			  
          			                 		  			  });
          			                 	       }
          			                   
          			                 
          			               
          			                   
          			                      createTable(labtest,"update");
          			                      
          			                      
          			                    setTimeout(function() { 
          			                    	 for(var j = 0; j < id.lab.length; j++){ 
                			                        
            			                    	  labdata= id.lab[j];
            			      
            			                    	 $('#pcrlabresults'+j).val(labdata.result).attr("selected", "selected");

            			                    	 $('#requester'+j).val(labdata.requester).attr("selected", "selected");

            			                    	 $('#labDate'+j).val(labdata.exdate);
            			                    	 $('#notesLab'+j).val(labdata.notes);
            			                 	       }
          			                  }, 1000);
          			               
          			                
          			                 
          			                    
          			                    
          			                    
          			                  for(var j = 0; j < id.radiology.length; j++){ 
        			                        
      			                    	  raddata= id.radiology[j];
      			                    	  var type=raddata.code+","+raddata.exid;

      			                    	radtest .push({
      			                 		  			    value: raddata.name,
      			                 		  			    type: type
      			                 		  			  
      			                 		  			  });
          			                                }
      			                 	
          			                    createTableRad(radtest);
          			            
          			             if(id.lab.length>0){
          			                  $('#addLabTest tr th:nth-child(10),tr td:nth-child(10)').show(); 
          			               }
          			             if(id.radiology.length>0){
          			                  $('#radTestlistResult tr th:nth-child(12),tr td:nth-child(12)').show(); 
          			                 
          			             }
          			                 
          			           setTimeout(function() { 
          			        	 for(var j = 0; j < id.radiology.length; j++){ 
  			                        
       			                	raddata= id.radiology[j];
       			                	
  			                    	 $('#radresults'+j).val(raddata.result).attr("selected", "selected");

  			                    	 $('#requesterRad'+j).val(raddata.requester).attr("selected", "selected");

  			                    	 $('#radDate'+j).val(raddata.exdate);
  			                    	 $('#notesRad'+j).val(raddata.notes);
  			                 	       }
			                  }, 1000);
			                 
          			             
          			             
          			             
          			             
          			             
          			                for(var j = 0; j < id.diagnosis.length; j++){ 
          			                	var diagdata='';
          			                	diagdata= id.diagnosis[j];
      			                      if((diagdata.extype).toString()=='D'&& (diagdata.isprc).toString()=='N'){
      			                    	 
      			                    	
          			                	$("#diagnosisMain").val(diagdata.code);
          			                	subcodeval=diagdata.subcode;
          			                	 $('#sourceTB').hide();
          			   		       
          			   		            var myJSONObj =JSON.stringify({"type": diagdata.code});
          			   		       
          			   		         $("#subdiagnosisMain").empty().append(new Option('Select',''));
          			                     $.ajax({
          			   		               type: "POST",
          			   		               url:context+"/apiResponse?method=getsubfortbdiagnosis",
          			   		    			contentType : "application/json",
          			   		    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
          			   		    			crossDomain : true,
          			   		    			data:myJSONObj,
          			   		    			dataType : "json",		
          			   		                success: function (datahere) {			                 
          			   		               	 var response = JSON.parse(JSON.stringify(datahere));	
          			   		                  	  $.each(response,function(i,response)
          			   		    	 		            	 {
          			   		    		   	                    
          			   		    		   	               
          			   		    		   	       	          if(lang=='en'){
          			   		    		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
          			   		    		   	       	          }
          			   		    		   	       	          else{
          			   		    		   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
          			   		    		   	   	       	          }
          			   		    	 		                  $(div_data).appendTo('#subdiagnosisMain'); 
          			   		    	 		                
          			   		    	 		    		  
          			   		    	                       });
          			   		                 $("#subdiagnosisMain").val(subcodeval).attr("selected", "selected");
          			   		               
          			   		                },
          			   		             error : function(jqXHR, textStatus, errorThrown) {
          			   		     				
          			   		     				if (jqXHR.status == "401"){
          			   		     					
          			   		     				   
          			   		     				    }
          			   		     			}
          			   		         }); 
          			                     
          			                     if(diagdata.code=='1'){
          			                   	  pulmonarytbcase=true;
          			                   	  $('#sourceTB').show();
          			                     }
          			                     if(diagdata.code=='2'){
          			                   	  extrapulmonarytbcase=true;
          			                   	  $('#sourceTB').show();
          			                     }
          			       
      			                      }
          			       
      			                    if((diagdata.extype).toString()=='D'&& (diagdata.isprc).toString()=='Y'){
          			                	$("#daignosisHos").val(diagdataHos.code); 
          			                	
          			                	subcodevalHos=diagdataHos.subcode;
                			   		       
           			   		            var myJSONObj =JSON.stringify({"type": diagdata.code});
           			   		            $("#subdiagnosisHos").empty().append(new Option('Select',''));

           			                     $.ajax({
           			   		               type: "POST",
           			   		               url:context+"/apiResponse?method=getsubfortbdiagnosis",
           			   		    			contentType : "application/json",
           			   		    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
           			   		    			crossDomain : true,
           			   		    			data:myJSONObj,
           			   		    			dataType : "json",		
           			   		                success: function (datahere) {			                 
           			   		               	 var response = JSON.parse(JSON.stringify(datahere));	
           			   		                  	  $.each(response,function(i,response)
           			   		    	 		            	 {
           			   		    		   	                    
           			   		    		   	             
           			   		    		   	       	          if(lang=='en'){
           			   		    		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
           			   		    		   	       	          }
           			   		    		   	       	          else{
           			   		    		   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
           			   		    		   	   	       	          }
           			   		    	 		                  $(div_data).appendTo('#subdiagnosisHos'); 
           			   		    	 		                
           			   		    	 		    		  
           			   		    	                       });
           			   		                $("#subdiagnosisHos").val(subcodevalHos).attr("selected", "selected");	
           			   		                
           			   		                },
           			   		             error : function(jqXHR, textStatus, errorThrown) {
           			   		     				
           			   		     				if (jqXHR.status == "401"){
           			   		     					
           			   		     				   
           			   		     				    }
           			   		     			}
           			                  }); 
           			         
      			                      }
      			                    
      			            
      			                    if((diagdata.extype).toString()=='I'&& (diagdata.isprc).toString()=='N'){
      			                    	
                                        var val="update";
      			                    	ProcessICDTableCreate(diagdata.code,diagdata.name,'D',val,diagdata.exid);
      			                    	
    			                      }
      			          
      			                  if((diagdata.extype).toString()=='I'&& (diagdata.isprc).toString()=='Y'){
      			                	var val="update";
    			                    	ProcessICDTableCreate(diagdata.code,diagdata.name,'PRC',val,diagdata.exid);
    			                    	
  			                      } 
      			                         
          			                     
          			                }	
      			            
      			             
			                    	}
			                    	 $("#home-tab").trigger("click"); 
			                    	 $('#saveNoti').hide();
			                    	 $('#updateNoti').show();
			                    	 $(".datepicker").datepicker("destroy");
			                    	 initialiseDataPicker();
			                    	 
                                 
			                      
			                    
			                    }
			                   
			                     	    },
			                    
			          error : function(jqXHR, textStatus, errorThrown) {

            if (jqXHR.status == "401"){
	

            }
            }
            }); 
				
				 getToken(); 
			 
		 }
	    
	    
	 
   
       
		function updateNotify(){
	    	
	    	$('#notifyCreate').hide();
         	$('#notifyUpdate').hide();
	    	
         	   var physnamehos=$('#phyName').val();
               var diagnotes=$('textarea[name="diagnotes"]').val();
               var patposition=$('#patPosition').val(); 
               var locationtype='E'
               var treatcategory= $('#treatCat').val();  
               var medresistance= $('#medResistance').val();
               var riskfactor= $('#riskFactorPRC').val();
               var action= $('#action').val();
               var occupation= $('#occupation').text();
               var workplace= $('#worplace').text();
               var maritalstatus= $('#marital').text();
               var phones = $(".phone_name").map(function(){ return $(this).val() }).get().join(', ');

                   var fileNo=$('#fileNo').val();
                   var startDoseDate = $('#startDoseDate'). datepicker('getDate');
				   var dosesstartdt=$.datepicker.formatDate('dd/mm/yy', startDoseDate);
			       var enddosesDate = $('#enddosesDate'). datepicker('getDate');
				   var dosesenddt=$.datepicker.formatDate('dd/mm/yy', enddosesDate);
				   var disDate = $('#disDate'). datepicker('getDate');
				   var dischargedt=$.datepicker.formatDate('dd/mm/yy', disDate);
				   var treatStartdate = $('#treatStartdate'). datepicker('getDate');
				   var treatstartdt=$.datepicker.formatDate('dd/mm/yy', treatStartdate);
				 
				   var notifcategory=$('#notifycat').val();
				   var diseasecd=$('#locDisease').val();
				   var outcome=$('#treatOutcome').val();
				   var outcomedate='';
				   var notiflocationtype=$('#locHeader').val();
				 
				   var notifdate='';
				   var physicphone=$('#phyNo').val();  
				   var approved='';
				   var approvedby='';
				   var approveddate='';
				   var position=$('#patPositionPRC').val(); 
				   var physicname=$('#phyNamePRC').val(); 
				   var prcfile=$('#fileNoPRC').val(); 
					 
				   var referaldate = $('#referralDate'). datepicker('getDate');
					var referaldt=$.datepicker.formatDate('dd/mm/yy', referaldate);  
						   	   
		    
			var admitteddtref= $('#addmitedDate'). datepicker('getDate');
			var admitteddt=$.datepicker.formatDate('dd/mm/yy', admitteddtref);  
				   
		   var pcrdateref = $('#pcrdateref'). datepicker('getDate');
			var prcreferraldt=$.datepicker.formatDate('dd/mm/yy', pcrdateref);  
				   
			var isolateddate = $('#isolateddate'). datepicker('getDate');
			var isolateddt=$.datepicker.formatDate('dd/mm/yy', isolateddate);    
				 
			var pulmonarytb='';
			var extrapulmonarytb='';
				  if(pulmonarytbcase) {
					pulmonarytb= $('#tbsource').val(); 
				  }
				 if(extrapulmonarytbcase) {
					 extrapulmonarytb= $('#tbsource').val();   
				  }
				 
				   var notifsender=$('#hospCat').val();	
	 
				   var notiflocationtype=$('#hospCat').val();
   				   var notifsender=$('#hospCat').val();
   				   if(notifsender=='G'){
   				       var notifsender=$('#hospName').val();
   				   }
   				    if(notifsender=='P'){
	   				   var notifsender=$('#hospNameP').val();
	   				   }	 
				var	jsonObjreq = 	{  
						    "reqid":reqid,
							"patcd":ptcd,
						    "notifid":notifcd,
						    "fileno":fileNo,
							"notiftype":"E",
							"notiflocationtype":notiflocationtype,
							"notifsender":notifsender, 
							"intref":"",
							"riskfactor":riskfactor,
							"position":patposition,
							"action":action,
							"prcreferraldt":prcreferraldt,
							"isolateddt":isolateddt,
							"referreddate":referaldt,
							"physicname":physnamehos,
							"physicphone":physicphone,
							"autoapproval":"",
							"patient":{
								"idnumber":idVal,
								"idtype":Idtype,
								"ptcd":ptcd,
								"occupation":occupation,
								"workplace":workplace,
								"maritalstatus":maritalcd,
                                "phones":phones,
							 },
							"diagnosis":[
											
										],
							"lab":[
								
							],
							"radiology":[
								
							]
							};
				 
				 
				 
				 
			
					   
				 
				  
				 
if((position!=''||position==null)&&( medresistance!=''||medresistance!=null)&&(treatcategory!=''||treatcategory!=null)&& (physicname!=''||physicname!=null)){         
		               
		   
		    	
		    	var jsonObj = {
	    			  
	    	        "reqid":reqid,
	    		"patcd":ptcd,
	    		"notifid":notifcd,
	    		"pulmonarytbcase":pulmonarytb,
	    		"extrapulmonarytbcase":extrapulmonarytb,
	    		"outcome":outcome,
	    		"outcomedate":outcomedate,
	    		"notifdate":notifdate,
				      
	    		  "prc":{
	    				 "prcid":"",
	    				 "prcfile":prcfile,
	    				 "position":position,
	    				"medresistance":medresistance,
	    				"treatcategory":treatcategory,
	    				"treatstartdt":treatstartdt,
	    				"dischargedt":dischargedt,	                                
	    				"admitteddt":admitteddt,
	    				"discharged":"",
	    				"dosesstartdt":dosesstartdt,
	    				"dosesenddt":dosesenddt,
	    				"notes":diagnotes,
	    				"physicname":physicname
	    		  },
				      "diagnosis":[],
				      "lab":[],
				      "radiology":[],
				      "attachment1": base64StringCivil,
			          "attachment2": base64StringPass
			 };
			
			
		    }
		    
		 
		    if(position==''||position==null){
			      var jsonObj = {
		    	    "reqid":reqid,
		    		"patcd":ptcd,
		    		"notifid":notifcd,
		    		"pulmonarytbcase":pulmonarytb,
		    		"extrapulmonarytbcase":extrapulmonarytb,
		    		"outcome":outcome,
		    		"outcomedate":outcomedate,
		    		"notifdate":notifdate,
		    		       "prc":{},
					      "diagnosis":[],
					      "lab":[],
					      "radiology":[],
					      "attachment1": base64StringCivil,
				          "attachment2": base64StringPass
				 };
		    }	
			 var diag = {};
			 var diagprc = {};
			    diag.code = $('#diagnosisMain').val();
			    diag.subcode = $('#subdiagnosisMain').val();
			    diag.extype='D';
			    diag.isprc='N';
			    diag.doctorname='';
			    diagprc.code = $('#daignosisHos').val();
			    diagprc.subcode = $('#subdiagnosisHos').val();
			    diagprc.extype='D';
			    diagprc.isprc='Y';
			    diagprc.doctorname='';
			    if(diag.code!=''){
			    	jsonObjreq.diagnosis.push(diag);
			    	 jsonObj.diagnosis.push(diag);
			    }
			    if(diagprc.code!=''){
			    	jsonObjreq.diagnosis.push(diagprc);
			    	 jsonObj.diagnosis.push(diag);
			    }
		    $("#icdtableD tr:not(:first)").each(function (i, value) {
				   var diag = {};
                 var self = $(this);
                 diag.code = self.find("td:eq(0)").text().trim();
                 diag.name = self.find("td:eq(1)").text().trim();
				    diag.extype='I';
				    diag.isprc='N';
				    diag.doctorname='';
				   if(diag.code!=''){
					   jsonObjreq.diagnosis.push(diag);
					   jsonObj.diagnosis.push(diag);
				   } 
             });
			   $("#diseasetableprc tr:not(:first)").each(function (i, value) {
				   var diag = {};
                 var self = $(this);
                 diag.code = self.find("td:eq(0)").text().trim();
                 diag.name = self.find("td:eq(1)").text().trim();
				    diag.extype='I';
				    diag.isprc='Y';
				    diag.doctorname='';
				   if(diag.code!=''){
					   jsonObjreq.diagnosis.push(diag);
					   jsonObj.diagnosis.push(diag);
				   } 
             });
			 $("#addLabTest tr:not(:first)").each(function (i, value) {
				   var labtest = {}
                   var self = $(this);
				   labtest.code = self.find("td:eq(1)").text().trim();
				   var extype = self.find("td:eq(2)").text().trim();
				   //labtest.result=$('#pcrlabresults'+i).val();
				   labtest.result=self.find("td:eq(4)").find("select").val();
				   //labtest.requester=$('#requester'+i).val();
				   labtest.requester=self.find("td:eq(5)").find("select").val();
				   labtest.locationtype='E';
				  // labtest.notes=$('#notesLab'+i).val();
				    var rowno= self.find("td:eq(10)").text().trim();
				    var labDate = $('#labDate'+rowno). datepicker('getDate');
					var labDatedt=$.datepicker.formatDate('dd/mm/yy', labDate);  
                   labtest.exdate=labDatedt;
				   labtest.doctorname=''; 
				   if(extype=="null"){
				   jsonObjreq.lab.push(labtest);
				   jsonObj.lab.push(labtest);
				   }
             });   
		    $("#radTestlistResult tr:not(:first)").each(function (i, value) {
		    	   var radtest = {}
                   var self = $(this);
				   radtest.code = self.find("td:eq(1)").text().trim();
				   var extype = self.find("td:eq(2)").text().trim();
				   radtest.result=self.find("td:eq(4)").find("select").val();
				   //radtest.result=$('#radresults'+i).val();
				   radtest.locationtype='E';
				   //radtest.requester=$('#requesterRad'+i).val();
				   radtest.requester=self.find("td:eq(5)").find("select").val();
				   //radtest.notes=self.find("td:eq(7)").text().trim();
				   var rowno= self.find("td:eq(10)").text().trim();
				   var radddt = $('#radDate'+rowno). datepicker('getDate');
				   var radDate=$.datepicker.formatDate('dd/mm/yy', radddt);  
				   radtest.notes=$('#notesRad'+rowno).val();
				   radtest.exdate=radDate
				   radtest.doctorname='';
				   if(extype=="null"){
				   jsonObjreq.radiology.push(radtest);
				   jsonObj.radiology.push(radtest);
				   }
             }); 	 
            var myJSONObj =JSON.stringify(jsonObjreq);
            $.ajax({
            type: "POST",
            url:context+"/apiResponse?method=updnotifrequest",
            headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
        		contentType : "application/json",
        		crossDomain : true,
        		data:myJSONObj,	
        		dataType : "json",		
                success: function (data) {	
                     if(data.code=="1"){
                    	 $('#notifyCreate').hide();
                      	 $('#notifyUpdate').show();
                     }
      },
                  error : function(jqXHR, textStatus, errorThrown) {
            if (jqXHR.status == "401"){
             }
                  }
        });  	     
				//after save
  var myJSONObj =JSON.stringify(jsonObj);
    $.ajax({
    type: "POST",
    url:context+"/apiResponse?method=updnotification",
    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		contentType : "application/json",
		crossDomain : true,
		data:myJSONObj,	
		dataType : "json",		
        success: function (data) {			                 
             if(data.code=="1"){
            	 $('#notifyCreate').hide();
              	 $('#notifyUpdate').show();
             }
                },
          error : function(jqXHR, textStatus, errorThrown) {
    if (jqXHR.status == "401"){
     }
          }
});  	
		 }    	
		var val='';
		 function getInfo(){
			 clearall();
			 historyold='';
			 $('#addLabTest tr th:nth-child(10),tr td:nth-child(10)').hide();
			 $('#radTestlistResult tr th:nth-child(12),tr td:nth-child(12)').hide();
			 $('#saveNoti').show();
			 $('#saveNotify').removeAttr("disabled");
			   $('#updateNoti').hide();
			     var civilId = $('#civilid').val();
			   $('#civilIDReg').val();
			     idVal=civilId;
			     Idtype='C';
			     var reg='C';
                            val='Reg';
			  var myJSONObj =JSON.stringify({"idnumber": civilId,"idtype":Idtype});
			//  $('#edit').hide();
			 $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=verifyopennotifs",
	               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	                success: function (data) {			                 
		                    if(data.code=="1"){
		                    	 $('#saveNotify').attr('disabled', 'true');
		                    	$('#civilid').val('');
		                    	 $('#notifyNo').text(data.result);
		                    	 $('#openNotifyModel').modal('show');
		                     	    }
		                    if(data.code=="-3"||data.code=='-2'){
		                    	$('#patientUnAvailable').hide();
		                    	 pathistory(civilId,Idtype);
		                    	 findpat(val,myJSONObj);
		                    }			
		              },
           error : function(jqXHR, textStatus, errorThrown) {
         if (jqXHR.status == "401"){
         }
         }
         }); 
			 getToken(); 
	    	
	    	}	 
		 function getinfoOther(){
			    clearDetailsBasic();
			    clearPageData();
			     $('#pass1').hide();
			    historyold='';
                val='Other';
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
	         	$('#worplaceOther').val('');
	         	$('#maritalOther').val('');
	         	$('#notifyIDShow').hide();
	         	$('#governorateOther').val('');
	         	$('#recidencyOther').val('');
			    $('#saveNoti').show();
			  $('#registerOther').removeAttr("disabled");
			  $('#updateNoti').hide();
			  idVal=$('#passportId').val();
			  Idtype=$('input[name="idType"]:checked').val();
			   if(Idtype=='P'){
       		    $('#IDName').text('<fmt:message key="passportId"/>:');
       		    }
       		    if(Idtype=='U'){
           		    $('#IDName').text('<fmt:message key="unknown"/>:');
           		    }
       		    if(Idtype=='G'){
        		    $('#IDName').text('<fmt:message key="gccID"/>:');
                      $('#registerOther').show();
        		    }
       		  $('#civilid').val(idVal);
			  var myJSONObj =JSON.stringify({"idnumber": idVal,"idtype": Idtype});
			 
		     pathistory(idVal,Idtype);
			  
			  
			  $.ajax({
	               type: "POST",
	               url:context+"/apiResponse?method=verifyopennotifs",
	               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					contentType : "application/json",
					crossDomain : true,
					data:myJSONObj,	
					dataType : "json",		
	                success: function (data) {			                 
	            	  
		                    if(data.code=="1"){
		                    	 $('#registerOther').hide();
		                    	// $('#saveNotify').attr('disabled', 'true');
		                    	 $('#notifyPass').text(data.result);
		                         $("#passcivil").hide();
			                     $("#passcivilOpenNotif").show();
			                     $('#passcivilAvailable').hide();
		                    	 //$('#openNotifyModel').modal('show');
		                    	 
		                     	    }
		                    
		                    if(data.code=="-3"||data.code=='-2'){
		                    	
		                      
		                    	$('#patientUnAvailable').hide();
		              			 
		          		    
		                    
		          		  findpat(val,myJSONObj);
		                    
		                    }
		                    
		                
		                    },
              error : function(jqXHR, textStatus, errorThrown) {

        if (jqXHR.status == "401"){


        }
        }
        });
			 
			 getToken();  
			 }
		 
         function findpat(val,myJSONObj){

             $.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=findpatient",
		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
						contentType : "application/json",
						crossDomain : true,
						data:myJSONObj,	
						dataType : "json",		
		                success: function (data) {			                 
		            	  
			                    if(data.code=="1"){
									if(val=='Other'){
								        showpassDetails();
    			                    	 $('#genderPass').show();
    			                    	 $('#bloodgrpPass').show();
    			                    	 if(data.details.idtype=='U'){
    			                    		 $('#IDName').text('<fmt:message key="unknown"/>:'); 
    			                    		 $('#civilid').val(data.details.idnumber); 
    			                    	 }
    			                    	 if(data.details.idtype=='P'){
    			                    		 $('#IDName').text('<fmt:message key="passport"/>:'); 
    			                    		 $('#civilid').val(data.details.idnumber); 
    			                    	 }
    			                    	 if(data.details.idtype=='G'){
    			                    		 $('#IDName').text('<fmt:message key="gccID"/>:'); 
    			                    		 $('#civilid').val(data.details.idnumber); 
    			                    	 } 
									
									
									     }
										 if(val=='Reg'){
										// $('#civilIDReg').val(civilId);
										 }
			                    	 if(lang=='en'){
				   	       	           nationality=data.details.natnameen;
				   	       	           governorate=data.details.govnameen;
				   	       	           district=data.details.distnameen;
				   	       	           residency=data.details.residencynameen;
				   	       	          }
				   	       	          else{
				   	       	           nationality=data.details.natnamear;
				   	       	           governorate=data.details.govnamear;
				   	       	           district=data.details.distnamear;
				   	       	           residency=data.details.residencynamear;
				   	   	       	          }
			                   	 if (data.details.gender == "F"){
		                    		 gender='Female';
		                    		 
		                    	 }
		                    	 if (data.details.gender == "G"){
                                       gender='Male';
			                    		 }
		                    	 
		                     	 if (data.details.maritalstatus == "S"){
		                    		 marital='Single';
		                    		 
		                    	 }
		                    	 if (data.details.maritalstatus == "M"){
		                    		 marital='Married';
			                    		 }
		                     	 if (data.details.maritalstatus == "D"){
		                    		 marital='Divorced';
			                    		 }
		                    	 
		                     	$('#district').text(district); 
		                     	$("#district"+val).val(data.details.district); 
		                    	$('#civilIDReg').val($('#civilid').val());
			                    	$('#nameAr').text(data.details.namear); 
			                    	$("#name"+val+"En").val(data.details.nameen); 
			                    	$('#nameEn').text(data.details.nameen);
			                    	$("#name"+val+"Ar").val(data.details.namear); 
			                    	$('#mobile').text(data.details.patphone); 
			                    	$("#mobile"+val).val(data.details.patphone); 
			                     	$("#gender"+val).val(data.details.gender); 
			                     	$('#gender').text(gender); 
			                     	$('#nationality').text(nationality);
			                     	$("#nationality"+val).val(data.details.nationality); 
			                     	 nationalitycd=data.details.nationality;
			                     	$('#entryDate').text(data.details.entrydate);
			                  	    $("#entryDate"+val).val(data.details.entrydate); 
			                    	$('#address').text(data.details.address);
			                    	 $("#address"+val).val(data.details.address); 
			                    	$('#sponsor').text(data.details.sponsorcid); 
			                    	 $("#sponsor"+val).val(data.details.sponsorcid);
			                    	 $("#recidency"+val).val(data.details.residency);
			                     	$('#recidency').text(residency);  
			                     	recidencycd=data.details.residency;
			                     	$('#marital').text(marital); 
			                     	$("#marital"+val).val(data.details.maritalstatus);
			                     	maritalcd=data.details.maritalstatus;
			                     	$("#dob"+val).val(data.details.birthdate);
			                     	$('#dob').text(data.details.birthdate);
			                     	$("#marital"+val).val(data.details.marital); 
			                    	$('#worplace').text(data.details.workplace);
			                    	$("#worplace"+val).val(data.details.workplace);
			                    	$("#occupation"+val).val(data.details.occupation);
			                     	$('#occupation').text(data.details.occupation);
			                     	$("#bloodgroup"+val).val(data.details.bloodgroup);
			                     	$('#bloodgroup').text(data.details.bloodgroup);
			                    	$("#governorate"+val).val(data.details.governorate);
			                    	governoratecd=data.details.governorate;
			                    	$('#governorate').text(governorate);
			                    	Idtype=data.details.idtype;
			                    	ptcd=data.details.ptcd;
			                    	gendercd=data.details.gender;
			                    	districtcd=data.details.district;
			                    	//if(val=='Reg'){
			                    	//$('#edit').show();
			                     	//    }
			                    }
			                    if(data.code=="-2"){
							     if(val=='Reg'){
							    	var civilIdReg= $('#civilid').val();	
			                   var myJSONObjCivil =JSON.stringify({"civilid": civilIdReg});
			        		        
			                  // 	$('#edit').hide();
			        		
			        				$.ajax({
			        		               type: "POST",
			        		               url:context+"/apiResponse?method=getpatinfo",
			        		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			        						contentType : "application/json",
			        						crossDomain : true,
			        						data:myJSONObjCivil,	
			        						dataType : "json",		
			        		                success: function (data) {			                 
			        		            	  
			        			                    if(data.code=="1"){
			        			                    	 if (data.details.gender == "F"){
			        			                    		 gender='Female';
			        			                    		 
			        			                    	 }
			        			                    	 
			        			                    	 if (data.details.gender == "G"){

			        				                    		 gender='Male';
			        				                    		 }
			        			                    	 if (data.details.maritalstatus == "S"){
			        			                    		 marital='Single';
			        			                    		 
			        			                    	 }
			        			                    	 if (data.details.maritalstatus == "M"){
			        			                    		 marital='Married';
			        				                    		 }
			        			                    	if(lang=='en'){
			          				   	       	           nationality=data.details.natnameen;
			          				   	       	           governorate=data.details.govnameen;
			          				   	       	            district=data.details.distnameen;
			          				   	       	            residency=data.details.residencynameen;
			          				   	       	          }
			          				   	       	          else{
			          				   	       	           nationality=data.details.natnamear;
			          				   	       	           governorate=data.details.govnamear;
			          				   	       	           district=data.details.distnamear;
			          				   	       	           residency=data.details.residencynamear;
			          				   	   	       	          }
			        			                    	$('#district').val(district);
			        			                    	 districtcd=data.details.district;
			        			                    	 nationalitycd=data.details.nationality;
			        			                    	 governoratecd=data.details.governorate;
			        			                    	 gendercd=data.details.gender;
			        			                    	 maritalcd=data.details.maritalstatus;
			        			                    	$('#civilIDReg').val(civilIdReg);
			          			                    	$('#nameAr').text(data.details.namear); 
			          			                    	$('#nameRegEn').val(data.details.nameen); 
			          			                    	$('#nameEn').text(data.details.nameen);
			          			                    	$('#nameRegAr').val(data.details.namear); 
			          			                    	$('#mobile').text(data.details.patphone); 
			          			                    	$('#mobileReg').val(data.details.patphone); 
			          			                     	$('#genderReg').val(data.details.gender); 
			          			                     	$('#gender').text(gender); 
			          			                     	$('#nationality').text(nationality);
			          			                     	$('#nationalityReg').val(data.details.nationality); 
			          			                     	$('#entryDate').text(data.details.entrydate);
			          			                  	    $('#entryDateReg').val(data.details.entrydate);
			          			                  	    $('#dob').text(data.details.birthdate);
		          			                  	        $('#dobReg').val(data.details.birthdate);
			          			                    	$('#address').text(data.details.address);
			          			                    	 $('#addressReg').val(data.details.address); 
			          			                    	$('#sponsor').text(data.details.sponsorcid); 
			          			                    	 $('#sponsorReg').val(data.details.sponsorcid);
			          			                    	 $('#recidencyReg').val(data.details.residency);
			          			                     	$('#recidency').text(residency);
			          			                          recidencycd=data.details.residency;
			          			                     	$('#marital').text(marital); 
			          			                     	$('#maritalReg').val(data.details.maritalstatus); 
			          			                    	$('#worplace').text(data.details.workplace);
			          			                    	$('#worplaceReg').val(data.details.workplace);
			          			                    	$('#occupationReg').val(data.details.occupation);
			          			                    	$('#occupation').text(occupation);
			          			                    	occupationcd=data.details.occupation;
			          			                     	$('#occupation').text(data.details.occupation);
			          			                        $('#bloodgroup').text(data.details.bloodgroup);
			          			                    	$('#bloodgroupReg').text(data.details.bloodgroup);
			          			                    	$('#governorate').val(data.details.governorate);
			          			                    	$('#governorate').text(governorate); 
			          			                         Idtype=data.details.idtype;
			        			                     var reg="reg";	 
			        			                 		var residencyOther=$('#recidencyRegOther1').val();

			        			                     	regPatient(idVal,gendercd,nationalitycd,governoratecd,maritalcd,reg,districtcd,recidencycd,residencyOther,occupationcd);
			        			                      
			        			                        $('#approvalSec').hide();
			        			                      
			        			                    }
			        			                    
			        			                    if(data.code=="-3"){

			        			                         }
			        			                    
			        			                   if(data.code=="-2"){
			        			                	  $('#saveNotify').attr('disabled', 'true');		 
			        			                    	 $('#dataUnavailable').show();  
                                                                                    $('#dbError').hide();
                                                                                   $('#civilid').val('');   
                                                                                   }

			        			                      if(data.code=="-4"){
			        			                	 $('#dbError').show();  
                                                                                  $('#dataUnavailable').hide();
			        			                    	}
			                                              },
			                             error : function(jqXHR, textStatus, errorThrown) {

			                       if (jqXHR.status == "401"){
			        	

			                       }
			                       }
			                       }); 
			                    	}
								else{
								
								 $('#updateOther').attr('disabled', 'true');  

		                  if(Idtype=='P'){
		                  $('#pass1').show();
		                   hidepassDetails();
		                  }

								}
			                         }
			                    
			                
			                 },
  				error : function(jqXHR, textStatus, errorThrown) {
  					if (jqXHR.status == "401") {
  					
  					}
  				}
  		 });
		 } 
 
        function validatepassAPI(){
			 var nationality=$('#nationalityOther').val();
			 var myJSONObjPass =JSON.stringify({
				 "idtype":Idtype,
				 "passportnumber":idVal,
				"nationality":nationality,
				 "civilidnumber":"",
				  });
					          			        				
			                          if(idVal!=''&& nationality!=''){
			 
			                                                   $.ajax({
					          			        		               type: "POST",
					          			        		               url:context+"/apiResponse?method=getmoipatinfo",
					          			        		               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					          			        						contentType : "application/json",
					          			        						crossDomain : true,
					          			        						data:myJSONObjPass,	
					          			        						dataType : "json",		
					          			        		                success: function (data) {			                 
					          			        		            	  
					          			        			                    if(data.code=="1"){
					          			        			                    	
					          			        			                    	
					          			        			                    	 if (data.details.gender == "F"){
					          			        			                    		 gender='Female';
					          			        			                    		 
					          			        			                    	 }
					          			        			                    	 
					          			        			                    	 if (data.details.gender == "M"){

					          			        				                    		 gender='Male';
					          			        				                    		 }
					          			        			                    	 if (data.details.maritalstatus == "S"){
					          			        			                    		 marital='Single';
					          			        			                    		 
					          			        			                    	 }
					          			        			                    	 if (data.details.maritalstatus == "M"){
					          			        			                    		 marital='Married';
					          			        				                    		 }
					          			        			                    	if (data.details.maritalstatus == "D"){
					          			        			                    		 marital='Divorced';
					          			        				                    		 }
					          			        			                    	if(lang=='en'){
					          			          				   	       	           nationality=data.details.natnameen;
					          			          				   	       	           governorate=data.details.govnameen;
					          			          				   	       	            district=data.details.distnameen;
					          			          				   	       	            residency=data.details.residencynameen;
					          			          				   	       	          }
					          			          				   	       	          else{
					          			          				   	       	           nationality=data.details.natnamear;
					          			          				   	       	           governorate=data.details.govnamear;
					          			          				   	       	           district=data.details.distnamear;
					          			          				   	       	           residency=data.details.residencynamear;
					          			          				   	   	       	          }
					          			        			                    	$('#district').text(district);
					          			        			                    	 districtcd=data.details.district;
					          			        			                    	 nationalitycd=data.details.nationality;
					          			        			                    	 governoratecd=data.details.governorate;
					          			        			                    	 gendercd=data.details.gender;
					          			        			                    	 maritalcd=data.details.maritalstatus;
					          			        			                    	recidencycd=data.details.residency;
					          			        			                    	
					          			          			                    	$('#nameAr').text(data.details.namear); 
					          			          			                    	$('#nameOtherEn').val(data.details.nameen); 
					          			          			                    	$('#nameEn').text(data.details.nameen);
					          			          			                    	$('#nameOtherAr').val(data.details.namear); 
					          			          			                    	$('#mobile').text(data.details.patphone); 
					          			          			                    	$('#mobileOther').val(data.details.patphone); 
					          			          			                     	$('#genderOther').val(data.details.gender); 
					          			          			                     	$('#gender').text(gender); 
					          			          			                     	$('#nationality').text(nationality);
					          			          			                     	$('#nationalityOther').val(data.details.nationality); 
					          			          			                     	$('#entryDate').text(data.details.entrydate);
					          			          			                  	    $('#entryDateOther').val(data.details.entrydate);
					          			          			                  	    $('#dob').text(data.details.birthdate);
				       			          			                  	            $('#dobOther').val(data.details.birthdate);
					          			          			                    	$('#address').text(data.details.address);
					          			          			                    	$('#addressOther').val(data.details.address); 
					          			          			                    	$('#sponsor').text(data.details.sponsorcid); 
					          			          			                    	$('#sponsorOther').val(data.details.sponsorcid);
					          			          			                    	$('#recidencyOther').val(data.details.residency);
					          			          			                     	$('#recidency').text(residency);  
					          			          			                     	$('#marital').text(marital); 
					          			          			                     	$('#maritalOther').val(data.details.maritalstatus); 
					          			          			                    	$('#worplace').text(data.details.workplace);
					          			          			                    	$('#worplaceOther').val(data.details.workplace);
					          			          			                    	$('#occupationOther').val(data.details.occupation);
					          			          			                     	$('#occupation').text(data.details.occupation);
					          			          			                        $('#bloodgroup').text(data.details.bloodgroup);
					          			          			                    	$('#bloodgroupOther').text(data.details.bloodgroup);
					          			          			                    	$('#governorateOther').val(data.details.governorate);
					          			          			                    	$('#governorate').text(governorate); 
					          			          			                        $('#districtOther').val(data.details.district);
					          			          			                        
					          			          			                        if(data.details.civilidnumber!=''||data.details.civilidnumber!=null){
					          			          			                        $('#civilpassno').text(data.details.civilidnumber);
					          			          			                  
					          			          			                         $("#passcivil").show();
					          			          			                         $("#passcivilOpenNotif").hide();
					          			          			                          $('#passcivilAvailable').show();
					          			          			                         $("#registerOther").hide();
					          			          			                          $('#footerPass').hide();
					          			          			                          $('#IDName').text('<fmt:message key="label.civilid"/>:');
					          			          			                         $('#civilid').val('');
					          			          			                       
					          			          			                        }
					          			          			                        else{
					          			          			                         showpassDetails();
					          			        			                    	 $('#genderPass').show();
					          			        			                    	 $('#bloodgrpPass').show();
					          			        			                    	 $('#footerPass').show();
					          			        			                         $("#passcivilOpenNotif").hide();
					          			        			                         $("#registerOther").show();
					          			        			                          $("#passcivil").hide();
					          			          			                          $("#passcivilOpenNotif").hide();
					          			          			                          $('#civilpassno').hide();
					          			          			                          $('#pass1').hide();
					          			          			                        }
					          			          			                     
					          			        			                      
					          			        			                        $('#approvalSec').hide();
					          			        			                      
					          			        			                    }
					          			        			                    
					          			        			                    if(data.code=="-1"){
					          			        			                    	
					          			        			                    	 showpassDetails();
					          			        			                    	 $('#genderPass').show();
					          			        			                    	 $('#bloodgrpPass').show();
					          			        			                    	 $("#registerOther").show();
					          			        			                    	 $("#passcivil").hide();
					          			          			                          $("#passcivilOpenNotif").hide();
					          			          			                          $('#civilpassno').hide();
					          			          			                          $("#passcivilOpenNotif").hide();
					          			          			                          $('#pass1').hide();
					          			        			                         }
					          			        			                    
					          			        			                   if(data.code=="-3"){
					          			        			                	  
					          			        			                    	}
					          			        			                    
					          			                                              },
					          			                             error : function(jqXHR, textStatus, errorThrown) {

					          			                       if (jqXHR.status == "401"){
					          			        	

					          			                       }
					          			                       }
					          			                       }); 
			 
			 
			                                                     }
			}
			 
			 function regPatientCiviledit() {
            	    clearDetailsBasic();
			         var entryDateReg='';
					 var entryDateRegVar='';
					 var birthDateReg='';
					 var birthDateRegVar='';
					 var update='C';
					 entryDateReg = $('#entryDateReg'). datepicker('getDate');
					 entryDateRegVar=$.datepicker.formatDate('dd/mm/yy', entryDateReg);
					
					  birthDateReg = $('#dobReg'). datepicker('getDate');
					  birthDateRegVar=$.datepicker.formatDate('dd/mm/yy', birthDateReg);
					
                	var nameRegEn=$('#nameRegEn').val();
                	$('#nameEn').text($('#nameRegEn').val());
                	var nameAr=$('#nameRegAr').val();
    			    $('#nameAr').text($('#nameRegAr').val());
    			    var nationality=$('#nationalityreg').val();
    			    var nationtext=$('#nationalityReg option:selected').text();
    			
    			    if(nationtext.toString().indexOf('Select')!= -1){
    			    	nationtext='';
    			    }
                   	$('#nationality').text(nationtext);
                    var gender=$('#genderReg').val();
                    var gendertext=$('#genderReg option:selected').text();
                    if((gendertext).indexOf('Select')!= -1){
                    	gendertext='';
    			    }
                   	$('#gender').text(gendertext);
                   	var mobile=$('#mobileReg').val();
                   	$('#mobile').text($('#mobileReg').val());
                   	var dob=birthDateRegVar;
                   	$('#dob').text(birthDateRegVar);
                   	var entryDate=entryDateRegVar;
                   	$('#bloodgroup').text($('#bloodgroupReg').val());
                   	var bloodgroup=$('#bloodgroupReg').val();
                   	$('#entryDate').text(entryDateRegVar);                   
                   	$('#address').text($('#addressReg').val());
                   	var address=$('#addressReg').val();
                   	var sponsor=$('#sponsorReg').val();
                   	$('#sponsor').text($('#sponsorReg').val());
                  	var occupation=$('#occupationReg').val();
                   	$('#occupation').text( $('#occupationReg').val());
                   	var worplace=$('#worplaceReg').val();
                   	$('#worplace').text( $('#worplaceReg').val());
                   	var marital=$('#maritalReg').val();
                   	
                    var maritaltext=$('#maritalReg option:selected').text();
                  
                    if(maritaltext.toString().indexOf('Select')!= -1){
                    	
                    	maritaltext='';
    			    }
                	$('#marital').text(maritaltext);
                     var residency=$('#recidencyReg').val();
                 	
                	var recidencytext=$('#recidencyReg option:selected').text();
                   	if(recidencytext.toString().indexOf('Select')!= -1){
                   		recidencytext='';
    			    }
                   	$('#recidency').text(recidencytext);
                 	var governoratetext=$('#governorateReg option:selected').text();
                    if(governoratetext.toString().indexOf('Select')!= -1){
                    	governoratetext='';
    			    }
                	var governorate=$('#governorateReg').val();
                	 $('#governorate').text(governoratetext);
                		
                    	var districttext=$('#districtReg option:selected').text();
                    	if(districttext.toString().indexOf('Select')!= -1){
                    		districttext='';
     			    }
                    	$('#district').text(districttext);
                	var residencyOther = $('#recidencyRegOther1').val();
                   	updatepatient(nameRegEn,nameAr,nationality,gender,mobile,dob,bloodgroup,entryDate,address,sponsor,occupation,
                   			worplace,marital,residency,residencyOther,governorate,update);           	
				}
			function updateOther(){
				clearDetailsBasic();
				 var entryDateReg='';
				 var entryDateRegVar='';
				 
				 var birthDateReg='';
				 var birthDateRegVar='';
				 var update='O';
			
				 entryDateReg = $('#entryDateOther'). datepicker('getDate');
				 entryDateRegVar=$.datepicker.formatDate('dd/mm/yy', entryDateReg);
				  birthDateReg = $('#dobOther'). datepicker('getDate');
				  birthDateRegVar=$.datepicker.formatDate('dd/mm/yy', birthDateReg);
            	var nameRegEn=$('#nameEnOther').val();
            	$('#nameEn').text($('#nameEnOther').val());
            	var nameAr=$('#nameArOther').val();
			    $('#nameAr').text($('#nameArOther').val());
			    var nationality=$('#nationalityOther').val();
			    var nationalitytext=$('#nationalityOther option:selected').text();
			   
                if(nationalitytext.toString()=='Select'){
                	nationalitytext='';
			    }             	
               	$('#nationality').text(nationalitytext);
                var gender=$('#genderReg').val();
                var gendertext=$('#genderOther option:selected').text();
                if(gendertext.indexOf('Select')!= -1){
                	gendertext='';
			    }             	
               	$('#gender').text(gendertext);
                var mobile=$('#mobileOther').val();
               	$('#mobile').text($('#mobileOther').val());
               	var dob=birthDateRegVar;
               	$('#dob').text(birthDateRegVar);
               	var entryDate=entryDateRegVar;
               	$('#bloodgroup').text($('#bloodgroupOther').val());
               	$('#entryDate').text(entryDateRegVar);
            	var bloodgroup=$('#bloodgroupOther').val();
               	$('#address').text( $('#addressOther').val());
             	var address=$('#addressOther').val();
               	var sponsor=$('#sponsorOther').val();
               	$('#sponsor').text($('#sponsorOther').val());
              	var occupation=$('#occupationOther').val();
               	$('#occupation').text( $('#occupationOther').val());
               	var worplace=$('#worplaceOther').val();
               	$('#worplace').text( $('#worplaceOther').val());
               	var marital=$('#maritalOther').val();
                var maritaltext=$('#maritalOther option:selected').text();
                if(maritaltext.toString()=='Select'){
                	maritaltext='';
			    }
               	$('#marital').text(maritaltext);
              	var residency=$('#residencyOther').val();
             	$('#recidency').text($('#residencyOther').val());
             	 var governoratertext=$('#governoraterOther option:selected').text();
                 if(governoratertext.toString()=='Select'){
                	 governoratertext='';
 			    }
            	var governorate=$('#governoraterOther').val();
            	
               	$('#governorate').text(governoratertext);
            	
            	var residencyOther = $('#recidencyRegOther1').val();

               	updatepatient(nameRegEn,nameAr,nationality,gender,mobile,dob,bloodgroup,entryDate,address,sponsor,occupation,
               			worplace,marital,residency,residencyOther,governorate,update);    
				
            	
			}
				function regPatient(idVal,gender,nationality,governorate,marital,reg,district,residency,residencyOther,occupationReg) {
					 var entryDateReg='';
					 var entryDateRegVar='';
					 var birthDateRegVar='';
					$('#patRegCivilId').hide();
					$('#patAlreadyRegCivilId').hide();  
					$('#saveDetailsSuccess').hide(); 
                	$('#updateDetailsSuccess').hide()
					entryDateRegVar = $('#entryDate'). text();
					birthDateRegVar=$('#dob'). text(); 
						var nameRegAr = $('#nameAr').text();
						var nameRegEn = $('#nameEn').text();
						var sponsorReg = $('#sponsor').text();
						var mobileReg = $('#mobile').text();
						var worplaceReg = $('#worplace').text();
						//var occupationReg = $('#occupation').text();
						var bloodgroupReg = $('#bloodgroup').text();
						var addressReg = $('#address').text();
						var entryDateRegVar=$('#entryDate').text();
						var birthDateRegVar=$('#dob').text();
						var patphone= new Array();
						$('input[name^="patMobile"]').each(function() 
								{
							patphone.push($(this).val());
								});
						//after save
						var myJSONObj =JSON.stringify({"idnumber": idVal,"idtype": Idtype,"nameen": nameRegEn,
							"namear": nameRegAr,"nationality": nationality,"gender":gender,"residency": residency, "residencyOther":residencyOther,"entrydate":entryDateRegVar,"address":addressReg,"governorate":governorate,"district":district,"birthdate":birthDateRegVar,
							"sponsorcid":sponsorReg,"patphone":patphone,"occupation":occupationReg,"workplace":worplaceReg,"maritalstatus":marital,"bloodgroup":bloodgroupReg});
						$.ajax({
				               type: "POST",
				               url:context+"/apiResponse?method=registerpatient",
				               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
								contentType : "application/json",
								crossDomain : true,
								data:myJSONObj,	
								dataType : "json",		
				               success: function (data) {			                 
					                    if(data.code=="1"){
					                    	ptcd=data.result;
					                    if(reg=='O'){
					                    	$('#saveDetailsSuccess').show(); 
					                    	$('#updateDetailsSuccess').hide(); 
					                    }
					                    if(Idtype=='U'){
					                    	idVal=data.type;
					                    	idValOther=data.type;
					                    }
					                    
					                    	
					                    }
					                    if(data.code=="-2"){
					                    	$('#saveDetailsSuccess').hide(); 
					                    	$('#updateDetailsSuccess').hide();         
					                    	
								               }
					         },
	error : function(jqXHR, textStatus, errorThrown) {
		if (jqXHR.status == "401"){
		   
		    }
	}
	}); 
       getToken(); 	
					}	
		 
function  updatepatient(nameRegEn,nameAr,nationality,gender,mobile,dob,bloodgroup,entryDate,address,sponsor,occupation,
						worplace,marital,residency,residencyOther,governorate,update)  {
					$('#patUpdateCivilId').hide();
					$('#updateDetailsSuccess').hide();
                 var myJSONObj =JSON.stringify({  
				             "reqid":reqid,
				           	 "patcd":ptcd,
				             "patient":
				             {
				              "ptcd":ptcd,
                             "idnumber": idVal,"idtype": Idtype,"nameen": nameRegEn,
							"namear": nameAr,"nationality": "1","gender":gender,"residency": residency,"residencyOther":residencyOther,"entrydate":entryDate,"address":address,"governorate":governorate,"district":"","birthdate":dob,
							"sponsorcid":sponsor,"patphone":mobile,"occupation":occupation,"workplace":worplace,"maritalstatus":marital,"bloodgroup":bloodgroup}});
						$.ajax({
				               type: "POST",
				               url:context+"/apiResponse?method=updatepatient",
				               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
								contentType : "application/json",
								crossDomain : true,
								data:myJSONObj,	
								dataType : "json",		
				               success: function (data) {			                 
				            	  
					                    if(data.code=="1"){
					                    	if(update=='C'){
					                    		$('#patUpdateCivilId').show();
					                    		
					                    	}
                                            if(update=='O'){
                                            	$('#updateDetailsSuccess').show();	
					                    	}
					                      }
					                    if(data.code=="-2"){
					                    	$('#patUpdateCivilId').hide();
					                    	$('#updateDetailsSuccess').hide();
								               }
	               
	},
	error : function(jqXHR, textStatus, errorThrown) {
		if (jqXHR.status == "401"){
		    }
	}
	});  
						getToken(); 
					
				} 
$.ajax({
    type: "GET",
    url:context+"/getlistresponse?method=lstOccupations",
		contentType : "application/json",
		headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		crossDomain : true,
		
		dataType : "json",		
     success: function (datahere) {			                 
    	 var response = JSON.parse(JSON.stringify(datahere));	
       	  $.each(response,function(j,response)
		            	 {
	   	       	          if(lang=='en'){
	   	       	           var div_data="<option value="+response.occupationId+">"+response.occupation_Name_EN+"</option>";
	   	       	          }
	   	       	          else{
	   	       	        var div_data="<option value="+response.occupationId+">"+response.occupation_Name_AR+"</option>";
	   	   	       	          }
		                 $(div_data).appendTo('#occupationOther');
		                 $(div_data).appendTo('#occupationReg');
		    
                     });
       	
     },
  error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status == "401"){
			    }
		}
}); 		
				function registerOther(){
					 clearDetailsBasic();
					 var entryDateReg='';
					 var entryDateRegVar='';
					 var birthDateReg='';
					 var birthDateRegVar='';
					 var reg='O';
					entryDateReg = $('#entryDateOther'). datepicker('getDate');  
					entryDateRegVar=$.datepicker.formatDate('dd/mm/yy', entryDateReg);
					birthDateReg = $('#dobOther'). datepicker('getDate');
					birthDateRegVar=$.datepicker.formatDate('dd/mm/yy', birthDateReg);
					Idtype=$('input[name="idType"]:checked').val();
					$('#nameOtherEn').val()
					idVal= $('#passportId').val();
			        $('#nameEn').text($('#nameOtherEn').val());
                	$('#nameAr').text($('#nameOtherAr').val());
                	var nationtext=$('#nationalityOther option:selected').text();
                	   if(nationtext.toString()=='Select'){
       			    	nationtext='';
       			    }
                    $('#nationality').text(nationtext);
                	var nationality=$('#nationalityOther').val();
                	nationalitycd=nationality;
                	var gendertext=$('#genderOther option:selected').text();
                	var districttext=$('#districtOther option:selected').text();
                	   if(districttext.toString()=='Select'){
                		   districttext='';
          			    }
             	   if((gendertext).indexOf('Select')!= -1){
             		  gendertext='';
    			    }
             	    $('#district').text(districttext);
                     var district=$('#districtOther').val();
                     districtcd=district;
                	$('#gender').text(gendertext);
                	var gender=$('#genderOther').val();
                	gendercd=gender;
                    var mobile = $(".patMobile").map(function(){ return $(this).val() }).get().join(',');
                    $('#mobile').text(mobile);
                	$('#dob').text(birthDateRegVar);
                	$('#bloodgroup').text($('#bloodgroupOther').val());
                	$('#entryDate').text(entryDateRegVar);
                	$('#address').text( $('#addressOther').val());
                	$('#sponsor').text($('#sponsorOther').val());
                	
                	$('#worplace').text( $('#worplaceOther').val());
                	var maritaltext=$('#maritalOther option:selected').text();
              	    if(maritaltext.toString()=='Select'){
              		 maritaltext='';
     			    }
                	$('#marital').text(maritaltext);
                	var marital=$('#maritalOther').val();
                	maritalcd=marital;
                	var recidencytext=$('#recidencyOther option:selected').text();
             	    if(recidencytext.toString()=='Select'){
             		  recidencytext='';
       			    }
             	    $('#recidency').text(recidencytext);
             	    var recidency=$('#recidencyOther').val();
             	    
             	   var occupationtext=$('#occupationOther option:selected').text();
            	    if(occupationtext.toString()=='Select'){
            	    	occupationtext='';
      			    }
            	    $('#occupation').text(occupationtext);
            	    var occupation=$('#occupationOther').val();
                	var governoratetext=$('#governorateOther option:selected').text();
              	    if(governoratetext.toString()=='Select'){
              	    	governoratetext='';
     			    }
                	$('#governorate').text(governoratetext);
                	var governorate=$('#governorateOther').val();	
                	governoratecd=governorate;
                	var residencyOther=$('#residencyOther1').val();
                	regPatient(idVal,gender,nationality,governorate,marital,reg,district,recidency,residencyOther,occupation);
                	 getToken(); 
				}
				$('input[type=radio][name=idType]').change(function() {
				    if (this.value == 'U') {
				    	 $('#IDName').text('<fmt:message key="unknown"/>:'); 
                		 $('#civilid').val(''); 
				    }
				    else if (this.value == 'P') {
				    	 $('#IDName').text('<fmt:message key="passport"/>:'); 
                	
				    }
				    else if (this.value == 'G') {
               		 $('#IDName').text('<fmt:message key="gccID"/>:'); 
            		
				    }
				})
	  function searchPatient() {
			$('#notifyhistory tbody').empty();
			 var id= $('#idTypeHis').val();
			 var myJSONObj =JSON.stringify({"idnumber":id,"ptcd":'',"idtype":'C'});
				
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=lstpatnotifhistory",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response!=''){
					 var userDetails = '';var table1='' ;
					 var slNo =1;var notifyloc='';
					 var lang = '<%= response.getLocale().getLanguage() %>'; 
					 for(var i = 0; i < response.details.length; i++)
					 {
					     var id = response.details[i];
					     if(lang=='en'){
					    	 notifyloc=id.notifsender ;	 
					     }
					     if(lang=='en'){
					    	 notifyloc=id.notifsenderar ;	 
					     }
					       var reqid = id.reqid;
					       userDetails += '<tr>';
						   userDetails += '<td>' +slNo + '</td>';
		                   userDetails += '<td>' +id.notifid   + '</td>';
		                   userDetails += '<td>' +id.patient.nameen   + '</td>';
		                   userDetails += '<td>' +id.patient.namear   + '</td>';
		                   userDetails += '<td>' +id.notifdate + '</td>';
		                   userDetails += '<td>' +notifyloc   + '</td>';
					 }
					
					table1 = $('#notifyhistory').append(userDetails);
					table1.dataTable();	
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 }); 
		}	 
		function deleteLab(){
			
			 $('#labdeletesuccess').hide();
			 var code= $('#labIDNew').val();
			 var rowno= $('#labRowNo').val();
			
			 var myJSONObj =JSON.stringify({"code":code,"type":ptcd});
				
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deletelabtest",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#labdeletesuccess').show();
					
					 $("#addLabTest  > tbody > tr:eq("+rowno+")").remove();
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 }); 
			
		}	
		function deleteRad(){
			 $('#raddeletesuccess').hide();
			 var code= $('#radID').val();
			 var row= $('#radRowNo').val();
			 var rowNo=row;
			 var myJSONObj =JSON.stringify({"code":code,"type":ptcd});
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deleteradiology",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#raddeletesuccess').show();
					
					 $("#radTestlistResult  > tbody > tr:eq("+rowNo+")").remove();					
					 }
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 }); 
			
		}
		function deletediseasehos(row){
			 var myJSONObj =JSON.stringify({"code":code,"type":type});
				
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deleteDiseases",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#labdeletesuccess').show();
					
					 $("#diseasetablehos  > tbody > tr:eq("+rowno+")").remove();
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 }); 
			
		}	
		
		function deletediseaseprc(row){
			 var code=  $('#labRowNo').val(row.closest("tr").find('td:eq(1)').text());
			 var rowno= $('#labIDNew').val(row.closest("tr").find('td:eq(2)').text());
			 var myJSONObj =JSON.stringify({"code":code,"type":type});
				
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deleteDiseases",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
					 $('#labdeletesuccess').show();
					
					 $("#diseasetableprc  > tbody > tr:eq("+rowno+")").remove();
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 }); 
			
		}	
		
		$("#hospName").change(function () {			
			 var value = this.value;
			if(value == "22"){
	  			 $('#govhospNameOther').show();         
			} else {
				$('#govhospNameOther').hide();    
				
			}
		});
		
		$("#recidencyOther").change(function () {
			 var value = this.value;
			if(value == "5"){
	  			 $('#residencyOtherPass').show();         
			} else {
				$('#residencyOtherPass').hide(); 
			}
		});
		
		$("#subdiagnosisMain").change(function () {
			
			 var value = this.value;
			if(value == "12"){
	  			 $('#subdiagnosisother').show();         
 			} else {
 				$('#subdiagnosisother').hide();    
 				
 			}
 		});
		
		 $('#radTestlistResult').on('change', '.abnormalList', function(){
			  var selectedValue = $(this).find('option:selected').text();
			  var selectedKey = $(this).find('option:selected').val();
		     var row = $(this).closest('tr');
		      var cellValue =  row.find('td:eq(12)').text();
		      if(selectedKey == "4" || selectedValue == "others"){
		    	  $("#otherabnormaldiseasevalue"+cellValue).prop('disabled', false);
		    	  } else {
		    	  $("#otherabnormaldiseasevalue"+cellValue).prop('disabled', true);
			}
		});
				
		 $('#radTestlistResult').on('change', '.radresults', function(){
		  var selectedValue = $(this).find('option:selected').text();
		     var row = $(this).closest('tr');
		      var cell1Value = row.find('td:eq(12)').text();
		      $("#abnormallist"+cell1Value).prop('disabled', false);
		      $("#abnormallist"+cell1Value+" option").remove();
			  $("#abnormallist"+cell1Value).append($("<option></option>")
	                    .attr("value", "")
	                    .text("Select"));
   	      if(selectedValue == "Abnormal"){
     	    	getAbnormalList(cell1Value);
   	      }
   		  else {
   			$("#abnormallist"+cell1Value).prop('disabled', true);
    	    $("#otherabnormaldiseasevalue"+cell1Value).prop('disabled', true);
   		  }

   	    });
		 
		$("#riskFactorPRC").change(function () {
			 var value = this.value;
			if(value == "17"){
	  			 $('#riskFactorPRCother').show();         
			} else {
				$('#riskFactorPRCother').hide();    
			}
		});
		$("#subdiagnosisHos").change(function () {
			 var value = this.value;
			if(value == "12"){
	  			 $('#subdiagnosisHosother').show();         
			} else {
				$('#subdiagnosisHosother').hide();    
			}
		});
		
	       $("#diagnosisMain").change(function () {
	    	   $('#diagError').hide();  
			 $('#sourceTB').hide();
		        var value = this.value;
		        var myJSONObj =JSON.stringify({"type": value});
		        getSubdiagnosis('Main',myJSONObj) ;  
                  
                  if(value=='1'){
                	  pulmonarytbcase=true;
                	  $('#sourceTB').show();
                  }
                  if(value=='2'){
                	  extrapulmonarytbcase=true;
                	  $('#sourceTB').show();
                  }
		 });
		$("#daignosisHos").change(function () {
		        var value = this.value;
		        var myJSONObj =JSON.stringify({"type": value});
		        getSubdiagnosis('Hos',myJSONObj) ;  
		});	
		$("#recidencyReg").change(function () {
			 var value = this.value;
			if(value == "5"){
	  			 $('#recidencyRegOther').show();         
			} else {
				$('#recidencyRegOther').hide();    
			}
		});
		function getAbnormalList(countAbnormal){		
		      $.ajax({
          	url:context+"/getlistresponse?method=lsAbnormalResults",
      		contentType : "application/json",
      		headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
      		crossDomain : true,
      		dataType : "json",		
           	success: function (datahere) {			                 
          	 var response = JSON.parse(JSON.stringify(datahere));	
             	  $.each(response,function(j,response)
      		            	 {
      	   	       	          if(lang=='en'){
      	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
      	   	       	          }
      	   	       	          else{
      	   	       	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
      	   	   	       	          }
      		                 $(div_data).appendTo('#abnormallist'+countAbnormal);
                           });
           },
		             error : function(jqXHR, textStatus, errorThrown) {
		     				if (jqXHR.status == "401"){
		     				    }
		     			}
		         }); 
		}

		function getSubdiagnosis(val,myJSONObj){
			  $("#subdiagnosis"+val+" option").remove();
			  $("#subdiagnosis"+val).append($("<option></option>")
	                    .attr("value", "0")
	                    .text("Select")); 
              $.ajax({
		               type: "POST",
		               url:context+"/apiResponse?method=getsubfortbdiagnosis",
		    			contentType : "application/json",
		    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		    			crossDomain : true,
		    			data:myJSONObj,
		    			dataType : "json",		
		                success: function (datahere) {			                 
		               	 var response = JSON.parse(JSON.stringify(datahere));	
		                  	   $.each(response,function(i,response)
		    	 		            	 {
		    		   	       	          if(lang=='en'){
		    		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
		    		   	       	          }
		    		   	       	          else{
		    		   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
		    		   	   	       	          }
		    	 		                  $(div_data).appendTo('#subdiagnosis'+val); 
		    	                       });
		                  	
		                },
		             error : function(jqXHR, textStatus, errorThrown) {
		     				if (jqXHR.status == "401"){
		     				    }
		     			}
		         }); 
		}

	     $("#governorateOther").change(function () {
	    	  var value = this.value;
		      var myJSONObj =JSON.stringify({"code": value});
		      getDistrictVal('Other',myJSONObj) ; 
		 });
		 
	     $("#governorateReg").change(function () {
	    	 var value = this.value;
		        var myJSONObj =JSON.stringify({"code": value});
		        getDistrictVal('Reg',myJSONObj) ; 
		  });
	     
	   function  getDistrictVal(val,myJSONObj){		   
	   
		   $("#district"+val+" option").remove();
		   $("#district"+val).append($('<option>', {
       	    value: " ",
       	   text:'<fmt:message key="label.select" />'
       	}));
		              $.ajax({
				               type: "POST",
				               url:context+"/apiResponse?method=lstgovdistricts",
				    			contentType : "application/json",
				    			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				    			crossDomain : true,
				    			data:myJSONObj,
				    			dataType : "json",		
				                success: function (datahere) {			                 
				               	 var response = JSON.parse(JSON.stringify(datahere));	
				                  	   $.each(response,function(i,response)
				    	 		            	 {
				    		   	                    
				    		   	                
				    		   	       	          if(lang=='en'){
				    		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
				    		   	       	          }
				    		   	       	          else{
				    		   	       	          var div_data="<option value="+response.code+">"+response.namear+"</option>";
				    		   	   	       	          }
				    	 		                  $(div_data).appendTo('#district'+val); 
				    	 		                
				    	 		    		  
				    	                       });
				                  	
				                },
				             error : function(jqXHR, textStatus, errorThrown) {
				     				
				     				if (jqXHR.status == "401"){
				     					
				     				    }
				     			}
				         }); 
	   }
		if (window.File && window.FileReader && window.FileList && window.Blob) {
			document.getElementById('fileCivilId0').addEventListener('change', getBase64, false);
		 } 
	/* if (window.File && window.FileReader && window.FileList && window.Blob) {
			   document.getElementById('filePassport').addEventListener('change', getBase64Pass, false);
	}  */
	

		    function getBase64(evt) {
		    $('#civilFileExtError').hide();	
		    $('#civilFileUploadError').hide();
			 var f = evt.target.files[0]; 
			 var ext='';
			 var inp = document.getElementById('fileCivilId0');
		     if(f.size > 2000000) {
		    	 $('#civilFileUploadError').show();
		    	 $('#civilFileExtError').hide();
		         $('#fileCivilId0').val('');
		       }
		     else{
			  var count = inp.files.length;
			  for (var i = 0; i < inp.files.length; ++i) {
			    var num = i + 1;
			    var name = inp.files.item(i).name;
			    ext = name.split('.');
			    ext = ext[ext.length - 1];
			  }
			  if(ext!='txt'){
			      var reader = new FileReader();
				   reader.readAsDataURL(f);
				   reader.onload = function () {
					 base64StringCivil =reader.result;
				   };
				   reader.onerror = function (error) {
				     console.log('Error: ', error);
				   };
		     }
		     else{
		    	 $('#civilFileUploadError').hide();
		    	 $('#civilFileExtError').show();
		         $('#fileCivilId0').val('');	 
		     }
			}
		    }
		 function getBase64Pass(evt) {
			 $('#passFileUploadError').hide();
			 $('#passFileExtError').hide();
			 var f = evt.target.files[0]; 
			 var ext='';
			 var inp = document.getElementById('filePassport');
			 if(f.size > 2000000) {
		    	 $('#passFileUploadError').show();
		    	 $('#passFileExtError').hide();
		         $('#filePassport').val('');
		       }
			 else{
			  var count = inp.files.length;
			  for (var i = 0; i < inp.files.length; ++i) {
			    var num = i + 1;
			    var name = inp.files.item(i).name;
			    ext = name.split('.');
			    ext = ext[ext.length - 1];
			   
			  }
			  if(ext!='txt'){
                   var reader = new FileReader();
				   reader.readAsDataURL(f);
				   reader.onload = function () {
					   base64StringPass =reader.result;
				   };
				   reader.onerror = function (error) {
				     console.log('Error: ', error);
				   };
			 }
		     else{
		    	 $('#passFileUploadError').hide();
		    	 $('#passFileExtError').show();
		         $('#filePassport').val('');	 
		     }
		 }
			
		 }	
		 
		 function delete_ICDRow(row)
		    {
			 $('#ICDNew').val(row.closest("tr").find('td:eq(2)').text());
	
			 var val=$('#ICDVal').val();
			 if(val=='update'){
			 $('#deleteICDTest').modal('show');	
			}
			else{
				row.closest('tr').remove();	
			}
		    }
		 
		function deleteICD(){
			var exval=$('#ICDNew').val();
			 $('#labICDDeletesuccess').hide();
			 var myJSONObj =JSON.stringify({"code":exval,"type":reqid});
				
		  $.ajax({
				type : "POST",
				url : context+"/apiResponse?method=deletediagnosis",
				contentType : "application/json",
				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				crossDomain : true,
				data:myJSONObj,	
				dataType : "json",	
				success : function(response) {
					if(response.code=='1'){
						var ICDValSearch=$('#ICDValSearch').val();
						var ICDValCount=$('#ICDValCount').val();
						$('#ICDrowId'+ICDValSearch+ICDValCount).remove();
						$('#labICDDeletesuccess').show();
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status == "401") {
					
					}
				}
		 }); 
		}	
		
	function delete_labrow(row)
		    {
			 var extype=row.closest("tr").find('td:eq(2)').text(); 
			 $('#labRowNo').val(row.closest("tr").find('td:eq(10)').text());
			 $('#labIDNew').val(row.closest("tr").find('td:eq(2)').text());
			 labtestName=row.closest("tr").find('td:eq(3)').text();
			 if(extype=='null'){
			 row.closest('tr').remove();	
			 labtest= $.grep(labtest, function(dt) {
				  return dt.value != labtestName;
				});
			 }
			 if(extype!='null'){
			 $('#deleteLabData').modal('show');	
		    }
		    }
	function delete_diseaserowprc(row)
    {
	 var extype=row.closest("tr").find('td:eq(0)').text(); 
	 diseaseName=row.closest("tr").find('td:eq(1)').text();
	 if(extype=='null' || extype=='undefined'){
	 row.closest('tr').remove();	
	 labtest= $.grep(labtest, function(dt) {
		  return dt.value != diseaseName;
		});
	 }
	 if(extype!='null'){
	 	//$('#deleteDiseaseprc').modal('show');	
    }
    }
	function delete_diseaserowhos(row)
    {
	 var extype=row.closest("tr").find('td:eq(0)').text(); 
	 diseaseName=row.closest("tr").find('td:eq(1)').text();
	 if(extype=='null' || extype=='undefined'){
	 row.closest('tr').remove();	
	 labtest= $.grep(labtest, function(dt) {
		  return dt.value != diseaseName;
		});
	 }
	 if(extype!='null'){
	 	//$('#deleteDiseasehos').modal('show');	
    }
    }
	
	function createTableDisease(disease,create,diseaseVal){
        $.each(disease, function(i, item) {
   		 var count = 0;
        	 var  userDetails,table1='';
        	  var value=item.type;
      	    var arr = value.split(',');
      	  	  var rowNum=count;
   	   count++;
                     	userDetails += '<tr>';
                    
                       userDetails += '<td style="display:none;">' +arr[0] + '</td>';
/*                        userDetails += '<td>' +item.type  + '</td>';
 */	                   userDetails += '<td>' +item.value + '</td>';
	                  	userDetails += '<td><a href="javascript:void(0)" class="remove_buttonLab c_point" onclick ="delete_diseaserow'+diseaseVal+'($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
	                   userDetails += '<td style="display:none;">' +rowNum  + '</td>';
	                   userDetails += '</tr>';
			           $('#diseasetable'+diseaseVal).append(userDetails);

        });    
  } 		
		 function multipleCheck(){
			  	var labtest1=[];
				 var create="new";
			  		$("input:checkbox[name='labtestcheck']:checked").each(function(){
			  			labtest1.push({
			  			    value: $(this).attr("value"),
			  			    type: $(this).attr("id")
			  			  
			  			  });
			  		});
			  		
			  		createTable(labtest1,create);
			 }
		 $(document).on('click', '#hosdisease', function(){
			 multipleCheckDisease("hos");
		    });
		 $(document).on('click', '#pcrdisease', function(){
			 multipleCheckDisease("prc");
		    });
		 function multipleCheckDisease(diseaseVal){
			  	var disease=[];
				 var create="new";
			  		$("input:checkbox[name='labtestcheck']:checked").each(function(){
			  			disease.push({
			  			    value: $(this).attr("value"),
			  			    type: $(this).attr("id")
			  			  });
			  			 
			  		});
			  		createTableDisease(disease,create,diseaseVal);
			 }
		 var count = 0;
		 var countRad = 0;
		function createTable(labtest,create){
			
			      var  userDetails,table1='';
			      var slNo=1,result='';
			             $.each(labtest, function(i, item) {
			            	   var rowNum=count;
			            	   count++;
			            	    var value=item.type;
			            	    var arr = value.split(',');
	                           userDetails += '<tr>';
		                       userDetails += '<td style="display:none;">' +slNo + '</td>';
		                       userDetails += '<td style="display:none;">' +arr[1] + '</td>';
		                       userDetails += '<td style="display:none;">' +arr[2] + '</td>';
			                   userDetails += '<td>' +item.value  + '</td>';
			                   userDetails += '<td><select class="form-control" id="pcrlabresults' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
			                   userDetails += '<td><input  type="text" class="form-control datepicker hasDatepicker" data-date-format="dd-mm-yy" id="labDate' + rowNum + '""></td>';
			                   userDetails += '<td><select class="form-control" id="requester' + rowNum + '"> <option selected="selected" value="">Select</option></select></td>';
			                   userDetails += '<td  style="display:none;"><input  type="text" class="form-control" id="notesLab' + rowNum + '""></td>';
			                 
			                   userDetails += '<td><a href="javascript:void(0)" class="remove_buttonLab c_point" onclick ="delete_labrow($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
			                   userDetails += '<td style="display:none;"><a href="javascript:void(0)" class="update_buttonLab c_point" onclick="updateLab($(this),'+rowNum+')"><img src="img/update.png" title="update"></a></td>';
			                   userDetails += '<td style="display:none;">' +rowNum  + '</td>';
			                  
			                   
			                   
			                   $.ajax({
			                        type: "GET",
			                        url:context+"/getlistresponse?method=getlocationtypes",
			             			contentType : "application/json",
			             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             			crossDomain : true,
			             			
			             			dataType : "json",		
			                         success: function (datahere) {			                 
			                        	 var response = JSON.parse(JSON.stringify(datahere));	
			                           	  $.each(response,function(j,response)
			             	 		            	 {
			                           	
			             	 		            
			             		   	                                 if(response.loctypecode=='1'||response.loctypecode=='2'||response.loctypecode=='3'||response.loctypecode=='4') { 
			             		   	              
			             		   	       	          if(lang=='en'){
			             		   	       	           var div_data="<option value="+response.loctypecode+">"+response.loctypeen+"</option>";
			             		   	       	          }
			             		   	       	          else{
			             		   	       	        var div_data="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
			             		   	   	       	          }
			             	 		                  $(div_data).appendTo("#requester"+rowNum); 
			             	 		                
			             		   	                  }
			             	                       });
			                           	
			                         },
			                      error : function(jqXHR, textStatus, errorThrown) {
			              				
			              				if (jqXHR.status == "401"){
			              					
			              				   
			              				    }
			              			}
			                  });
			                   
			                   
			                   
			          if(arr[0]=='P'){
			                	      var value="";
			                	      var select= "<fmt:message key="label.select"/>";
			                	      var div_data="<option value="+value+">"+select+"</option>";
			                	      $(div_data).appendTo("#pcrlabresults"+rowNum); 
			                		     
			                	   
			               	    $.ajax({
			                        type: "GET",
			                        url:context+"/getlistresponse?method=lstpcrresults",
			             			contentType : "application/json",
			             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             			crossDomain : true,
			             			
			             			dataType : "json",		
			                         success: function (datahere) {			                 
			                        	 var response = JSON.parse(JSON.stringify(datahere));	
			                           	  $.each(response,function(j,response)
			             	 		            	 {
			             		   	                    
			             		   	             
			             		   	       	          if(lang=='en'){
			             		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	       	          }
			             		   	       	          else{
			             		   	       	        var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	   	       	          }
			             	 		                  $(div_data).appendTo("#pcrlabresults"+rowNum); 
			             	 		                
			             	 		    		  
			             	                       });
			                           	
			                         },
			                      error : function(jqXHR, textStatus, errorThrown) {
			              				
			              				if (jqXHR.status == "401"){
			              					
			              				   
			              				    }
			              			}
			                  });  
			                   
			                   
			             }
			                   
			                   if(arr[0]=='C'){
			                	      var value="";
			                	      var select= "<fmt:message key="label.select"/>";
			                	      var div_data="<option value="+value+">"+select+"</option>";
			                	      $(div_data).appendTo("#pcrlabresults"+rowNum); 
			                		     
			                	   
			               	    $.ajax({
			                        type: "GET",
			                        url:context+"/getlistresponse?method=lstcultureresults",
			             			contentType : "application/json",
			             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             			crossDomain : true,
			             			
			             			dataType : "json",		
			                         success: function (datahere) {			                 
			                        	 var response = JSON.parse(JSON.stringify(datahere));	
			                           	  $.each(response,function(k,response)
			             	 		            	 {
			             		   	                    
			             		   	              
			             		   	       	          if(lang=='en'){
			             		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	       	          }
			             		   	       	          else{
			             		   	       	        var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	   	       	          }
			             	 		                  $(div_data).appendTo("#pcrlabresults"+rowNum); 
			             	 		                
			             	 		    		  
			             	                       });
			                           	
			                         },
			                      error : function(jqXHR, textStatus, errorThrown) {
			              				
			              				if (jqXHR.status == "401"){
			              					
			              				   
			              				    }
			              			}
			                  });  
			                   
			                   
			             }      
			                         if(arr[0]=='A'){
			                	      var value="";
			                	      var select= "<fmt:message key="label.select"/>";
			                	      var div_data="<option value="+value+">"+select+"</option>";
			                	      $(div_data).appendTo("#pcrlabresults"+rowNum); 
			                		     
			                	   
			               	    $.ajax({
			                        type: "GET",
			                        url:context+"/getlistresponse?method=lstafbresults",
			             			contentType : "application/json",
			             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             			crossDomain : true,
			             			
			             			dataType : "json",		
			                         success: function (datahere) {			                 
			                        	 var response = JSON.parse(JSON.stringify(datahere));	
			                           	  $.each(response,function(l,response)
			             	 		            	 {
			             		   	                if(lang=='en'){
			             		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	       	          }
			             		   	       	          else{
			             		   	       	        var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	   	       	          }
			             	 		                  $(div_data).appendTo("#pcrlabresults"+rowNum); 
			             	 		                
			             	 		    		  
			             	                       });
			                           	
			                         },
			                      error : function(jqXHR, textStatus, errorThrown) {
			              				
			              				if (jqXHR.status == "401"){
			              					
			              				   
			              				    }
			              			}
			                  });  
			                   
			                   
			             }       
			                   
			                  userDetails += '</tr>';
			                   slNo =slNo + 1;
			                   
			            });
			            
			            table1 = $('#addLabTest').append(userDetails); 
			             $('.datepicker').each(function() {
							    $(this).removeClass('hasDatepicker').datepicker();
							

							});	
		                	$(".datepicker").datepicker("destroy");
	                    	 initialiseDataPicker();
		  } 		
			           
						
	     function multipleCheckRad(){
			
		  	
	    		var radtestData1=[];
		  	
		  		$("input:checkbox[name='radtestcheck']:checked").each(function(){
		  		
		  			radtestData1.push({
		  			    value: $(this).attr("value"),
		  			    type: $(this).attr("id")
		  			  
		  			  });
		  			 
		  		});
		  		
		  		createTableRad(radtestData1);
		 
		 }
		 
		 
		 var radtestName='';
		
		 function delete_radrow(row)
		    {		        
			 var extype=row.closest("tr").find('td:eq(2)').text(); 
			 $('#radID').val(row.closest("tr").find('td:eq(2)').text());
			
			 $('#radRowNo').val(row.closest("tr").find('td:eq(10)').text());
			 radtestName=row.closest("tr").find('td:eq(3)').text();
			 if(extype=='null'){
			 row.closest('tr').remove();
			
		
		
			 }
			 if(extype!='null'){
			
			 $('#deleteRadData').modal('show');	
		    }
		    } 
		 
		 
		 $("#requesterRad").on('click',function(){
			 var currentRow=$(this).closest("tr");
			 /* var col1=currentRow.find("td:eq(0)").html();
			 var col2=currentRow.find("td:eq(1)").html();
			 var col3=currentRow.find("td:eq(2)").html();
			 var data=col1+"\n"+col2+"\n"+col3; */
			 alert(data);
		});
			  
		    var countRad=0;
           function createTableRad(radtest){
			 
			      var  userDetails,table1='';
			      var slNo=1,result='';
			    
			             $.each(radtest, function(i, item) {
			            	    var value=item.type;
			            	    var arr = value.split(',');
			            	  
			            	   var count=countRad;
			            	    countRad++;
			            	    slNo = slNo + 1;
			            	   userDetails += '<tr>';
		                       userDetails += '<td style="display:none;">' +slNo + '</td>';
			                   userDetails += '<td style="display:none;">' +arr[0]+ '</td>';
			                   userDetails += '<td style="display:none;">' +arr[1]+ '</td>';
			                   userDetails += '<td >' +item.value  + '</td>';
			                   if (item.value == "Other"){
			                	   userDetails += '<td><input  type="text" class="form-control radresults" name ="radresults" id="radresults'+count+'"></td>'; 
			                   }else {
				                   userDetails += '<td><select class="form-control radresults"  name ="radresults" id="radresults'+count+'"> <option selected="selected" value="">Select</option></select></td>';
			                   }
			                   userDetails += '<td><select class="form-control abnormalList" name= "abnormalList" id="abnormallist'+count+'"><option selected="selected" value="">Select</option></select></td>';
			                   userDetails += '<td><input  type="text" class="form-control radresults" name ="radresults"  id="otherabnormaldiseasevalue'+count+'"></td>';
			                   userDetails += '<td><textarea  class="form-control" id="notesRad'+count+'"  rows="2" cols="50"></textarea></td>';
			                   userDetails += '<td><input  type="text" class="form-control datepicker hasDatepicker" data-date-format="dd-mm-yy" id="radDate'+count+'"></td>';
			                   userDetails += '<td style="display:block;"><select class="form-control" id="requesterRad'+count+'"> <option selected="selected" value="">Select</option></select></td>';
			                   userDetails += '<td><a href="javascript:void(0)" class="remove_buttonRad c_point"  onclick ="delete_radrow($(this))"><img src="img_new/delete.png" title="delete"></a></td>';
			                   userDetails += '<td style="display:none;"><a href="javascript:void(0)"  class="update_buttonRad c_point" onclick="updateRad($(this),'+count+')"><img src="img/update.png" title="update"></a></td>';
			                   userDetails += '<td style="display:none;">' +count+ '</td>';
			                   $.ajax({
			                        type: "GET",
			                        url:context+"/getlistresponse?method=getlocationtypes",
			             			contentType : "application/json",
			             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             			crossDomain : true,
			             			
			             			dataType : "json",		
			                         success: function (datahere) {			                 
			                        	 var response = JSON.parse(JSON.stringify(datahere));	
			                           	  $.each(response,function(j,response)
			             	 		            	 {
			             		   	                  if(response.loctypecode=='1'||response.loctypecode=='2'||response.loctypecode=='3'||response.loctypecode=='4') { 
			             		   	              
			             		   	       	          if(lang=='en'){
			             		   	       	           var div_data="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
			             		   	       	          }
			             		   	       	          else{
			             		   	       	        var div_data="<option value="+response.loctypecode+">"+response.loctypear+"</option>";
			             		   	   	       	          }
			             	 		                  $(div_data).appendTo('#requesterRad'+count); 
			             	 		                
			             		   	                  }
			             	                       });
			                           	
			                         },
			                      error : function(jqXHR, textStatus, errorThrown) {
			              				
			              				if (jqXHR.status == "401"){
			              					
			              				   
			              				    }
			              			}
			                  });
			                   
			                   
			                       if(arr[0]=='1'){
			                	      var value="";
			                	      var select= "<fmt:message key="label.select"/>";
			                	      var div_data="<option value="+value+">"+select+"</option>";
			                	      $(div_data).appendTo('#radresults'+count); 
			                		     
			                	   
			               	    $.ajax({
			                        type: "GET",
			                        url:context+"/getlistresponse?method=lstxrayresults",
			             			contentType : "application/json",
			             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             			crossDomain : true,
			             			
			             			dataType : "json",		
			                         success: function (datahere) {			                 
			                        	 var response = JSON.parse(JSON.stringify(datahere));	
			                           	  $.each(response,function(j,response)
			             	 		            	 {
			             		   	                    
			             		   	              
			             		   	       	          if(lang=='en'){
			             		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	       	          }
			             		   	       	          else{
			             		   	       	        var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	   	       	          }
			             	 		                  $(div_data).appendTo('#radresults'+count); 
			             	 		                
			             	 		    		  
			             	                       });
			                           	
			                         },
			                      error : function(jqXHR, textStatus, errorThrown) {
			              				
			              				if (jqXHR.status == "401"){
			              					
			              				   
			              				    }
			              			}
			                  });  
			               	/*  $.ajax({
			                 	url:context+"/getlistresponse?method=lsAbnormalResults",
			             		contentType : "application/json",
			             		headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             		crossDomain : true,
			             		dataType : "json",		
			                  	success: function (datahere) {			                 
			                 	 var response = JSON.parse(JSON.stringify(datahere));	
			                    	  $.each(response,function(j,response)
			             		            	 {
			             	   	       	          if(lang=='en'){
			             	   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             	   	       	          }
			             	   	       	          else{
			             	   	       	        	var div_data="<option value="+response.code+">"+response.namear+"</option>";
			             	   	   	       	          }
			             		                 $(div_data).appendTo('#abnormallist'+count);
			             		                // $(div_data).appendTo('#abnormallists1');
			                                  });
			                  },
			     		             error : function(jqXHR, textStatus, errorThrown) {
			     		     				if (jqXHR.status == "401"){
			     		     				    }
			     		     			}
			     		         }); */  
			                   
			                   
			                   
			             }
			                   
			                   if(arr[0]=='2'){
			                	      var value="";
			                	      var select= "<fmt:message key="label.select"/>";
			                	      var div_data="<option value="+value+">"+select+"</option>";
			                	      $(div_data).appendTo('#pcrlabresults'+i); 
			                		     
			                	   
			               	    $.ajax({
			                        type: "GET",
			                        url:context+"/getlistresponse?method=lstctscanresults",
			             			contentType : "application/json",
			             			headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			             			crossDomain : true,
			             			
			             			dataType : "json",		
			                         success: function (datahere) {			                 
			                        	 var response = JSON.parse(JSON.stringify(datahere));	
			                           	  $.each(response,function(k,response)
			             	 		            	 {
			             		   	                    
			             		   	              
			             		   	       	          if(lang=='en'){
			             		   	       	           var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	       	          }
			             		   	       	          else{
			             		   	       	        var div_data="<option value="+response.code+">"+response.nameen+"</option>";
			             		   	   	       	          }
			             	 		                  $(div_data).appendTo('#radresults'+count); 
			             	 		                
			             	 		    		  
			             	                       });
			                           	
			                         },
			                      error : function(jqXHR, textStatus, errorThrown) {
			              				
			              				if (jqXHR.status == "401"){
			              					
			              				   
			              				    }
			              			}
			                  });  
			                   
			                   
			             }      
			                   
			                    userDetails += '</tr>';
			                   slNo =slNo + 1;	
							});
							table1 = $('#radTestlistResult').append(userDetails); 
							
							$('.datepicker').each(function() {
							    $(this).removeClass('hasDatepicker').datepicker();
							});
			              }
		 
		 
		 
		 

				var ptcd , reqid;    
		 
			// save 
			function saveRequest() {
				
				$('#notifyCreate').hide();
             	$('#notifyUpdate').hide();
             	$('#notifyCatError').hide();
				   
                                     var nameen= $('#nameEn').text();
                                     var namear=  $('#nameAr').text();
                   
                                      var mobile=  $('#mobile').text();
					                  var fileno= $('#fileNo').val();
					                  var bloodgroup= $('#bloodgroup').text();
					                 
					                  //var residency= $('#recidency').text();
					                   var address= $('#address').text();
					                   var sponsorcid=$('#sponsor').text();
					                   var occupation=$('#occupation').text();
					                   var workplace= $('#worplace').text();
					                   var residencyOther = $('#residencyOther1').val();
					                   var phones = $(".phone_name")
					                   .map(function(){ return $(this).val() })
					                     .get().join(', '); 
					                    var phonenumber= []
					                    phonenumber.push(mobile);				                 
					                   var intref='';
									   var source='D';
					                   var notiftype='E';
					                   var riskfactor=$('#riskFactorPRC').val();
					                   var riskfactorOther = $('#riskFactorPRCother1').val();
					                   var action=$('#action').val();
					                   var assignto=$('#assignees').val();
					                   var diagnotes=$("#diagnotes").val();
					                   var fileno=$("#fileNo").val();
					                   var prcfile=$("#fileNoPRC").val();
					                   var locationtype='E'
					                   var treatcategory= $('#treatCat').val();  
					                   var medresistance= $('#medResistance').val();
					                   var position= $('#patPosition').val();
					                   var subcode=$('#subdiagnosisMain').val();
					                   var startDoseDate = $('#startDoseDate'). datepicker('getDate');
					   				   var dosesstartdt=$.datepicker.formatDate('dd/mm/yy', startDoseDate);
					   			       var enddosesDate = $('#enddosesDate'). datepicker('getDate');
					   				   var dosesenddt=$.datepicker.formatDate('dd/mm/yy', enddosesDate);
					   				   var disDate = $('#disDate'). datepicker('getDate');
					   				   var dischargedt=$.datepicker.formatDate('dd/mm/yy', disDate);
					   				   var treatStartdate = $('#treatStartdate'). datepicker('getDate');
					   				   var treatstartdt=$.datepicker.formatDate('dd/mm/yy', treatStartdate);
					   				   var admiteddate = $('#addmitedDate'). datepicker('getDate');
					   				   var admiteddt=$.datepicker.formatDate('dd/mm/yy', admiteddate);
					   				   var refferredContact = $('#refferredContact').val();  
					   				   var receivedContact = $('#receivedContact').val();  
					   				   var estimatedContact = $('#estimatedContact').val();  
					   				   var physicname= $("#phyName").val();
					   				   var notifcategory=$('#notifycat').val();
					   				   var diseasecd=$('#locDisease').val();
					   				   var outcome=$('#treatOutcome').val();
					   				   var outcomedate='';
					   				   var notiflocationtype=$('#hospCat').val();
					   				   var notifsender=$('#hospCat').val();
					   				   if(notifsender=='G'){
					   				       var notifsender=$('#hospName').val();
					   				   }
					   				    if(notifsender=='P'){
						   				   var notifsender=$('#hospNameP').val();
						   				   }
					   				   var physicphone=$('#phyNo').val();  
					   				   var approved='';
					   				   var approvedby='';
					   				   var approveddate='';
					   				   
					   				   var notifdate='';
					   				 
					   				 var birthdt=  $('#dob').text();  
					   				 
					   				 var entrydt=  $('#entryDate').text();  
					   				   
					   				var pcrdateref = $('#pcrdateref'). datepicker('getDate');
									var prcreferraldt=$.datepicker.formatDate('dd/mm/yy', pcrdateref);  
					   				   
									var isolateddate = $('#isolateddateref'). datepicker('getDate');
									var isolateddt=$.datepicker.formatDate('dd/mm/yy', isolateddate);  
									
									var referreddatedt=$('#referralDate'). datepicker('getDate');
					   				 var referreddate=$.datepicker.formatDate('dd/mm/yy', referreddatedt); 
									var pulmonarytb='';
									var extrapulmonarytb='';
					   				  if(pulmonarytbcase) {
					   					pulmonarytb= $('#tbsource').val(); 
					   				  }
					   				 if(extrapulmonarytbcase) {
					   					extrapulmonarytb= $('#tbsource').val();   
					   				  }
									var prcposition=$('#patPositionPRC').val();   
									var physnamePRC=$('#phyNamePRC').val();   
									
									var myJSONObj='';
									var myJSONObjNotify='';
									var jsonObj={};
									var jsonObjNotify={};
									var discharged='';
                                                                      
									 if(dischargedt!=''){
								         discharged='Y';	
								          } 
                                                                        
								var IDval='';
								
								if(Idtype=='U'){
									IDval=idValOther;
								
								}
								else{
									
									IDval=idVal;
								}
								
							function createjsonobj(reqid){	
									
								   jsonObj = {
										    "patcd":ptcd,
										    "fileno":fileno,
										    "notiftype":notiftype,
										    "notifcategory":notifcategory,
										  	"notiflocationtype":notiflocationtype,
										  	"notifsender":notifsender, 
										  	"intref":intref,
										  	"diseasecd":diseasecd,
										  	"riskfactor":riskfactor,
										  	"riskfactorOther":riskfactorOther,
										  	"position":position,
										  	"action":action,
										  	"assignto":assignto,
										  	"pulmonarytbcase":pulmonarytb,
										  	"extrapulmonarytbcase":extrapulmonarytb,
										  	"outcome":outcome,
										  	"outcomedate":outcomedate,
										  	"referreddate":referreddate,
										  	"prcreferraldt":prcreferraldt,
										  	"isolateddt":isolateddt,
										  	"notifdate":notifdate,
										  	"physicname":physicname,
										  	"physicphone":physicphone,
										  	"source":source,
										  	"approved":approved,
										  	"approvedby":approvedby,
										  	"approveddate":approveddate,
										  	"autoapproval":"Y",
										  	"estimatedContacts":estimatedContact,
										    "receivedContacts":receivedContact,
										    "referredContacts":refferredContact,
										      "patient":{
										    	"idnumber":IDval,
										  		"idtype":Idtype,
										  		"ptcd":ptcd,
										  		"nameen":nameen,
										  		"namear":namear,
										  		"nationality":nationalitycd,
										  		"gender":gendercd,
										  		"residency":recidencycd,
										  		"residencyOther":residencyOther,
										  		"entrydate":entrydt,
										  		"address":address,
										  		"governorate":governoratecd,
										  		"district":districtcd,
										  		"birthdate":birthdt,
										  		"refnumber":"",
										  		"sponsorcid":sponsorcid,
										  		"patphone":phonenumber,
										  		"occupation":occupation,
										  		"workplace":workplace,
										  		"phones":phones,
										  		"maritalstatus":maritalcd,			
										  		 "bloodgroup":bloodgroup
										      },
										      "diseaseIdList":[],
										      "diagnosis":[],
										      "lab":[],
										      "radiology":[],
										      "attachment1":"",
									          "attachment2": ""
									 };
									
									
									
								 jsonObjNotify = {
											"reqid":reqid,
										    "patcd":ptcd,
										    "notiftype":notiftype,
										    "notifcategory":notifcategory,
										  	"notiflocationtype":notiflocationtype,
										  	"notifsender":notifsender, 
										  	"diseasecd":diseasecd,
										    "pulmonarytbcase":pulmonarytb,
										  	"extrapulmonarytbcase":pulmonarytb,
										  	"outcome":outcome,
										  	"outcomedate":outcomedate,
										    "notifdate":notifdate,
										  	"physicname":physicname,
										  	"physicphone":physicphone,
										  	"source":source,
										  	"approved":approved,
										  	"approvedby":approvedby,
										  	"approveddate":approveddate,
										  	"autoapproval":"Y",
										    "estimatedContacts":estimatedContact,
										    "receivedContacts":receivedContact,
										    "referredContacts":refferredContact,
										    "prc":{
												 "prcid":"",
												 "prcfile":prcfile,
												 "position":prcposition,
												"medresistance":medresistance,
												"treatcategory":treatcategory,
												"treatstartdt":treatstartdt,
												"dischargedt":dischargedt,	                               
												"admitteddt":admiteddt,
												"discharged":discharged,
												"dosesstartdt":dosesstartdt,
												"dosesenddt":dosesenddt,
												"notes":diagnotes,
												"physicname":physnamePRC
										  },
										      
										      "patient":{
										    	"idnumber":IDval,
										  		"idtype":Idtype,
										  		"ptcd":ptcd,
										  		"nameen":nameen,
										  		"namear":namear,
										  		"nationality":nationalitycd,
										  		"gender":gendercd,
										  		"residency":residency,
										  		"residencyOther":residencyOther,
										  		"entrydate":entrydt,
										  		"address":address,
										  		"governorate":governoratecd,
										  		"district":districtcd,
										  		"birthdate":birthdt,
										  		"refnumber":"",
										  		"sponsorcid":sponsorcid,
										  		"patphone":phonenumber,
										  		"occupation":occupation,
										  		"workplace":workplace,
										  	   "phones":phones,
										  		"maritalstatus":maritalcd,			
										  		 "bloodgroup":bloodgroup
										      },
										      "diseaseIdList":[],
										      "diagnosis":[],
										      "lab":[],
										      "radiology":[],
										      "ppdTest": [],
										   
									 };
								
								  if($('#diagnosisMain').val()!=''){									
									    var diag = {}
					                    var self = $(this);
									    diag.code = $('#diagnosisMain').val();
									    diag.subcode = $('#subdiagnosisMain').val();
									    diag.extype='D';
									    diag.isprc='N';
									    diag.doctorname='';
									    diag.subOtherCodeName = $('#subdiagnosisother1').val();
									   jsonObj.diagnosis.push(diag);
									   jsonObjNotify.diagnosis.push(diag);
								  } 
									   
									   if($('#daignosisHos').val()!=''){										  
									    var diagPCR = {}
					                    var self = $(this);
									    diagPCR.code = $('#daignosisHos').val();
									    diagPCR.subcode = $('#subdiagnosisHos').val();
									    diagPCR.extype='D';
									    diagPCR.isprc='Y';
									    diagPCR.doctorname='';
									    diag.subOtherCodeName = $('#subdiagnosisHosother1').val();
									    jsonObj.diagnosis.push(diagPCR);
									    jsonObjNotify.diagnosis.push(diagPCR);
									   }
									 $("#diseasetablehos tr:not(:first)").each(function (i, value) {
						                    var self = $(this);						              					                 
						                	jsonObj.diseaseIdList.push(self.find("td:eq(0)").text().trim());
										   jsonObjNotify.diseaseIdList.push(self.find("td:eq(0)").text().trim()); 
						                }); 					
									  /*  $("#diseasetableprc tr:not(:first)").each(function (i, value) {											
						                    var self = $(this);
						                    var diseasePCR = {}
						                    diseasePCR.diseaseIdList = self.find("td:eq(1)").text().trim();
						                    diseasePCR.isprc='Y';
						                    diseasePCR.doctorname='';
										   jsonObjNotify.diseaseIdList.push(diseasePCR); 
					                });  */ 
									   
												
								
									   
									 $("#addLabTest tr:not(:first)").each(function (i, value) {
										 var labtest = {}
						                    var self = $(this);
										   labtest.code = self.find("td:eq(1)").text().trim();
										   //labtest.result=$('#pcrlabresults'+i).val();
										   labtest.result=self.find("td:eq(4)").find("select").val();
										   //labtest.requester=$('#requester'+i).val();
										   labtest.requester=self.find("td:eq(6)").find("select").val();
										   labtest.locationtype='E';
										  // labtest.notes=$('#notesLab'+i).val();
										   var rowcount=self.find("td:eq(10)").text().trim();
										    var labDate = $('#labDate'+rowcount). datepicker('getDate');
											var labDatedt=$.datepicker.formatDate('dd/mm/yy', labDate);  
                                           labtest.exdate=labDatedt;
                                           labtest.doctorname=''; 
										   jsonObj.lab.push(labtest);
										   jsonObjNotify.lab.push(labtest);
						                });         
									          
	                                   $("#radTestlistResult tr:not(:first)").each(function (i, value) {
	                                	   var radtest = {}
						                   var self = $(this);
										   radtest.code = self.find("td:eq(1)").text().trim();
										   radtest.result=self.find("td:eq(4)").find("select").val();
										   radtest.abnormalResult=self.find("td:eq(5)").find("select").val();
										   radtest.abnormalOth=self.find("td:eq(6)").text().trim();
										   //radtest.result=$('#radresults'+i).val();
										   radtest.locationtype='E';
										   //radtest.requester=$('#requesterRad'+i).val();
										   radtest.requester=self.find("td:eq(9)").find("select").val();
										   radtest.notes=$('#notesRad'+i).val();
										   //radtest.notes=self.find("td:eq(8)").text().trim();
										   var rowcount=self.find("td:eq(12)").text().trim();
										   var radddt = $('#radDate'+rowcount).datepicker('getDate');
										   var radDate=$.datepicker.formatDate('dd/mm/yy', radddt);  
										   //radtest.abnormalOth = $('#otherabnormaldiseasevalue').val();
										   radtest.exdate=radDate;
										   radtest.doctorname=''; 
										   jsonObj.radiology.push(radtest);
										   jsonObjNotify.radiology.push(radtest);
						                }); 
									  //JSON.stringify(jsonObj);   
					   		 	//after save
					              myJSONObj =JSON.stringify(jsonObj);		   
					              myJSONObjNotify =JSON.stringify(jsonObjNotify);			   
								}     
				                  createjsonobj(reqid);
								if(notifcategory==''){		
									$('#notifyCatError').show();
								}
								if(($('#diagnosisMain').val())==''){		
									$('#diagError').show();
								}
								if(($('#hospCat').val())==''){		
									$('#hospCatError').show();
								}
								if(($('#hospCat').val()=='G')&&($('#hospName').val()=='')){		
									$('#hospNameErrorG').show();
								}
								if(($('#hospCat').val()=='P')&&($('#hospNameP').val()=='')){		
									$('#hospNameErrorP').show();
								}
							
          if(notifcategory!='' && ($('#diagnosisMain').val()!='') && ($('#hospCat').val()!='')){
        	  var formData = new FormData();
              
          	
        
          	   
				 $.ajax({
			                type: "POST",
			                url:context+"/apiResponse?method=createnotifrequest",
			                headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
							contentType : "application/json",
							crossDomain : true,
							data:myJSONObj,	
							dataType : "json",		
			                success: function (data) {			                 
			            	  
				                    if(data.code=="1"){
				                    	reqid=data.details.requestcd;
				                     	createjsonobj(reqid);   
				        				
				                    	
				                    	$.ajax({
				 			               type: "POST",
				 			               url:context+"/apiResponse?method=createnotification",
				 			               headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
				 							contentType : "application/json",
				 							crossDomain : true,
				 							data:myJSONObjNotify,	
				 							dataType : "json",		
				 			               success: function (data) {			                 
				 			            	  
				 				                    if(data.code=="1"){
				 				                         
				 				                    	 notifcd=data.details.notifcd;
				 				                    	$('#notifyID').text(notifcd);
				 				                    	$("#notifyIDShow").show();
				 				                    	$('#notifyCreate').show();
				 				                    	$('#notifyUpdate').hide();
				 				                }
				 				   },
				                                  error : function(jqXHR, textStatus, errorThrown) {
				 	
				 	                       if (jqXHR.status == "401"){
				 		
				 	   
				 	                        }
				                             }
				                            });
				                    	
				                    }
				                    ptcd = ptcd;
			        				reqid = reqid;  
			                    	uploadfiles(reqid,ptcd);
				                    /* else
				                  
				                    	$('#reuploadButton').show(); */
				                  
				                    
				                 
                                  },
                                 error : function(jqXHR, textStatus, errorThrown) {
	
	                       if (jqXHR.status == "401"){
		
	   
	                        }
                            
                                 }
					});  
			 	
					}
					
					 getToken(); 
			}	 
		 
			
			  $("#reuploadButton").click(function () {
		         uploadfiles("1","1")
			  }); 
			
			 function uploadfiles(reqId,regId){
			const fileInput = document.getElementById("fileCivilId0");  
			const selectedFiles = fileInput.files;     	 
		          // Create FormData object
		          var formData = new FormData();
		          // Append each file to FormData
		          for (var i = 0; i < selectedFiles.length; i++) {
		              formData.append('files', selectedFiles[i]);
		          }
		      /* $('input[name^="fileupload"]').each(function(i,files) 
							{
		    		 formData.append('files', $(this).val());
							}); */
		   	formData.append('reqId',reqId);
		   	formData.append('regId',regId);
		   	
		   	   $.ajax({
		   		   url:context+"/getBackendResposeInspFile?method=uploadFiles",
		              type: 'POST',
		              data: formData,
		              enctype:'multipart/form-data',
		            headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
		               timeout : 180000,
						processData: false,
						contentType: false,
						cache:false,
		              success: function(response) {
		                  console.log("Files uploaded successfully:", response);
		              },
		              error: function(error) {
		                  console.error("Error uploading files:", error);
		              }
		          }); 
			 }
		 var wOpen='';
			function openicdWindow(searchval){
				
				            var context = "${pageContext.request.contextPath}";
				              var url =context+ "/icd11?searchval=" +searchval;         
				              wOpen = window.open(url, '_blank', 'width=1000,height=900,left=200,top=100');
				              
				            }	 
			  
               var countICD=0;
			   function ProcessICDTableCreate(selectedcode,selectedtitle,searchval,val,exid) {
				   
				   $('#ICDVal').val(val); 
				   $('#ICDValSearch').val(searchval); 
				   $('#ICDValCount').val(countICD); 
				   var trHTML = '';
				   var counticd=countICD;
				   countICD++;
				  $('#icdtable'+searchval).hide();
				   if(val=='update') {
					  
				   $('#icdtable'+searchval+ 'tr').slice(1).remove();
				   }
				   if(selectedcode!=null){
				                   $('#icdtable'+searchval).show(); 
                                                        
				                                           trHTML += '<tr id="ICDrowId'+searchval+counticd+'">';
				                                           trHTML += '<td>' +selectedcode+ '</td>';
				                                           trHTML += '<td>' +selectedtitle + '</td>';
				                                           trHTML += '<td style="display:none;">' +exid + '</td>';
				                                           trHTML += '<td><a href="javascript:void(0)" class="remove_buttonICD c_point'+searchval+'" onclick ="delete_ICDRow($(this))"><img src="img_new/delete.png" title="delete" ></a></td>';
 
				      trHTML += '</tr>';        
				   $('#icdtable'+searchval).append(trHTML);
				   wOpen.close();
				   
			   
			   }
				   
				   getToken(); 
		        	 }  
		  
			   
		   
				 
				 
		
        function getToken(){
				 
					$.ajax({
				        type: "POST",
				     
				        url:context+"/postlistresponse?method=gettbtoken",
				        contentType : "application/json",
					    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
					    crossDomain : true,
				        success: function (datahere) {
					      
					    var data = JSON.parse(datahere);
				        if(data.code=='1'){
				        	 window.localStorage.removeItem('tbcid');
				        	 localStorage.setItem("tbcid", data.result);
					      }
				           
					 },
                     error : function(jqXHR, textStatus, errorThrown) {
                    logout();
                
                }
				      }); 
				 
    	 } 
				 
	function pathistory(idVal,Idtype){
           
        	   var myJSONObj =JSON.stringify({"idnumber":idVal,"ptcd":'',"idtype":Idtype});
        	   var content='';
        	   var contentdaig='';
        	   var contentlab='';
        	   var contentRad='';
        	   var actionval='';
        	   var outcomeVal='';
        	   var positionVal='';
        	    $('#divColapseBarHistoryold').empty();
				$('#divColapseBarHistoryDiagonsis').empty();
				$('#divColapseBarHistoryLab').empty();
				$('#divColapseBarHistoryRadiology').empty();
     		  $.ajax({
     				type : "POST",
     				url : context+"/apiResponse?method=lstpatnotifhistory",
     				contentType : "application/json",
     				headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
     				crossDomain : true,
     				data:myJSONObj,	
     				dataType : "json",	
     				success : function(response) {
     					
     					if(response.code=='1'&& response.details.length>0){
     						
     						
     						  $("#notifycat option[value='1']").attr("disabled", true);
     						historyold='true';
     						
     						 for(var i = 0; i < response.details.length; i++)
     						 {
     					    var id = response.details[i];
     					    
     					    
     					   $.each(mapaction, function (index, value) {
     						   
     					   if(value.code==id.action){
     						  actionval= value.nameen;
     					   }
     						});
     					    
     					    
     					  $.each(mapoutcome, function (index, value) {
    						   
        					   if(value.code==id.outcome){
        						   outcomeVal= value.nameen;
        					   }
        						});
     					    
     					
     					  $.each(mapposition, function (index, value) {
   						   
       					   if(value.code==id.position){
       						positionVal= value.nameen;
       					   }
       						});
     					  
     					
     					    content +="<div id=accordion1"+i+">";	    	
     						content +="<div class='card border-left-info '>";	
     						content +="<div class='card-header' id=sub_heading1"+i+">";
     						content +="<h5 class='mb-0 panel-title'>";
     						content +="<a class='btn-link collapsed ' data-toggle='collapse' data-parent=#accordion1"+i+" href=#sub_collapse"+i+" aria-controls=#sub_collapse"+i+"> Notification Info ( on "+id.approveddate+")  </a></h5>";
     						content +="</div>";
     						content +="<div id=sub_collapse"+i+" class='collapse' aria-labelledby=sub_heading1"+i+" data-parent=#accordion1"+i+">";
     						content +="<div class='card-body'>";
     						content +="Notitifcation number:"+id.notifid;
     						content +="</br> ";
     						content +="Notitifcation request from:"+id.notifsenderen;
     						content +="</br> ";
     						content +="Reffered On:";
     						content +="</br> ";
     						content +="Patient Position:"+positionVal;
     						content +="</br> ";
     						content +="Outcome:"+outcomeVal;
     						content +="</br> ";
     						content +="Action Taken:"+actionval;
     						content +="</br> ";
     						content +="</div>";
     						content +="</div>";
     						content +="</div>";
     						content +="</div>";
     						
     			        contentdaig +="<div id=accordion2"+i+">";	    	
   						contentdaig +="<div class='card border-left-info '>";	
   						contentdaig +="<div class='card-header' id=sub_heading2"+i+">";
   						contentdaig +="<h5 class='mb-0 panel-title'>";
   						contentdaig +="<a class='btn-link collapsed ' data-toggle='collapse' data-parent=#accordion2"+i+" href=#sub_collapse1"+i+" aria-controls=#sub_collapse1"+i+"> Diagnosis Info ( on "+id.approveddate+")  </a></h5>";
   						contentdaig +="</div>";
   						contentdaig +="<div id=sub_collapse1"+i+" class='collapse' aria-labelledby=sub_heading2"+i+" data-parent=#accordion2"+i+">";
   						contentdaig +="<div class='card-body'>";
   						
   						for(var j = 0; j < id.diagnosis.length; j++){ 
	                        
    						  var diagdata='';
    						  diagdata= id.diagnosis[j];
    						if(diagdata.extype=='D'){
    						
    						 contentdaig +=" Diagnosis: "+diagdata.name;
    						 contentdaig +="      ";
    						 contentdaig +=" SubDiagnosis: "+diagdata.subcodename;
    						 contentdaig +="</br>";
    						}
    						if(diagdata.extype=='I'){
        						
       						 contentdaig+=" ICD Diagnosis: "+diagdata.code;
       						
       						 contentdaig+="</br>";
       						}
    						
    					   }
   						contentdaig +="</div>";
   						contentdaig +="</div>";
   						contentdaig +="</div>";
   						contentdaig +="</div>";
     					   
   					   
  					  
     					    contentlab +="<div id=accordion3"+i+">";	    	
     						contentlab +="<div class='card border-left-info '>";	
     						contentlab +="<div class='card-header' id=sub_heading3"+i+">";
     						contentlab +="<h5 class='mb-0 panel-title'>";
     						contentlab +="<a class=' btn-link collapsed ' data-toggle='collapse' data-parent=#accordion3"+i+" href=#sub_collapse2"+i+" aria-controls=#sub_collapse2"+i+"> LAB Info ( on "+id.approveddate+")  </a></h5>";
     						contentlab +="</div>";
     						contentlab +="<div id=sub_collapse2"+i+" class='collapse' aria-labelledby=sub_heading3"+i+" data-parent=#accordion3"+i+">";
     						contentlab +="<div class='card-body'>";
     						for(var j = 0; j < id.lab.length; j++){ 
		                        
         					 var labdata='';
         					  labdata= id.lab[j];
         						
         						contentlab +="Test Name:"+labdata.name;
         						contentlab +=" ";
         						contentlab +="Result:"+labdata.resultname;
         						contentlab +=" ";
         						contentlab +="Date:"+labdata.exdate;
         						contentlab +=" ";
         						contentlab +="Result:"+labdata.notes;
         						contentlab +="</br>";
         						
         						contentlab+="</div>";
        					   }
     						contentlab +="</div>";
     						contentlab +="</div>";
     						contentlab +="</div>";
     						contentlab +="</div>";
     						
     						
     						contentRad +="<div id=accordion4"+i+">";	    	
     						contentRad +="<div class='card border-left-info '>";	
     						contentRad +="<div class='card-header' id=sub_heading4"+i+">";
     						contentRad +="<h5 class='mb-0 panel-title'>";
     						contentRad +="<a class=' btn-link collapsed ' data-toggle='collapse' data-parent=#accordion4"+i+" href=#sub_collapse3"+i+" aria-controls=#sub_collapse3"+i+">Radiology Info ( on "+id.approveddate+")  </a></h5>";
     						contentRad +="</div>";
     						contentRad +="<div id=sub_collapse3"+i+" class='collapse' aria-labelledby=sub_heading4"+i+" data-parent=#accordion4"+i+">";
     						contentRad +="<div class='card-body'>";
     						
     						  for(var j = 0; j < id.radiology.length; j++){ 
    		                        
           						  var radiologydata='';
           						 radiologydata= id.radiology[j];
           						
           						contentRad +="Test Name:"+radiologydata.name;
           						contentRad +=" ";
           						contentRad +="Result:"+radiologydata.resultname;
           						contentRad +=" ";
           						contentRad +="Date:"+radiologydata.exdate;
           						contentRad +=" ";
           						contentRad +="Result:"+radiologydata.notes;
           						contentRad +="</br> ";
           						contentRad +="</div>";
           						
           					   }
     						
     						contentRad +="</div>";
     						contentRad +="</div>";
     						contentRad +="</div>";
     						contentRad +="</div>";
     						
     						 }	
     						$('#divColapseBarHistoryold').append(content);
     						$('#divColapseBarHistoryDiagonsis').append(contentdaig);
     						$('#divColapseBarHistoryLab').append(contentlab);
     						$('#divColapseBarHistoryRadiology').append(contentRad);
     						
     					 	$("#myToast").toast({ 
     					          autohide: false ,
     							  delay: 100000
     					        }); 
     						$("#myToast").toast("show");
     						 getToken(); 
     					}
     						
     						},
     				error : function(jqXHR, textStatus, errorThrown) {
     					if (jqXHR.status == "401") {
     					
     					}
     				}
     		 }); 
           
           
           }    
           
           
           function logout(){
				$.ajax({
			        type: "POST",
			        crossDomain : true,
			        url:context+"/postlistresponse?method=tblogout",
			        contentType : "application/json",
				    headers: {"Authorization": "Bearer " +localStorage.getItem('tbcid')},
			        success: function (datahere) {
				      
				    var data = JSON.parse(datahere);
			        if(data.code=='1'){

				      }
			            }
			      });

			         window.localStorage.removeItem('tbcid');
			         window.localStorage.removeItem('namear');
			         window.localStorage.removeItem('nameen');
			         window.localStorage.removeItem('locar');
			         window.localStorage.removeItem('locen');
			         window.localStorage.removeItem('type');
			         window.localStorage.removeItem('username');
			      
			 		 var context = "${pageContext.request.contextPath}"
			 	     window.location.href = context+"/login";
			} 
        	 
</script>
 <script src="js/sb-admin-2_d.js"></script>
	
	<script src="admin/datatables/jquery.dataTables.min.js"></script>
    <script src="admin/datatables/dataTables.bootstrap4.min.js"></script>  
	<script src="js/demo/datatables-demo.js"></script>
	
		<!--<script src="js/jquery.webui-popover.js"></script>-->
		<script src="js/jquery.nicescroll.min.js"></script>	
	
</body>
</html>
