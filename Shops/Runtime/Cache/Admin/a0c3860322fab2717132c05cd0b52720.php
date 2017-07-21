<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>订单详情</title>
   	<style>
		*{
			margin:0px;
			padding:0px;
		}
		body{
			padding:30px;
		}
		h3{
			font-size:16px;
			height:30px;
			line-height:30px;
			border-bottom:1px solid black;
		}
		div{
			margin-top:15px;
			padding-left:20px;
		}
		div h4{
			font-size:14px;
			margin-bottom:20px;
		}
		div p{
			line-height:30px;
			padding-left:56px;		
		}
		div p span{	
			display:inline-block;
			width:300px;
			margin-right:30px;
		}
		div table td{
			height:50px;
			width:200px;
			text-align:center;
		}
	</style>
</head>
<body style="overflow: auto;padding-bottom:20px;">
<div class="main">
	<h3>订单详情</h3>
	<div>
		<h4>订单状态:</h4>
		<p>
			<span>订单号:<?php echo ($orderarr['order_sn']); ?></span>
			<span>订单状态:
				<?php switch($orderArr['status']): case "0": ?>交易关闭<?php break;?>
					<?php case "11": ?>等待买家付款<?php break;?>
					<?php case "20": ?>买家已付款 待发货<?php break;?>
					<?php case "30": ?>已发货<?php break;?>
					<?php case "40": ?>交易已完成<?php break; endswitch;?>
			</span><br />
			<span>订单金额:<?php echo ($orderarr['order_amount']); ?></span>
		</p>
	</div>
	<div>
		<h4>订单信息:</h4>
		<p>
			<span>买家名称:<?php echo ($orderarr['buyer_name']); ?></span>
			<span>支付方式:<?php echo ($orderarr['payment_name']); ?></span><br />
			<span>下单时间:<?php echo (date('Y-m-d',$orderarr['add_time'])); ?></span>
			<span>发货时间:</span><br />
			<span>完成时间:<?php echo (date('Y-m-d',$orderarr['finished_time'])); ?></span>
		</p>
	</div>
	<div>
		<h4>收发货信息:</h4>
		<p>
			<span>收货人姓名:<?php echo ($orderarr['buyer_name']); ?></span>
			<span>联系方式:<?php echo ($order_extmarr['phone_tel']); ?></span><br />
			<span>详细地址:<?php echo ($order_extmarr['address']); ?></span><br />
			<span>发货单号:<?php echo ($orderarr['trade_no']); ?></span>
		</p>
	</div>
	<div>
		<h4>商品信息:</h4>
		<table border='1' cellspacing='0' style="margin-left:56px;">
			<tr >
				<td>商品图片</td>
				<td>商品名称</td>
				<td>单价(元)</td>
				<td>数量</td>
			</tr>
			<?php if(is_array($order_goodarr)): $i = 0; $__LIST__ = $order_goodarr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
				<td><img src="/myshop/Public/<?php echo ($v['goods_image']); ?>"></td>
				<td><?php echo ($v['goods_name']); ?></td>
				<td><?php echo ($v['price']); ?></td>
				<td><?php echo ($v['quantity']); ?></td>
			</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		</table>
		<a href="/myshop/index.php/Admin/Order/order_list">返回</a>
	</div>
</div>
</body>
</html>