<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>个人模板</title>

</head>

<body>

    <div id="wrapper">
	
	<#include "admin/nav.ftl">

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">模板列表</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        
                        <!--添加-->
                           <button type="button" class="btn btn-default" aria-label="Left Align" onclick="toadd()">
							  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
							</button>
							
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           
                            <!-- /.table-responsive -->
                           <div class="row">
                           <#list templateList as template >
							  <div class="col-sm-6 col-md-4 col-lg-3">
							    <div class="thumbnail">
							      <img src="${template.templateImg}">
							      <div class="caption">
							        <h3>${template.templateName}</h3>
							        <p>
							        	<!--修改-->
			                           <button type="button" class="btn btn-default" aria-label="Left Align" onclick="toUpdate('${template.templateId}')">
										  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										</button>
							         <!--删除-->
			                           <button type="button" class="btn btn-default" aria-label="Left Align" onclick="del('${template.templateId}')">
										  <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
										</button>
										
										<button type="button" class="btn btn-default" aria-label="Left Align" onclick="toTempFile('${template.templateId}')">
										  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										</button>
										
										<button type="button" class="btn btn-default" aria-label="Left Align" onclick="toView('${template.templateId}')">
										  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										</button>
										
							        </p>
							      </div>
							    </div>
							  </div>
							 </#list> 
							 
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

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    
	function toadd(){
		window.location.href = "${base}/template/toAdd";
	}
    
    function del(pid){
    	window.location.href = "${base}/template/delete?pid="+pid;
    }
    
    function toUpdate(pid){
    	window.location.href = "${base}/template/toUpdate?pid="+pid;
    }
    
     function toTempFile(pid){
    	window.location.href = "${base}/template/toTemplateFile?pid="+pid;
    }
    
      function toView(pid){
    	window.location.href = "${base}/webtemplate/"+pid+"/index.html";
    }
    </script>

</body>

</html>
