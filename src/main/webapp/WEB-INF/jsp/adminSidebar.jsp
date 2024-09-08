<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
   
      <aside>
      <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <p class="centered"><a href="profile.html"><img src="img/33.png" class="img-circle bdr3"  width="45"></a></p>
          <h5 class="centered" >Administrator</h5>
          
          <!--<li class="mt">
            <a class="active" href="index.html">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>-->
          <li class="sub-menu">
            <a href="javascript:;" class="active">
              <i class="fa fa-users"></i>
              <span>Masters</span>
              </a>
            <ul class="sub">
              <li> <a href="${pageContext.request.contextPath}/admin" >Users</a></li>
              <li><a href="${pageContext.request.contextPath}/location">Locations</a></li>
             
            </ul>
          </li>
      
       
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    
</body>
</html>