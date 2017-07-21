<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>属性列表</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/myshop/Public/js/admin/jquery-1.8.1.min.js"></script>
</head>
<body style="overflow-y:visible;">
<div class="main">
	<table class="data-table txt-center lev-txt-left">
		<tr>
			<th>分类名称</th>
			<th>排序</th>
			<th>有效</th>
			<th>操作</th>
		</tr>
		<?php if(is_array($getall)): foreach($getall as $key=>$v): ?><tr>
			<td><?php echo str_repeat('&nbsp;',$v['lev']*2) ?>|-<?php echo ($v['name']); ?></td>
			<td>255</td>
			<td>有</td>
			<td>
				<a href="/myshop/index.php/Admin/Category/category_edit/id/<?php echo ($v['id']); ?>/p/<?php echo ($p); ?>" class="button button-small">编辑</a>
				<a href="javascript:del(<?php echo ($v['id']); ?>);" class="button button-small">删除</a>
				<a href="/myshop/index.php/Admin/Category/category_add_sub/id/<?php echo ($v['id']); ?>" class="button button-small">新增下一级</a>
				<a href="/myshop/index.php/Admin/Category/category_prop/id/<?php echo ($v['id']); ?>" class="button button-small">分配属性</a>
			</td>
		</tr><?php endforeach; endif; ?>
	</table>
	<div>
	<?php echo ($page); ?>
	</div>
</div>
<script>
function del(id)
{
	if(confirm("确定删除吗?"))
	{
		 
         $.post("/myshop/index.php/Admin/Category/category_del",{'ids':id,'action':'delone'},function(d)
        		 {
        	       if(d=="OK")
        	    	   {
        	    	     alert("删除成功");
        	    	   }
        	       else{
        	    	     alert("删除失败");
        	       }
        		 }); 
	}
	
}
</script>
</body>
</html>