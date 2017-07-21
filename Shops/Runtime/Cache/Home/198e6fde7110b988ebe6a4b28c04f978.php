<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户中心</title>
<meta name="description" content="仿酒仙运营版演示站" />
<meta name="keywords" content="微商城" />

<meta name="author" content="ecmall.shopex.cn" />
<meta name="copyright" content="ShopEx Inc. All Rights Reserved" />
<link href="/myshop/Public/css/home/global.css" rel="stylesheet" type="text/css" />
<link href="/myshop/Public/css/home/user.css" rel="stylesheet" type="text/css" />
<link href="/myshop/Public/css/home/footer.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
//<!CDATA[
var SITE_URL = "http://localhost/jiuxian";
var REAL_SITE_URL = "http://localhost/jiuxian";
var PRICE_FORMAT = '¥%s';
//]]>
</script>
<script type="text/javascript" src="index.php?act=jslang"></script>
<script type="text/javascript" src="/myshop/Public/js/home/jquery.js" charset="utf-8"></script>
<script type="text/javascript" src="/myshop/Public/js/home/ecmall.js" charset="utf-8"></script>
<script type="text/javascript" src="/myshop/Public/js/home/member.js" charset="utf-8"></script>
<!--[if lte IE 6]>
<script type="text/javascript" language="Javascript" src="js/hoverForIE6.js"></script>
<![endif]-->
<script type="text/javascript">
$(function(){
    $('#left h1 span,h2.title a.fold').click(function(){
        if($(this).hasClass('span_close')){
            $(this).removeClass('span_close');
            $(this).addClass('span_open');
            this.title = 'open';
            closeSubmenu($(this).parent());
        }
        else{
            $(this).removeClass('span_open');
            $(this).addClass('span_close');
            this.title = 'close';
            openSubmenu($(this).parent());
        }
    });

    var span = $("#child_nav");
    span.hover(function(){
        $("#float_layer:not(:animated)").show();
    }, function(){
        $("#float_layer").hide();
    });
	
	// tyioocom
	$('.tsearch-tabs li').click(function(){
		$(this).parent().find('li').each(function(){
			$(this).attr('class','');
		});
		$(this).attr('class','tsearch-tabs-active');
		$('.tsearch-panel input[name="act"]').val($(this).attr('ectype'));
	});
	$('.tsearch-panel #keyword').focus(function(){
		$('.tsearch-panel label').hide();
	}).blur(function(){
		if($(this).val()==''){
			$('.tsearch-panel label').show();
		}
	});
	
});
function closeSubmenu(h1){
    h1.next('ul').css('display', 'none');
}
function openSubmenu(h1){
    h1.next('ul').css('display', '');
}
</script>
</head>
<style type="text/css">
#footer_links dl {width: 170px !important;margin-left:15px;_margin-left:0px;}
#footer_links {width: 1000px !important;_width:930px  !important;padding: 20px 0px 15px 0px !important;}
#footer #footer_links2 {width: 1000px !important;padding: 20px 0px 15px 0px;}
#footer #footer_links2  dl{width:95px !important;}
#footer #footer_links2  dl.last{width:130px !important;}
</style>
<body>
<div id="site-nav" class="w-full">
   <div class="shoptop w clearfix">
      <div class="login_info">
         您好,
                  <a href="index.php?app=member"><span><?php echo ($uname); ?></span></a>
         <a href="<?php echo U('Home/MemLogin/Mem_login/act/loginout');?>"><span>退出</span></a>
               </div>
      <ul class="quick-menu">
        <li class="home"><a href='<?php echo U("Home/Index/index");?>'>回到首页</a></li>       
         <li class="item">
            <div class="menu mytb">
               <a class="menu-hd" href="index.php?app=buyer_admin">我是买家<b></b></a>
               <div class="menu-bd">
                  <div class="menu-bd-panel">
                     <div>
                        <p><a href="index.php?app=buyer_order">已买到的宝贝</a></p>
                        <p><a href="index.php?app=my_question">我的咨询</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </li>
         <li class="item">
            <div class="menu favorite">
               <a class="menu-hd" href="index.php?app=my_favorite">收藏夹<b></b></a>
               <div class="menu-bd">
                  <div class="menu-bd-panel">
                     <div>
                       <p><a href="index.php?app=my_favorite">收藏的宝贝</a></p>
                    </div>
                 </div>
               </div>
           </div>
         </li>
         <li class="item">
            <div class="menu mini-cart">
               <a class="ac" href="/myshop/index.php/Home/Cart/cart_1">
                  <s></s>购物车<strong>0</strong>件<b></b>
               </a>
               <div class="mini-cart-content menu-bd">
                  <dl class="mini-cart-bd">
                                          <dt class="mt10 fleft mini-cart-empty">您购物车里还没有任何宝贝</dt>
                                          <dd class="mini-cart-bt">
                        <a href="/myshop/index.php/Home/Cart/cart_1">查看我的购物车</a>
                     </dd>                          
                  </dl>
               </div>
            </div>
         </li>
         <li class="service">
            <a href="index.php?app=article&amp;code=help">帮助中心</a>
         </li>
     </ul>
   </div>
  <div class="fixed">
      <a id="gotop" href="javascript:window.scroll(0,0)" class="gotop"></a>
      <a href="javascript:;" class="feedbacklink"></a>
      <a href="javascript:;" class="zhaoping"></a>
   </div>
