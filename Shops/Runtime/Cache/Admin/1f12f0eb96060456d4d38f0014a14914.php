<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>分类添加</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin//bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">
<form action="/myshop/index.php/Admin/Category/category_add" method="post">
	<table class="data-table2">
		<tr>
			<th>分类名称：</th>
			<td><input type="text" name="cate_name"></td>
		</tr>
		<tr>
			<th>上级分类：</th>
			<td>
			   <select name="parent_id">
			       <option value="">-请选择-</option>
			       <?php if(is_array($parentarr)): $i = 0; $__LIST__ = $parentarr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v['cate_id']); ?>">
			                    <?php echo ($v['cate_name']); ?>
			               </option>
			               <?php if(is_array($childarr[$v['cate_id']])): $i = 0; $__LIST__ = $childarr[$v['cate_id']];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$x): $mod = ($i % 2 );++$i;?><option value="<?php echo ($x['cate_id']); ?>">
			                    &nbsp;&nbsp;--|<?php echo ($x['cate_name']); ?>
			                   </option>
				                   <?php if(is_array($sonarr[$x['cate_id']])): $i = 0; $__LIST__ = $sonarr[$x['cate_id']];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$z): $mod = ($i % 2 );++$i;?><option value="<?php echo ($z['cate_id']); ?>">
				                    &nbsp;&nbsp;&nbsp;--|<?php echo ($z['cate_name']); ?>
				                   </option><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
			   </select>
			</td>
		</tr>		
		<tr>
			<th>排序：</th>
			<td><input type="text" name="sort_order"></td>
		</tr>
		<tr>
			<th>有效：</th>
			<td>
			    <input type="radio" name="if_show" value="1" >是
			    <input type="radio" name="if_show" value="0" >否
			</td>
		</tr>
	</table>
	<input type="submit" value="确定" class="button button-primary">
	<input type="reset" value="取消" class="button">
</form>
</div>
</body>
</html>