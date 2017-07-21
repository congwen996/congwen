<?php
namespace Admin\Model;

use Think\Model;
class UsersModel extends Model
{
    protected $_validate=array
    (
    	array('uname','require','帐号不能为空'),
    	array('upwd','require','密码不能为空'),
    	array('code','require','验证码不能为空'),
    );
}
?>