<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户列表</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
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
<body style="overflow: auto;padding-bottom:20px;">
<div class="main">
	<table class="data-table txt-center">
		<tr>
			<th>用户id</th>
			<th>用户名</th>
			<th>注册时间</th>
			<th>最后登录</th>
			<th>联系电话</th>
			<th><a href="/myshop/index.php/Admin/Member/member_add">添加</a></th>
		</tr>
		<?php if(is_array($newArr)): foreach($newArr as $key=>$v): ?><tr>
			<td><?php echo ($v['user_id']); ?></td>
			<td><?php echo ($v['user_name']); ?></td>
			<td><?php echo ($v['reg_time']); ?></td>
			<td><?php echo ($v['last_login']); ?></td>
			<td><?php echo ($v['phone_tel']); ?></td>
			<td><a href="/myshop/index.php/Admin/Member/member_edit/id/<?php echo ($v['user_id']); ?>/p/<?php echo ($p); ?>" class="button button-small">修改</a></td>
		</tr><?php endforeach; endif; ?>
		<tr>
		    <td colspan="6"><div class="pages"><?php echo ($fenye); ?></div></td>
		 </tr>
	</table>
</div>
<div style="height:100px;">
</div>
</body>
</html>