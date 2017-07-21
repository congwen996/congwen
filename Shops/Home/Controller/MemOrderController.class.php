<?php
namespace Home\Controller;

use Think\Controller;
 class MemOrderController extends Controller
 {
 	 //列表页
 	 public  function  Mem_order_list()
 	 {
 	 	//实列化订单表
 	 	$Order=M("Order");
 	 	$OrderGoods=M("OrderGoods");
 	 	if(IS_GET)
 	 	{	 		
 	 		//输入框查询
 	 		//1.接收时间信息,订单号，类型
 	 		$add_time_from=I("get.add_time_from");//开始
 	 		$add_time_to=I("get.add_time_to");
 	 		$order_sn=I("get.order_sn");
 	 		$status=I("get.status");
 	 		//判断条件  时间
 	 		if($add_time_from!="")
 	 		{
 	 			$add_time_from=strtotime($add_time_from);
 	 			$ini['add_time']=array("egt",$add_time_from);
 	 		}
 	 		if($add_time_to!="")
 	 		{
 	 			$add_time_to=strtotime($add_time_to);
 	 			if($ini['add_time']!="")
 	 			{
 	 				$ini["add_time"]=array(array('egt',$add_time_from),array('elt',$add_time_to));
 	 			}
 	 			else{
 	 				$ini['add_time']=array("elt",$add_time_to);
 	 			}
 	 		}
 	 		//订单号
 	 		if($order_sn!="")
 	 		{
 	 			$ini["order_sn"]=$order_sn;
 	 		}
 	 		//状态
 	 		if($status!="")
 	 		{
 	 			$ini["status"]=$status;
 	 		}
 	 	}
 	 	//session接收登陆的用户
 	 	$uid=session('UID');
 	 	$uname=session('UNAME');
 	 	$this->assign('uname',$uname);
 	 	//根据id查询该用户的订单信息
 	 	$ini['buyer_id']=$uid;
 	 	//查询总数
 	 	$count=$Order->where($ini)->count();
        //分页
        $Page = new \Think\Page($count,2);
		$Page->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$Page->setConfig('first', '首页');
		$Page->setConfig('end', '末页');
		//***** 这里定义分页的各个单元的显示位置
		$Page->setConfig('theme', '%HEADER%%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%');
		
		//生成模版
		$pageStr = $Page->show();
 	 	//查询当前页数
 	 	$p=isset($_GET['p'])?$_GET['p']:1;
 	 	//查询要显示的内容
 	 	$orderArr=$Order->limit($Page->firstRow.",".$Page->listRows)
 	 	                ->where($ini)->select();	
 	 	//定义一个空数组
 	 	$array=array();
 	 	//遍历订单中的所有商品
 	 	foreach ($orderArr as $v)
 	 	{
 	 		$where['order_id']=$v['order_id'];
 	 		$array[$v['order_id']]=$OrderGoods->where($where)->select();
 	 	}	
 	 	$this->assign('array',$array); 
 	 	//分配变量
 	 	$this->assign('orderarr',$orderArr);
 	 	$this->assign('pagestr',$pageStr);
 	 	$this->assign('p',$p);
 	 	$this->display();
 	 }
 	 //详情页
 	 public function Mem_order_show()
 	 {
 	 	//实列化订单表
 	 	$Order=M("Order");
 	 	//实列化商品图片信息
 	 	$Order_goods=M("OrderGoods");
 	 	//实列化订单收获地址表
 	 	$Order_extm=M("OrderExtm");
 	 	//查询要显示的内容
 	 	$id=I("get.id");
 	 	$ini['o.order_id']=$id;
 	 	$orderArr=$Order->alias("o")
 	 	                ->join("ecm_order_extm as e on o.order_id=e.order_id","left")
 	 	                ->where($ini)->select();
 	 	$orderArr=img($orderArr,"goods_image");
 	 	//查询商品图片信息
 	 	$inin['order_id']=$uid;
 	 	$ordergoodsArr=$Order_goods->where($inin)->select();
 	 	//分配变量
 	 	$this->assign('orderarr',$orderArr);
 	 	$this->assign('ordergoodsarr',$ordergoodsArr);
 	 	$this->display();
 	 }
 	 //取消订单
 	 public function Mem_order_cancel()
 	 {
 	 	 //实列化订单表
 	 	$Order=M("Order");
 	 	//接受要删除的id
 	 	$ids=I("get.ids");
 	 	//接收动作标识
 	 	$action=I("get.action");
 	 	if($action=="setstatus")
 	 	{
 	 		$ini["order_id"]=$ids;
 	 		$arr["status"]=0;
 	 		$rtn=$Order->where($ini)->save($arr);
 	 		//判断是否执行成功
 	 		if($rtn)
 	 		{
 	 			$statusArr["msg"]="取消成功";
 	 		}
 	 		else{
 	 			$statusArr["msg"]="取消失败";
 	 		}
 	 		echo json_encode($statusArr);
 	 		exit();
 	 	}
 	 }
 }
?>