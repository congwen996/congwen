<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>编辑属性</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">
<form action="/myshop/index.php/Admin/Prop/prop_edit" method="post">
	 <input type="hidden" name="pid" value="<?php echo ($proparr[0]['pid']); ?>">
	 <input type="hidden" name="p" value="<?php echo ($p); ?>">
	<table class="data-table2">
		<tr>
			<th>属性名：</th>
			<td><input type="text" value="<?php echo ($proparr[0]['name']); ?>" name="name"></td>
		</tr>
		<tr>
			<th>属性值：</th>
			<td><input type="text" value="<?php echo ($valstr); ?>" name="prop_value"></td>
		</tr>
		<tr>
			<th>排序：</th>
			<td><input type="text" value="<?php echo ($proparr[0]['sort_order']); ?>"></td>
		</tr>
		<tr>
			<th>有效：</th>
			<td>
			    <input <?php if(($proparr[0]['status']) == "1"): ?>checked<?php endif; ?> type="radio" name="status" value="1">是
			    <input <?php if(($proparr[0]['status']) == "0"): ?>checked<?php endif; ?> type="radio" name="status" value="0">否
			</td>
		</tr>
	</table>
	<input type="submit" value="确定" class="button button-primary">
	<input type="reset" value="取消" class="button">
</form>
</div>
</body>
</html>