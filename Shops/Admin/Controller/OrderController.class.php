<?php
//订单管理
namespace Admin\Controller;

use Think\Controller;
class OrderController extends Controller
{
	/**
	 * 订单列表
	 */
	public function order_list()
	{
		$order=M("Order");
		//分页
		$count= $order->count();
		$Page= new \Think\Page($count,20);
		$show= $Page->show();
		$orderArr=$order->order("order_id desc")->limit($Page->firstRow.','.$Page->listRows)->select();
		//时间戳转换
		$newArr=array();
		$newArr=$orderArr;
		foreach ($orderArr as $k=>$v)
		{
			$newArr[$k]["add_time"]=date("Y-m-d H:i:s",$v['add_time']);
		}
		//接收当前页面值
		$p=isset($_GET['p'])?$_GET['p']:1;
		$this->assign('p',$p);
		$this->assign("fenye",$show);
		$this->assign("newArr",$newArr);
		$this->display();
	}
	//查看订单详情
	public function  order_show()
	{
		//实列化订单表
		$order=M("Order");
		//实列化收货信息
		$order_extm=M("OrderExtm");
		//实列化订单商品表
		$order_good=M("OrderGoods");
		//接收要查询的订单详情
		$ini['order_id']=I("get.id");
		//查询订单信息
		$orderArr=$order->where($ini)->find();
		$this->assign("orderarr",$orderArr);
		//查询收获信息
		$order_extmArr=$order_extm->where($ini)->find();
		$this->assign('order_extmarr',$order_extmArr);
		//查询订单商品信息
		$order_goodArr=$order_good->where($ini)->select();
		//分配信息
		$this->assign('order_goodarr',$order_goodArr);
		$this->display();
	}                                                                                                                                                                                                                                                                                       
	//操作订单
	public function order_optation()
	{
		//实列化订单表
		$order=M("Order");
		if(IS_POST)
		{
			//接收要修改的id
			$id=I("post.order_id");
			$p=I("post.p");
			//创建数据
			$orderArr=$order->create();
			if($orderArr)
			{
				if($orderArr['finished_time']==40)
				{
					$orderArr['finished_time']=time();
				}				
				//执行修改
				$rtn=$order->save();
				if($rtn)
				{
					$this->success("修改成功",__CONTROLLER__."/order_list/p/{$p}");
				}
				else{
					$this->error("修改失败",__CONTROLLER__."/order_optation/p/{$p}/id/{$id}");
				}
			}
			else{//创建失败
				$this->error("数据创建失败");
			}
		}
		//接收要修改的id值
		$id=I("get.id");
		//接收当前页面值
		$p=I("get.p");
		$ini['order_id']=$id;
		//查询要修改的id记录
		$editArr=$order->where($ini)->find();
		$this->assign('editarr',$editArr);
		$this->display();
	} 
}