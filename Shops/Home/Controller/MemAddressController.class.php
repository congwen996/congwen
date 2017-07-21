<?php 
namespace Home\Controller;
use Think\Controller;
class MemAddressController extends Controller
{
	/**
	 * 地址列表页
	 */
	public function mem_address()
	{
		//接受session
		$uname=session("UNAME");
		$uid=session("UID");

		//传值
		$this->assign("uname",$uname);

		
		$address = M('address');//实例化地址表
		$pno = isset($_GET['p'])?$_GET['p']:1;//第几页
		$this->assign('pno',$pno);
		$where['user_id']=$uid;
		
		$count = $address->where($where)->count();
		$page = new \Think\Page($count,2);//每页要显示的记录数
		
		//***** 分页样式定制
		$page->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
		$page->setConfig('prev', '上一页');
		$page->setConfig('next', '下一页');
		$page->setConfig('first', '首页');
		$page->setConfig('end', '末页');
		//***** 这里定义分页的各个单元的显示位置
		$page->setConfig('theme', '%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%%HEADER%');
		
		$pinfo = $page->show();
		$this->assign('pinfo',$pinfo);
		
		$addressArr = $address->where($where)->order('addr_id asc')->limit($page->firstRow.",".$page->listRows)->select();
		$this->assign('addressarr',$addressArr);
		$this->display();
	}
	/**
	 * 地址添加页
	 */
	public function mem_address_add()
	{
		//接收用户
		$usr = SESSION('UNAME');
		$uid = SESSION('UID');
		$this->assign('usr',$usr);
		
		$address = M('address');//实例化地址表
		if(IS_POST)
		{
			$arr = $address->create();
			if($arr)
			{
				$n = $address->add();
				if($n)
				{
					$this->success('添加成功',U('Home/MemAddress/mem_address'));
				}
				else 
				{
					$this->error('添加失败');
				}
			}
			else 
			{
				$this->error('数据创建失败');
			}
			exit();
		}
		$this->assign('usrid',$uid);
		$this->display();
	}
	/**
	 * 地址修改页
	 */
	public function mem_address_edit()
	{
		//接收用户
		$usr = SESSION('UNAME');
		$uid = SESSION('UID');
		$this->assign('usr',$usr);
		
		$address = M('address');//实例化地址表
		if(IS_POST)
		{
			$page = I('post.page');
			$arr = $address->create();//创建数据
			if($arr)
			{
				$n=$address->save();
				if($n || $n===0)
				{
					$this->success('修改成功',U("Home/MemAddress/mem_address/p/{$page}"));
				}
				else
				{
					$this->error('修改失败');
				}
			}
			else 
			{
				$this->error('数据创建失败');
			}
			exit();
		}
		$id = I('get.id');//要修改的ID
		$pno = I('get.p');//第几页
		$this->assign('pno',$pno);
		$ini['addr_id']=$id;
		$addressArr = $address->where($ini)->find();
		$this->assign('addressarr',$addressArr);
		$this->assign('usrid',$uid);
		$this->display();
	}
	//单删
	public function del()
	{
		$address = M('address');//实例化地址表
		$ids = I('get.ids');//要删除的ID
		$ini['addr_id']=$ids;
		$n = $address->where($ini)->delete();
		if($n)
		{
			$arr['msg']='删除成功';
		}
		else 
		{
			$arr['msg']='删除失败';
		}
		echo json_encode($arr);
		exit();
	}
}
?>