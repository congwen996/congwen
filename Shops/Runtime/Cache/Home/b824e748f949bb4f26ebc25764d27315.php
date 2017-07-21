<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>确认购物清单 - 仿酒仙运营版演示站</title>
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
					location.href="/myshop/index.php/Home/Cart/cart_1?goodsid="+goodsid;
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
					location.href="/myshop/index.php/Home/Cart/cart_1?cateid="+cateid+"&goodsid="+goodsid;
				},"html");
	}
}
</script>
<!--顶部结束  -->
<div id="header" class="w-full">
  <div class="shop-t w clearfix pb10 mb5 mt5">
    <div class="logo mt10">
      <a href="#n" title="52ECmall仿酒仙运营版演示站">
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
      <a href="#n" style="color:#BB000D;border-left:0">ecmall</a>
      <a href="#n" >微信商城</a>
    </div>
  </div>
  <div class="top-search-ads float-right clearfix">
    <a href="#n" target="_blank">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads1.jpg" />
    </a>
    <a href="#n" target="_blank">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads2.jpg" />
    </a>
    <a href="#n" target="_blank">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads3.jpg" />
    </a>
  </div>
</div>
<div class="w-full mall-nav">
  <ul class="w clearfix">
    <li class="allcategory float-left">
      <a href="#n" target="_blank"> <i></i>
        <span>所有分类</span>
      </a>
      <div class="allcategory-list hidden">
        <div class="content clearfix">
          <div style="background: #f1f1f1;" class="item">
            <div class="pborder">
              <h3 clas="clearfix">
                <a href="#n" target="_blank"></a>
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
      <a class="" href="http://123.57.4.250:1003">首页</a>
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
<script type="text/javascript">
$(function(){
  $(".btn-batch input[name='sellectAll']").click(function(){
    $(".goods-each .select input[name='goods_id']").attr("checked",$(this).attr("checked"));
  });
  $(".btn-batch a").click(function(){
    var name = this.name;
    var checked = 0;
    $(".goods-each .select input").each(function(){
      if($(this).attr("checked")==true){
        srg = $(this).val().split(":");
        if(name=="batch_del"){
          drop_cart_item(srg[0], srg[1]);
        } else {
          batch_move_favorite(srg[0], srg[1], srg[2],checked==0);
        }
        checked++;
      }
    });
    if(!checked) {
      alert('你未选择任何项');
    }
  });
});

</script>
<div id="main" class="w-full">
<div id="page-cart" class="w cart-index mb20">
  <div class="step step1 mt10 clearfix">
    <span class="fs14 strong fff">1.查看购物车</span>
    <span class="fs14 strong">2.确认订单信息</span>
    <span class="fs14 strong">3.付款</span>
    <span class="fs14 strong">4.确认收货</span>
    <span class="fs14 strong">5.评价</span>
  </div>
