<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${base}/resources/common/css/summernote.css" rel="stylesheet">
<title>新增团队成员</title>

</head>

<body>

	<div id="wrapper">

		<#include "admin/nav.ftl">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">团队成员信息</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">团队成员</div>
						<div class="panel-body">
							<div class="row">
								<form role="form" id="teamForm" action="${base}/team/update" enctype="multipart/form-data" method="post">
									<div class="col-lg-12">
									
										<div class="form-group">
												<label>成员图片</label>
												 <input id="imgPath" name="imgPath" type="file" class="file" data-preview-file-type="text"  multiple="true" data-show-upload="false" data-show-caption="true">
												 <input type="hidden" id="userId" name="userId" value="${team.userId}">
												 <input type="hidden" id="photo" name="photo" value="${team.photo}">
										</div>
										
										<div class="form-group">
											<label>成员姓名 </label> <input class="form-control" type="text" id="userName" name="userName" value="${team.userName}">
										</div>
										<div class="form-group">
											<label>家庭电话</label> <input class="form-control" type="text" id="phone" name="phone" value="${team.phone}">
										</div>
										<div class="form-group">
											<label>移动电话</label> <input class="form-control" type="text" id="telphone" name="telphone" value="${team.telphone}">
										</div>
										<div class="form-group">
											<label>成员email </label> <input class="form-control" type="text" id="email" name="email" value="${team.email}">
										</div>
										
											<div class="form-group">
												<label>成员介绍</label>
												<textarea class="form-control" id="userDesc" name="userDesc" rows="5">${team.userDesc}</textarea>
												<input id="input-701" name="kartik-input-701" type="file" multiple=true class="file-loading" data-upload-url="/site/file-upload" data-upload-async="false" data-max-file-count="10">
											</div>
											
											<div class="form-group" >
												<label>成员详细介绍</label>
												<input id="content" name="content" type="hidden">
												<div id="proContent">
												</div>
											</div>										
											
											<div class="form-group">
												<button type="button" class="btn btn-lg btn-default" onclick="subForm()" >保&nbsp;存</button>
												<button type="reset" class="btn btn-lg btn-default">返&nbsp;回</button>
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
	        "<img src='${team.photo}' class='file-preview-image'>",
	    	],
	    overwriteInitial: true,
	    initialCaption: "${team.photo}"
		});
    
	$(document).ready(function() {
		$('#proContent').summernote({
			height : 300,
			focus : true,
			oninit:function(){
				$('#proContent').code('${team.content}');
			},
			onImageUpload: function(files, editor, editable) {
   				//重写文件上传
   				sendFile(files[0],editor,editable);
 			 }
		});
	});
	
	    function subForm(){
	    	var bus = $("#proContent").code();
	    	 $("#content").val(bus);
	    	$("#teamForm").submit();
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
