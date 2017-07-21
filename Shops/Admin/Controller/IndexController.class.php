<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index()
    {
    	$successUsr=session('UNAME');
    	$this->assign('uname',$successUsr);
    	$this->display();
    }
    public function mytheme()
    {
    	$this->assign('dd',time());
    	$this->assign('xx','');
//     	//$this->show("黄");
//     	$array=array('name'=>"lisi",'age'=>21);
//     	print_r($array);
//     	var_dump($array);
//         echo $this->fetch("Goods:goods_list");
          $this->display();
    }
}