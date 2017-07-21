<?php
namespace Admin\Model;

use Think\Model;
class MemberModel extends Model
{
    protected  $_auto =array(  
       array('reg_time','addtime',3,'callback'),
       array('password','compwd',3,'callback'),    
    );
    protected function compwd($p){
    	return md5($p);
    	exit();
    }
	protected function addtime($u){
			return time();
			exit();
		}
}
?>