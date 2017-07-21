<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>订单列表</title>
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
<h1>修改状态</h1>
<form action="/myshop/index.php/Admin/Order/order_optation" method="post">
     <input type="hidden" name="order_id" value="<?php echo ($editarr['order_id']); ?>">
     <input type="hidden" name="p" value="<?php echo ($p); ?>">
	<table>
	    <tr>
	         <td>订单号：</td>
	         <td><input type="text" name="order_sn" value="<?php echo ($editarr['order_sn']); ?>"></td>
	    </tr>
	    <tr>
	         <td>订单状态：</td>
	         <td>
	             <?php switch($editarr['status']): case "0": ?>交易关闭<?php break;?>
					<?php case "11": ?>等待买家付款<?php break;?>
					<?php case "20": ?>买家已付款 待发货<?php break;?>
					<?php case "30": ?>已发货<?php break;?>
					<?php case "40": ?>交易已完成<?php break; endswitch;?></td>
	    </tr>
	    <tr>
	         <td>修改状态：</td>
	         <td colspan="2">
	             <select name="status">
	                <option>---请选择---</option>
	                <option value="0">交易关闭</option>
					<option value="11">等待买家付款</option>
					<option value="20">买家已付款 待发货</option>
					<option value="30">已发货</option>
					<option value="40">交易已完成</option>
	             </select>
	         </td>
	    </tr>
	    <tr>
	        <td colspan="2"><input type="submit" value="修改"></td>
	    </tr>
	    </form>
	</table>
	<a href="/myshop/index.php/Admin/Order/order_list">返回主页</a>
</div>
<div style="height:100px;"></div>
</body>
</html>