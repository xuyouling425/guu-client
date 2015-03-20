<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>团队成员</title>

</head>

<body>

    <div id="wrapper">
	
	<#include "admin/nav.ftl">

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">团队</h1>
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
                           <#list teams as team >
							  <div class="col-sm-6 col-md-4 col-lg-3">
							    <div class="thumbnail">
							      <img src="${team.photo}">
							      <div class="caption">
							        <h3>${team.userName}</h3>
							        <p>
							        	<!--修改-->
			                           <button type="button" class="btn btn-default" aria-label="Left Align" onclick="toUpdate('${team.userId}')">
										  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										</button>
							         <!--删除-->
			                           <button type="button" class="btn btn-default" aria-label="Left Align" onclick="del('${team.userId}')">
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

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    
	function toadd(){
		window.location.href = "${base}/team/toAdd";
	}
    
    function del(pid){
    	window.location.href = "${base}/team/delete?pid="+pid;
    }
    
    function toUpdate(pid){
    	window.location.href = "${base}/team/toUpdate?pid="+pid;
    }
    </script>

</body>

</html>
