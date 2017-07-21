<?php
//列表页
namespace Home\Controller;

use Think\Controller;
class ListController extends Controller
{
	//列表页
	public function listye()
	{
		header('content-type:text/html;charset=utf-8');
		$cateid=I("get.cateid","");
		$pvs=I("get.pvs","");
		$order=I("get.order","");
		$sflg=I("get.sflg","asc");
		$pflg=I("get.pflg","asc");
		$aflg=I("get.aflg","asc");
		$coflg=I("get.coflg","asc");
		$caflg=I("get.caflg","asc");
		$UNAME=session("UNAME");
		$UID=session("UID");
		$DL=session("DL");
		
		//判断排序条件
		if($order=="sales")		
		{
			$order="sales ".$sflg;
		}
		elseif($order=="price")
		{
			$order="price ".$pflg;
		}
		elseif($order=="add_time")
		{
			$order="add_time ".$aflg;
		}
		elseif($order=="comments")
		{
			$order="comments ".$coflg;
		}
		elseif($order=="carts")
		{
			$order="carts ".$caflg;
		}

		//当前类别所属级
		$lev=getlayer($cateid);

		$pvs=M("CatePvs");
		$gpv=M("GoodsPropValue");
		$gp=M("GoodsProp");
		//所有属性值id和名
		$propval=$gpv->field("vid,prop_value")->select();
		foreach($propval as $v)
		{
			$pvalue[$v["vid"]]=$v['prop_value'];
		}
		
		//类别所分配过的属性名及其对应的属性值
		//思路
		//$Arr['属性名']=array('属性值1','属性值2');
		//1.根据查到的类别id，去查类别所分配过的属性名,属性值
		$catepvs=M("CatePvs");
		//实列化属性名表，属性值表
		$prop=M("GoodsProp");
		//查询所有属性名
		$propArr=$prop->select();
		//遍历属性名表所有内容
		$prpArr=array();
		foreach ($propArr as $v)
		{
			//该数组用来记录属性名id=属性名称
			$prpArr[$v['pid']]=$v['name'];
		}
		$this->assign('prparr',$prpArr);
		$propvalue=M("GoodsPropValue");
		$ini['cate_id']=$cateid;
		$pvsArr=$catepvs->where($ini)->field('pvs')->find();
		//2.用数组炸开属性名：属性值；
		$proArr=explode(";",$pvsArr['pvs']);
		$newArr=array();
		for($i=0;$i<count($proArr);$i++)
		{
			//存储以属性名为键，属性值为值得数组
			$pvalArr=explode(':',$proArr[$i]);
			//根据属性值id查询属性值名称
			$val['vid']=$pvalArr[1];
			$propvalueArr=$propvalue->where($val)->find();
			
			//$newArr[属性名id][属性值id]=属性值
			$newArr[$pvalArr[0]][$pvalArr[1]]=$propvalueArr['prop_value'];			
		}
		$this->assign('newarr',$newArr);
		
		//计算某个类别所处层数function函数
		//$layers=getcatelayer($cateid);
		//echo "layers:".$layers;
        
		
		//分类列表页
		$category=M("Gcategory");
		$where['if_show']=1;					//判断逻辑删除
		$categoryArr=$category->where($where)->select();
		$arr=getCates($categoryArr);
		


		$goods=M("Goods");
		$levid=$lev+1;
		unset($where['parent_id']);
		$where["cate_id_{$lev}"]=$cateid;
		//根据属性值查找
		if($pvs!="")
		{
			$where['_string']="instr(p.pvs,'{$pvs}') > 0";
		}
		//属于当前类别的所有商品
		$goodsArr=$goods->join("ecm_goods_statistics as s on ecm_goods.goods_id=s.goods_id","left")->join("ecm_goods_pvs as p on ecm_goods.goods_id=p.goods_id","left")->order($order)->where($where)->select();	
		$goodsArr=img($goodsArr,"default_image");
		//属于当前类别下所有子类的所有商品
		foreach($goodsArr as $v)
		{
			$goodsnewArr[$v["cate_id_{$levid}"]][]=$v['goods_id'];	
		}


		//切换排序方式
		if($sflg=="desc")
		{
			$sflg="asc";
		}
		else
		{
			$sflg="desc";
		}
		if($pflg=="desc")
		{
			$pflg="asc";
		}
		else
		{
			$pflg="desc";
		}
		if($aflg=="desc")
		{
			$aflg="asc";
		}
		else
		{
			$aflg="desc";
		}
		if($coflg=="desc")
		{
			$coflg="asc";
		}
		else
		{
			$coflg="desc";
		}
		if($caflg=="desc")
		{
			$caflg="asc";
		}
		else
		{
			$caflg="desc";
		}
		
		//搜索推荐
		$goodsViews=$goods->join("ecm_goods_statistics as s on ecm_goods.goods_id=s.goods_id","left")->order("views desc")->limit(5)->where("if_show=1")->select();	
		$goodsViews=img($goodsViews,"default_image");
		//店长推荐
		$goodsSales=$goods->join("ecm_goods_statistics as s on ecm_goods.goods_id=s.goods_id","left")->order("sales desc")->limit(5)->where("if_show=1")->select();	
		$goodsSales=img($goodsSales,"default_image");
		//推荐商品
		$goodsCarts=$goods->join("ecm_goods_statistics as s on ecm_goods.goods_id=s.goods_id","left")->order("carts desc")->limit(6)->where("if_show=1")->select();	
		$goodsCarts=img($goodsCarts,"default_image");
		
		//顶部购物车
		if($DL==1)
		{
			$data['user_id']=$UID;
		}
		else
		{
			$cuserid=cookie("sessionid");
			//判断游客id是否存在cookie中
			if($cuserid=="")
			{
				$cuserid=session_id();
				cookie("sessionid",$cuserid,60*60*24);
			}
			$data['session_id']=$cuserid;
		}
		$cart=M("Cart");
		//当前会员或游客所有购物车中商品数量
		$cartCount=$cart->where($data)->count();
		//最近加入购物车
		$newcartArr=$cart->where($data)->order("rec_id desc")->limit(5)->select();
		$newcartArr=img($newcartArr,"goods_image");
		$this->assign("cartCount",$cartCount);
		$this->assign("newcartArr",$newcartArr);
		
		$this->assign("cateid",$cateid);
		$this->assign("arr",$arr);
		$this->assign("goodsArr",$goodsArr);
		$this->assign("sflg",$sflg);
		$this->assign("pflg",$pflg);
		$this->assign("aflg",$aflg);
		$this->assign("coflg",$coflg);
		$this->assign("caflg",$caflg);
		$this->assign("goodsViews",$goodsViews);
		$this->assign("goodsSales",$goodsSales);
		$this->assign("goodsCarts",$goodsCarts);
		$this->assign("UNAME",$UNAME);
		
		$this->display();
	}
}