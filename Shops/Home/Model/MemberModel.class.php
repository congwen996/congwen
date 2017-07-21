<?php 
namespace Home\Model;

use Think\Model;
class MemberModel extends  Model{
	/**
	 * 自动验证规则
	 */
	protected $_validate=array(
			array("user_name","require","账号不能为空"),
			array("password","require","密码不能为空"),
			array("user_name",'/^[a-zA-Z]\w{2,14}$/',"账号格式不正确",0,'regex',3),
			array("password",'/^\w{3,12}$/',"密码格式不正确",0,'regex',3),
			array('email','email',"邮箱格式不正确"),
			
	);
}