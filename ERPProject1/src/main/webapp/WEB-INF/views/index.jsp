<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en" ng-app="erpApp">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>ERP</title>

<!-- Bootstrap -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/megasite/reset.css"/>"> <!-- CSS reset -->
    <link rel="stylesheet" href="<c:url value="/resources/css/megasite/style.css"/>"> <!-- Resource style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/ng-table/ng-table.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
    <script src="<c:url value="/resources/js/megasite/modernizr.js"/>"></script> <!-- Modernizr -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
</head>
    <body>
		<%@ include file="menu.jspf" %>
		
		<div ng-view=""></div>
        
        <div class="cd-overlay"></div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="<c:url value="/resources/js/jquery/jquery-2.1.1.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery/jquery.mobile.custom.min.js"/>"></script>
        <script src="<c:url value="/resources/js/megasite/main.js"/>"></script> <!-- Resource jQuery -->
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/angular/angular.min.js"/>"></script>
        <script src="<c:url value="/resources/js/angular/angular-route.min.js"/>"></script>
		<!-- Custom scripts -->
		<script src="<c:url value="/resources/js/app/app.js"/>"></script>
		<script src="<c:url value="/resources/js/app/controllers/materialsController.js"/>"></script>
		<script src="<c:url value="/resources/js/app/factories/materialsFactory.js"/>"></script>
		<script src="<c:url value="/resources/js/ng-table/ng-table.min.js"/>"></script>
        
        <script type="text/javascript">
    		$(document).ready(function() {
    			$('.dropdown-menu li a').on('click', function() {
    				var ul = $(this).closest('ul');
    				var buttonId = ul.attr('aria-labelledby');
    				var button = $('#' + buttonId);
    				button.find('.txt-drp').text($(this).html());
    			});
    		});
    	</script>
    </body>
</html>