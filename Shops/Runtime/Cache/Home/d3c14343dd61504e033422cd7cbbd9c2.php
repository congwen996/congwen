<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>仿酒仙运营版演示站</title>
  <meta name="description" content="仿酒仙运营版演示站" />
  <meta name="keywords" content="微商城" />

  <meta name="author" content="ecmall.shopex.cn" />
  <meta name="generator" content="ECMall 2.3.0" />
  <meta name="copyright" content="ShopEx Inc. All Rights Reserved" />

  <link type="text/css" href="/myshop/Public/css/home/header.css" rel="stylesheet" />
  <link type="text/css" href="/myshop/Public/css/home/main.css" rel="stylesheet"  />
  <link type="text/css" href="/myshop/Public/css/home/footer.css" rel="stylesheet" />

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
      <?php if($UNAME == ''): ?><a href="/myshop/index.php/Home/Memlogin/login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>">登录</a>
      <a href="/myshop/index.php/Home/Register/register">注册</a><?php else: ?><a href="/myshop/index.php/Home/Memlogin/out?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>">退出</a><?php endif; ?>
    </div>
    <ul class="quick-menu">
      <li class="home">
        <a href="/myshop/index.php/Home/Index/index">回到首页</a>
      </li>
      <li class="item">
        <div class="menu mytb">
          <a class="menu-hd" <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/Memlogin/login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/Memaccount/member_account"<?php endif; ?>>
            我是买家 <b></b>
          </a>
          <div class="menu-bd">
            <div class="menu-bd-panel">
              <div>
                <p>
                  <a <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/Memlogin/login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/Memorder/member_order"<?php endif; ?>>已买到的宝贝</a>
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
          <a class="menu-hd" <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/Memlogin/login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/Memfavorite/member_favorite"<?php endif; ?>>
            收藏夹
            <b></b>
          </a>
          <div class="menu-bd">
            <div class="menu-bd-panel">
              <div>
                <p>
                  <a <?php if($UNAME == ''): ?>href="/myshop/index.php/Home/Memlogin/login?cateid=<?php echo ($cateid); ?>&goodsid=<?php echo ($goodsArr['goods_id']); ?>"<?php else: ?>href="/myshop/index.php/Home/Memfavorite/member_favorite"<?php endif; ?>>收藏的宝贝</a>
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
					location.href="/myshop/index.php/Home/Indexs/index?goodsid="+goodsid;
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
					location.href="/myshop/index.php/Home/Indexs/index?cateid="+cateid+"&goodsid="+goodsid;
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
      
    </li>
    <li class="each float-left inline-block">
      <a class="current" href="#n">首页</a>
    </li>
  </ul>
</div>
</div>
<div id="main" class="w-full">
<div id="page-home" class="w-full">
  <div class="col-1 relative w">
    <div class="absolute" area="col-1" widget_type="area">

      <div id="_widget_610" name="jiuxian_gcategory_list" widget_type="widget" class="widget">
        <div class="allcategory mb10">
          <div class="allcategory-list">
            <div class="content clearfix">
             <!-- 分类列表左侧 -->
              <?php if(is_array($arr)): foreach($arr as $k=>$v): ?><div <?php if(($k%2) == "1"): ?>style="background: #f1f1f1;"<?php endif; ?> <?php if(($k) > "5"): ?>class="item hover_show"<?php else: ?>class="item "<?php endif; ?>>
                <div class="pborder">
                  <h3 clas="clearfix">
                  
                    <a href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></a>
                    
                    <span></span>
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
                      
                        <a href="/myshop/index.php/Home/List/listye/cateid/<?php echo ($vv['id']); ?>"> <strong><?php echo ($vv['name']); ?></strong>
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
        <script type="text/javascript">
  $(function(){
    $('.allcategory').hover(function(){
      $('.allcategory .hover_show').slideDown();
    },function(){
      $('.allcategory .hover_show').slideUp();
    })
  })
