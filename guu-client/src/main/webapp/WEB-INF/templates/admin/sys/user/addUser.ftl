<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>添加角色</title>

</head>

<body>

	<div id="wrapper">

		<#include "admin/nav.ftl">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">添加角色</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">角色</div>
						<div class="panel-body">
							<div class="row">
								<form role="form" id="roleForm" action="${base}/role/add" method="post">
									<div class="col-lg-12">
										<div class="form-group">
											<label>角色ID </label> <input class="form-control" type="text" id="roleId" name="roleId" >
										</div>
										
										<div class="form-group">
											<label>角色名称 </label> 
											<input class="form-control" type="text" id="roleName" name="roleName" >
										</div>
										
											<div class="form-group">
												<label>权限描述</label>
												<input class="form-control" type="text" id="remark" name="remark" >
											</div>
											
											 <div class="form-group">
                                            	<label>选择下面权限，作为当前角色赋值权限</label>
                                             <div class="form-group">
                                               
 												<div class="row">
 												 <#list authorityCache as authority >
												  <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12"><input type="checkbox" name="authorityId" value="${authority.authorityId}">${authority.authorityName}</div>
												 </#list>
												</div>
                                            </div>
                                          </div>
                                        </div>
											
											<div class="form-group">
												<button type="button" class="btn btn-lg btn-default" onclick="subForm()" >保&nbsp;存</button>
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

		    function subForm(){
		    	$("#roleForm").submit();
	 	   }

	   
	  </script>

</body>

</html>
