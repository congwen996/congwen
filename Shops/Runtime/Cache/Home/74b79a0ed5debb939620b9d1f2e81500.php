<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>水果 - 果蔬生鲜 - 搜索商品 - 仿酒仙运营版演示站</title>
  <meta name="description" content="水果 仿酒仙运营版演示站" />
  <meta name="keywords" content="水果,果蔬生鲜,仿酒仙运营版演示站" />

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
					location.href="/myshop/index.php/Home/List/listye?goodsid="+goodsid;
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
					location.href="/myshop/index.php/Home/List/listye?cateid="+cateid+"&goodsid="+goodsid;
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
          <a href="#n"></a>
        </div>

      </div>

    </div>
  </div>
  <div class="shop-t w clearfix pb10 mb5 mt5">
    <div class="logo mt10">
      <a href="#n">
        <img alt="仿酒仙运营版演示站" src="/myshop/Public/images/home/site_logo.gif" />
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
  </div>
  <div class="top-search-ads float-right clearfix">
    <a href="#n">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads1.jpg" />
    </a>
    <a href="#n">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads2.jpg" />
    </a>
    <a href="#n">
      <img  width="114"  class="lazyload" initial-url="/myshop/Public/images/home/top_ads3.jpg" />
    </a>
  </div>
</div>
<div class="w-full mall-nav">
  <ul class="w clearfix">
    <li class="allcategory float-left">
      <a  class="allsort clearfix " target="_blank" href="#n"> <i></i>
        <span>所有分类</span>
      </a>
      <div class="allcategory-list hidden">

        <div class="content clearfix">
        <!-- 分类列表左侧 -->
        <?php if(is_array($arr)): foreach($arr as $k=>$v): ?><div <?php if(($k%2) == "1"): ?>style="background: #f1f1f1;"<?php endif; ?> class="item ">
            <div class="pborder">
              <h3 clas="clearfix">
                <a href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></a>
                <span>></span>
              </h3>
              <p>
				<?php if(is_array($v['son'])): foreach($v['son'] as $key=>$vv): ?><a href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($vv['id']); ?>"><?php echo ($vv['name']); ?></a><?php endforeach; endif; ?>
              </p>
            </div>
            <div class="pop" >
              <div class="catlist">
              <!-- 分类列表页右侧 -->
				<?php if(is_array($v['son'])): foreach($v['son'] as $key=>$vv): ?><dl>
                  <dt >
                    <a href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($vv['id']); ?>">
                      <strong><?php echo ($vv['name']); ?></strong>
                    </a>
                  </dt>
                  <dd >
					<?php if(is_array($vv['son'])): foreach($vv['son'] as $key=>$vvv): ?><a href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($vvv['id']); ?>"><?php echo ($vvv['name']); ?></a><?php endforeach; endif; ?>
                  </dd>
                </dl><?php endforeach; endif; ?>
              </div>
            </div>
          </div><?php endforeach; endif; ?>
        </div>

      </div>
    </li>
    <li class="each float-left inline-block">
      <a class="" href="/myshop/index.php/Home/Index/index">首页</a>
    </li>

  </ul>
</div>
</div>