</script>
      </div>
    </div>
  </div>
  </div>
  <div class="col-2" area="col-2" widget_type="area">

    <div id="_widget_608" name="jiuxian_slides" widget_type="widget" class="widget">
      <div class="slide s1812727196 mb10">
        <div class="scroller">
          <ul class="ks-content ks-switchable-content clearfix">
            <li>
              <a href=""  target="_blank" style="display:block;width:100%;height:420px;background:url(/myshop/Public/images/home/201401030218288397.jpg) center;"></a>
              <div class="w relative">
                <div class="small-img-ads">
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120725311715.jpg" /> <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120725313390.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120725319944.jpg" />
                    <div class="masker"></div>
                  </a>
                </div>
              </div>
            </li>
            <li>
              <a href=""  target="_blank" style="display:block;width:100%;height:420px;background:url(/myshop/Public/images/home/201401030218287257.jpg) center;"></a>
              <div class="w relative">
                <div class="small-img-ads">
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120750108670.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120750109878.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120750101143.jpg" />
                    <div class="masker"></div>
                  </a>
                </div>
              </div>
            </li>
            <li>
              <a href=""  target="_blank" style="display:block;width:100%;height:420px;background:url(/myshop/Public/images/home/201401030218284576.jpg) center;"></a>
              <div class="w relative">
                <div class="small-img-ads">
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844285448.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844281544.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844282100.jpg" />
                    <div class="masker"></div>
                  </a>
                </div>
              </div>
            </li>
            <li>
              <a href=""  target="_blank" style="display:block;width:100%;height:420px;background:url(/myshop/Public/images/home/201401030218284295.jpg) center;"></a>
              <div class="w relative">
                <div class="small-img-ads">
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844288559.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844285741.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844297370.jpg" />
                    <div class="masker"></div>
                  </a>
                </div>
              </div>
            </li>
            <li>
              <a href=""  target="_blank" style="display:block;width:100%;height:420px;background:url(/myshop/Public/images/home/201401030218289101.jpg) center;"></a>
              <div class="w relative">
                <div class="small-img-ads">
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844291534.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844292114.jpg" />
                    <i></i>
                    <div class="masker"></div>
                  </a>
                  <a href="" target="_blank">
                    <img width="190" height="130" class="lazyload" initial-url="/myshop/Public/images/home/201311120844293725.jpg" />
                    <div class="masker"></div>
                  </a>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="w relative">
          <div class="ks-switchable-nav">
            <span class="ks-active"></span>
            <span ></span>
            <span ></span>
            <span ></span>
            <span ></span>
          </div>
        </div>
        <script>
      $(document).ready(function(){
      var width=document.body.clientWidth;
      $('.s1812727196').attr('style','height:420px;width:'+width+'px;overflow:hidden;');
      $('.s1812727196 .scroller ul li').attr('style','height:420px;width:'+width+'px');
      })
    KISSY.ready(function(S) {
          var carousel = new S.Carousel('.s1812727196', {
              effect: 'fade',
        autoplay:true
           });
      });
   $(function(){
    $('.s1812727196 .scroller ul li .small-img-ads a').hover(function(){
      $('.s1812727196 .scroller ul li .small-img-ads a .masker').addClass('transparence');
      $(this).children('.masker').removeClass('transparence');
    },function(){
      $('.s1812727196 .scroller ul li .small-img-ads a .masker').removeClass('transparence');
    });
   });
   </script>
      </div>
    </div>
  </div>
 <!-- 选项卡 --> 
  <div class="col-3 w clearfix">
    <div class="float-left" area="col-3-left" widget_type="area">

      <div id="_widget_149" name="jiuxian_tab_goods" widget_type="widget" class="widget">
        <div class="tab_goods mb10 tab453394871">
          <ul class="ks-switchable-nav clearfix">
            <li  class="ks-active first">热卖推荐</li>
            <li >新品上架</li>
            <li >最受欢迎</li>
            <li >猜你喜欢</li>
          </ul>
          <div class="ks-switchable-content">
            <div class="content clearfix ">
            <?php if(is_array($goodsHot)): foreach($goodsHot as $key=>$v): ?><div class="offbox">
                <ul class="item">
                  <li class="pic">
                    <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                      <img width="160" height="160" class="lazyload" src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
                    </a>
                  </li>
                  <li class="desc">
                    <a target="_blank" href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v["goods_name"]); ?></a>
                  </li>
                  <li class="price">
                    <span>¥<?php echo ($v["price"]); ?></span>
                  </li>
                </ul>
              </div><?php endforeach; endif; ?>
             </div>
            <div class="content clearfix  hidden">
            <?php if(is_array($goodsNew)): foreach($goodsNew as $key=>$v): ?><div class="offbox">
                <ul class="item">
                  <li class="pic">
                    <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                      <img width="160" height="160" class="lazyload" src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
                    </a>
                  </li>
                  <li class="desc">
                    <a target="_blank" href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v["goods_name"]); ?></a>
                  </li>
                  <li class="price">
                    <span>¥<?php echo ($v["price"]); ?></span>
                  </li>
                </ul>
              </div><?php endforeach; endif; ?>
          	</div>
            <div class="content clearfix  hidden">
            <?php if(is_array($goodsUp)): foreach($goodsUp as $key=>$v): ?><div class="offbox">
                <ul class="item">
                  <li class="pic">
                    <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                      <img width="160" height="160" class="lazyload" src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
                    </a>
                  </li>
                  <li class="desc">
                    <a target="_blank" href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v["goods_name"]); ?></a>
                  </li>
                  <li class="price">
                    <span>¥<?php echo ($v["price"]); ?></span>
                  </li>
                </ul>
              </div><?php endforeach; endif; ?>
            </div>
            
            <div class="content clearfix  hidden">
            <?php if(is_array($goodsLike)): foreach($goodsLike as $key=>$v): ?><div class="offbox">
                <ul class="item">
                  <li class="pic">
                    <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                      <img width="160" height="160" class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
                    </a>
                  </li>
                  <li class="desc">
                    <a target="_blank" href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v["goods_name"]); ?></a>
                  </li>
                  <li class="price">
                    <span>¥<?php echo ($v["price"]); ?></span>
                  </li>
                </ul>
              </div><?php endforeach; endif; ?>
            </div>
          </div>
        </div>

        <script>
    KISSY.ready(function(S) {
        var tabs = new S.Tabs('.tab453394871',{
      aria:false
    });
    });
