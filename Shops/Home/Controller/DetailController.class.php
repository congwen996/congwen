<?php
//商品详情页
namespace Home\Controller;

use Think\Controller;
class DetailController extends Controller
{
	/**
	 * 商品详情页
	 */
	public function detail()
	{
		
		header('content-type:text/html;charset=utf-8');
 		$goodsid=I("get.goodsid","");		
		$UID=session("UID");
		$UNAME=session("UNAME");
		$DL=session("DL");
		//当前商品
		$goods=M("Goods");
		$goodsArr=$goods->where("goods_id={$goodsid}")->find();
		$imgArr[]=explode("/",$goodsArr["default_image"]);
			foreach ($imgArr as $v)
			{
				$goodsArr["default_image"]=$v[3]."/".$v[4];
			}

		//商品评论
		$ordergoods=M("OrderGoods");
		$ordergoodsArr=$ordergoods->join("ecm_order as o on ecm_order_goods.order_id=o.order_id")->where("goods_id={$goodsid}")->select();	
		$newArr=array();
		$newArr=$ordergoodsArr;
		foreach($newArr as $k=>$v)
		{
			$newArr[$k]['add_time']=date("Y-m-d H:i:s",$v['add_time']);
		}

		//宝贝排行榜-销售量
		$goodsSales=$goods->join("ecm_goods_statistics as s on ecm_goods.goods_id=s.goods_id","left")->order("sales desc")->limit(10)->where("if_show=1")->select();
		$goodsSales=img($goodsSales,"default_image");
		//宝贝排行榜-收藏数
		$goodsCollects=$goods->join("ecm_goods_statistics as s on ecm_goods.goods_id=s.goods_id","left")->order("collects desc")->limit(10)->where("if_show=1")->select();
		$goodsCollects=img($goodsCollects,"default_image");
		
		
		
		
		//判断登陆
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
		
		//增加当前商品浏览次数
		$goodssta=M("GoodsStatistics");
		$count3=$goodssta->where("goods_id={$goodsArr['goods_id']}")->count();
		//判断当前商品是否存在统计表中
		if($count3==0)
		{
			$data1['goods_id']=$goodsArr['goods_id'];
			$data1['views']=1;
			$goodssta->add($data1);
		}
		else
		{
			$goodssta->where("goods_id={$goodsArr['goods_id']}")->setInc("views");
		}
		
		$this->assign("goodsArr",$goodsArr);
		$this->assign("UNAME",$UNAME);
		$this->assign("DL",$DL);
		$this->assign("newArr",$newArr);
		$this->assign("goodsSales",$goodsSales);
		$this->assign("goodsCollects",$goodsCollects);
		$this->display();
	}
	/**
	 * 立刻购买
	 */
	public function buy()
	{
// 		$DL=session("DL");
// 		if($DL==1)
// 		{
// 			echo 1;
// 		}
// 		else
// 		{
// 			echo 0;
// 		}
		$uid=session("UID");
		if(session('UID')=="")
		{
			//未登录
			echo "no";
		}else{
			//已登录
			echo "ok";
		}
       
	}
	

	//判断用户是否登陆
	public function checkusers()
	{
		$uid=session("UID");
		if(session('UID')=="")
		{
			//未登录
			echo "no";
		}else{
			//已登录
			echo "ok";
		}
		
	}
	

	//处理加入购物车动作
	public function  processaddcart()
	{
		//商品id
		$goodsid=I("post.goodsid");
		//商品数量
		$num=I("post.num");
		//实列化表
		$cart=M("Cart");
		if(session('UID')!="")
		{ 
			//已登录
			$ini['user_id']=session('UID');
		}else{
			//未登录,用会话id
			$ini['session_id']=cookie('USESSIONID');
			if($ini['session_id']=="")
			{
				$ini['session_id']=session_id();
				cookie('USESSIONID',$ini['session_id'],60*60*24*30);
			}			
		}
		
		$ini['goods_id']=$goodsid;
		//查询同一个用户同一商品的数量
		$count=$cart->where($ini)->count();		
		if($count>0)//购物车存在该商品
		{
			echo "added";
		}else{
			$goods=M("Goods");
			//查询要加入购物车商品的信息
			$wheres['goods_id']=$goodsid;
			$goodArr=$goods->where($wheres)->find();
			
			$ini['goods_name']=$goodArr['goods_name'];
			$ini['goods_image']=$goodArr['default_image'];
			$ini['price']=$goodArr['price'];
			$rtn=$cart->add($ini);//数据创建时，不传参
			if($rtn)
			{
				//添加成功
				echo "success";
			}else{
				//添加失败
				echo "failed";
			}
		}
	}
	
	/**
	 * 收藏商品
	 */
	public function favorite()
	{
		$DL=session("DL");
		$DL=1;
		//判断登陆
		if($DL==1)
		{
			$UID=session("UID");
			$goodsid=I("post.goodsid");
			$collect=M("Collect");
			$count1=$collect->where("user_id={$UID}")->count();
			$count2=$collect->where("item_id={$goodsid} and user_id={$UID}")->count();
			//判断当前会员是否收藏当前商品
			if($count1>=0 && $count2==0)
			{
				$data['user_id']=$UID;
				$data['item_id']=$goodsid;
				$data['add_time']=time();
				$rt=$collect->add($data);
				if($rt)
				{
					//增加当前商品收藏次数
					$goodssta=M("GoodsStatistics");
					$count3=$goodssta->where("goods_id={$goodsid}")->count();
					//判断当前商品是否存在统计表中
					if($count3==0)
					{
						$data1['goods_id']=$goodsid;
						$data1['collects']=1;
						$rts=$goodssta->add($data1);
						if($rts)
						{
							echo "收藏成功";
						}
						else 
						{
							echo "收藏失败";
						}
					}
					else 
					{
						$rts=$goodssta->where("goods_id={$goodsid}")->setInc("collects");
						if($rts)
						{
							echo "收藏成功";
						}
						else
						{
							echo "收藏失败";
						}
					}
				}
				else
				{
					echo "收藏失败";
				}
			}
			else
			{
				echo "已收藏过该商品";
			}
		}
		else
		{
			echo 0;
		}
	}
	
}