<?php
//分类管理
namespace Admin\Controller;

use Think\Controller;
class CategoryController extends Controller
{	
	/**
	 * 分类列表页(递归)
	 */
	public function category_list()
	{
		header('content-type:text/html;charset=utf-8');
		$category=M("Gcategory");
		//判断逻辑删除
		$where['if_show']=1;
		//查记录总数
		$count=$category->where($where)->count();
// 		//分页
// 		$Page=new \Think\Page($count,5);
// 		//***** 分页样式定制
// 		$Page->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
// 		$Page->setConfig('prev', '上一页');
// 		$Page->setConfig('next', '下一页');
// 		$Page->setConfig('first', '首页');
// 		$Page->setConfig('end', '末页');
// 		//***** 这里定义分页的各个单元的显示位置
// 		$Page->setConfig('theme', '%HEADER%%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%');
// 		$show=$Page->show();
// 		//分配分页
// 		$this->assign('page',$show);
		$categoryArr=$category->where($where)->select();
		
		//接受当前页数
		$p=isset($_GET['p'])?$_GET['p']:1;
		$this->assign('p',$p);
		//调用递归函数
		$getall=getone($categoryArr);
		$this->assign("getall",$getall);
		$this->display();
	}
	
	
	/**
	 * 添加分类
	 */
	public function category_add()
	{
        $Gcate=M("Gcategory");
        if(IS_POST)
        {
        	//创建数据
        	$GC=$Gcate->create();
        	if($GC)//创建成功
        	{
        		$rtn=$Gcate->add();
        		if($rtn)//添加成功
        		{
        			$this->success("添加成功");
        		}
        	}
        	else 
        	{
        		$this->error("数据创建失败");
        	}
        	exit();
        }
        //查最顶级的父类
        $ini['parent_id']=array(eq,'0');
        $Parentarr=$Gcate->where($ini)->select();
        $this->assign("parentarr",$Parentarr);
        //查询最顶层下的第二层id   子类
        foreach ($Parentarr as $v)
        {
        	$chi['parent_id']=$v['cate_id'];
        	$childArr["{$v['cate_id']}"]=$Gcate->where($chi)->select();
        	
        	//查询父类下的子类下的第三层id   孙类
        	foreach ($childArr["{$v['cate_id']}"] as $x)
        	{
        		$son['parent_id']=$x['cate_id'];
        		$sonArr["{$x['cate_id']}"]=$Gcate->where($son)->select();
        		
        	}
        }
        $this->assign('sonarr',$sonArr);
        $this->assign('childarr',$childArr);
		$this->display();
	}
	/**
	 * 编辑分类
	 */
	public function category_edit()
	{
		$Gcate=M("Gcategory");
		if(IS_POST)
		{
			//接收要修改的id，和当前页面值
			$id=I("post.cate_id");
			$p=I("post.p");
			//创建数据
			$category=$Gcate->create();
			if($category)//创建成功
			{
				//执行修改
				$editcate=$Gcate->save();
				if($editcate || $editcate===0)//修改成功
				{
					$this->success("修改成功",__CONTROLLER__."/category_list/p/{$p}");
				}
				else{
					$this->error("修改失败",__CONTROLLER__."/category_list/p/{$p}/id/{$id}");
				}
				
			}
			else//创建失败 
			{
				$this->error("数据创建失败");
			}
		}
		//接收要修改的id
		$id=I("get.id");
		//接收要当前页数
		$p=I("get.p");
		//传值给模板页
		$this->assign('p',$p);
	    //根据id值查询这条记录的值
	    $ini['cate_id']=$id;
	    $editArr=$Gcate->where($ini)->find();
	    
	    //判断逻辑删除
	    $where['if_show']=1;
	    $categoryArr=$Gcate->where($where)->select();
	    //调用递归函数
	    $getall=getone($categoryArr);
	    
	    //传值
	    $this->assign('editarr',$editArr);
	    $this->assign('getall',$getall);
	    
		$this->display();
	}
	/**
	 * 新增下一级
	 */
	public function category_add_sub()
	{
		//实列化类别表
		$Gcate=M("Gcategory");
		if(IS_POST)
		{
			//创建数据
			$cateArr=$Gcate->create();
			if($cateArr)//创建成功
			{
					$rtn=$Gcate->add();//执行添加
					if($rtn)//添加成功
					{
						$this->success("添加下一级成功");
					}
	                else //添加下一级失败
					{
						$this->error("添加下一级失败");
					}
			}
			else//创建失败 
			{
				$this->error("数据创建失败");
			}
		}
		//判断逻辑删除
		$where['if_show']=1;
		$categoryArr=$Gcate->where($where)->select();
		//调用递归函数
		$getall=getone($categoryArr);
		//查询要新增下一级的记录
		$id=I("get.id");			 
		//传值
		$this->assign('getall',$getall);
		$this->assign('id',$id);
		$this->display();
	}
	/**
	 * 分配属性
	 */
	public function category_prop()
	{
		//接收类别id,列表页分配好的
		$id=I("get.id");
		$this->assign('ids',$id);
		
        //实列化属性名表，属性值表
		$propList=M("GoodsProp");//实例化属性表
		$propValue=M("GoodsPropValue");//实例化属性值表		
		//提交之后
		if(IS_POST)
		{
			//取所有属性名,用户所有勾选的属性名
			$pnameArr=I("post.pname");
			foreach ($pnameArr as $val)
			{
				//取用户选中的每个属性名所对应的属性值
				$valueArr=I("post.vname{$val}");
				foreach ($valueArr as $xx)
				{
					//$pvalueArr[]=属性名id：属性值id
					$pvalueArr[]=$val.":".$xx;
				}				
			}
			//把数组拼接成字符串
			$pvalueStr=implode(';',$pvalueArr);
			//进行判断，如果数据库中没有添加，有的话修改
			//实列化类别所分配的属性名，及属性值表
			$catepvs=M("CatePvs");
			//根据类别查数量,先接属性名id
			$cate_id=I("post.cate_id");
			$valini['cate_id']=$cate_id;
			$n=$catepvs->where($valini)->count();
			$valini['pvs']=$pvalueStr; 
			//该类别未分配过属性值
			if($n==0) //新增
			{				
				$rtn=$catepvs->add($valini);
			}   
			else //修改
			{
				$cate_id=I("post.cate_id");
				$rtn=$catepvs->where("cate_id={$cate_id}")->save($valini);
			}
			if($rtn || $rtn===0)
			{
				$this->success("分配成功");
			}
			else 
			{
				$this->error("分配失败");
			}       
		}
		//思路
		//$arr=array();
		//$arr['属性名']=array(属性值1,属性值2);
		
		//查询所有的属性名
		$ini["shanchu"]=1;
		$propArr=$propList->where($ini)->select();
// 		$this->assign('proparr',$propArr);
		//定义一个数组,用来给下边属性值找一个键
		$pvArr=array();
		$nameArr=array();
		//拿着每一个属性名的id去查属性值
		foreach ($propArr as  $v)
		{
			//查询每个属性名下的属性值
			$vini['pid']=$v['pid'];
			$propvalueArr=$propValue->where($vini)->select();
			
			//拿到每个属性值对应的id,变二维数组为一维数组
			$valArr=array();
			foreach ($propvalueArr as $x)
			{
				//$valArr[属性值id]=$属性值名称
				 $valArr[$x['vid']]=$x['prop_value'];
			}
			//$pvArr[属性名]=array();			
			$pvArr[$v['name']]=$valArr;
			//$nameArr属性名=属性名id;
			$nameArr[$v['name']]=$v['pid'];	
				
		}
		$this->assign('pvarr',$pvArr);
		$this->assign('namearr',$nameArr);
		
		$this->display();
	}
	//整理商品类别-----2
	public function category()
	{
		//实列化表
		$category=M("Gcategory");
		//查询所有未删除的商品类别
		$ini['if_show']=1;
		$parArr=$category->where($ini)->select();
		//调用common 中的函数
		$sortArr=sortcategory($parArr,0);
// 		echo "<pre>";
// 		print_r($sortArr);
// 		echo "</pre>";
		$this->display();		
	}
	//删除分类
	public function category_del()
	{
		//执行单删
		//1.判断动作标识
		$action=I("post.action");
		//接收要删除的id
		$ids=I("post.ids");
		if($action=="delone")
		{
			//实列化表
			$category=M("Gcategory");
			$where['cate_id']=$ids;
			$cate["if_show"]=0;
			$rtn=$category->where($where)->save($cate);
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




