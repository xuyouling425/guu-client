<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>新增模板</title>

</head>

<body>

	<div id="wrapper">

		<#include "admin/nav.ftl">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">模板信息</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">模板</div>
						<div class="panel-body">
							<div class="row">
								<form role="form" id="templateForm" action="${base}/template/add" enctype="multipart/form-data" method="post">
									<div class="col-lg-12">
										<div class="form-group">
											<label>模板名称 </label> <input class="form-control" type="text" id="templateID" name="templateId" value="${template.templateId}">
										</div>
										<div class="form-group">
												<label>模板显示图片</label>
												 <input id="imgPath" name="imgPath" type="file" class="file" data-preview-file-type="text"  multiple="true" data-show-upload="false" data-show-caption="true">
										</div>
										
										<div class="form-group">
											<label>模板名称 </label> <input class="form-control" type="text" id="templateName" name="templateName" value="${template.templateName}">
										</div>
										<div class="form-group">
											<label>模板类型</label> <input class="form-control" type="text" id="type" name="type" value="${template.type}">
										</div>
										
										
											<div class="form-group">
												<label>模板介绍</label>
												<textarea class="form-control" id="templateDesc" name="templateDesc" rows="5"></textarea>
												<input id="input-701" name="kartik-input-701" type="file" multiple=true class="file-loading" data-upload-url="/site/file-upload" data-upload-async="false" data-max-file-count="10">
											</div>
											
											<div class="form-group">
												<button type="submit" class="btn btn-lg btn-default" >保&nbsp;存</button>
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
	
	<script src="${base}/resources/common/js/summernote.min.js"></script>
	
	<!-- /#wrapper -->
    <script>
	$("#imgPath").fileinput({
		 initialPreview: [
	        "<img src='${template.templateImg}' class='file-preview-image'>",
	    	],
	    overwriteInitial: true,
	    initialCaption: "${template.templateImg}"
		});
	  </script>

</body>

</html>