<div id="main" class="w-full">
<div id="page-search-goods" class="w mb20 mt20">
  <div class="w mb10 clearfix">
    <div class="col-main">
      <div class="location mb10 clearfix">
        <a hidefocus="true" href="/myshop/index.php/Home/Index/index">首页</a>
        <span></span>
        <a hidefocus="true" href="javascript:dropParam('cate_id')">所有分类</a>
        <span></span>
        <a hidefocus="true" href="javascript:replaceParam('cate_id', '1')">果蔬生鲜</a>
        <span></span>
        水果
      </div>

      <div class="attribute">
        <div class="selected-attr title">
          <strong>按条件筛选</strong>
        </div>
        <div class="content">
        <!-- 展示某个类别所分配的属性名及其对应的值(start) -->
            <?php if(is_array($newarr)): $i = 0; $__LIST__ = $newarr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="each clearfix " >
	            <h4><?php echo ($prparr[$key]); ?>:</h4>
	            <?php $propid = $key; ?>
	            <div class="pv" ectype="dl_props">
	              <?php if(is_array($v)): $i = 0; $__LIST__ = $v;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$x): $mod = ($i % 2 );++$i;?><a href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($cateid); ?>/pvs/<?php echo ($propid); ?>:<?php echo ($key); ?>"><?php echo ($x); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
	            </div>
	          </div><?php endforeach; endif; else: echo "" ;endif; ?>       
        <!-- 展示某个类别所分配的属性名及其对应的值(end) -->
          <div class="attr-cate">
            <ul class="attr-list clearfix" ectype="ul_cate">
                <!-- 显示某个类别下的所有子类及商品数量(start) -->
                
                <!-- 显示某个类别下的所有子类及商品数量(end) -->
            </ul>
          </div>
        </div>
      </div>

      <div class="glist w985 mt10">
        <div class="clearfix">
          <div class="list-sort">
            <div class="search-type clearfix">
              <div class="float-left btn-type">
                <a href="#n">搜索商品</a>
              </div>
            </div>
            <form>
              <div class="float-left btn-order">
                <!--<span>排序：</span>
              -->
              <a class="btn-order-click default-sort" id="" href="javascript:;">排序</a>
              <a class="btn-order-click order-down-gray" ectype="sales" id="sales" href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($cateid); ?>/order/sales/sflg/<?php echo ($sflg); ?>">
                销量
                <i></i>
              </a>
              <a class="btn-order-click order-down-gray" ectype="price" id="price" href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($cateid); ?>/order/price/pflg/<?php echo ($pflg); ?>">
                价格
                <i></i>
              </a>
              <a class="btn-order-click order-down-gray" ectype="add_time" id="add_time" href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($cateid); ?>/order/add_time/aflg/<?php echo ($aflg); ?>">
                时间
                <i></i>
              </a>
              <a class="btn-order-click order-down-gray" ectype="comments" id="comments" href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($cateid); ?>/order/comments/coflg/<?php echo ($coflg); ?>">
                评论
                <i></i>
              </a>
              
              <a class="btn-order-click order-down-gray" ectype="views" id="views" href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($cateid); ?>/order/carts/caflg/<?php echo ($caflg); ?>">
                人气
                <i></i>
              </a>
            </div>
          </form>
        </div>
<script>

</script>        
        <div class="squares goods-has clearfix w985" ectype="current_display_mode">
          <!-- 商品列表 -->
          <?php if(is_array($goodsArr)): foreach($goodsArr as $key=>$v): ?><dl class="item clearfix dl-99">
            <dt>
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                <img class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
              </a>
            </dt>
            <dd class="sub-images sub-images-99">
              <img class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" goods_id="99" image_url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" width="30" height="30" style="border:1px #BB000D solid"/>
            </dd>
            <dd class="price clearfix"> <em>¥<?php echo ($v['price']); ?></em>
            </dd>
            <dd class="desc">
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v['goods_name']); ?></a>
            </dd>
            <dd class="status">
              <span class="sales">
                总销量:
                <b><?php echo ($v['sales']); ?></b>
              </span>
              <span class="valuation">
                |累计评价:
                <b><?php echo ($v['comments']); ?></b>
                条
              </span>
            </dd>
            <dd class="delivery twofloat clearfix hidden"> <em></em>
              <span></span>
            </dd>
          </dl><?php endforeach; endif; ?>
          </div>
        <div class="page">
          <span class="former_no"></span>
          <a class="page_hover" href="index.php?app=search&amp;cate_id=14&amp;order=sales%20desc&amp;page=1">1</a>
          <span class="down_no">下一页</span>
        </div>
      </div>
    </div>
  </div>
  <div class="col-sub">
    <div class="sub-list mb10">
      <div class="title">
        <h3>搜索推荐</h3>
      </div>
      <ul class="content clearfix">
      	<?php if(is_array($goodsViews)): foreach($goodsViews as $key=>$v): ?><li class="item clearfix" >
          <dl>
            <dt class="pic">
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                <img width="70" height="70" class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>"></a>
            </dt>
            <dd>
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v["goods_name"]); ?></a>
              <span>¥<?php echo ($v['price']); ?></span>
            </dd>
          </dl>
        </li><?php endforeach; endif; ?>
        
      </ul>
    </div>
    <div class="sub-list">
      <div class="title">
        <h3>店长推荐</h3>
      </div>
      <ul class="content  clearfix">
      <?php if(is_array($goodsSales)): foreach($goodsSales as $key=>$v): ?><li class="item" >
          <dl>
            <dt class="pic">
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                <img width="70" height="70" class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>"></a>
            </dt>
            <dd>
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v['goods_name']); ?></a>
              <span>¥<?php echo ($v['price']); ?></span>
            </dd>
          </dl>
        </li><?php endforeach; endif; ?>
        
      </ul>
    </div>
  </div>
</div>
<div class="recommend">
  <div class="title">
    <span></span>
    推荐商品
  </div>
  <div class="content clearfix">
  <?php if(is_array($goodsCarts)): foreach($goodsCarts as $key=>$v): ?><dl class="mb10">
      <dt>
        <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
          <img width="170" height="170"  class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
        </a>
      </dt>
      <dd class="desc">
        <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v['goods_name']); ?></a>
      </dd>
      <dd class="price twofloat clearfix">
        <em>¥<?php echo ($v['price']); ?></em>
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