<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>完成付款 - 仿酒仙运营版演示站</title>
  <meta name="description" content="仿酒仙运营版演示站" />
  <meta name="keywords" content="微商城" />

  <meta name="author" content="ecmall.shopex.cn" />
  <meta name="generator" content="ECMall 2.3.0" />
  <meta name="copyright" content="ShopEx Inc. All Rights Reserved" />

  <link type="text/css" href="/myshop/Public/css/home/header.css" rel="stylesheet" />
  <link type="text/css" href="/myshop/Public/css/home/main.css" rel="stylesheet"  />
  <link type="text/css" href="/myshop/Public/css/home/footer.css" rel="stylesheet" />

  <script type="text/javascript" src="index.php?act=jslang"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/jquery.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/ecmall.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/cart.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/kissy/build/kissy.js"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/kissy/build/switchable/switchable-pkg.js"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/jquery.plugins/jquery.lazyload.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/main.js" charset="utf-8"></script>

  <!--[if lte IE 6]>
  <script type="text/javascript" language="Javascript" src="js/hoverForIE6.js"></script>
  <![endif]-->
  <!--[if IE]>
  <style type="text/css">.allcategory-list .pop .catlist dl{float:left;}</style>
  <![endif]-->

  <script type="text/javascript">
//<!CDATA[
var SITE_URL = "http://localhost/jiuxian";
var REAL_SITE_URL = "http://localhost/jiuxian";
var PRICE_FORMAT = '¥%s';
//]]>
</script>

  <!--<editmode></editmode>
-->
</head>
<body>
<!--顶部开始  -->
<div id="site-nav" class="w-full">
  <div class="shoptop w clearfix">
    <div class="login_info">
      您好,<?php if($UNAME == ''): ?>游客<?php else: echo ($UNAME); endif; ?>
      <?php if($UNAME == ''): ?><a href="<?php echo U('Home/MemLogin/Mem_login');?>">登录</a>
      <a href="<?php echo U('Home/MemRegister/Mem_register');?>">注册</a><?php else: ?><a href="<?php echo U('Home/MemLogin/Mem_login/act/loginout');?>">退出</a><?php endif; ?>
    </div>
    <ul class="quick-menu">
      <li class="home">
        <a href="/myshop/index.php/Home/Index/index">回到首页</a>
      </li>
      <li class="item">
        <div class="menu mytb">
          <a class="menu-hd" <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/MemLogin/Mem_login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/MemAccount/member_account"<?php endif; ?>>
            我是买家 <b></b>
          </a>
          <div class="menu-bd">
            <div class="menu-bd-panel">
              <div>
                <p>
                  <a <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/MemLogin/Mem_login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/MemOrder/Mem_order_list"<?php endif; ?>>已买到的宝贝</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li class="service">
        <a href="#n">帮助中心</a>
      </li>
      <li class="item">
        <div class="menu mini-cart">
          <a class="ac" href="/myshop/index.php/Home/Cart/cart_1">
            <s></s>
            购物车 <strong><?php if($cartCount == ''): ?>0<?php else: echo ($cartCount); endif; ?></strong>
            件 <b></b>
          </a>
          <div class="mini-cart-content menu-bd">
            <dl class="mini-cart-bd">
            <?php if($newcartArr == ''): ?><dt class="mt10 float-left mini-cart-empty">您购物车里还没有任何宝贝</dt>
            <?php else: ?>
              <dt class="mini-cart-hd">最近加入的宝贝：</dt>
              <?php if(is_array($newcartArr)): foreach($newcartArr as $key=>$v): ?><dd class="mini-cart-each clearfix" id="cart_goods570">
                <div class="mini-cart-img">
                  <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>" target="_top">
                    <img alt="<?php echo ($v['goods_name']); ?>" src="/myshop/Public/images/home/<?php echo ($v['goods_image']); ?>" width="40" height="40"></a>
                </div>
                <div class="mini-cart-title">
                  <a title="<?php echo ($v['goods_name']); ?>" href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>" target="_top"><?php echo ($v['goods_name']); ?></a>
                </div>
                <div class="price-admin">
                  <div class="mini-cart-count"> <strong class="mini-cart-price">￥<?php echo ($v['price']); ?></strong>
                  </div>
                  <div class="mini-cart-del">
                    <a <?php if($cateid == ''): ?>href="javascript:delone(<?php echo ($v['goods_id']); ?>);"<?php else: ?>href="javascript:delone2(<?php echo ($v['goods_id']); ?>,<?php echo ($cateid); ?>);"<?php endif; ?> onclick="drop_cart_item(2, 570, 22);">删除</a>
                  </div>
                </div>
              </dd><?php endforeach; endif; endif; ?>
              <dd class="mini-cart-bt">
                <a href="/myshop/index.php/Home/Cart/cart_1">查看我的购物车</a>
              </dd>
            </dl>
          </div>
        </div>
      </li>
      <li class="service">
        <a href="#n">在线客服</a>
      </li>
      <li class="item">
        <div class="menu favorite">
          <a class="menu-hd" <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/MemLogin/Mem_login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/Memfavorite/member_favorite"<?php endif; ?>>
            收藏夹
            <b></b>
          </a>
          <div class="menu-bd">
            <div class="menu-bd-panel">
              <div>
                <p>
                  <a <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/MemLogin/Mem_login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/Favorite/member_favorite"<?php endif; ?>>收藏的宝贝</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
