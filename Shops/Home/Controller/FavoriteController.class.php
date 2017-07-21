<?php
namespace Home\Controller;
use Think\Controller;
class  FavoriteController extends Controller
{
	  /*
	   * 列表页面
	   */
	 public function member_favorite()
	 {
	 	 //要接收的id
	 	 $id=session('UID');
	 	 $uname=session('UNAME');
	 	 $this->assign('uname',$uname);
	 	 //实例化对象
	 	 $collect=M("Collect");
	 	 $goods=M("Goods");
	 	 //要查询的用户的id
	 	 $ini['user_id']=$id;
	 	 //分页的操作
	 	 $count=$collect->where($ini)->count();
	 	 $Page=new \Think\Page($count,3);
	 	 //***** 分页样式定制
	 	 $Page->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
	 	 $Page->setConfig('prev', '上一页');
	 	 $Page->setConfig('next', '下一页');
	 	 $Page->setConfig('first', '首页');
	 	 $Page->setConfig('end', '末页');
	 	 //***** 这里定义分页的各个单元的显示位置
	 	 $Page->setConfig('theme', '%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%%HEADER%');
	 	 
	 	 
	 	 
	 	 $show=$Page->show();
	 	 //要查询的内容
	 	 $arr=$collect->limit($Page->firstRow.','.$Page->listRows)->where($ini)->alias("c")->field("c.item_id,g.*")->join("ecm_goods as g on c.item_id=g.goods_id","left")->select();
	 	 $this->assign("arr",$arr);
	 	 $this->assign("pages",$show);
	 	 $this->display();
	 }
	 /*
	  * 单删的操作
	  */
	 
	 public function member_del()
	 {
	 	   $collect=M("Collect");
	 	   //接收要删除的id
	 	   $id=I("post.ids");
	 	   //接收动作标识
	 	   $act=I("post.act");
	 	   if($act=="del")
	 	   {
		 	   	$ini['item_id']=$id;
		 	   	//删除的内容
		 	   	$n=$collect->where($ini)->delete();
		 	   	if($n)
		 	   	{
		 	   		echo "ok";
		 	   	}else
		 	   	{
		 	   		echo "no";
		 	   	}
		 	   	exit();
	 	   }
	 	   
	 }
	 /*
	  * 多删的操作
	  */
         public function member_delall()
		 {
		 	//接收id
		 	$id=I("post.ids");
		 	//接收动作标识
		 	$act=I("post.act");
		 	if($act=="delalls")
		 	{
		 		$collect=M("Collect");
		 		//截取字符串
		 		$ids=substr($id, 0,strlen($id)-1);
		 		$ini['item_id']=array("in","{$ids}"); 	 		
		 		$m=$collect->where($ini)->delete();
		 		if($m)
		 		{
		 			echo "ok";
		 		}
		 		else {
		 			echo"no";
		 		}
		 		exit();
		 	}
		 }
		 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}