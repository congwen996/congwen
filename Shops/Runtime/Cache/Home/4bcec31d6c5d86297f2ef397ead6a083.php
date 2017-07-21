<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>用户中心 - 我的订单</title>
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
  <script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/dialog/dialog.js" id="dialog_js"></script>
  <script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/jquery.ui/jquery.ui.js" ></script>
  <script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/jquery.plugins/jquery.validate.js" ></script>
  <script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/mlselection.js" ></script>
  <link rel="stylesheet" type="text/css" href="/myshop/Public/css/home/ui-lightness/jquery.ui.css"  />
  <style type="text/css">
a{text-decoration:none;}
.pagestr a,.pagestr span {
    display:inline-block;
    padding:2px 5px;
    margin:0 1px;
    border:1px solid #f0f0f0;
    -webkit-border-radius:3px;
    -moz-border-radius:3px;
    border-radius:3px;
}
.pagestr a,.pagestr li {
    display:inline-block;
    list-style: none;
    text-decoration:none; color:#58A0D3;
}
.pagestr a.first,.pagestr a.prev,.pagestr a.next,.pagestr a.end{
    margin:0;
}
.pagestr a:hover{
    border-color:#50A8E6;
}
.pagestr span.current{
    background:#50A8E6;
    color:#FFF;
    font-weight:700;
    border-color:#50A8E6;
}
	</style>
	<style type="text/css">
#footer_links dl {width: 170px !important;margin-left:15px;_margin-left:0px;}
#footer_links {width: 1000px !important;_width:930px  !important;padding: 20px 0px 15px 0px !important;}
#footer #footer_links2 {width: 1000px !important;padding: 20px 0px 15px 0px;}
#footer #footer_links2  dl{width:95px !important;}
#footer #footer_links2  dl.last{width:130px !important;}
</style>
</head>




