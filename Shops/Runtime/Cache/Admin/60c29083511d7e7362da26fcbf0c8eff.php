<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>产品列表</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/myshop/Public/js/admin/jquery-1.8.1.min.js"></script>

	<style>
	.pages a,.pages span {
	    display:inline-block;
	    padding:2px 5px;
	    margin:0 1px;
	    border:1px solid #f0f0f0;
	    -webkit-border-radius:3px;
	    -moz-border-radius:3px;
	    border-radius:3px;
	}
	.pages a,.pages li {
	    display:inline-block;
	    list-style: none;
	    text-decoration:none; color:#58A0D3;
	}
	.pages a.first,.pages a.prev,.pages a.next,.pages a.end{
	    margin:0;
	}
	.pages a:hover{
	    border-color:#50A8E6;
	}
	.pages span.current{
	    background:#50A8E6;
	    color:#FFF;
	    font-weight:700;
	    border-color:#50A8E6;
	}
	</style>	
</head>
<body style="overflow-y:visible;">
<div class="main">
	<table class="data-table txt-center">
		<tr>
			<th>序号</th>
			<th>商品名称</th>
			<th>商品分类</th>
			<th>品牌</th>
			<th>价格（元）</th>
			<th>库存</th>
			<th>上架</th>
			<th>推荐</th>
			<th>操作</th>
		</tr>
		<?php if(is_array($goodsArr)): foreach($goodsArr as $key=>$v): ?><tr>
			<td><?php echo ($v['goods_id']); ?><img src=""></td>
			<td><?php echo ($v['goods_name']); ?></td>
			<td><?php echo ($v['cate_name']); ?></td>
			<td><?php echo ($v['brand']); ?></td>
			<td><?php echo ($v['price']); ?></td>
			<td><?php echo ($v['spec_qty']); ?></td>
			<td>是</td>
			<td>是</td>
			<td>
				<a href="/myshop/index.php/Admin/Goods/goods_edit/id/<?php echo ($v['goods_id']); ?>/p/<?php echo ($p); ?>" class="button button-small">编辑</a>
				<a href="javascript:del(<?php echo ($v['goods_id']); ?>);" class="button button-small button-danger">删除</a>
			</td>
		</tr><?php endforeach; endif; ?>
		<tr>
		  <td colspan="9">	
		  <div class="pages">
	<?php echo ($fenye); ?>
	</div></td>
		</tr>
	</table>

	<div style="height:100px;">
	</div>
</div>
<script>
function del(id)
{
	if(confirm("确定删除吗?"))
	{
		$.post("/myshop/index.php/Admin/Goods/goods_del",{'action':'delone','ids':id},function(d)
				{
			       if(d=="OK")
			    	   {
			    	      alert("删除成功");
			    	   }
			       else{
			    	   alert("删除失败");
			       }
			        location.href="/myshop/index.php/Admin/Goods/goods_list";
				});
	}
}
</script>
</body>
</html>