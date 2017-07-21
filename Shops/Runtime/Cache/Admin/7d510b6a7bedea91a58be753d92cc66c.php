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
<body>
<div class="main">
	<table class="data-table txt-center">
		<tr>
			<th>序号</th>
			<th>属性名</th>
			<th>属性值</th>
			<th>排序</th>
			<th>有效</th>
			<th>操作</th>
		</tr>
		<?php if(is_array($propListArr)): foreach($propListArr as $key=>$v): ?><tr>
			<td><?php echo ($v['pid']); ?></td>
			<td><?php echo ($v['name']); ?></td>
			<td>
				<?php if(is_array($propValueArr)): foreach($propValueArr as $key=>$vv): if($v['pid'] == $vv['pid']): echo ($vv['prop_value']); ?>,<?php endif; endforeach; endif; ?>	
			</td>
			<td>
				<?php if($v['sort_order'] == 255): ?>2<?php endif; ?>
			</td>
			<td>				
				<a href="javascript:setflag(<?php echo ($v['pid']); ?>)" id="flag<?php echo ($v['pid']); ?>">
				         <?php if(($v['shanchu']) == "1"): ?>是<?php else: ?>否<?php endif; ?>
			   </a>
			</td>
			<td>
				<a href="/myshop/index.php/Admin/Prop/prop_edit/pid/<?php echo ($v['pid']); ?>/p/<?php echo ($p); ?>" class="button button-small">编辑</a>
				<!--  <a href="/myshop/index.php/Admin/Prop/del/pid/<?php echo ($v['pid']); ?>" class="button button-small">删除</a>-->
				<a href="javascript:del(<?php echo ($v['pid']); ?>);" class="button button-small">删除</a>
				<a href="/myshop/index.php/Admin/Prop/propval_add/pid/<?php echo ($v['pid']); ?>" class="button button-small">添加属性值</a>
			</td>
		</tr><?php endforeach; endif; ?>
	</table>
	<div>
	<?php echo ($page); ?>
	</div>
</div>
<script>
//单删
function del(pid)
{
	if(confirm("确定删除吗?"))
	{
         $.post("/myshop/index.php/Admin/Prop/prop_del",{"ids":pid,"action":"delone"},function(d)
        		 {
        	       if(d=="OK")
        	    	   {
        	    	     alert("删除成功");
        	    	   }
        	       else{
        	    	     alert("删除失败");
        	       }
        	        location.href="/myshop/index.php/Admin/Prop/prop_list";
        		 }); 
	}	
}
//修改状态
 function  setflag(id)
 {
	  var word=$.trim($("#flag"+id).text());
	  if(word=="是")
		  {
		     var flg=0;
		  }
	  else{
		    var flg=1;
	      }
	  $.post("/myshop/index.php/Admin/Prop/setflag",{'ids':id,'flg':flg},function(d)
			  {
		         alert(d.msg);
		         location.href="/myshop/index.php/Admin/Prop/prop_list";
			  },'json');
 }
//设置状态
</script>
</body>
</html>