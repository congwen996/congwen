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
   <h1>管理员添加</h1>
   <form action="/myshop/admin.php/Member/member_add" method="post">
	<table class="data-table txt-center">
		<tr>
			<td>用户名:</td>
			<td><input type="text" name="user_name" id="user_name"></td>
		</tr>
		<tr>
			<td>密码:</td>
			<td><input type="password" name="password" id="password"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="text" name="email" id="email"></td>
		</tr>
		<tr>
		    <td>联系电话</td>
		    <td><input type="text" name="phone_tel" id="phone_tel"></td>
		</tr>
		
		<tr>
		   <td colspan="2"><input type="submit" value="添加"></td>
		</tr>
	</table>
	</form>
</div>
<div style="height:100px;">
</div>
</body>
</html>