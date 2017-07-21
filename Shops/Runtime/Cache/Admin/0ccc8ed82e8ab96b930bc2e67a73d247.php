<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>分类添加</title>
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin//bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/ui.datepicker.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/myshop/Public/js/admin/jquery.1.7.1.js" charset="utf-8"></script>
    <script type="text/javascript" src="/myshop/Public/js/admin/ui.datepicker.js" charset="utf-8"></script>
    <script type="text/javascript" src="/myshop/Public/js/admin/ui.datepicker-zh-CN.js" charset="utf-8"></script>
  
<script>
   function exportdata()
   {
	   var time1=$("#date1").val();
	   var time2=$("#date2").val();
	   //1.检查用户是否输入了日期区间
	   location.href="<?php echo U('Report/exportdata/t1/"+time1+"/t2/"+time2+"');?>";
   }
   $(function() {
		$('#date1').datepicker({showOn: "both", buttonImage: "/myshop/Public/images/admin/datepicker.gif", buttonImageOnly: true});
		$('#date2').datepicker({showOn: "both", buttonImage: "/myshop/Public/images/admin/datepicker.gif", buttonImageOnly: true});
	    
	})
</script>
</head>
<body>
<div class="main">
<form action="/myshop/index.php/Admin/Report/reportdata" method="post">
	<table class="data-table2">
		<tr>
			<th>下单时间：</th>
			<td><input name="date1" id="date1">&nbsp;至
			</td>
		</tr>
		<tr>
		    <th></th>
		    <td>
			 <input name="date2" id="date2" >
		    </td>
		</tr>
	</table>
	<input type="submit" value="查询" class="button button-primary">
	&nbsp;
	<input type="button" value="导出excel" onClick="exportdata();"  class="button button-primary">
	<input type="reset" value="取消" class="button">
</form>
<table class="data-table2" style="text-align:center;">
   <tr>
       <td>商品名称</td>
       <?php if(is_array($montharr)): foreach($montharr as $key=>$x): ?><td><?php echo ($x); ?></td><?php endforeach; endif; ?>
       <td>小计</td>
   </tr>
   <?php if(is_array($dataarr)): $i = 0; $__LIST__ = $dataarr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
    <?php $subtotal = '0'; ?>
        <td><?php echo ($key); ?></td>
        <?php if(is_array($montharr)): foreach($montharr as $key=>$xx): ?><td>
          <?php $subtotal = $subtotal+$v[$xx]; ?>
          <?php if($v[$xx] == ''): ?>0
            <?php else: ?>
            <?php echo ($v[$xx]); endif; ?>
        </td><?php endforeach; endif; ?>
        <td><?php echo ($subtotal); ?></td>
    </tr><?php endforeach; endif; else: echo "" ;endif; ?>
</table>
</div>
</body>
</html>