</div>
<div id="header">
	<div class="w clearfix">
    	<div class="logo" title="52ECmall仿酒仙运营版演示站"><a href="index.php"><img src="/myshop/Public/images/home/site_logo.gif" alt="52ECmall仿酒仙运营版演示站" /></a></div>
        <div class="search">
            <div class="tsearch tsearch-lite">
				<div class="tsearch-tabs">
					<ul>
						<li class="tsearch-tabs-active" ectype="index"><a href="javascript:;">商品</a><s class="rc-tp-l"></s><s class="rc-tp-r"></s></li>
					</ul>
				</div>
				<div class="tsearch-panel clearfix">
					<form  name="search" target="_top">
                    	<input type="hidden" name="app" value="search" />
                        <input type="hidden" name="act" value="index" />
						<div class="tsearch-panel-fields">
							<label for="keyword">请输入关键词</label>
							<input name="keyword" id="keyword" class="keyword"/>
							<s class="rc-tp-l"></s>
							<s class="rc-bt-l"></s>
							<s class="tsearch-panel-fields-shadow"></s>
						</div>
						<button type="submit" hidefocus="true">搜索</button>
					</form>
					<s class="rc-tp-l"></s>
					<s class="rc-tp-r"></s>
					<s class="rc-bt-l"></s>
					<s class="rc-bt-r"></s>
				</div>
			</div>
        </div>
    </div>
    <div class="w shopnav">
    	<ul class="clearfix">
        	<li class="first current"><a href="index.php?app=buyer_admin"><strong>我是买家</strong></a></li>           
        </ul>
    </div>
