<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>产品添加</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
    <script types="text/javascript" charset="utf-8" src="/myshop/Public/js/admin/editor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/myshop/Public/js/admin/editor/ueditor.all.min.js"> </script>
   	<script type="text/javascript" charset="utf-8" src="/myshop/Public/js/admin/lang/zh-cn/zh-cn.js"></script>
   	<script type="text/javascript" charset="utf-8" src="/myshop/Public/js/admin/jquery-1.8.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/myshop/Public/css/admin/webuploader.css">
	<link rel="stylesheet" type="text/css" href="/myshop/Public/css/admin/diyUpload.css">
	<script type="text/javascript" src="/myshop/Public/js/admin/webuploader.html5only.min.js"></script>
	<script type="text/javascript" src="/myshop/Public/js/admin/diyUpload.js"></script>
   	<script>
	$(function()
	{
		//参数用json格式，所以用大花括号扩住
		$("#deimg").diyUpload({
			//处理文件上传
			url:"/myshop/index.php/Admin/Goods/upprocess",
			success:function(d)
			{
				$("#default_image").val(d.imgsrc);//将上传成功后文件的完整路径写入隐藏域内
				alert(d.imgsrc);
			},
			error:function(e)
			{
				alert(e);
			}
		})	
		$("#imgs").diyUpload({
			//处理文件上传
			url:"/myshop/index.php/Admin/Goods/upprocess",
			success:function(d)
			{
				$("#image_url").val(d.imgsrc);//将上传成功后文件的完整路径写入隐藏域内
				alert(d.imgsrc);
			},
			error:function(e)
			{
				alert(e);
			}
		})	
		
		
		
		
	})
	</script>
</head>
<body style="overflow: auto;padding-bottom:20px;">
<div class="main">
	<form action="/myshop/index.php/Admin/Goods/goods_add" method="post">
		<table class="data-table2">
			<tr>
				<th>商品类别：</th>
				<td>
					<select name="" id="pid" onchange="getsoncate()">					  
					    <?php if(is_array($parentarrs)): foreach($parentarrs as $key=>$vv): ?><option value="<?php echo ($vv['cate_id']); ?>"><?php echo ($vv['cate_name']); ?></option><?php endforeach; endif; ?>
					</select>&nbsp;<span id="sonspan"></span>&nbsp;<span id="subson"></span>
				</td>
			</tr>
			<tr>
				<th>商品属性：</th>
				<td></td>
			</tr>
			<tr>
				<th>商品名称：</th>
				<td><input type="text" name="goods_name"></td>
			</tr>
			<tr>
				<th>品牌：</th>
				<td><input type="text" name="brand"></td>
			</tr>
			<tr>
				<th>价格：</th>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<th>会员价：</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>库存：</th>
				<td><input type="text" name="spec_qty"></td>
			</tr>
			<tr>
				<th>上架：</th>
				<td>
					<input type="radio" name="if_show" value="1">是
					<input type="radio" name="if_show" value="0">否
				</td>
			</tr>
			<tr>
				<th>推荐：</th>
				<td>
					<input type="radio" name="recommended" value="1">是
					<input type="radio" name="recommended" value="0">否
				</td>
			</tr>
			<tr>
				<th>默认图片：</th>
				<td>
					<div id="deimg"></div>
					<input type="hidden" name="default_image" id="default_image">
				</td>
			</tr>
			<tr>
				<th>商品图片：</th>
				<td>
					<div id="imgs"></div>
					<input type="hidden" name="image_url" id="image_url">
				</td>
			</tr>
			<tr>
				<th>商品描述：</th>
				<td>
					<script id="editor" type="text/plain" style="width:100%"></script>
				</td>
			</tr>
		</table>
		<input type="submit" value="添加" class="button button-primary">
		<input type="reset" value="重填" class="button button-default">
	</form>
</div>
<script>
$(function(){
	getsoncate();
	
})

function getsoncate() {
	var pid = $('#pid').val();  // 当前选中的最顶层的父类id
	$.post("<?php echo U('Goods/genedcate');?>",{'parentid':pid,'act':'son'},function(d){
		     $('#sonspan').html(d);
		     $.post("<?php echo U('Goods/genedcate');?>",{'parentid':$("#son").val(),'act':'subson'},function(t){
		    	     $("#subson").html(t);
		           });
	       });
	
}

function genesubcate() {
	$.post("<?php echo U('Goods/genedcate');?>",{'parentid':$("#son").val(),'act':'subson'},function(d){
		$("#subson").html(d);
		
	});
}

</script>
</body>
</html>