<body>

  <div id="site-nav" class="w-full">
    <div class="shoptop w clearfix">
      <div class="login_info">
        您好,
        <a href="index.php?app=member">
          <span><?php echo ($usr); ?></span>
        </a>
        <a href="<?php echo U('Home/Login/login/action/logout');?>">退出</a>
      </div>
      <ul class="quick-menu">
        <li class="home">
          <a href="<?php echo U('Home/Index/index');?>">回到首页</a>
        </li>
        <li class="item">
          <div class="menu mytb">
            <a class="menu-hd" href="<?php echo U('Home/MemAccount/mem_account');?>">
              我是买家 <b></b>
            </a>
            <div class="menu-bd">
              <div class="menu-bd-panel">
                <div>
                  <p>
                    <a href="<?php echo U('Home/MemOrder/mem_order');?>">已买到的宝贝</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="menu favorite">
            <a class="menu-hd" href="<?php echo U('Home/MemFavorite/mem_favorite');?>">
              收藏夹 <b></b>
            </a>
            <div class="menu-bd">
              <div class="menu-bd-panel">
                <div>
                  <p>
                    <a href="<?php echo U('Home/MemFavorite/mem_favorite');?>">收藏的宝贝</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="menu mini-cart">
            <a class="ac" href="<?php echo U('Home/Cart/cart_1');?>">
              <s></s>
              购物车 <strong><?php if($cartCount == ''): ?>0<?php else: echo ($cartCount); endif; ?></strong>
              件
              <b></b>
            </a>
            <div class="mini-cart-content menu-bd">
              <dl class="mini-cart-bd">
                <dt class="mt10 fleft mini-cart-empty">您购物车里还没有任何宝贝</dt>
                <dd class="mini-cart-bt">
                  <a href="<?php echo U('Home/Cart/cart_1');?>">查看我的购物车</a>
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
      <div class="logo" title="仿酒仙运营版演示站">
        <a href="index.php">
          <img src="/myshop/Public/images/home/site_logo.gif" alt="仿酒仙运营版演示站" />
        </a>
      </div>
      <div class="search">
        <div class="tsearch tsearch-lite">
          <div class="tsearch-tabs">
            <ul>
              <li class="tsearch-tabs-active" ectype="index">
                <a href="javascript:;">商品</a>
                <s class="rc-tp-l"></s>
                <s class="rc-tp-r"></s>
              </li>
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
        <li class="first current">
          <a href="index.php?app=buyer_admin"> <strong>我是买家</strong>
          </a>
        </li>
      </ul>
    </div>
  </div>
   
 <div class="content">
    <div class="totline"></div>
    <div class="botline"></div>
    
    <div id="left">
      <h2>
        <strong title="用户中心"></strong>
        <div class="adorn1"></div>
        <div class="adorn2"></div>
      </h2>
      <dl>
        <dt>我的账户</dt>
        <dd>
          <a href="<?php echo U('Home/MemAccount/mem_account');?>" class="normal">
            <span class="ico1">账户概览</span>
          </a>
        </dd>
        <dd>
          <a href="<?php echo U('Home/MemUserinfo/mem_userinfo');?>" class="normal">
            <span class="ico2">个人资料</span>
          </a>
        </dd>
      </dl>
      <dl>
        <dt>我是买家</dt>
        <dd>
          <a href="<?php echo U('Home/MemOrder/mem_order');?>" class="normal">
            <span class="ico5">我的订单</span>
          </a>
        </dd>
        <!-- 
                    <dd>
        <a href="member_groupbuy.html" class="normal">
          <span class="ico21">我的团购</span>
        </a>
      </dd>
      <dd>
        <a href="member_question.html" class="normal">
          <span class="ico17">我的咨询</span>
        </a>
      </dd>
      -->
      <dd>
        <a href="<?php echo U('Home/MemFavorite/mem_favorite');?>" class="normal">
          <span class="ico6">我的收藏</span>
        </a>
      </dd>
      <dd>
        <a href="<?php echo U('Home/MemAddress/mem_address');?>" class="normal">
          <span class="ico7">我的地址</span>
        </a>
      </dd>
    </dl>
    <div class="clear"></div>
    <div class="adorn_bottom"></div>
  </div>
    
  <div id="right">
    <div class="submenu">
      <ul class="tab">
        <li class="active first">
          <h2>
            <a href="javascript:;">订单列表</a>
          </h2>
        </li>
      </ul>
    </div>
    <div class="wrap">
      <div class="public">
        <div class="user_search">
          <form method="get" action="<?php echo U('Home/MemOrder/mem_order');?>">
            <span>下单时间:</span>
            <input type="text" class="text1 width2" name="add_time_from" id="add_time_from" value=""/>
            &#8211;
            <input type="text" class="text1 width2" name="add_time_to" id="add_time_to" value=""/>
            <span>订单号:</span>
            <input type="text" class="text1 width_normal" name="order_sn" value="" />
            <span>订单状态</span>
            <select name="status">
              <option value="">所有订单</option>
              <option value="0">交易关闭</option>
              <option value="11">等待买家付款</option>
              <option value="20">买家已付款</option>
              <option value="30">已发货</option>
              <option value="40">交易已完成</option>
            </select>
            <input type="hidden" name="app" value="buyer_order" />
            <input type="hidden" name="act" value="index" />
            <input type="submit" class="btn" value="搜索" />
          </form>
        </div>
        <?php if(is_array($orderarr)): $i = 0; $__LIST__ = $orderarr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="order_form">
          <h2>
            <p class="num">订单号: <?php echo ($v['order_sn']); ?></p>
            <p class="state">
              订单状态:
              <strong>
              <?php switch($v['status']): case "0": ?>交易关闭<?php break;?>
              	<?php case "11": ?>等待买家付款<?php break;?>
              	<?php case "20": ?>买家已付款，待发货<?php break;?>
              	<?php case "30": ?>已发货<?php break;?>
              	<?php case "40": ?>交易已完成<?php break; endswitch;?>
              </strong>
            </p>
          </h2>
          <!-- 遍历每个订单中的商品 -->
		  <?php if(is_array($oarr[$v['order_id']])): $i = 0; $__LIST__ = $oarr[$v['order_id']];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$x): $mod = ($i % 2 );++$i;?><div class="con">
            <p class="ware_pic">
              <a href="index.php?app=goods&amp;id=<?php echo ($x['goods_id']); ?>" target="_blank">
                <img src="/myshop/Public/images/home/<?php echo ($x['goods_image']); ?>" width="50" height="50"  />
              </a>
            </p>
            <p class="ware_text">
              <a href="index.php?app=goods&amp;id=<?php echo ($x['goods_id']); ?>" target="_blank"><?php echo ($x['goods_name']); ?></a>
              <br />
              <span class="attr"></span>
            </p>
            <p class="price">
              价格:
              <span>¥<?php echo ($x['price']); ?></span>
            </p>
            <p class="amount">
              数量:
              <span><?php echo ($x['quantity']); ?></span>
            </p>
          </div><?php endforeach; endif; else: echo "" ;endif; ?>
          <div class="foot">
            <p class="time">下单时间: <?php echo (date("Y-i-s H:i:s",$v['add_time'])); ?></p>
            <div class="handle">
              <div style="float:left;">
                订单总价:
                <b id="order258_order_amount">¥<?php echo ($v['goods_amount']); ?></b>
              </div>

              <a target="_blank" class="btn1" href="index.php?app=order_express&amp;order_id=258"  style="display:none">查看物流</a>

              <?php if(($v['status']) == "40"): ?><a class="btn1" href="index.php?app=buyer_order&amp;act=evaluate&amp;order_id=258" target="_blank" id="order258_evaluate" style="display:block">我要评价</a><?php endif; ?>
              <?php if(($v['status']) == "11"): ?><a href="index.php?app=cashier&amp;order_id=258" target="_blank" id="order258_action_pay" class="btn" style="display:block">付款</a><?php endif; ?>
              <?php if(($v['status']) == "30"): ?><input type="button" value="确认收货" class="btn1" ectype="dialog" dialog_id="buyer_order_confirm_order" dialog_width="400" dialog_title="确认收货" uri="index.php?app=buyer_order&amp;act=confirm_order&order_id=258&ajax"  id="order258_action_confirm" style="display:block" /><?php endif; ?>
              <?php if(($v['status']) == "11"): ?><input type="button" value="取消订单" class="btn1"  id="order258_action_cancel" style="display:block" onclick="cancelorder(<?php echo ($v['order_id']); ?>,<?php echo ($pno); ?>);" /><?php endif; ?>
              <a href='<?php echo U("Home/MemOrder/mem_order_show/p/{$pno}/id/{$v['order_id']}");?>' class="btn1">查看订单</a>                
            </div>
          </div>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
       
              <div class="pagestr"><?php echo ($pinfos); ?></div>
           
        <div class="clear"></div>
      </div>
      <div class="wrap_bottom"></div>
    </div>
  
  
  
  
  <div class="clear"></div>
  <div class="adorn_right1"></div>
  <div class="adorn_right2"></div>
  <div class="adorn_right3"></div>
  <div class="adorn_right4"></div>
