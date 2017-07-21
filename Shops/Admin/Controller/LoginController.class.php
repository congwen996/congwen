<?php
namespace Admin\Controller;

use Think\Controller;
class LoginController extends Controller
{
	//登陆
	public function login()
	{
		$users=D("Users");
		if(IS_POST)
		{
			//接收验证码
			$code=I("post.code");
			//实列化验证码方法
			$verify=new \Think\Verify();
			//判断验证码是否正确
			if($verify->check($code,1))//正确
			{
				//创建失败
				$usersArr=$users->create();
				if($usersArr)//创建成功
				{
					$ini['uname']=$usersArr['uname'];
					//根据用户名查询该用户是否存在
					$nameArr=$users->where($ini)->find();
					if(empty($nameArr))//用户不存在
					{
						$this->error("用户不存在");
					}
					else//用户不存在 
					{
						//判断密码是否正确
						if($nameArr['upwd']!=$usersArr['upwd'])
						{
							$this->error("密码不正确",__CONTROLLER__."/login");
						}
						else
						{
							session('UNAME',$usersArr['uname']);
							$this->success('登录成功',U("Index/index"));
							
						}
					}
				}
				else//创建失败 
				{
					$this->error("数据库创建失败".$users->getError());
				}
			}
			else//验证码错误 
			{
				$this->error("验证码错误");
			}
			
		}
		$this->display();
	}
	//生成验证码
	public function getcode()
	{
		$arr['length']=4;
		$arr['imageW']=120;
		$arr['imageH']=50;
		$arr['fontSize']=18;
		$verify=new \Think\Verify($arr);
		$verify->entry(1);
	}
}
?>