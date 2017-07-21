<?php 
namespace Home\Controller;

use Think\Controller;
class MemRegisterController extends  Controller{
	/**
	 * 注册界面
	 */
	public function  Mem_register(){
		
		//注册处理
		if(IS_POST){
			//判断验证码
			$captcha=I('post.captcha');
			$verify=new \Think\Verify();
			if($verify->check($captcha,1)){
				//实例化用户表
				$member=D('Member');
				//动态自动验证
				$rules=array(
						array('user_name','','账号已被注册',0,'unique',3),
						array('password','password_confirm','俩次密码不一致',0,'confirm',3),
				);
				//数据创建
				$memArr=$member->validate($rules)->create();
				if($memArr){
					$memArr['password']=md5($memArr['password']);
					$memArr['reg_time']=time();
					//添加用户
					$n=$member->add($memArr);
					if($n){
						$this->success("注册成功",U('MemLogin/Mem_login'));
					}else{
						$this->error("注册失败",U('MemRegister/Mem_register'));
					}
				}else{
					//数据创建失败
					$this->error("数据创建失败:".$member->getError(),U('MemRegister/Mem_register'));
				}
			}else{
				//验证码错误
				$this->error("验证码错误",U('MemRegister/Mem_register'));
			}
			exit();
		}
		$this->display();
	}
	/**
	 * 生成验证码
	 */
	public function genecode(){
		$verify=new \Think\Verify();
		$verify->length=4;
		$verify->fontSize=18;
		$verify->entry(1);
	}
}