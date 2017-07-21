<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>用户中心 - 我的收藏</title>
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
          <a href="javascript:;">收藏商品</a>
        </h2>
      </li>
    </ul>
  </div>
  <div class="wrap">
    <div class="public table">
      <table>
      <?php if(is_array($collarr)): $i = 0; $__LIST__ = $collarr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr class="line">
          <td class="align2" style="width:25px">
            <input type="checkbox" class="checkitem" value="<?php echo ($v['item_id']); ?>"/>
          </td>
          <td>
            <p class="ware_pic">
              <a href="index.php?app=goods&amp;id=<?php echo ($v['goods_id']); ?>" target="_blank">
                <img src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" width="50" height="50"  />
              </a>
            </p>
          </td>
          <td>
            <p class="ware_text">
              <a href="index.php?app=goods&amp;id=<?php echo ($v['goods_id']); ?>" target="_blank"><?php echo ($v['goods_name']); ?></a>
            </p>
          </td>
          <td class="width3">超级店铺</td>
          <td class="width2">
            <a target="_blank" href="index.php?app=message&amp;act=send&amp;to_id=2" class="email" title="发站内信"></a>
          </td>
          <td class="width2">¥<?php echo ($v['price']); ?></td>
          <td class="width2">
            <a href="javascript:del(<?php echo ($v['item_id']); ?>,<?php echo ($pno); ?>);" class="delete">删除</a>
          </td>
        </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        <tr class="operations">
          <th colspan="7">
            <p class="position1 clearfix">
              <input type="checkbox" id="all2" class="checkall"/>
              <label for="all2">全选</label>
              <a href="javascript:delall(<?php echo ($pno); ?>);" class="delete" ectype="batchbutton">删除</a>
            </p>
            <p class="position2 clearfix">
              <div class="pagestr">
                <?php echo ($pinfos); ?>
              </div>
            </p>
          </th>
        </tr>
      </table>
    </div>

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
function del(id,curp)
{
	if(confirm('你确定要删除吗'))
	{
		$.get("/myshop/index.php/Home/MemFavorite/del",{'id':id},function(t)
		{
			alert(t.msg);
			location.href="/myshop/index.php/Home/MemFavorite/mem_favorite/p/"+curp;
		},"json");
	}		
}
//多删
function delall(curp)
{
	if(confirm('你确定要删除吗'))
	{
		var idstr="";
		$(".checkitem").each(function(i,o)
		{
			idstr = idstr+o.value+',';
		})
		alert(idstr);
	}
}
</script>
</html>