</div>
<script>
function delone(goodsid)
{
	if(confirm("确定删除吗?"))
	{
		$.post("/myshop/index.php/Home/Cart/delone",{"goodsid":goodsid},function(a)
				{
					alert(a);
					location.href="/myshop/index.php/Home/Cart/cart_3?goodsid="+goodsid;
				},"html");
	}
}
function delone2(goodsid,cateid)
{
	if(confirm("确定删除吗?"))
	{
		$.post("/myshop/index.php/Home/Cart/delone",{"goodsid":goodsid},function(a)
				{
					alert(a);
					location.href="/myshop/index.php/Home/Cart/cart_3?cateid="+cateid+"&goodsid="+goodsid;
				},"html");
	}
}
</script>
<!--顶部结束  -->
<div id="header" class="w-full">
  <div class="top_above_ads w-full" area="top_above_ads" widget_type="area">

    <div id="_widget_541" name="jiuxian_image_ads_background" widget_type="widget" class="widget">
      <div class="global-image-ads" style="">

        <div class="global-image-ads-content">
          <a href="" target="_blank" style="width:100%;height:90px;background:url(/myshop/Public/images/home/201405070544095938.jpg) no-repeat center 0;display:block;"></a>
        </div>

      </div>

    </div>
  </div>
  <div class="shop-t w clearfix pb10 mb5 mt5">
    <div class="logo mt10">
      <a href="http://localhost/jiuxian" title="52ECmall仿酒仙运营版演示站">
        <img alt="52ECmall仿酒仙运营版演示站" src="/myshop/Public/images/home/site_logo.gif" />
      </a>
    </div>
    <div class="top-search">
      <div class="top-search-box clearfix">
        <div class="form-fields float-left">
          <!--<b class="rc-lt"></b>
        <b class="rc-lb"></b>
        -->
        <form method="GET" action="index.php?app=search">
          <input type="hidden" name="app" value="search" />
          <input type="hidden" name="act" value="index" />
          <input type="text"   name="keyword" value="" class="keyword kw_bj index_bj " />
          <input type="submit" value="搜索" class="submit" hidefocus="true" />
        </form>
      </div>
    </div>
    <div class="top-search-keywords">
      <a href="index.php?app=search&amp;keyword=ecmall" style="color:#BB000D;border-left:0">ecmall</a>
      <a href="index.php?app=search&amp;keyword=%E5%BE%AE%E4%BF%A1%E5%95%86%E5%9F%8E" >微信商城</a>
    </div>
  </div>
  <div class="top-search-ads float-right clearfix">
    <a href="http://localhost/jiuxian" target="_blank">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads1.jpg" />
    </a>
    <a href="http://localhost/jiuxian" target="_blank">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads2.jpg" />
    </a>
    <a href="http://localhost/jiuxian" target="_blank">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads3.jpg" />
    </a>
  </div>
