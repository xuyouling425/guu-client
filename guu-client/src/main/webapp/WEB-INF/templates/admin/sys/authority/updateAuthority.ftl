<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>更新权限信息</title>

</head>

<body>

	<div id="wrapper">

		<#include "admin/nav.ftl">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">编辑权限</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">编辑权限</div>
						<div class="panel-body">
							<div class="row">
								<form role="form" id="aForm" action="${base}/authority/update" method="post">
									<div class="col-lg-12">
										<div class="form-group">
											<label>权限ID </label>
											<input class="form-control" type="text" id="authId" name="authId" value="${authority.authorityId}" disabled>
											<input class="form-control" type="hidden" id="authorityId" name="authorityId" value="${authority.authorityId}">
										</div>
										
										<div class="form-group">
											<label>权限名称 </label> 
											<input class="form-control" type="text" id="authorityName" name="authorityName" value="${authority.authorityName}">
										</div>
										
											<div class="form-group">
												<label>权限描述</label>
												<input class="form-control" type="text" id="authorityDesc" name="authorityDesc" value="${authority.authorityDesc}">
											</div>
											
											 <div class="form-group">
                                            	<label>选择下面资源，作为当前权限所控制的资源信息</label>
                                             <div class="form-group">
                                               
 												<div class="row">
 												 <#list resourceCache as resource >
 												  <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
 												 	<input type="checkbox" name="resourceId" value="${resource.resourcesId}" 
 												 		<#list auResList as authRes > <#if resource.resourcesId=authRes.resourcesId> checked="true" </#if>
 												 		</#list> >${resource.resourcesName}
												  </div>
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
		    	$("#aForm").submit();
	 	   }

	   
	  </script>

</body>

</html>
