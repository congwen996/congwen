<?php 
//商品管理
namespace Admin\Controller;

use Think\Controller;
class GoodsController extends Controller
{
	/**
	 * 商品列表
	 */
	public function goods_list()
	{
		$goods=M("Goods");
		$where['if_show']=1;
		//分页
		$count=$goods->where($where)->count();
		$Page= new \Think\Page($count,20);
		$show= $Page->show();
		$goodsArr=$goods->where($where)->order("goods_id desc")->limit($Page->firstRow.','.$Page->listRows)->select();
		//接收当前页面值
		$p=isset($_GET['p'])?$_GET['p']:1;
		$this->assign('p',$p);
		$this->assign("goodsArr",$goodsArr);
		$this->assign("fenye",$show);
		$this->display();
	}
	/**
	 * 商品修改
	 */
	public function goods_edit()
	{
		 //实例化商品类
	    $goods=M('Goods');
	   //实例化商品图片类
	   $goodsImg=M('GoodsImage');
	   if(IS_POST)
	   {
	   	  //接收要修改的id
	   	  $goods_id=I("post.goods_id");
	   	  //接收当前页面值
	   	  $pno=I("post.pno");
	   	  //创建数据
	   	  $editArr=$goods->create();
	   	  if($editArr)//创建成功
	   	  {
	   	  	  //执行修改
	   	  	  $rtn=$goods->save();
	   	  	  if($rtn || $rtn===0)//商品修改
	   	  	  {
	   	  	  	  //创建image的数据
	   	  	  	  $imgArr=$goodsImg->create();
	   	  	  	  $where['goods_id']=$imgArr['goods_id'];
	   	  	  	  $n=$goodsImg->where($where)->delete();
	   	  	  	  if($n || $n===0)//删除成功
	   	  	  	  {
	   	  	  	  	  //执行添加
	   	  	  	  	  $add['sort_order']=255;
	   	  	  	  	  $rtn=$goodsImg->add($add);
	   	  	  	  	  if($rtn)
	   	  	  	  	  {
	   	  	  	  	  	  $this->success("修改成功",__CONTROLLER__."/goods_list/p/{$pno}");
	   	  	  	  	  }else {
	   	  	  	  	  	$this->error("修改失败");
	   	  	  	  	  }	   	  	  	  	  
	   	  	  	  }
	   	  	  	  else{//删除失败
	   	  	  	  	$this->error("图片删除失败",__CONTROLLER__."goods_list/p/{$pno}");
	   	  	  	  }	   	  	  	 
	   	  	  }
	   	  	  else{
	   	  	  	$this->error("修改失败",__CONTROLLER__."/goods_list/p/{$pno}/id/{$goods_id}");
	   	  	  }
	   	  }
	   	  else{
	   	  	  $this->assign("数据创建失败");
	   	  }
	   }
	    //查询要修改的id
	    //接收要修改的商品id
	    $gid=I("get.id");
	    //接收当前页面值
	    $p=I("get.p");
	    $ini["goods_id"]=$gid;
	    //查询要修改的记录内容
	    $goodArr=$goods->where($ini)->find();
	    $this->assign('goodarr',$goodArr);
	    
	    
       
        //实列化表
        $category=M("Gcategory");
        $ini['parent_id']=0;
        $ini['if_show']=1;
        //查询所有未删除的最顶层的id
        $cateArr=$category->where($ini)->select();
        $this->assign('catearr',$cateArr);
		$this->display();
	}
    //动态生成子类
    public function genecates()
    {
    	//类别id
    	$cateid=I("post.cateid");
    	//动作标识
    	$act=I("post.act");
    	//实列化表
    	$category=M("Gcategory");
    	$ini["parent_id"]=$cateid;
    	//查询属于某个类别下的所有子类
    	$sonArr=$category->where($ini)->select();
    	$opt="";
    	if(!empty($sonArr))
    	{
    		foreach ($sonArr as $v)
    		{
    			$opt.="<option value='{$v['cate_id']}'>{$v['cate_name']}</option>";
    		}
    	}
    	//生成第二个下拉列表
    	if($act=="son")
    	{
    	    echo "<select id='cson' onchange='subsoncate();'>{$opt}</select>";
    	}
    	//生成第三个下拉框
    	else{
    		echo "<select id='ccson'>{$opt}</select>";
    	}
    }
	/**
	 * 商品添加
	 */
	public function goods_add()
	{
      
	   //实例化商品类
	   $goods=M('Goods');
	   //实例化商品图片类
	   $goodsImg=M('GoodsImage');
	   if(IS_POST)
	   {
	   	   //创建数据
	   	   $goodArr=$goods->create();
	   	   if($goodArr)//创建成功
	   	   {
	   	   	     //执行商品添加
	   	   	     $rtn=$goods->add();
	   	   	     if($rtn)
	   	   	     {
	   	   	     	//执行图片添加
	   	   	     	$imgArr['goods_id']=$rtn;
	   	   	     	$imgArr['image_url']=I("post.image_url");
	   	   	     	$imgArr['sort_order']=255;
	   	   	     	$rtn2=$goodsImg->add($imgArr);
	   	   	     	if($rtn2)
	   	   	     	{
	   	   	     		$this->success("图片添加成功",U("Goods/goods_list"));
	   	   	     	}else {
	   	   	     		$this->error("图片添加失败",U("Goods/goods_add"));
	   	   	     	}
	   	   	     }
	   	   	     else{
	   	   	     	$this->error("商品添加失败",U("Goods/goods_add"));
	   	   	     }
	   	   }
	   	   else{//创建失败
	   	   	    $this->error("数据创建失败",U("Goods/goods_add"));
	   	   }
	   }
	   //实列化商品表
	   $cate =   M('Gcategory');
	   $con['parent_id'] = 0;
	   // 读取所有最顶层的父类
	    $parentArr =  $cate->where($con)->select();
	    
	    $this->assign('parentarrs',$parentArr);
		$this->display();
	}
	//处理文件上传
	public function upprocess()
	{
		$config=array(
				'maxSize'=>1024*1024,//允许上传文件大小
				'autoSub'=>false,
				'exts'=>array('jpg', 'gif', 'png', 'jpeg'),//允许上传文件后缀
				'rootPath'=>'./',//文件上传的根路径,相当于入口文件来说
				'savePath'=>'Public/file/'.date('Y-m').'/',//文件保存路径
		);
		$upobj=new \Think\Upload($config);
		$arr=$upobj->upload();
		if(!$arr)//上传失败
		{
			echo '上传失败原因：'.$upobj->getError();
		}
		else//上传成功
		{
			$res['imgsrc']="file/".date('Y-m')."/".$arr['file']['savename'];
			echo json_encode($res);
		}
		exit();
	}
	
	/**
	 * 处理三级联动
	 */
	public function genedcate() {
	    $parentid = I('post.parentid'); // 父类id
	    $act      = I('post.act'); // 动作标识[生成子类下拉框或 孙子类下拉框]
	    
	    $cate =   M('Gcategory');
	    $ini['parent_id'] = $parentid;
	    // 查询某个父类下的所有子类
	    $cateArr = $cate->where($ini)->select();
	    foreach ($cateArr as $vv) {
	        $opt .= "<option value='".$vv['cate_id']."'>".$vv['cate_name']."</option>";
	    }
	    
	    echo "<select id='".$act."' onchange='genesubcate()'>".$opt."</select>";
	}
	//删除商品
	public function goods_del()
	{
		//接收要删除的id
		$ids=I("post.ids");
		//接收动作标识
		$action=I("post.action");
		//判断动作标识
		if($action=="delone")
		{
			//实列化商品表
			$goods=M("Goods");
			$edit['if_show']=0;
			$ini['goods_id']=$ids;
			//修改_show为0
			$rtn=$goods->where($ini)->save($edit);
			if($rtn)
			{
				echo "OK";
			}
			else {
				echo "NO";
			}
		}
	}
}