</div>
<div class="w-full mall-nav">
  <ul class="w clearfix">
    <li class="allcategory float-left">
      <a href="index.php?app=category" class="allsort clearfix no-box-shadow" target="_blank"> <i></i>
        <span>所有分类</span>
      </a>
      <div class="allcategory-list hidden">
        <div class="content clearfix">
          <div style="background: #f1f1f1;" class="item">
            <div class="pborder">
              <h3 clas="clearfix">
                <a href="index.php?app=search&amp;cate_id=" target="_blank"></a>
                <span>></span>
              </h3>
              <p></p>
            </div>
            <div class="pop" >
              <div class="catlist"></div>
            </div>
          </div>
        </div>
      </div>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="http://localhost/jiuxian">首页</a>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="/index.php?app=ju" target="_blank">聚划算</a>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="index.php?app=search&act=groupbuy" target="_blank">团购</a>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="index.php?app=integral" target="_blank">积分商城</a>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="index.php?app=dazhuanpan" target="_blank">幸运大转盘</a>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="index.php?app=search&act=eggact" target="_blank">积分砸蛋</a>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="index.php?app=promotion" target="_blank">打折促销</a>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="index.php?app=sdemand" target="_blank">供求信息</a>
    </li>

    <li class="float-right nav-ads">
      <a href="">
        <img src="/myshop/Public/images/home/832478ffccfd441a82dc20e97166b4c6.jpg" height="40" />
      </a>
    </li>
  </ul>
