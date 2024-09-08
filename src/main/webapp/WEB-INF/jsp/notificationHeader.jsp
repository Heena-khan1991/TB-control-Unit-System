<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>

	<nav
		class="navbar navbar-expand navbar-light bg-white topbar  static-top shadow">
		<!--mb-4-->

		<!-- Sidebar Toggle (Topbar) -->
		<button id="sidebarToggleTop"
			class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>



		<div class="d-flex justify-content-between header_wid">
			<span
				class="d-none d-sm-inline-block mt-2 font-weight-bold text-dark ">
				<img src="img_new/logo6.jpg" />
			</span> <span class=" font-weight-bold font_size25 text-navy text-center">Public
				Health <span>Department</span><br>إدارة الصحة العامة
			</span>
		</div>
		<!-- Topbar Navbar -->
		<ul class="navbar-nav ml-auto">



			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <span
					class="mr-2 d-none d-lg-inline text-gray-600 small" id="role"></span>

					<!--<div class="status-badge mrg10A">--> <img
					class="img-profile rounded-circle border border-secondary"
					src="img_new/22.png">

			</a> <!-- Dropdown - User Information -->
				<div
					class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
					aria-labelledby="userDropdown">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath}/login"
						data-toggle="modal" data-target="#logoutModal"> <i
						class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
						Logout
					</a>
				</div></li>
			<li class="nav-item dropdown no-arrow mx-1 d-none d-sm-inline-block">
				<a class="nav-link dropdown-toggle "
				href="${pageContext.request.contextPath}/login" data-toggle="modal"
				data-target="#logoutModal">
					<button class="btn btn-secondary text-white logbtn">
						<i class="fas fa-power-off fa-xs text-center text-white "></i>
					</button>
			</a>
			</li>
		</ul>
	</nav>

</body>
</html>