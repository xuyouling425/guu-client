<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" type="text/css" href="${base}/resources/common/jquery-ui-1.11.4/themes/smoothness/jquery-ui.css">
	<!-- elFinder CSS (REQUIRED) -->
	<link rel="stylesheet" type="text/css" href="${base}/elfinder/css/elfinder.min.css">
	<link rel="stylesheet" type="text/css" href="${base}/elfinder/css/theme.css">



    
    <title>模板文件列表</title>

</head>

<body>

    <div id="wrapper">
	
	<#include "admin/nav.ftl">

        <div id="page-wrapper">
            <div id="elfinder"></div>
        </div>
        <!-- /#page-wrapper -->

    </div>


		<script src="${base}/resources/common/jquery-ui-1.11.4/jquery-ui.min.js"></script>
		<!-- elFinder JS (REQUIRED) -->
		<script src="${base}/elfinder/js/elfinder.min.js"></script>

		<!-- elFinder translation (OPTIONAL) -->
		<script src="${base}/elfinder/js/i18n/elfinder.zh_CN.js"></script>
		
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
	  $(document).ready(function() {
					$("#elfinder").elfinder({
						url :"${base}/elfinder-servlet/connector?rootDir=webtemplate/${template.templateId}&rootName=${template.templateId}",  // connector URL (REQUIRED)
					 	lang:"zh_CN"                    // language (OPTIONAL)
					});
				});
    </script>

</body>

</html>