</script>
      </div>
    </div>

    <div class="float-right" area="col-3-right" widget_type="area">

      <div id="_widget_560" name="jiuxian_image_ads" widget_type="widget" class="widget">
        <div class="global-image-ads" style="margin:0px 0px 10px 0px;">

          <div class="global-image-ads-content" style="width:270px;">
            <a href="#n">
              <img  width="270px"  class="lazyload" initial-url="/myshop/Public/images/home/201401020209065375.jpg" />
            </a>
          </div>

        </div>

      </div>

      <div id="_widget_781" name="jiuxian_article" widget_type="widget" class="widget">
        <div class="article mb10 tab_ariticle_277007969">
          <ul class="title clearfix ks-switchable-nav">
            <li class="ks-active first">商城公告</li>
            <li class="">会员特权</li>
            <li class="">新手上路</li>
          </ul>
          <div class="content ks-switchable-content">
            <ul class="clearfix "></ul>
            <ul class="clearfix hidden">
              <li  class="highlight" >
                <a href="#n">在线支付</a>
              </li>
              <li  >
                <a href="#n">货到付款</a>
              </li>
              <li  >
                <a href="#n">发票说明</a>
              </li>
              <li  >
                <a href="#n">付款方式</a>
              </li>
            </ul>
            <ul class="clearfix hidden">
              <li  class="highlight" >
                <a href="#n">优惠券使用</a>
              </li>
              <li  >
                <a href="#n">如何维权</a>
              </li>
              <li  >
                <a href="#n">积分说明</a>
              </li>
              <li  >
                <a href="#n">怎么购物</a>
              </li>
            </ul>
          </div>

        </div>
        <script>
    KISSY.ready(function(S) {
        var tabs = new S.Tabs('.tab_ariticle_277007969',{
             aria:false
        });
    });