<!-- 购物车 -->
<form action="/myshop/index.php/Home/Cart/cart_2" method="post" onsubmit="addName();">
<input type="hidden" name="act" value="cart"></input>
  <div class="cartbox w mt20 mb10">
    <div class="amount"></div>
    <div class="title clearfix mb10">
      <span class="sellect-all">选择</span>
      <span class="col-desc">商品</span>
      <span>价格</span>
      <span>数量</span>
      <span>小计</span>
      <span>操作</span>
    </div>
    <div class="content">
      <div class="store-each">
         <!-- 购物车中的商品列表(开始) -->
         <?php if(is_array($newcartArr)): $i = 0; $__LIST__ = $newcartArr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><dl class="goods-each clearfix" id="cart_item_<?php echo ($v['goods_id']); ?>">
          <dd class="select">
            <input type="checkbox" class="curid" name="s2[]" onclick="sel();" value="<?php echo ($v['goods_id']); ?>" />
          </dd>
          <dd class="pic">
            <a class="block" href="index.php?app=goods&amp;id=<?php echo ($v['goods_id']); ?>" target="_blank">
              <img src="/myshop/Public/images/home/<?php echo ($v['goods_image']); ?>" alt="<?php echo ($v['goods_name']); ?>" width="48" height="48" />
            </a>
          </dd>
          <dd class="desc">
            <p>
              <a href="#n" target="_blank"><?php echo ($v['goods_name']); ?></a>
            </p>
            <span class="f66"></span>
          </dd>

          <dd class="price">￥<?php echo ($v['price']); ?></dd>
          <dd class="quantity">
            <img src="/myshop/Public/images/home/subtract.gif" onclick="decrease_quantity(<?php echo ($v['goods_id']); ?>),sel();" alt="减少" width="11" height="11"/>
            <input class="input" id="input_item_<?php echo ($v['goods_id']); ?>" value="<?php echo ($v['quantity']); ?>" orig="1" changed="1" onkeyup="change_quantity(2, <?php echo ($v['goods_id']); ?>, 22, this);" type="text" />
            <img src="/myshop/Public/images/home/adding.gif" onclick="add_quantity(<?php echo ($v['goods_id']); ?>),sel();" alt="增加" width="11" height="11" />
          </dd>
          <dd class="subtotal fs14 strong" id="item<?php echo ($v['goods_id']); ?>_subtotal">￥<?php echo ($v['price']*$v['quantity']); ?></dd>
          <dd class="handle">
            <a class="move" href="javascript:;" onclick="move_favorite(2, <?php echo ($v['goods_id']); ?>, 22);">加入收藏夹</a>
            <br />
            <a class="del" href="javascript:;" onclick="delone(<?php echo ($v['goods_id']); ?>);">删除</a>
          </dd>
        </dl><?php endforeach; endif; else: echo "" ;endif; ?>
         
         <!-- 购物车中的商品列表(结束) -->
        <div class="cart-amount mt20 w auto mb10 clearfix">
          <div class="btn-batch mt5">
            <label class="pl10">
              <input value="2" type="checkbox" name="sellectAll" onclick="selAll(this);" />
              全选/反选
            </label>
            <a href="javascript:a();" title="批量删除">批量删除</a>
            <a href="#n" title="批量收藏">批量收藏</a>
          </div>
          <div class="btn-amount">
            <p>
              <a href="/myshop/index.php/Home/Index/index" class="inline-block back center">继续购物</a>
              <span class="ml20">商品总价：</span>
              <strong class="price fs14 strong mr20"  id="cart_amount">￥0.00</strong>
              <?php if($dl == 1): ?><input type="submit"  value="填写并确认订单" class="inline-block btn fs14 center fff strong"></input>
              <?php else: ?>
              <a href="javascript:buy(<?php echo ($dl); ?>);" class="inline-block btn fs14 center fff strong">填写并确认订单</a><?php endif; ?>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
<script>
//遍历给用户选择的商品加name
function addName(){
	$(".curid").each(function(i,o){
		if(o.checked==true){
			$("#input_item_"+o.value).attr("name","val[]");
		}
	})
	return false;
}
//总价
function sel(){
	var num=0;
	$(".curid").each(function(i,o){
		if(o.checked==true){
			num+=Number($("#item"+o.value+"_subtotal").html().substr(1));
		}
	})
	$("#cart_amount").html("￥"+num);
}
//全选
function selAll(obj){
	$(".curid").each(function(i,o){
		o.checked=obj.checked;
	})
	sel();
}

function buy(dl)
{
	$.post("/myshop/index.php/Home/Cart/buy",{"dl":dl},function(a)
			{
				if(a==1)
				{
					location.href="/myshop/index.php/Home/Cart/cart_2/act/cart";
				}
				else
				{
					alert("请先登陆");
					location.href="/myshop/index.php/Home/MemLogin/Mem_login";	
				}	
			},"html");	
}
function delone(goodsid)
{
	if(confirm("确定删除吗?"))
	{
		$.post("/myshop/index.php/Home/Cart/delone",{"goodsid":goodsid},function(a)
				{
					alert(a);
					location.href="/myshop/index.php/Home/Cart/cart_1";
				},"html");
	}
}
function favorite(goodsid)
{
	$.post("/myshop/index.php/Home/Detail/favorite",{"goodsid":goodsid},function(a)
			{
				if(a==0)
				{
					alert("请先登陆");
					location.href="/myshop/index.php/Home/Memlogin/login/goodsid/"+goodsid;	
				}
				else
				{
					alert(a);
				}
			},"html");	
}
</script>
  <div class="interest mt20">
    <div class="title border fs14 padding5 f66 strong">
      <span class="arr"></span>
      你可能感兴趣的商品
    </div>
    <div class="content border border-t-0 clearfix">
     <?php if(is_array($goodsLike)): foreach($goodsLike as $key=>$v): ?><dl class="float-left">
        <dt>
          <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>" target="_blank">
            <img width="160" height="160" src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
          </a>
        </dt>
        <dd class="desc">
          <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>" target="_blank"><?php echo ($v['goods_name']); ?></a>
        </dd>
        <dd class="price clearfix"> <em><?php echo ($v['price']); ?></em>
          <span>最新成交<?php echo ($v['sales']); ?>笔</span>
        </dd>
        <dd class="service"></dd>
      </dl><?php endforeach; endif; ?>
    </div>
  </div>
</div>
</div>
<!-- 底部开始 -->

<!-- 底部结束 -->
</body>
</html>