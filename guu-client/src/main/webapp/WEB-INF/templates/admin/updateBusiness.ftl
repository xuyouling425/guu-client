<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${base}/resources/common/css/summernote.css" rel="stylesheet">
<title>修改服务</title>

</head>

<body>

	<div id="wrapper">

		<#include "admin/nav.ftl">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">服务信息信息</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">服务信息</div>
						<div class="panel-body">
							<div class="row">
								<form role="form" id="bussForm" action="${base}/business/update" enctype="multipart/form-data" method="post">
									<div class="col-lg-12">
										<div class="form-group">
											<label>服务名称</label> <input class="form-control" type="text" id="name" name="name" value="${business.name}">
											<input  type="hidden" id="pid" name="id" value="${business.id}">
										</div>
										<div class="form-group">
												<label>服务图片</label>
												 <input id="imgPath" name="imgPath" type="file" class="file" data-preview-file-type="text"  multiple="true" data-show-upload="false" data-show-caption="true">
												 <input  type="hidden" id="image" name="image" value="${business.image}">
											</div>
								
									
											<div class="form-group">
												<label>服务介绍</label>
												<textarea class="form-control" id="description" name="description" rows="5">${business.description}</textarea>
												<input id="input-701" name="kartik-input-701" type="file" multiple=true class="file-loading" data-upload-url="/site/file-upload" data-upload-async="false" data-max-file-count="10">
											</div>
											
											<div class="form-group" >
												<label>服务详情</label>
												<input id="content" name="content" type="hidden">
												<div id="bussContent">
												</div>
											</div>										
											
											<div class="form-group">
												<button type="button" class="btn btn-lg btn-default" onclick="subForm()" >保&nbsp;存</button>
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
    	<!--图片插件初始-->
	$("#imgPath").fileinput({
		 initialPreview: [
	        "<img src='${business.image}' class='file-preview-image'>",
	    	],
	    overwriteInitial: true,
	    initialCaption: "${business.image}"
		});
		
    <!--在线编辑器初始-->
	$(document).ready(function() {
		$('#bussContent').summernote({
			height : 300,
			focus : true,
			oninit:function(){
				$('#bussContent').code('${business.content}');
			},
			onImageUpload: function(files, editor, editable) {
   				//重写文件上传
   				sendFile(files[0],editor,editable);
 			 }
		});
	});
	

		
	    function subForm(){
	    	var bus = $("#bussContent").code();
	    	 $("#content").val(bus);
	    	$("#bussForm").submit();
	    }
	    
	     function sendFile(file,editor,editable) {
		    data = new FormData();
		    data.append("file", file);
		    $.ajax({
		        data: data,
		        type: "POST",
		        url: "${base}/upload/uploadImg",/*填写后台上传文件的路径*/
		        cache: false,
		        contentType: false,
		        processData: false,
		        success: function(url) {/*url为上传成功后返回的图片路径*/
		                editor.insertImage(editable, url);
		        }
		    });
		 }   
	  </script>

</body>

</html>
