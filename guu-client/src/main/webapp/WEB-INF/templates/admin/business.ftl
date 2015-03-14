<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>服务列表</title>

    <!-- Page-Level Plugin CSS - Tables -->
    <link href="${base}/resources/common/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">


</head>

<body>

    <div id="wrapper">
	
	<#include "admin/nav.ftl">

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">服务列表</h1>
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
                           <#list businesses as bus >
							  <div class="col-sm-6 col-md-4 col-lg-3">
							    <div class="thumbnail">
							      <img src="${bus.image}" alt="...">
							      <div class="caption">
							        <h3>${bus.name}</h3>
							        <p>
							        	<!--修改-->
			                           <button type="button" class="btn btn-default" aria-label="Left Align" onclick="toUpdate(${bus.id})">
										  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										</button>
							         <!--删除-->
			                           <button type="button" class="btn btn-default" aria-label="Left Align" onclick="del(${bus.id})">
										  <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
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

    <!-- Page-Level Plugin Scripts - Tables -->
    <script src="${base}/resources/common/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${base}/resources/common/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
    
	function toadd(){
		window.location.href = "${base}/business/toAdd";
	}
    
    function del(pid){
    	window.location.href = "${base}/business/delete?pid="+pid;
    }
    
    function toUpdate(pid){
    	window.location.href = "${base}/business/toUpdate?pid="+pid;
    }
    </script>

</body>

</html>
