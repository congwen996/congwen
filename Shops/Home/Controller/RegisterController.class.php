<?php
//注册
namespace Home\Controller;

use Think\Controller;
class RegisterController extends Controller
{
	 public function register()
	 {
		if($_POST)
		{	
			$member=M("Member");
			$UNAME=I("post.user_name");
			$pwd=I("post.password");
			$email=I("post.email");
			$memberArr=$member->where("user_name='{$UNAME}'")->find();
			if($memberArr=="")
			{
				$memberArr2=$member->where("email='{$email}'")->find();
				if($memberArr2=="")
				{
					$where['user_name']=$UNAME;
					$where["password"]=md5($pwd);
					$where['email']=$email;
					$rt=$member->add($where);
					if($rt)
					{
						//存储用户名和ID
						$memberArr3=$member->where("user_name='{$UNAME}'")->find();
						$uid=$memberArr3['user_id'];
						session("UNAME",$UNAME);
						session("UID",$uid);
						session("DL",1);
						//更新登陆IP、时间、次数
						$date['user_id']=$uid;
						$date['last_login']=time();
						$date['last_ip']=$_SERVER['SERVER_ADDR'];
						$date['logins']=$memberArr3['logins']+1;
						$member->save($date);
						$this->success("注册成功",U("Memaccount/member_account"));
					}
					else
					{
						$this->error("注册失败");
					}
				}
				else 
				{
					$this->error("邮箱重复");
				}
			}
			else 
			{
				$this->error("用户名重复");
			}
			exit();
		}
	 	$this->display();
	 }
}