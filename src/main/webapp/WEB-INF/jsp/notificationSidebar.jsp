<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>

	<!-- Sidebar -->
	<div class=" position-fixed z_index" id="ascrail2000" style="">
		<!--height: 1000px; -->

		<ul class="navbar-nav  sidebar sidebar-dark accordion z_index toggled"
			id="accordionSidebar"
			style="background-color: #36b9cc; background-image: linear-gradient(180deg, #22afc3 10%, #12587f 100%);">
			<!--bg-gradient-primary-->

			<!-- Sidebar - Brand -->
			 <a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="newNotification">
				<div class="sidebar-brand-icon ">
					
					<img src="img/Logo1.png" />
				</div>
				<!-- <div class="sidebar-brand-text ">
					<sup>2</sup>
				</div> -->
			</a> 
			<!--mx-3-->

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li id="notifSideBar" class="nav-item active" style="display:none"><a class="nav-link"
				href="newNotification"> <i class="fas fa-fw fa-id-card-alt"></i> <span>
						Notification</span></a></li>
				<hr class="sidebar-divider d-none d-md-block">
			<!-- Divider -->
			 <li class="nav-item active" id="contSideBar" onclick="getContactPage()" style="display:none"><a class="nav-link"
				href="#" > <i class="fas fa-fw fa-address-book"></i> <span>Contact </span></a></li> 
				
				<li class="nav-item active" id="labSideBar" onclick="getLabPage()" style="display:none"><a class="nav-link"
				href="#" > <i class="fas fa-fw fa-address-book"></i> <span>Lab </span></a></li> 
				
				<li class="nav-item active" id="nurseSideBar" onclick="getNursePage()" style="display:none"><a class="nav-link"
				href="#" > <i class="fas fa-fw fa-address-book"></i> <span>Nurse</span></a></li> 
				<!-- Divider -->
			
			<li id="prcSideBar" class="nav-item active"style="display:none"><a class="nav-link"
				href="PRC"> <i class="fas fa-fw fa-id-card-alt"></i> <span>PRC</span></a></li>	
			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">
		</ul>

	</div>
		
	<script src="admin/jquery/jquery.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
<!-- 	<script src="js/sb-admin-2_d.js"></script>  -->
	<script type="text/javascript">
	var lang = '<%=response.getLocale().getLanguage()%>';
    var context = '${pageContext.request.contextPath}'; 
	var roomList='';
	 function getContactPage(){
		 window.location = context+'/contactNotifDetails'; 
	 } 
	
	 function getLabPage(){
		 window.location = context+'/lab'; 
	 }
	 function getNursePage(){
		 window.location = context+'/nurse'; 
	 } 
	
	$(document).ready(function(){
		$('#prcSideBar').hide();
		$('#contSideBar').hide();
		$('#notifSideBar').hide();
		$('#labSideBar').hide();
		$('#nurseSideBar').hide();
		
	/* 	var locType = sessionStorage.getItem('loctype');
		var userTitle = sessionStorage.getItem('roletitle');
		var userPrivilege = sessionStorage.getItem('rolePrivilege'); */
		
		 var inputObj = {
            		"locType":sessionStorage.getItem("loctype"),
            		"roleTiitle":sessionStorage.getItem("roletitle"),
            		"rolePrivilege":sessionStorage.getItem("rolePrivilege")
            } 
           var myJSONObj = JSON.stringify(inputObj);
              $.ajax({
           		type: "POST",
           		url: context + "/showHeader",
           		data: myJSONObj,
           		contentType : "application/json",
           		dataType: "json",
           		success: function(page) {
           		if(page.prcSideBar == 'Y'){
           			
           			$('#prcSideBar').show();
           		}
           		if(page.contSideBar == 'Y'){
           			
           			$('#contSideBar').show();
           		}
           		if(page.notifSideBar == 'Y'){
           			
           			$('#notifSideBar').show();
           		}
           		if(page.labSideBar == 'Y'){
           			
           			$('#labSideBar').show();
           		}
           		if(page.nurseSideBar == 'Y'){
           			$('#nurseSideBar').show();
           		}
           		
           		},
               	error: function(jqXHR, textStatus, errorThrown) {
     			if (jqXHR.status == "401") {
     			logout();
     			}
     			}
     		});
		 /* if(locType == '5'){
			$('#prcSideBar').show();
		}else if(locType == '6' && userTitle =='ROLE_DOCTOR' && userPrivilege == '3'){
			$('#contSideBar').show();
		}else if(locType == '6' && userTitle =='ROLE_DOCTOR' && userPrivilege != '3'){
			$('#contSideBar').show();
			$('#notifSideBar').show();
		} else if(userTitle =='ROLE_LAB' ){
			$('#labSideBar').show();
		}else{
			if(userTitle =='ROLE_NURSE' ){
				$('#nurseSideBar').show();
			}	
		} */
		
		
		
		
	});
	
	</script>
	
</body>
</html>