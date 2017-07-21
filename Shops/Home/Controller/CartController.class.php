<?php
//购物流程
namespace Home\Controller;

use Think\Controller;
class CartController extends Controller
{
	/**
	 * 添加购物车
	 */
	public function cartadd()
	{

	}
	/**
	 * 删除购物车
	 */
	public function delone()
	{
		$UID=session("UID");
		$DL=session("DL");
		$goodsid=I("post.goodsid","");
		//判断登陆
		if($DL==1)
		{
			$where['user_id']=$UID;
		}
		else
		{
			$cuserid=cookie("UESSIONID");
			//判断游客id是否存在cookie中
			if($cuserid=="")
			{
				$cuserid=session_id();
				cookie("UESSIONID",$cuserid,60*60*24);
			}
			$where['session_id']=$cuserid;
		}
		$cart=M("Cart");
		$where['goods_id']=$goodsid;
		$rt=$cart->where($where)->delete();
		if($rt)
		{
			echo "删除成功";
		}
		else 
		{
			echo "删除失败";
		}
	}
	/**
	 * 购物车列表
	 */
	public function cart_1()
	{
		$cart=M("Cart");
		$UID=session("UID");
		$UNAME=session("UNAME");
		$where = array();
		
		if ($UID!="") {
			$where['user_id'] = $UID;
		}else{
			$sessionid = cookie("UESSIONID");
			if ($sessionid == "") {
				$sessionid = session_id();
				cookie("UESSIONID",$sessionid,60*60*24*7);
			}
			$where['session_id'] = $sessionid;
		}
		
		
		//当前会员或游客所有购物车中商品数量
		$cartCount=$cart->where($where)->count();
		//最近加入购物车
		$newcartArr=$cart->where($where)->order("rec_id desc")->limit(5)->select();
		$newcartArr=img($newcartArr,"goods_image");
		
		//猜你喜欢
		$goodsst=M("GoodsStatistics");
		$goodsLike=$goodsst->alias("s")->field("g.goods_id,g.goods_name,g.price,g.default_image,s.sales")->join("ecm_goods as g on s.goods_id=g.goods_id","left")->order("carts desc")->limit(6)->select();
		$goodsLike=img($goodsLike,"default_image");

		$this->assign("goodsLike",$goodsLike);
		$this->assign("cartCount",$cartCount);
		$this->assign("cartArr",$cartArr);
		$this->assign("newcartArr",$newcartArr);
		
		$this->assign("UNAME",$UNAME);
		$dl=session("DL");
		$this->assign("dl",$dl);
		$this->display();
	}
	/**
	 * 提交购物车时判断登陆
	 */
	public function buy()
	{
		$dl=I("post.dl");
		if($dl==1)
		{
			echo 1;
		}
		else 
		{
			echo 0;
		}
	}
	
