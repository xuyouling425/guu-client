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
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>登录</title>

<!-- Core CSS - Include with every page -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<!-- SB Admin CSS - Include with every page -->
<link href="resources/css/sb-admin.css" rel="stylesheet">

<!-- Core Scripts - Include with every page -->
<script src="resources/js/jquery-1.11.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>

<!-- SB Admin Scripts - Include with every page -->
<script src="resources/js/sb-admin.js"></script>

<script type="text/javascript">
    	function login(){
    		$("#loginForm").submit();
    	}
    </script>

</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">登录入口</h3>
					</div>
					<div class="panel-body">
						<form role="form" action="user/login" method="post" id="loginForm"
							name="loginForm">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="登录名" id="loginName"
										name="loginName" type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="登录密码"
										id="loginPassword" name="loginPassword" type="password"
										value="">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">记住登录
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<a href="javascript:login()"
									class="btn btn-lg btn-success btn-block">登录</a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
