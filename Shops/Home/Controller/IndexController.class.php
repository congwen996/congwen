<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index()
    {   	
    	header('content-type:text/html;charset=utf-8');
    	$UNAME=session("UNAME");
    	$UID=session("UID");
    	$DL=session("DL");
    	$category=M("Gcategory");
    	$where['if_show']=1;					//判断逻辑删除
    	$categoryArr=$category->where($where)->select();
    	//分类列表页
    	$arr=getCates($categoryArr);  // 将所类别重新整理
         //热卖商品
		$goodsst=M("GoodsStatistics");
		$goodsHot=$goodsst->alias("s")->field("g.goods_id,g.goods_name,g.price,g.default_image")->join("ecm_goods as g on s.goods_id=g.goods_id","left")->order("sales desc")->limit(10)->select();
		$goodsHot=img($goodsHot,"default_image");	//调用整理图片路径函数
		//最新上架
		$goods=M("Goods");
		$goodsNew=$goods->field("goods_id,goods_name,price,default_image")->order("add_time desc")->limit(10)->select();
		$goodsNew=img($goodsNew,"default_image");
		//最受欢迎
		$goodsUp=$goodsst->alias("s")->field("g.goods_id,g.goods_name,g.price,g.default_image")->join("ecm_goods as g on s.goods_id=g.goods_id","left")->order("views desc")->limit(10)->select();
		$goodsUp=img($goodsUp,"default_image");
		//猜你喜欢
		$goodsLike=$goodsst->alias("s")->field("g.goods_id,g.goods_name,g.price,g.default_image")->join("ecm_goods as g on s.goods_id=g.goods_id","left")->order("carts desc")->limit(10)->select();
		$goodsLike=img($goodsLike,"default_image");
		//葡萄酒馆
		$putaojiu=$goods->field("goods_id,goods_name,price,default_image")->where("cate_id_3=97")->limit(18)->select();
		$putaojiu=img($putaojiu,"default_image");
		//美味生活
		$meiwei=$goods->field("goods_id,goods_name,price,default_image")->where("cate_id_3=332")->limit(18)->select();
		$meiwei=img($meiwei,"default_image");
		//母婴用品
		$muying=$goods->field("goods_id,goods_name,price,default_image")->where("cate_id_3=364")->limit(18)->select();
		$muying=img($muying,"default_image");
		
		//顶部购物车
		if($DL==1)
		{
			$where['user_id']=$UID;
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
			$where['session_id']=$cuserid;
		}
		$cart=M("Cart");
		//当前会员或游客所有购物车中商品数量
		$cartCount=$cart->where($where)->count();
		//最近加入购物车
		$newcartArr=$cart->where($where)->order("rec_id desc")->limit(5)->select();
		$newcartArr=img($newcartArr,"goods_image");
		$this->assign("cartCount",$cartCount);
		$this->assign("newcartArr",$newcartArr);
		
    	$this->assign("goodsHot",$goodsHot);
    	$this->assign("goodsNew",$goodsNew);
    	$this->assign("goodsUp",$goodsUp);
    	$this->assign("goodsLike",$goodsLike);
    	$this->assign("putaojiu",$putaojiu);
    	$this->assign("meiwei",$meiwei);
    	$this->assign("muying",$muying);
		$this->assign("arr",$arr);
		$this->assign("UNAME",$UNAME);
    	$this->display();
    }
}