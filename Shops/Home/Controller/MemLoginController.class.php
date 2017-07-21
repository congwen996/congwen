<?php 
namespace Home\Controller;

use Think\Controller;
class MemLoginController extends Controller{
	/**
	 * 登陆界面
	 */
	public function Mem_login(){
		
		//退出处理
		$act=I('get.act');
		if($act=="loginout"){
			session("UNAME",null);
			session("UID",null);
			session('DL',null);
			$this->success("退出成功",U('MemLogin/Mem_login'));
			exit();
		}
		//处理登陆
		if(IS_POST){
			//判断验证码
			$captcha=I('post.captcha');
			$verify=new \Think\Verify();
			if($verify->check($captcha,1)){ //验证码正确进行账号密码验证
				//实例化用户表
				$member=D('Member');
				//数据创建
				$memArr=$member->create();
				if($memArr){
					//判断账号
					$ini['user_name']=$memArr['user_name'];
					$userArr=$member->where($ini)->find();
					if(!empty($userArr)){
						//账号正确判断密码
						if(md5($memArr['password'])==$userArr['password']){
							//记录登陆时间和ip
							$saveArr['last_login']=time();
							$saveArr['last_ip']=$_SERVER['SERVER_ADDR'];
							$n=$member->where($ini)->save($saveArr);
							if($n || $n===0){
								session('UNAME',$userArr['user_name']);
								session('UID',$userArr['user_id']);	
								session('DL',1);
								$this->success("登陆成功",U('MemAccount/Mem_account'));
							}else{
								$this->error("登陆失败",U('MemLogin/Mem_login'));
							}
							
						}else{
							$this->error("密码错误",U('MemLogin/Mem_login'));
						}
					}else{
						//账号不存在
						$this->error("账号不存在",U('MemLogin/Mem_login'));
					}
					
				}else{
					$this->error("数据创建失败:".$member->getError(),U('MemLogin/Mem_login'));
				}
			}else{
				//验证码错误
				$this->error("验证码错误",U('MemLogin/Mem_login'));
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
		$verify->imageW=120;
		$verify->imageH=50;
		$verify->entry(1);
	}
}