<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
   
       <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <!--<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>-->
		
		<!--<img src="img/LogoN1.png" />-->
		<img src="img/LogoN1.png" />
      </div>
      <!--logo start-->
      <!--<a href="index.html" class="logo"><b>PC<span>IS</span></b></a>-->
	  
      <!--logo end-->
      <div class="text-center nav notify-row" id="top_menu">
        <a href="index.html" class="logo"><b>TB Control Unit</b></a>
        
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
		  <li><a class="newclss" href="#"></a></li>
		  
          <li><a class="logout logout2" href="#">AR</a></li>
		  <li><a class="logout" onclick="logout()" >Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    
</body>
</html>