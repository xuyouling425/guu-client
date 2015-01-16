<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>管理员首页</title>
<!-- Core CSS - Include with every page -->
<link href="resources/common/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/common/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link href="resources/common/css/plugins/morris/morris-0.4.3.min.css"
	rel="stylesheet">
<link href="resources/common/css/plugins/timeline/timeline.css"
	rel="stylesheet">
<!-- SB Admin CSS - Include with every page -->
<link href="resources/common/css/sadmin.css" rel="stylesheet">

<!-- Core Scripts - Include with every page -->
<script src="resources/common/js/jquery-1.11.1.min.js"></script>
<script src="resources/common/js/bootstrap.min.js"></script>
<script src="resources/common/js/plugins/metisMenu/jquery.metisMenu.js"></script>

<!-- Page-Level Plugin Scripts - Dashboard -->
<script src="resources/js/plugins/morris/raphael-2.1.0.min.js"></script>
<script src="resources/js/plugins/morris/morris.js"></script>

<!-- S Admin Scripts - Include with every page -->
<script src="resources/sadmin/js/sadmin.js"></script>
<script src="resources/sadmin/js/dashboard.js"></script>
</head>
<body>

	<div id="wrapper">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			style="margin-bottom: 0">
			<jsp:include page="top.jsp"></jsp:include>
			<jsp:include page="left.jsp"></jsp:include>
		</nav>

		<jsp:include page="dashboard.jsp"></jsp:include>
	</div>

</body>
</html>