</div>
</div>
<style type="text/css">.mall-nav{display:none}</style>
<style media="screen" type="text/css">
/*下面字体大小记得要删掉*/
.divs{margin-top:10px;text-align:center;over-flow:hidden;height:100%;width:100%;}
UL{list-style-type:none; margin:0px;}
/* 标准盒模型 */
.ttl{height:18px;}
.ctt{height:auto;padding:6px;clear:both;border:1px solid #ff6d00;border-top:0;text-align:left;}
.w936{margin:2px 0;clear:both;width:820px;/*这里调整整个滑动门的宽度*/}
/* TAB 切换效果 */
.tb_{background-image: url('http://localhost/jiuxian/themes/mall/taocz/styles/default/images_sft/cashier.payment_1.gif'); background-repeat: repeat-x;background-color: #ffffff;}/*按钮底色   图片：上行一横*/
.tb_ ul{height:24px;}
.tb_ li{float:left;height: 24px;line-height:1.9;width: 94px;cursor:pointer;}
/* 用于控制显示与隐藏的css类 */
.normaltab   { background-image:url('http://localhost/jiuxian/themes/mall/taocz/styles/default/images_sft/cashier.payment_2.gif'); background-repeat: no-repeat; color:#f5f5f5 ;}/*无选时字体颜色 图片：无选时图片*/
.hovertab    { background-image: url('http://localhost/jiuxian/themes/mall/taocz/styles/default/images_sft/cashier.payment_3.gif'); background-repeat: no-repeat; color:#ff6600; font-weight:bold }/*已选时字体颜色*/
.dis{display:block;}
.undis{display:none;}


.defrays {width: 100%; margin-bottom: 20px;}
/* 灰色线下支付 css类 */
.defrays dt {height: 28px; line-height: 28px; background: #f5f5f5; padding-left: 20px; font-weight: bold; color: #333;}
.defrays dd {width: 682px; overflow: hidden; padding-top: 10px;}
.defrays dd .radio {float: left; width: 40px; text-align: center; padding-top: 14px;}
.defrays dd .logo {float: left; width: 140px;}
.defrays dd .explain {float: left; width: 477px; line-height: 20px; color: #787878;}
.defrays dd .dongtai {float: left; width: 677px; line-height: 40px;}

</style>
<script type="text/javascript" language="javascript">
function g(o){return document.getElementById(o);}
function HoverLi(n){
//如果有N个标签,就将i<=N;
//本功能非常OK,兼容IE7,FF,IE6
for(var i=1;i<=2;i++){g('tb_'+i).className='normaltab';g('tbc_0'+i).className='undis';}g('tbc_0'+n).className='dis';g('tb_'+n).className='hovertab';
}
//如果要做成点击后再转到请将<li>中的onmouseover 改成 onclick;</script>
<div id="main" class="w-full">
<div id="page-cashier" class="w">
  <div class="step step3 mt10 clearfix">
    <span class="fs14 strong f60">1.查看购物车</span>
    <span class="fs14 strong f60">2.确认订单信息</span>
    <span class="fs14 strong fff">3.付款</span>
    <span class="fs14 strong">4.确认收货</span>
    <span class="fs14 strong">5.评价</span>
  </div>
  <div class="order-form cashier clearfix">
    <div class="order_info border mt20 clearfix">
      <div class="ico"></div>
      <div class="text">
        <p class="fs14 strong">
          订单提交成功！ 订单总价
          <span class="f60">¥<?php echo ($goods_amount); ?></span>
        </p>
        <p>* 您的订单已成功生成，选择您想用的支付方式进行支付订单号1520053984</p>
        <p>
          *
          <a href="/myshop/index.php/Home/MemOrder/Mem_order_list" target="_blank">您可以在用户中心中的我的订单查看该订单</a>
        </p>
      </div>
    </div>
    <div class="buy border padding10 mt10">
      <h3>
        <b class="ico">选择支付方式并付款</b>
      </h3>

      <div class="divs">
        <div id="tb_" class="tb_">
          <ul>
            <li id="tb_1" class="hovertab" onclick="a:HoverLi(1);">在线支付</li>
            <li id="tb_2" class="normaltab" onclick="b:HoverLi(2);">线下支付</li>
          </ul>
        </div>
        <div class="ctt">
          <form action="/myshop/index.php/Home/Cart/finish" method="post" id="goto_pay">
            <div class="dis" id="tbc_01">

              <dl class="defrays">
                <dt>在线支付</dt>
                <dd>
                  <p class="radio">
                    <input id="payment_alipayfree" type="radio" name="payment_id" value="4" />
                  </p>
                  <p class="logo">
                    <label for="payment_alipayfree">
                      <img src="http://localhost/jiuxian/includes/payments/alipayfree/logo.gif" alt="支付宝免签接口-" title="支付宝免签接口-" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain"></p>
                </dd>
                <dd>
                  <p class="radio">
                    <input id="payment_wxnative" type="radio" name="payment_id" value="6" />
                  </p>
                  <p class="logo">
                    <label for="payment_wxnative">
                      <img src="http://localhost/jiuxian/includes/payments/wxnative/logo.gif" alt="微信扫码支付-" title="微信扫码支付-" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain"></p>
                </dd>
                <dd>
                  <p class="radio">
                    <input id="payment_wxjsapi" type="radio" name="payment_id" value="7" />
                  </p>
                  <p class="logo">
                    <label for="payment_wxjsapi">
                      <img src="http://localhost/jiuxian/includes/payments/wxjsapi/logo.gif" alt="微信jsapi支付-" title="微信jsapi支付-" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain"></p>
                </dd>
                <dd>
                  <p class="radio">
                    <input id="payment_alipay" type="radio" name="payment_id" value="11" />
                  </p>
                  <p class="logo">
                    <label for="payment_alipay">
                      <img src="http://localhost/jiuxian/includes/payments/alipay/logo.gif" alt="支付宝-" title="支付宝-" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain"></p>
                </dd>
                <dd>
                  <p class="radio">
                    <input id="payment_alipayplat" type="radio" name="payment_id" value="36" />
                  </p>
                  <p class="logo">
                    <label for="payment_alipayplat">
                      <img src="http://localhost/jiuxian/includes/payments/alipayplat/logo.gif" alt="支付宝平台支付-" title="支付宝平台支付-" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain"></p>
                </dd>
                <dd>
                  <p class="radio">
                    <input id="payment_deposit" type="radio" name="payment_id" value="46" />
                  </p>
                  <p class="logo">
                    <label for="payment_deposit">
                      <img src="http://localhost/jiuxian/includes/payments/deposit/logo.gif" alt="预存款-" title="预存款-" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain"></p>
                </dd>

                <dt>支付宝网银</dt>
                <dd>
                  <dl class="bank-list clearfix" ectype="online" style="margin-left:20px;">
                    <ul class="ui-list-icons clearfix">
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="ICBCB2C" value="ICBCB2C" />
                        <label class="float-left icon-box current " for="ICBCB2C" >
                          <span class="icon-cashier icon-cashier-ICBCB2C" title="中国工商银行">
                            &nbsp; <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CCB" value="CCB" />
                        <label class="float-left icon-box current " for="CCB" >
                          <span class="icon-cashier icon-cashier-CCB" title="中国建设银行">
                            &nbsp; <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="ABC" value="ABC" />
                        <label class="float-left icon-box current " for="ABC" >
                          <span class="icon-cashier icon-cashier-ABC" title="中国农业银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="POSTGC" value="POSTGC" />
                        <label class="float-left icon-box current " for="POSTGC" >
                          <span class="icon-cashier icon-cashier-POSTGC" title="中国邮政储蓄银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="COMM" value="COMM" />
                        <label class="float-left icon-box current " for="COMM" >
                          <span class="icon-cashier icon-cashier-COMM" title="交通银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CMB" value="CMB" />
                        <label class="float-left icon-box current " for="CMB" >
                          <span class="icon-cashier icon-cashier-CMB" title="招商银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="BOCB2C" value="BOCB2C" />
                        <label class="float-left icon-box current " for="BOCB2C" >
                          <span class="icon-cashier icon-cashier-BOCB2C" title="中国银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CEBBANK" value="CEBBANK" />
                        <label class="float-left icon-box current " for="CEBBANK" >
                          <span class="icon-cashier icon-cashier-CEBBANK" title="中国光大银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CITIC" value="CITIC" />
                        <label class="float-left icon-box current " for="CITIC" >
                          <span class="icon-cashier icon-cashier-CITIC" title="中信银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="SPABANK" value="SPABANK" />
                        <label class="float-left icon-box current " for="SPABANK" >
                          <span class="icon-cashier icon-cashier-SPABANK" title="平安银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="SPDB" value="SPDB" />
                        <label class="float-left icon-box current " for="SPDB" >
                          <span class="icon-cashier icon-cashier-SPDB" title="上海浦东发展银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CMBC" value="CMBC" />
                        <label class="float-left icon-box current " for="CMBC" >
                          <span class="icon-cashier icon-cashier-CMBC" title="中国民生银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CIB" value="CIB" />
                        <label class="float-left icon-box current " for="CIB" >
                          <span class="icon-cashier icon-cashier-CIB" title="兴业银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="GDB" value="GDB" />
                        <label class="float-left icon-box current " for="GDB" >
                          <span class="icon-cashier icon-cashier-GDB" title="广东发展银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="SHRCB" value="SHRCB" />
                        <label class="float-left icon-box current " for="SHRCB" >
                          <span class="icon-cashier icon-cashier-SHRCB" title="上海农村商业银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="SHBANK" value="SHBANK" />
                        <label class="float-left icon-box current " for="SHBANK" >
                          <span class="icon-cashier icon-cashier-SHBANK" title="上海银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="NBBANK" value="NBBANK" />
                        <label class="float-left icon-box current " for="NBBANK" >
                          <span class="icon-cashier icon-cashier-NBBANK" title="宁波银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="HZCBB2C" value="HZCBB2C" />
                        <label class="float-left icon-box current " for="HZCBB2C" >
                          <span class="icon-cashier icon-cashier-HZCBB2C" title="杭州银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="BJBANK" value="BJBANK" />
                        <label class="float-left icon-box current " for="BJBANK" >
                          <span class="icon-cashier icon-cashier-BJBANK" title="北京银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="BJRCB" value="BJRCB" />
                        <label class="float-left icon-box current " for="BJRCB" >
                          <span class="icon-cashier icon-cashier-BJRCB" title="北京农村商业银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="FDB" value="FDB" />
                        <label class="float-left icon-box current " for="FDB" >
                          <span class="icon-cashier icon-cashier-FDB" title="富滇银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="WZCBB2C-DEBIT" value="WZCBB2C-DEBIT" />
                        <label class="float-left icon-box current " for="WZCBB2C-DEBIT" >
                          <span class="icon-cashier icon-cashier-WZCBB2C-DEBIT" title="温州银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CDCB" value="CDCB" />
                        <label class="float-left icon-box current " for="CDCB" >
                          <span class="icon-cashier icon-cashier-CDCB" title="成都银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="HXBANK" value="HXBANK" />
                        <label class="float-left icon-box current " for="HXBANK" >
                          <span class="icon-cashier icon-cashier-HXBANK" title="华夏银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="ICBCBTB" value="ICBCBTB" />
                        <label class="float-left icon-box current " for="ICBCBTB" >
                          <span class="icon-cashier icon-cashier-ICBCBTB" title="中国工商银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CCBBTB" value="CCBBTB" />
                        <label class="float-left icon-box current " for="CCBBTB" >
                          <span class="icon-cashier icon-cashier-CCBBTB" title="中国建设银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="ABCBTB" value="ABCBTB" />
                        <label class="float-left icon-box current " for="ABCBTB" >
                          <span class="icon-cashier icon-cashier-ABCBTB" title="中国农业银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="CMBBTB" value="CMBBTB" />
                        <label class="float-left icon-box current " for="CMBBTB" >
                          <span class="icon-cashier icon-cashier-CMBBTB" title="招商银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="BOCBTB" value="BOCBTB" />
                        <label class="float-left icon-box current " for="BOCBTB" >
                          <span class="icon-cashier icon-cashier-BOCBTB" title="中国银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                      <li class="clearfix">
                        <input class="float-left"  type="radio" name="defaultbank" id="SPDBBTB" value="SPDBBTB" />
                        <label class="float-left icon-box current " for="SPDBBTB" >
                          <span class="icon-cashier icon-cashier-SPDBBTB" title="上海浦东发展银行">
                            &nbsp;
                            <em class="qiye hidden">企业</em>
                          </span>
                        </label>
                      </li>
                    </ul>

                  </dl>
                </dd>
              </dl>
              <div class="make_sure mt10 mb20">
                <p>
                	<input type="hidden" name="order_id" value="<?php echo ($orderid); ?>"></input>
                  <a href="javascript:$('#goto_pay').submit();" class="btn-step fff strong fs14">确认支付</a>
                </p>
              </div>
            </div>

            <div class="undis" id="tbc_02">

              <dl class="defrays">
                <dt>线下支付</dt>
                <dd>
                  <p class="radio">
                    <input type="radio" id="payment_bank" name="payment_id" value="2" />
                  </p>
                  <p class="logo">
                    <label for="payment_bank">
                      <img alt="银行汇款-" title="银行汇款-" src="http://localhost/jiuxian/includes/payments/bank/logo.gif" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain"></p>
                </dd>
                <dd>
                  <p class="radio">
                    <input type="radio" id="payment_cos" name="payment_id" value="5" />
                  </p>
                  <p class="logo">
                    <label for="payment_cos">
                      <img alt="到店付款-ok" title="到店付款-ok" src="http://localhost/jiuxian/includes/payments/cos/logo.gif" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain">ok</p>
                </dd>
                <dd>
                  <p class="radio">
                    <input type="radio" id="payment_cod" name="payment_id" value="3" />
                  </p>
                  <p class="logo">
                    <label for="payment_cod">
                      <img alt="货到付款-ok" title="货到付款-ok" src="http://localhost/jiuxian/includes/payments/cod/logo.gif" width="125" height="47" />
                    </label>
                  </p>
                  <p class="explain">ok</p>
                </dd>
              </dl>
              <div class="make_sure mt10 mb20">
                <p>
                  <a href="javascript:$('#goto_pay').submit();" class="btn-step fff strong fs14">确认支付</a>
                </p>
              </div>
            </div>

          </div>

        </form>
      </div>
    </div>
  </div>
<!-- 底部开始 -->

<!-- 底部结束 -->
</body>
</html>