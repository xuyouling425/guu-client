<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>更新用户</title>

</head>

<body>

	<div id="wrapper">

		<#include "admin/nav.ftl">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">更新用户</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">用户基本信息</div>
						<div class="panel-body">
							<div class="row">
								<form role="form" id="aboutForm" action="${base}/user/update" enctype="multipart/form-data" method="post">
									<div class="col-lg-6">
										<div class="form-group">
											<label>用户名称</label> <input class="form-control" type="text" id="userName" name="userName" value="${user.userName}" >
											<input class="form-control" type="hidden" id="userId" name="userId" value="${user.userId}" >
										</div>
										<div class="form-group">
											<label>登录名</label> <input class="form-control" type="text" name="loginName" id="loginName" value="${user.loginName}" disabled>
										</div>
										<div class="form-group">
												<label>用户头像</label>
												 <input id="imgPath" name="imgPath" type="file" class="file" data-preview-file-type="text"  multiple="true" data-show-upload="false" data-show-caption="true">
											</div>
											<div class="form-group">
												<label>角色</label>
												  <select class="form-control" id="roleId" name="roleId">
	                                                <#list roleList as role>
	                                                <option value="${role.roleId}" <#list userRoleList as userRole > <#if userRole.roleId=role.roleId> selected </#if></#list>>${role.roleName}</option>
	                                                 </#list>
	                                            </select>
											</div>
									</div>	
									<div class="col-lg-6">
											<div class="form-group">
												<label>邮件</label> <input class="form-control" type="text" id="email" name="email" value="${user.email}">
											</div>
											<div class="form-group">
												<label>电话</label> <input class="form-control" type="text" id="phone" name="phone" value="${user.phone}">
											</div>
											<div class="form-group">
											<label>个人简介</label> 
											<textarea class="form-control" id="userDesc" name="userDesc" rows="5">${user.userDesc}</textarea>
										</div>
											
										</div>
									<div class="col-lg-12">
										
											<div class="form-group">
												<label><b>角色信息</b></label>
													<div class="row">
 												 <#list roleList as role >
 												  <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
 												 	<input type="checkbox" name="role" value="${role.roleId}" <#list userRoleList as userRole > <#if userRole.roleId=role.roleId> checked="true" </#if></#list> >
 												 		${role.roleName}
												  </div>
												 </#list>
												</div>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-lg btn-default">保&nbsp;存</button>
												<button type="reset" class="btn btn-lg btn-default">重 &nbsp;置</button>
											</div>
									</div>
									
									
								</form>
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->
	
    <script>
		$("#imgPath").fileinput({
		 initialPreview: [
	        "<img src='${user.photo}' class='file-preview-image'>",
	    	],
	    overwriteInitial: true,
	    initialCaption: "${user.photo}"
		});
    </script>

</body>

</html>