</div>
<div class="clear"></div>
</div>
<iframe id='iframe_post' name="iframe_post" frameborder="0" width="0" height="0"></iframe>

<div id="footer" class="w-full">
<div class="foot-service w clearfix">
  <dl>
    <dt class="fts-1"></dt>
    <dd>
      <a href="">官方认证商家</a>
    </dd>
    <dd>
      <a href="">100%全场正品</a>
    </dd>
  </dl>
  <dl>
    <dt class="fts-2"></dt>
    <dd>
      <a href="">新手指南</a>
    </dd>
    <dd>
      <a href="">官方微博</a>
    </dd>
  </dl>
  <dl>
    <dt class="fts-3"></dt>
    <dd>
      <a href="">客服专线：15540644888</a>
    </dd>
    <dd>
      <a href="">商家入驻：15540644888</a>
    </dd>
  </dl>
  <dl>
    <dt class="fts-4"></dt>
    <dd>
      <a href="">优质商家入驻商城</a>
    </dd>
    <dd>
      <a href="">原产地直供</a>
    </dd>
  </dl>
</div>
<div class="foot-group">
  <a href="">招才纳新</a>
  |
  <a href="">营销服务</a>
  |
  <a href="">客户服务</a>
</div>
<div class="foot-copyright">
  Copyright &copy; 2011-2013
  <a href="">smartbuy.com</a>
  版权所有
</div>
<div class="foot-parter mb20">
  <a href="javascript:;">
    <img src="/myshop/Public/images/home/bt_logo_1.png" />
  </a>
  <a href="javascript:;">
    <img src="/myshop/Public/images/home/bt_logo_2.png" />
  </a>
  <a href="javascript:;">
    <img src="/myshop/Public/images/home/bt_logo_3.png" />
  </a>
</div>

<div class="footer-fixed">
  <a id="gotop" class="toTop" href="javascript:void(0);"></a>
</div>
</div>

</body>
<script>
function cancelorder(id,curp){
	if(confirm('你确定要删除吗'))
	{
		$.post("<?php echo U('Home/MemOrder/mem_order_cancel');?>",{'id':id},function(d)
		{
			alert(d);
			location.href="<?php echo U('Home/MemOrder/mem_order/p/"+curp+"');?>";
		});
	}
}
</script>
</html>