</div>
  <div class="content">
    <div class="particular">
      <div class="particular_wrap">
        <h2>订单详情</h2>
        <div class="box">
          <div class="state">
            订单状态&nbsp;:&nbsp;
            <strong>
               <?php switch($orderarr[0]['status']): case "0": ?>交易关闭<?php break;?>
						<?php case "11": ?>等待买家付款<?php break;?>
						<?php case "20": ?>买家已付款 待发货<?php break;?>
						<?php case "30": ?>已发货<?php break;?>
						<?php case "40": ?>交易已完成<?php break; endswitch;?>
            </strong>
          </div>
          <div class="num">订单号&nbsp;:&nbsp;<?php echo ($orderarr[0]['order_sn']); ?></div>
          <div class="time">下单时间&nbsp;:&nbsp;<?php echo (date('Y-m-d H:i:s',$orderarr[0]['add_time'])); ?></div>

        </div>
        <h3>订单信息</h3>
      <!--   <dl class="info">
          <dt>卖家信息</dt>
          <dd>店铺名&nbsp;:&nbsp;超级店铺</dd>
          <dd>电话号码&nbsp;:&nbsp;88888888</dd>
          <dd>QQ&nbsp;:&nbsp;361818525</dd>
          <dd>旺旺&nbsp;:&nbsp;fyhyifei</dd>
          <dd>
            所在地区&nbsp;:&nbsp;中国 北京  北京  东城区
          </dd>
          <dd>手机号码&nbsp;:&nbsp;-</dd>
          <dd>MSN&nbsp;:&nbsp;-</dd>
          <dd>详细地址&nbsp;:&nbsp;-</dd>
        </dl> -->
        <div class="ware_line">
          <div class="ware">
            <div class="ware_list">
              <div class="ware_pic">
                <img src="/myshop/Public/<?php echo ($ordergoodsarr[0]['goods_image']); ?>" width="50" height="50"  />
              </div>
              <div class="ware_text">
                <div class="ware_text1">
                  <a href="index.php?app=goods&amp;id=22"><?php echo ($ordergoodsarr[0]['goods_name']); ?></a>
                  <br />
                  <span></span>
                </div>
                <div class="ware_text2">
                  <span>
                    数量&nbsp;:&nbsp;
                    <strong><?php echo ($ordergoodsarr[0]['quantity']); ?></strong>
                  </span>
                  <span>
                    价格&nbsp;:&nbsp;
                    <strong><?php echo ($orderarr[0]['goods_amount']); ?></strong>
                  </span>
                </div>
              </div>
            </div>
            <div class="transportation">
              运费&nbsp;:&nbsp;
              <span>
                <?php echo ($orderarr[0]['shipping_fee']); ?>
                <?php if(($orderarr[0]['shipping_fee']) == "0"): ?><strong><?php echo ($orderarr[0]['shipping_name']); ?></strong><?php endif; ?>
              </span>
              优惠打折&nbsp;:&nbsp;
              <span><?php echo ($orderarr[0]['discount']); ?></span>
              总价&nbsp;:&nbsp;
              <b><?php echo ($orderarr[0]['order_amount']); ?></b>
            </div>
            <ul class="order_detail_list">
              <li>
                支付方式&nbsp;:&nbsp;<?php echo ($orderarr[0]['payment_name']); ?>&nbsp;&nbsp;
                <?php if(($orderarr[0]['status']) == "11"): ?>(&nbsp;
                <a href="index.php?app=cashier&amp;order_id=258">付款</a>
                &nbsp;)<?php endif; ?>
              </li>
              <li>下单时间&nbsp;:&nbsp;<?php echo (date('Y-d-m H:i:s',$orderarr[0]['add_time'])); ?></li>
            </ul>
          </div>
        </div>

        <h3>物流信息</h3>
        <div class="goods">
          收货地址&nbsp;:&nbsp;<?php echo ($orderarr[0]['address']); ?>
          <br />
          配送方式&nbsp;:&nbsp;<?php echo ($orderarr[0]['shipping_name']); ?>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href='<?php echo U("Home/MemOrder/Mem_order_list");?>'>返回</a>
        </div>

        <div class="particular_bottom"></div>
      </div>

      <div class="clear"></div>
      <div class="adorn_right1"></div>
      <div class="adorn_right2"></div>
      <div class="adorn_right3"></div>
      <div class="adorn_right4"></div>
    </div>
    <div class="clear"></div>
  </div>
  <div id="footer" class="w-full">
	<div class="foot-service w clearfix">
      <dl>
         <dt class="fts-1"></dt>
         <dd><a href="">官方认证商家</a></dd>
         <dd><a href="">100%全场正品</a></dd>
      </dl>
      <dl>
         <dt class="fts-2"></dt>
         <dd><a href="">新手指南</a></dd>
         <dd><a href="">官方微博</a></dd>
      </dl>
      <dl>
         <dt class="fts-3"></dt>
         <dd><a href="">客服专线：15540644888</a></dd>
         <dd><a href="">商家入驻：15540644888</a></dd>
      </dl>
      <dl>
         <dt class="fts-4"></dt>
         <dd><a href="">优质商家入驻商城</a></dd>
         <dd><a href="">原产地直供</a></dd>
      </dl>
   </div>
	<div class="foot-group">
	 <a href="">招才纳新</a> |
	 <a href="">营销服务</a> |
     <a href="">客户服务</a>
   </div>
	<div class="foot-copyright">Copyright &copy; 2011-2013 <a href="">smartbuy.com</a> 版权所有  </div>
	<div class="foot-parter mb20">
		<a href="javascript:;"><img src="/myshop/Public/images/home/bt_logo_1.png" /></a>
		<a href="javascript:;"><img src="/myshop/Public/images/home/bt_logo_2.png" /></a>
		<a href="javascript:;"><img src="/myshop/Public/images/home/bt_logo_3.png" /></a>
	</div>
   
	<div class="footer-fixed">
		<a id="gotop" class="toTop" href="javascript:void(0);"></a>
    </div>
</div>
</body>
</html>