<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>登录</title>

    <!-- Core CSS - Include with every page -->
    <link href="${base}/resources/common/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/resources/common/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="${base}/resources/admin/css/sadmin.css" rel="stylesheet">

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
                        <form role="form" action="../j_spring_security_check" method="post" id="loginForm"
							name="loginForm">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="登录名" id="loginName" name="j_username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="登录密码" id="loginPassword" name="j_password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input id="_spring_security_remember_me"  name="_spring_security_  remember_me" type="checkbox" value="true">记住登陆
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="javascript:login()" class="btn btn-lg btn-success btn-block">登&nbsp;录</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Core Scripts - Include with every page -->
    <script src="${base}/resources/common/js/jquery-1.10.2.js"></script>
    <script src="${base}/resources/common/js/bootstrap.min.js"></script>
    <script src="${base}/resources/common/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="${base}/resources/admin/js/sadmin.js"></script>

</body>

</html>
