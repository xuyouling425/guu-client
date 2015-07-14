<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Page-Level Plugin CSS - Tables -->
    <link href="${base}/resources/common/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <title>权限管理</title>

</head>

<body>

    <div id="wrapper">
    
	<#include "admin/nav.ftl">

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">权限管理</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                         <form role="form" id="msgForm" action=""  method="post">	   
                        <!--添加-->
                         <button type="button" class="btn btn-default" aria-label="Left Align" onclick="toadd()">
							  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
							</button>
						<!--修改-->
			            <button type="button" class="btn btn-default" aria-label="Left Align" onclick="toUpdate()">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
						</button>
						 <!--删除-->
			             <button type="button" class="btn btn-default" aria-label="Left Align" onclick="del()">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
						</button>  
						<input type="hidden" id="pids" name="pids">
						
						</form>
                        </div>
 					                     
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="msgTable">
                                    <thead>
                                        <tr>
                                       		<th width="5%"><input id="ckboxes" name="ckboxes" type="checkbox" class="checkboxes" onclick="reSelected()"></th>
                                            <th width="25%">名称</th>
                                            <th width="15%">ID</th>
                                             <th width="10%">模块</th>
                                            <th width="40%">描述</th>
                                            <th width="5%">状态</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <#list authorityList as authority>
                                        <tr class="odd gradeX">
                                       		<td><input id="ckbox" name="ckbox" type="checkbox" class="checkboxes" value="${authority.authorityId}"></td>
                                            <td>${authority.authorityName}</td>
                                            <td>${authority.authorityId}</td>
                                            <td>${authority.module}</td>
                                            <td>${authority.authorityDesc}</td>
                                            <td>${authority.authorityStatus}</td>
                                        </tr>
                                      </#list>  
                                    </tbody>
                                </table>
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

    <script src="${base}/resources/common/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${base}/resources/common/js/plugins/dataTables/dataTables.bootstrap.js"></script>


    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#msgTable').dataTable({
	        "bPaginate" : true,      //显示分页器
			"iDisplayLength":10,   //一页显示条数
	        "bInfo":false, //页脚信息
        });
    });
    
    function toadd(){
		window.location.href = "${base}/authority/toAdd";
	}
	
	function reSelected(){
		 $("input[name='ckbox']").each(function () {  
              $(this).prop("checked", !this.checked);  
         });  
	}
	
	function del(){
		var size = $("input[name='ckbox']:checked").size();
		if(size==0){
			alert("请选择要删除的记录");
		}else
		{
			var pids="-";
			$("input[name='ckbox']:checked").each(function(){
				pids=pids+$(this).val()+"-";
			})
			$("#pids").val(pids);
			$("#msgForm").prop("action","${base}/message/delete");
			$("#msgForm").submit();
		}
	}
     
    function toUpdate(){
   	 	var size = $("input[name='ckbox']:checked").size();
		if(size==1){
			var pids="";
			$("input[name='ckbox']:checked").each(function(){
				pids=$(this).val();
			})
			$("#pids").val(pids);
			$("#msgForm").prop("action","${base}/message/toUpdate");
			$("#msgForm").submit();
		}else
		{
			alert("请选择要修改的一条记录");
		}
    }        
    
    </script>

</body>

</html>