</script>
      </div>

      <div id="_widget_729" name="jiuxian_tuan" widget_type="widget" class="widget">
        <div class="tuan mb10 carousel-431839423">
          <div class="title clearfix">
            <h2>今日团购</h2>
            <a href="#n">更多团购&nbsp;></a>
          </div>
          <div class="content">
            <div class=" ks-switchable-content"></div>
            <div class="ctr">
              <a class="prev" href="javascript:;"></a>
              <a class="next" href="javascript:;"></a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
<!-- 分类商品 -->  
  <div class="col-4 w" area="col-4" widget_type="area">

    <div id="_widget_280" name="jiuxian_floor" widget_type="widget" class="widget">
      <div class="floor mb10">
        <div class="title clearfix">
          <h2>葡萄酒馆</h2>
        </div>
        <div class="content">

          <ul class="goods-list w-full clearfix">
          <?php if(is_array($putaojiu)): foreach($putaojiu as $key=>$v): ?><li class="float-left">
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                <img width="160" height="160" class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
              </a>
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v['goods_name']); ?></a>
              <p>
                <strong>¥<?php echo ($v['price']); ?></strong>
              </p>
            </li><?php endforeach; endif; ?>
          </ul>
        </div>
      </div>
      <script>
 KISSY.use('switchable', function(S) {
      S.Slide('.sl686822659', {
      effect: 'scrollx',
      easing: 'easeOutWeak',
      autoplay:true
    });
});
</script>
    </div>

    <div id="_widget_655" name="jiuxian_floor" widget_type="widget" class="widget">
      <div class="floor mb10">
        <div class="title clearfix">
          <h2>美味生活</h2>
        </div>
        <div class="content">

          <ul class="goods-list w-full clearfix">
          <?php if(is_array($meiwei)): foreach($meiwei as $key=>$v): ?><li class="float-left">
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                <img width="160" height="160" class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
              </a>
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v['goods_name']); ?></a>
              <p>
                <strong>¥<?php echo ($v['price']); ?></strong>
              </p>
            </li><?php endforeach; endif; ?>
          </ul>
        </div>
      </div>
      <script>
 KISSY.use('switchable', function(S) {
      S.Slide('.sl1253797289', {
      effect: 'scrollx',
      easing: 'easeOutWeak',
      autoplay:true
    });
});
</script>
    </div>

    <div id="_widget_423" name="jiuxian_floor" widget_type="widget" class="widget">
      <div class="floor mb10">
        <div class="title clearfix">
          <h2>母婴用品</h2>
        </div>
        <div class="content">
          <ul class="goods-list w-full clearfix">
            <?php if(is_array($muying)): foreach($muying as $key=>$v): ?><li class="float-left">
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                <img width="160" height="160" class="lazyload" initial-url="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
              </a>
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v['goods_name']); ?></a>
              <p>
                <strong>¥<?php echo ($v['price']); ?></strong>
              </p>
            </li><?php endforeach; endif; ?>
          </ul>
        </div>
      </div>
      <script>
 KISSY.use('switchable', function(S) {
      S.Slide('.sl1739469219', {
      effect: 'scrollx',
      easing: 'easeOutWeak',
      autoplay:true
    });
});
</script>
    </div>

  </div>
</div>
</div>
<!-- 底部开始 -->
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
        <img src="/myshop/Public/images/home//bt_logo_1.png" />
    </a>
    <a href="javascript:;">
        <img src="/myshop/Public/images/home//bt_logo_2.png" />
    </a>
    <a href="javascript:;">
        <img src="/myshop/Public/images/home//bt_logo_3.png" />
    </a>
</div>

<div class="footer-fixed">
    <a id="gotop" class="toTop" href="javascript:void(0);"></a>
</div>
</div>
<!-- 底部结束 -->
</body>
</html>