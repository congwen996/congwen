<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>产品添加</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="/myshop/Public/js/admin/editor/ueditor.config.js"></script>
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
    			$("#default").diyUpload({
    				//处理文件上传
    				url:"/myshop/admin.php/Goods/upprocess",
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
    				url:"/myshop/admin.php/Goods/upprocess",
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
	<form action="/myshop/admin.php/Goods/goods_edit" method="post">
	    <input type="hidden" name="goods_id" value="<?php echo ($goodarr['goods_id']); ?>">
	    <input type="hidden" name="pno" value="<?php echo ($p); ?>">
		<table class="data-table2">
			<tr>
				<th>商品类别：</th>
				<td>
					<select name="" id="pid" onchange="soncate();">					   
					    <?php if(is_array($catearr)): foreach($catearr as $key=>$v): ?><option value="<?php echo ($v['cate_id']); ?>"><?php echo ($v['cate_name']); ?></option><?php endforeach; endif; ?>
					</select>&nbsp;&nbsp;
					<span id="son"></span>
					<span id="subson"></span>
				</td>
			</tr>
			<tr>
				<th>商品属性：</th>
				<td>
				</td>
			</tr>
			<tr>
				<th>商品名称：</th>
				<td>				
				<input type="text" name="goods_name" value="<?php echo ($goodarr['goods_name']); ?>"></td>
			</tr>
			<tr>
				<th>品牌：</th>
				<td><input type="text" name="brand" value="<?php echo ($goodarr['brand']); ?>"></td>
			</tr>
			<tr>
				<th>价格：</th>
				<td><input type="text" name="price" value="<?php echo ($goodarr['price']); ?>"></td>
			</tr>
			<tr>
				<th>会员价：</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>库存：</th>
				<td><input type="text" name="spec_qty" value="<?php echo ($goodarr['spec_qty']); ?>"></td>
			</tr>
			<tr>
				<th>上架：</th>
				<td>
					<input type="radio" name="if_show"  value="1"
					<?php if(($goodarr['if_show']) == "1"): ?>checked<?php endif; ?>>是
					<input type="radio" name="if_show"  value="0"
					<?php if(($goodarr['if_show']) == "0"): ?>checked<?php endif; ?>>否
				</td>
			</tr>
			<tr>
				<th>推荐：</th>
				<td>
					<input type="radio" name="recommended" value="1"
					<?php if(($goodarr['recommended']) == "1"): ?>checked<?php endif; ?>>是
					<input type="radio" name="recommended" value="0"
					<?php if(($goodarr['recommended']) == "0"): ?>checked<?php endif; ?>>否
				</td>
			</tr>
			<tr>
				<th>默认图片：</th>
				<td>
					<div id="default"></div>
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
		<input type="submit" value="修改" class="button button-primary">
		<input type="reset" value="重填" class="button button-default">
	</form>
<script>
   $(function()
		   {
	            soncate();
		   })
	 var ue = UE.getEditor('editor');
	 
	 function soncate()
	 {
		 var parid=$("#pid").val();
		 $.post("<?php echo U('Goods/genecates');?>",{'cateid':parid,"act":"son"},function(d)
				 {
			         //alert(d);
			         $("#son").html(d);
			         //当前子类别的id,
			          //产生第三个下拉框
			         var sid=$("#cson").val();			        
			         $.post("<?php echo U('Goods/genecates');?>",{'cateid':sid,"act":"subson"},function(t)
			        		 {
			        	        //alert(t);
			        	        $("#subson").html(t);
			        		 });
				 });
	 }
	 function subsoncate()
	 {
		 //第二个下拉选项的值
		 var cson=$("#cson").val();
		 $.post("<?php echo U('Goods/genecates');?>",{'cateid':cson,'act':'subson'},function(x)
				 {
			        $("#subson").html(x);
			    });
	}
	 
</script>
</div>
</body>
</html>