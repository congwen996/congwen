<?php
//属性管理
namespace Admin\Controller;

use Think\Controller;
class PropController extends Controller
{
	/**
	 * 属性列表页展示
	 */
	public function prop_list()
	{
		$propList=M("GoodsProp");//实例化属性表
		$propValue=M("GoodsPropValue");//实例化属性值表
		//$where['shanchu']=1;//判断非删除状态条件
		//分页
		$count= $propList->count();
		$Page= new \Think\Page($count,2);
		//***** 分页样式定制
		$Page->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$Page->setConfig('first', '首页');
		$Page->setConfig('end', '末页');
		//***** 这里定义分页的各个单元的显示位置
		$Page->setConfig('theme', '%HEADER%%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%');
		$show= $Page->show();
		$propListArr=$propList->limit($Page->firstRow.','.$Page->listRows)->select();
		$propValueArr=$propValue->select();
		//接收当前页数
		$p=isset($_GET['p'])?$_GET['p']:1;
		$this->assign("p",$p);
		$this->assign("propListArr",$propListArr);
		$this->assign("propValueArr",$propValueArr);
		$this->assign("page",$show);
		$this->display();
	}
	/**
	 * 属性列表页修改
	 */
	public function prop_edit()
	{	
		$prop=M("GoodsProp");
		//等于$prop=M("Goods_prop");
		$propvalue=M("GoodsPropValue");
		if(IS_POST)
		{
			//接收要修改的id
			$pid=I("post.pid");
			//接收当前页面值
			$p=I("post.p");
			//创建属性名数据
			$PArr=$prop->create();				
			if($PArr)//创建成功
			{
				//执行修改操作,修改属性名
				$rtn=$prop->save();
				if($rtn || $rtn===0)
				{
					//创建属性值数据
					$VArr=$propvalue->create();
					//炸开属性值的数组
					$valString=explode(",",$VArr['prop_value']);
					$ini['pid']=$PArr['pid'];
					//删除统一属性下的属性值
					$Dval=$propvalue->where($ini)->delete();
					//删除成功知否返回的是影响个数
					if($Dval)//删除成功,执行添加
					{
						//删除属性值名表中的对应的属性值,之后再添加
						$addArr['pid']=$PArr['pid'];
						//定义一个计数器，每执行一次加一
						$flg=0;
						for($i=0;$i<count($valString);$i++)
						{
							$addArr['prop_value']=$valString[$i];
							//add()返回的新增的主键id,添加需要传参,因为创建的数据满足不了当前的需求
							$rtn2=$propvalue->add($addArr);
							if($rtn2)
							{
								$flg++;
							}
						}
						//添加属性值成功的次数是否等于属性值的个数
						if($flg==count($valString))
						{
							$this->success("属性值修改成功",__CONTROLLER__."/prop_list/p/{$p}");
						}
						else 
						{
							$this->error("属性值修改失败",__CONTROLLER__."/prop_edit");
						}
					}
				}
				else 
				{
					$this->error("修改失败",__CONTROLLER__."/prop_edit/p/{$p}");
				}
			}
			else {
				$this->error("数据创建失败");
			}
			exit();
			
		}
		//接收要修改的id
		$pid=I("get.pid");
		//接收当前页面值
		$p=I("get.p");
		$this->assign("p",$p);
		//查询要修改的内容
		$ini["p.pid"]=$pid;
		//根据属性id查询属性信息
		$propArr=$prop->alias("p")->where($ini)
		->join("ecm_goods_prop_value as v on p.pid=v.pid","left")
		->field("p.*,v.vid,v.prop_value,v.status,v.sort_order")
		->select();
		$this->assign("proparr",$propArr);
		//查询所有的属性值
		$valArr=array();
		foreach ($propArr as $v)
		{
			$valArr[]=$v['prop_value'];
		}
		//分隔字符串
		$valStr=implode(",",$valArr);
		
		$this->assign("valstr",$valStr);
		$this->display();
	}
	/**
	 * 添加属性值
	 */
	public function propval_add()
	{
		$propone=M("GoodsProp");
		$propvalueone=M("GoodsPropValue");
		//查找要添加的属性名
		$pid=I("get.pid");
		$where['pid']=$pid;
		$proponeArr=$propone->where($where)->find();
		$propvalueoneArr=$propvalueone->where($where)->select();
		foreach ($propvalueoneArr as $v)
		{
			$arr[]=$v['prop_value'];
		}
		$propvalueoneStr=implode(",",$arr);
		$this->assign("propvalueoneStr",$propvalueoneStr);
		$this->assign("proponeArr",$proponeArr);
		if(IS_POST)
		{
			$PArr=$propone->create();
			if($PArr)
			{
				$VArr=$propvalueone->create();
				if(VArr)
				{
					$val['pid']=$VArr['pid'];
					$valStr=explode(',',$VArr['prop_value']);
					$flg=0;
					foreach ($valStr as $v)
					{
						$val['prop_value']=$v;
						$rtn=$propvalueone->add($val);
						if($rtn)
						{
							$flg++;
						}
					}
					if($flg==count($valStr))
					{
						$this->success("属性值添加成功",__CONTROLLER__/prop_list);
					}
					else
					{
						$this->error("属性值添加失败");
					}
				}			
			}
			else
			{
				$this->error("数据创建失败");
			}						
		}		
		$this->display();
	}
	/**
	 * 添加属性
	 */
		public function prop_add()
		{
		    $prop=M("GoodsProp","ecm_");
		    $propvalue=M("GoodsPropValue","ecm_");
		    //判断是否为post接收方法
		    if(IS_POST)
		    {
		    	//接收用户输入的值
		    	$p_typeArr=$prop->create();
		    	//判断是否接收到
		    	if($p_typeArr)
		    	{
		    		//执行添加
		    		$rtn=$prop->add();
		    		if($rtn)//添加成功
		    		{
		    			$p_valueArr=$propvalue->create();
		    			$propValue=I("post.prop_value");
		    			if($p_valueArr)
		    			{
		    				$valStr=explode(",",$propValue);
		    				$flg=0;
		    				for($i=0;$i<count($valStr);$i++)
		    				{
		    					$arr['pid']=$rtn;
		    					$arr['prop_value']=$valStr[$i];
		    					$rtn2=$propvalue->add($arr);
		    					if($rtn2)
		    					{
		    						$flg++;
		    					}
		    				}
		    				if($flg==count($valStr)){
		    					$this->success("添加成功");
		    				}
		    			}
		    		}
		    		else//添加失败
		    		{
		    			$this->error("添加失败");
		    		}
		    	}
		    	else
		    	{
		    		$this->error("数据创建失败");
		    	}
		    }  
			$this->display();
		}
		/**
		 * 删除属性
		 */	
  public function prop_del()
	{
		//执行单删
		//1.判断动作标识
		$action=I("post.action");
		//接收要删除的id
		$ids=I("post.ids");
		if($action=="delone")
		{
			//实列化表
			$prop=M("GoodsProp","ecm_");
			$where['pid']=$ids;
			$propp["shanchu"]=0;
			$rtn=$prop->where($where)->save($propp);
			if($rtn || $rtn===0)
			{
				echo "OK";
			}
			else {
				echo "NO";
			}
		}
	}
	//设置属性页面的状态
	function  setflag()
	{
		//实列化表
		 $prop=M("GoodsProp","ecm_");
		//接收要修改的id
		$ini['pid']=I("post.ids");
		$where['shanchu']=I("post.flg");
		$rtn=$prop->where($ini)->save($where);
		if($rtn)
		{
			$msgArr['msg']="修改成功";
		}
		else {
			$msgArr['msg']="修改失败";
		}
		echo json_encode($msgArr);
		exit();
	}
}



