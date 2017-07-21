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
	<table class="data-table txt-center">
		<tr>
			<th>订单号</th>
			<th>下单时间</th>
			<th>买家</th>
			<th>订单金额</th>
			<th>支付方式</th>
			<th>订单状态</th>
			<th>操作</th>
		</tr>
		<?php if(is_array($newArr)): foreach($newArr as $key=>$v): ?><tr>
			<td><?php echo ($v['order_sn']); ?></td>
			<td><?php echo ($v['add_time']); ?></td>
			<td><?php echo ($v['buyer_name']); ?></td>
			<td><?php echo ($v['order_amount']); ?></td>
			<td><?php echo ($v['payment_name']); ?></td>
			<td>
				<?php switch($v['status']): case "0": ?>交易关闭<?php break;?>
					<?php case "11": ?>等待买家付款<?php break;?>
					<?php case "20": ?>买家已付款 待发货<?php break;?>
					<?php case "30": ?>已发货<?php break;?>
					<?php case "40": ?>交易已完成<?php break; endswitch;?>
			</td>
			<td>
				<a href="/myshop/index.php/Admin/Order/order_show/id/<?php echo ($v['order_id']); ?>" class="button button-small">查看</a>
				<?php if(($v['status']) != "40"): ?><a href="/myshop/index.php/Admin/Order/order_optation/id/<?php echo ($v['order_id']); ?>" class="button button-small">操作</a><?php endif; ?>
			</td>
		</tr><?php endforeach; endif; ?>
		<tr>
		  <td colspan="7"><div class="pages"><?php echo ($fenye); ?></div></td>
		</tr>
	</table>
</div>
<div style="height:100px;"></div>
</body>
</html>