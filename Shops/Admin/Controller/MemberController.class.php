<?php
//会员管理
namespace Admin\Controller;

use Think\Controller;
class MemberController extends Controller
{
	/**
	 * 会员列表
	 */
	public function member_list()
	{
		$member=M("Member");
		$count= $member->count();
		$Page= new \Think\Page($count,10);
		$show= $Page->show();
		$memberArr=$member->limit($Page->firstRow.','.$Page->listRows)->select();
		$newArr=array();
		$newArr=$memberArr;
		foreach ($memberArr as $k=>$v)
		{
			$newArr[$k]['reg_time']=date("Y-m-d H:i:s",$v['reg_time']);
			$newArr[$k]['last_login']=date("Y-m-d H:i:s",$v['last_login']);
		}
// 		echo "<pre>";
// 		print_r($newArr);
// 		echo "</pre>";
         //接收当前页数
        $p=isset($_GET['p'])?$_GET['p']:1;
        $this->assign('p',$p);
		$this->assign("newArr",$newArr);
		$this->assign("fenye",$show);
		$this->display();
	}
	//添加会员
	public function member_add()
	{
		$member=D("Member");
		if(IS_POST)
		{
			//创建数据
			$memberArr=$member->create();
			if($memberArr)//创建成功
			{
				//执行添加
				$rtn=$member->add();
				if($rtn || $rtn===0)
				{
				    $this->success("添加管理员成功",__CONTROLLER__."/member_list");
				}
				else {
					$this->error("添加管理员失败");
				}
			}
			else{
				$this->error("数据创建失败");
			}
		}
		$this->display();
	}
	//修改会员
	public function member_edit()
	{
		$member=M("Member");
		if(IS_POST)
		{			
			//接受要修改的记录id
			$user_id=I("post.user_id");
			$p=I("post.p");
			//创建数据
			$mArr=$member->create();
			if($mArr)//创建成功
			{
				//修改
				$rtn=$member->save();
				if($rtn || $rtn===0)//修改成功
				{
					$this->success("修改成功",__CONTROLLER__."/member_list/p/{$p}");
				}
				else 
				{
					$this->error("修改失败",__CONTROLLER__."/member_list/id/{$user_id}/p/{$p}");
				}
			}
			else {
				$this->error("数据创建失败");
			}
		}
		//接收要修改的id
		$id=I("get.id");
		//接收要修改的当前页面值
		$p=I("get.p");
		$this->assign('p',$p);
		//根据id值查询该记录的值
		$ini["user_id"]=$id;
		$memberArr=$member->where($ini)->find();
		$this->assign("memberarr",$memberArr);
		$this->display();
	}
}