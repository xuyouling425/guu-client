/**
 *summernote编辑器重写文件上传 
 * @param file
 * @param editor
 * @param editable
 * @param uploadUrl 文件上传处理类路径
 */
function sendFile(file, editor, editable,uploadUrl) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : uploadUrl,/* 填写后台上传文件的路径 */
		cache : false,
		contentType : false,
		processData : false,
		success : function(url) {/* url为上传成功后返回的图片路径 */
			editor.insertImage(editable, url);
		}
	});
}