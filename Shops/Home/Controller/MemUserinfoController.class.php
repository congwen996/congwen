<?php 
namespace Home\Controller;

use Think\Controller;
class MemUserinfoController extends  Controller{
	 /**
	  * 个人资料页面
	  */	
	public function Mem_userinfo(){
		//实例化用户表
		$member=M("Member");
		
		if(IS_POST){
			//判断旧密码是否为空
			$oldpwd=I('post.old_pwd');
			//密码为空 不修改密码
			if($oldpwd!=""){
				//动态自动验证
				$rules=array(
						array("oldpwd","require","旧密码不能为空"),
						array("password","require","密码不能为空"),
						array("password",'/^\w{3,12}$/',"密码格式不正确",0,'regex',3),
						array('password','new_pwd_2','俩次密码不一致',0,'confirm',3),
				);
				//数据创建
				$memberArr=$member->validate($rules)->create();
				if($memberArr){
					//判断旧密码是否正确
				
					//查询旧密码
					$where['user_id']=$memberArr['user_id'];
					$oldArr=$member->where($where)->find();
					if(md5($oldpwd)==$oldArr['password']){
						//旧密码正确执行修改
						//密码加密
						$memberArr['password']=md5($memberArr['password']);
						$n=$member->save($memberArr);
						if($n || $n===0){
							$this->success("修改成功,请重新登陆",U('MemLogin/Mem_login'));
						}else{
							$this->error("修改失败",U('MemUserinfo/Mem_userinfo'));
						}
					}else{   //旧密码错误退出操作
						$this->error("旧密码错误",U('MemUserinfo/Mem_userinfo'));
					}
				}
				else{
					$this->error("数据创建失败:".$member->getError(),U('MemUserinfo/Mem_userinfo'));
				}
			}else{
				//数据创建
				$memberArr=$member->create();
				unset($memberArr['password']);
				if($memberArr){
						$n=$member->save($memberArr);
						if($n || $n===0){
							$this->success("修改成功",U('MemUserinfo/Mem_userinfo'));
						}else{
							$this->error("修改失败",U('MemUserinfo/Mem_userinfo'));
						}
					}
				else{
					$this->error("数据创建失败:".$member->getError(),U('MemUserinfo/Mem_userinfo'));
				}
			}
			exit();
		}
		
		
		//接受session
		$uname=session("UNAME");
		$uid=session("UID");
		$this->assign("uname",$uname);
		
		//根据用户id查询记录
		$ini['user_id']=$uid;
		$memArr=$member->where($ini)->find();
		$this->assign("memArr",$memArr);

		$this->display();
	}
	/**
	 * 处理文件上传
	 */
	public function upFile(){
		$config=array(
				'maxSize'=>1024*1024*2,    //文件大小
				'exts'=>array('jpg', 'gif', 'png', 'jpeg'),//文件类型
				'autoSub'=>false,
				'rootPath'=>'./',    //相对于入口文件所在的位置
				'savePath'=>'Public/file/'.date("Y-m")."/",
		);
		$upobj= new \Think\Upload($config);
		$upArr=$upobj->upload();
	
		if($upArr){  //上传成功
			$res['imgsrc']=$upArr['file']['savepath'].$upArr['file']['savename'];
			echo json_encode($res);
		}else { //上传失败
			echo "上传失败:".$upobj->getError();
		}
		exit();
	
	}
}