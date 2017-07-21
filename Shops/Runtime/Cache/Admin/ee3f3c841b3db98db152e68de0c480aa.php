<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>添加属性值</title>
    <link href="/myshop/Public/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="__public__/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">
<form action="/myshop/index.php/Admin/Prop/propval_add" method="post">
	<table class="data-table2">
		<tr>
			<th>属性名：</th>
			<td>
			<input type="hidden" name="pid" value="<?php echo ($proponeArr['pid']); ?>">
			<input type="text" value="<?php echo ($proponeArr['name']); ?>" readonly></td>
		</tr>
		<tr>
			<th>属性值：</th>
			<td><input type="text" name="prop_value">(<b>注：</b>多个属性值用逗号分隔)</td>
		</tr>
	</table>
	<input type="submit" value="确定" class="button button-primary">
	<input type="reset" value="取消" class="button">
</form>
</div>
</body>
</html>