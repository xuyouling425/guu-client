<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>关于</title>

</head>

<body>

	<div id="wrapper">

		<#include "admin/nav.ftl">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">关于信息</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">公司基本信息</div>
						<div class="panel-body">
							<div class="row">
								<form role="form" id="aboutForm" action="${base}/about/addModify" enctype="multipart/form-data" method="post">
									<div class="col-lg-6">
										<div class="form-group">
											<label>公司名称</label> <input class="form-control" type="text" id="companyName" name="companyName" value="${about.companyName}" >
											<input class="form-control" type="hidden" id="aboutId" name="aboutId" value="${about.aboutId}" >
										</div>
										<div class="form-group">
											<label>公司电话</label> <input class="form-control" type="text" name="companyPhone" id="companyPhone" value="${about.companyPhone}">
										</div>
										<div class="form-group">
												<label>公司地址图片</label>
												 <input id="imgPath" name="imgPath" type="file" class="file" data-preview-file-type="text"  multiple="true" data-show-upload="false" data-show-caption="true">
											</div>
											<div class="form-group">
												<label>联系人</label> <input class="form-control" type="text" id="contactPerson" name="contactPerson" value="${about.contactPerson}">
											</div>
									</div>	
									<div class="col-lg-6">
											<div class="form-group">
												<label>公司英文名称</label> <input class="form-control" type="text" id="companyEn" name="companyEn" value="${about.companyEn}">
											</div>
											<div class="form-group">
												<label>公司传真</label> <input class="form-control" type="text" id="companyFax" name="companyFax" value="${about.companyFax}">
											</div>
											<div class="form-group">
											<label>公司地址</label> <input class="form-control" type="text" id="companyAddress" name="companyAddress" value="${about.companyAddress}">
										</div>
											<div class="form-group">
												<label>公司邮箱</label> <input class="form-control" type="text" id="companyEmail" name="companyEmail" value="${about.companyEmail}">
											</div>
										</div>
									<div class="col-lg-12">
										
									
											<div class="form-group">
												<label>公司介绍</label>
												<textarea class="form-control" id="companyDesc" name="companyDesc" rows="5">${about.companyDesc} </textarea>
												<input id="input-701" name="kartik-input-701" type="file" multiple=true class="file-loading" data-upload-url="/site/file-upload" data-upload-async="false" data-max-file-count="10">
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
	        "<img src='${about.imagePath}' class='file-preview-image'>",
	    	],
	    overwriteInitial: true,
	    initialCaption: "${about.imagePath}"
		});
    </script>

</body>

</html>