	/**
	 * 确认订单
	 */
	public function cart_2()
	{
		$UID=session("UID");
		$UNAME=session("UNAME");
		$DL=session("DL");
		
		//买家地址
		$address=M("Address");
		$addressArr=$address->where("user_id={$UID}")->select();
		
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
		
		//商品信息
		//从商品页立即购买
		$goodsid = I("get.goodsid");
		if ($goodsid!="") {
			$goods = M("Goods");
			$num = I("get.num");
			$where['goods_id'] = $goodsid;
			$valArr = $goods->where($where)->select();
			if ($num != "") {
				$valArr[0]["num"] = $num;
			}
			$valArr[0]["act"] = 1;
		}
		
		//从购物车跳到本页面
		if(I("post.act")=="cart"){
			$id = I("post.s2");
			$num = I("post.val");
			$data['goods_id'] = array("in",implode(",",$id));
			$valArr=$cart->where($data)->order("rec_id desc")->select();
			$valArr=img($valArr,"goods_image");
			for ($i=0;$i<count($valArr);$i++){
				$valArr[$i]["num"]=$num[$i];
			}
		}
		
		$valArr = img($valArr,"default_image");
		$this->assign("valArr",$valArr);
		
		$this->assign("addressArr",$addressArr);
		$this->assign("UNAME",$UNAME);
		
		$this->display();
		
	}
	/**
	 * 生成订单
	 */
	public function cart_3()
	{
		
		$UID=session("UID");
		$UNAME=session("UNAME");
		$DL=session("DL");
		$act=I("post.act");
		//买家后台付款
		if($_GET)
		{
			$orderid=I("get.orderid");
			$order=M("Order");
			$orderArr=$order->where("order_id={$orderid}")->find();
			//顶部购物车
			$data['user_id']=$UID;
			$cart=M("Cart");
			//当前会员或游客所有购物车中商品数量
			$cartCount=$cart->where($data)->count();
			//最近加入购物车
			$newcartArr=$cart->where($data)->order("rec_id desc")->limit(5)->select();
			$newcartArr=img($newcartArr,"goods_image");
			$this->assign("cartCount",$cartCount);
			$this->assign("newcartArr",$newcartArr);
			
			$this->assign("UNAME",$UNAME);
			$this->assign("orderid",$orderid);
			$this->assign("goods_amount",$orderArr['goods_amount']);
			$this->display();
			exit();
		}
		//订单总价
		$zong=0;
		for ($i=0;$i<count($_POST['goods_id']);$i++)
		{
			$zong+=$_POST['price'][$i]*$_POST['quantity'][$i];
		}
		$order=M("Order");
		$member=M("Member");
		$address=M("Address");
		$memberArr=$member->where("user_id={$UID}")->find();
		//提交新地址
		if($_POST['address_options']==0) 
		{
			$ini['user_id']=$UID;
			$ini['consignee']=$_POST['consignee'];
			$ini['region_id']=$_POST['region_id'];
			$ini['region_name']=$_POST['region_name'];
			$ini['address']=$_POST['address'];
			$ini['zipcode']=$_POST['zipcode'];
			$ini['phone_tel']=$_POST['phone_tel'];
			$ini['phone_mob']=$_POST['phone_mob'];
			$address->add($ini);
			$addressArr=$address->where("user_id={$UID}")->order("addr_id desc")->limit(1)->select();
			$data['buyer_name']=$addressArr[0]['consignee'];
		}
		//提交已有地址
		else 
		{
			$addressArr=$address->where("addr_id={$_POST['address_options']}")->find();
			$data['buyer_name']=$addressArr['consignee'];
		}
		$data['buyer_id']=$UID;
		$data['buyer_email']=$memberArr['email'];
		$data['status']=11;
		$data['add_time']=time();
		$data['goods_amount']=$zong;
		$data['order_amount']=$zong;
		$data['postscript']=$_POST['postscript'];
		//生成未付款订单
		$rt=$order->add($data);
		if($rt)
		{
			//当前订单
			$orderArr=$order->where("buyer_id={$UID}")->order("order_id desc")->limit(1)->select();
			$orderid=$orderArr[0]['order_id'];
			$ordergoods=M("OrderGoods");
			$goods=M("Goods");
			$goodssta=M("GoodsStatistics");
			$arr=$goods->select();
			//商品id整理到键值中
			$goodsArr=array();
			foreach ($arr as $k=>$v)
			{
				$goodsArr[$v['goods_id']]['goods_id']=$v['goods_id'];
				$goodsArr[$v['goods_id']]['goods_name']=$v['goods_name'];
				$goodsArr[$v['goods_id']]["goods_image"]=$v["default_image"];
			}
			//订单商品信息
			$newArr=array();
			foreach ($_POST['goods_id'] as $v)
			{
				$newArr["goods_name"][]=$goodsArr[$v]['goods_name'];
				$newArr['goods_image'][]=$goodsArr[$v]['goods_image'];
			}
			//订单商品添加到当前订单中
			for ($i=0;$i<count($_POST['goods_id']);$i++)
			{
				$data2['order_id']=$orderid;
				$data2['goods_id']=$_POST['goods_id'][$i];
				$data2['quantity']=$_POST['quantity'][$i];
				$data2['price']=$_POST['price'][$i];
				$data2['goods_name']=$newArr['goods_name'][$i];
				$data2['goods_image']=$newArr['goods_image'][$i];
				$data2['is_valid']=1;
 				$rt=$ordergoods->add($data2);
 				
 				//增加当前商品下单次数
 				$count3=$goodssta->where("goods_id={$_POST['goods_id'][$i]}")->count();
 				//判断当前商品是否存在统计表中
 				if($count3==0)
 				{
 					$data1['goods_id']=$_POST['goods_id'][$i];
 					$data1['orders']=1;
 					$goodssta->add($data1);
 				}
 				else
 				{
 					$goodssta->where("goods_id={$_POST['goods_id'][$i]}")->setInc("orders");
 				}
			}
			if($rt)
			{
				//判断购物车订单或立刻购买
				if($act=="cart")
				{
					$cart=M("Cart");
					//存入订单中商品从购物车中删除
					for ($i=0;$i<count($_POST['goods_id']);$i++)
					{
					$data3["user_id"]=$UID;
					$data3["goods_id"]=$_POST['goods_id'][$i];
					$rt=$cart->where($data3)->delete();
					}
					if($rt)
					{
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
						
						$this->assign("UNAME",$UNAME);
						$this->assign("orderid",$orderid);
						$this->assign("goods_amount",$zong);
						$this->display();
					}
					else
					{
						$this->error("订单失败");
					}
				}
				else 
				{
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
					
					$this->assign("UNAME",$UNAME);
					$this->assign("orderid",$orderid);
					$this->assign("goods_amount",$zong);
					$this->display();
				}
			}
			else 
			{
				$this->error("订单失败");
			}		
		}
		else 
		{
			$this->error("订单失败");
		}
	}
	/**
	 * 完成付款
	 */
	function finish()
	{
		//更新订单状态和付款方式
		$order=M("Order");
		$data['payment_id']=$_POST['payment_id'];
		$data['payment_bank']=$_POST['defaultbank'];
		$data['status']=20;
		$rt=$order->where("order_id={$_POST['order_id']}")->save($data);
		if($rt)
		{
			$ordergoods=M("OrderGoods");
			$ordergoodsArr=$ordergoods->where("order_id={$_POST['order_id']}")->select();
			//增加当前商品销售次数
			$goodssta=M("GoodsStatistics");
			foreach ($ordergoodsArr as $v)
			{
				$count3=$goodssta->where("goods_id={$v['goods_id']}")->count();
				//判断当前商品是否存在统计表中
				if($count3==0)
				{
					$data1['goods_id']=$v['goods_id'];
					$data1['sales']=1;
					$goodssta->add($data1);
				}
				else
				{
					$goodssta->where("goods_id={$v['goods_id']}")->setInc("sales");
				}
			}
			$this->success("付款成功",U("Memorder/member_order"));
		}
		else 
		{
			$this->error("付款失败");
		}
	}
}