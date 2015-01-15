<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ad管理员首页</title>
<!-- Core CSS - Include with every page -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<link href="../resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link href="../resources/css/plugins/morris/morris-0.4.3.min.css"
	rel="stylesheet">
<link href="../resources/css/plugins/timeline/timeline.css"
	rel="stylesheet">
<!-- SB Admin CSS - Include with every page -->
<link href="../resources/css/sb-admin.css" rel="stylesheet">

<!-- Core Scripts - Include with every page -->
<script src="../resources/js/jquery-1.11.1.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>

<!-- Page-Level Plugin Scripts - Dashboard -->
<script src="../resources/js/plugins/morris/raphael-2.1.0.min.js"></script>
<script src="../resources/js/plugins/morris/morris.js"></script>

<!-- SB Admin Scripts - Include with every page -->
<script src="../resources/js/sb-admin.js"></script>
<script src="../resources/js/dashboard.js"></script>
</head>
<body>

	<div id="wrapper">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			style="margin-bottom: 0"> <jsp:include page="top.jsp"></jsp:include>
		<jsp:include page="left.jsp"></jsp:include> </nav>
		<jsp:include page="dashboard.jsp"></jsp:include>
	</div>

</body>
</html>