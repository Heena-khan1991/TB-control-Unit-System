<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
#updatePPDTestDate1, #updatePPDReadingDate1, #updatePPDTestDate2,
	#updatePPDReadingDate2 {
	z-index: 99999 !important;
}

#igraExamDt {
	z-index: 99999 !important;
}
.rounded {
	border-radius: 15px;
}

.highlight {
	background-color: lightyellow !important;
}

.input-group-append .btn {
	z-index: 1;
}

.selected {
	color: red;
	background-color: yellow;
}

.list-group_2 {
	width: 250px;
	padding: 0 2px;
	list-style-type: none !important;
}

.toast {
	position: absolute;
	top: 226px;
	right: 45px;
	border: 1px solid rgb(40, 143, 158);
}

.displayNone {
	display: none !important;
}

.modal {
	z-index: 9999;
}

.modal .close {
	color: #fff;
	opacity: 1
}

.n_head .close {
	color: #000 !important;
}

.displayhidden {
	display: block !important;
}

.c_select {
	border: 0 !important;
	font-weight: bold !important;
	color: black !important;
	appearance: none !important;
}
</style>
<head>
 <body id="page-top">

</body>
</head>