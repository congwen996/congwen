<?php 
namespace Home\Controller;

use Think\Controller;
class MemAccountController extends Controller{
	/**
	 * 账户概览
	 */
	public function Mem_account(){
		//实例化用户表
		$member=M("Member");
		//接受session
		$uname=session("UNAME");
		$uid=session("UID");

		//传值
		$this->assign("uname",$uname);
		//根据用户id查询记录
		$ini['user_id']=$uid;
		$memArr=$member->where($ini)->find();
		$this->assign("memArr",$memArr);
		
		//实例化order表
		$order=M('Order');
		//查询待付款总数
		$ini['status']=11;
		$mcount=$order->where($ini)->count();
		$this->assign("mcount",$mcount);
		
		//查询待确认总数
		$ini['status']=30;
		$acount=$order->where($ini)->count();
		$this->assign("acount",$acount);
		
		//查询待评价订单
		$ini['status']=40;
		$bcount=$order->where($ini)->count();
		$this->assign("bcount",$bcount);
		
		$this->display();
	}	
}