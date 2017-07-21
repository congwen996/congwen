<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7 charset=utf-8" />
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
  <title><?php echo ($goodsArr['goods_name']); ?></title>
  <meta name="description" content="产地： ..." />
  <meta name="keywords" content="剑南春,52°剑南春500ml,休闲食品、酒水饮料  酒类商城  白酒" />
  <meta name="copyright" content="vchuang_Vmall3.0. All Rights Reserved" />
  <link type="text/css" href="/myshop/Public/css/home/header.css" rel="stylesheet" />
  <link href="/myshop/Public/css/home/shop.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="index.php?act=jslang"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/jquery.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/ecmall.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/cart.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/pickcolor.js" charset="utf-8"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/kissy/build/kissy.js"></script>
  <script type="text/javascript" src="/myshop/Public/js/home/kissy/build/switchable/switchable-pkg.js"></script>
  <!--[if lte IE 6]>
  <script type="text/javascript" language="Javascript" src="js/hoverForIE6.js"></script>
  <![endif]-->

  <script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/jquery.jqzoom.js" ></script>
  <link rel="stylesheet" type="text/css" href="/myshop/Public/css/home/jqzoom.css"  />
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
					location.href="/myshop/index.php/Home/Detail/detail?goodsid="+goodsid;
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
					location.href="/myshop/index.php/Home/Detail/detail?cateid="+cateid+"&goodsid="+goodsid;
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
      <a class="current" href="/myshop/index.php/Home/Index/index">首页</a>
    </li>
  </ul>
</div>
</div>
<div class="skin_box">
<div class="backtop">
  <span onclick="window.scrollTo(0,0);" style="border-width:1px;"></span>
</div>
</div>

<div class="w clearfix mt10">
<div class="info-left">
  <script type="text/javascript" src="/myshop/Public/js/home/goodsinfo.js" charset="utf-8"></script>
  <script type="text/javascript">
//<!CDATA[
/* add cart */
function add_to_cart(spec_id, quantity)
{
    var url = SITE_URL + '/index.php?app=cart&act=add';
    $.getJSON(url, {'spec_id':spec_id, 'quantity':quantity}, function(data){
        if (data.done)
        {
            $('.bold_num').text(data.retval.cart.kinds);
            $('.bold_mly').html(price_format(data.retval.cart.amount));
            $('.ware_cen').slideDown('slow');
            setTimeout(slideUp_fn, 5000);
        }
        else
        {
            alert(data.msg);
        }
    });
}

/*buy_now*/
function buy_now()
{
    //验证数据
  if (goodsspec.getSpec() == null)
    {
        alert(lang.select_specs);
        return;
    }
    var spec_id = goodsspec.getSpec().id;
 
    var quantity = $("#quantity").val();
    if (quantity == '')
    {
        alert(lang.input_quantity);
        return;
    }
    if (parseInt(quantity) < 1)
    {
        alert(lang.invalid_quantity);
        return;
    }
    buy_now_add_cart(spec_id, quantity);
}

/* add buy_now_add_cart */
function buy_now_add_cart(spec_id, quantity)
{
    var url = SITE_URL + '/index.php?app=cart&act=add';
    $.getJSON(url, {'spec_id':spec_id, 'quantity':quantity}, function(data){
    if (data.done)
        {
      location.href= SITE_URL + '/index.php?app=order&goods=cart&store_id=2';
        }else{
            alert(data.msg);
        }
    });
}

var specs = new Array();
specs.push(new spec(366, '', '', 339.00, 300,0,false));
var specQty = 0;
var defSpec = 366;
var goodsspec = new goodsspec(specs, specQty, defSpec);
//]]>

function decrease_quantity(){
    var item = $('#quantity');
    var orig = Number(item.val());
    if(orig > 1){
        item.val(orig - 1);
        item.keyup();
    }
}
function add_quantity(){
    var item = $('#quantity');
    var orig = Number(item.val());
    item.val(orig + 1);
    item.keyup();
}
</script>
  <style type="text/css">
.ju-desc {border-bottom:1px solid #EFEFEF; border-top:1px solid #EFEFEF; padding: 10px 0;}
.ju-desc p{font-size:14px; line-height:25px; color:#666;}
.ju-desc a{color:#0066CC; font-weight:700; text-decoration:none;}
.promo-price-type{border:1px solid #E3C8BD; color:#B68571;padding:2px 3px 2px 3px; border-radius:2px; font-style:normal}
.promo-price{color:#BB000D; font-size:24px; font-family:Arial,Helvetica,sans-serif; vertical-align:middle; font-weight:700;padding-left:5px;}
.price-del{font-size:15px}
.price-normal{font-family:Arial;color:#FF543A;font-size:16px;font-weight:bold}
sub.two{padding-left:12px; padding-right:12px;}
</style>
<!-- 商品详情 -->
  <h2 class="ware_title"><?php echo ($goodsArr['goods_name']); ?></h2>

  <div class="ware_info clearfix">
    <div class="ware_pic">
      <div class="big_pic">
        <a href="#n">
          <span class="jqzoom">
            <img src="/myshop/Public/images/home/<?php echo ($goodsArr['default_image']); ?>" width="310" height="310" jqimg="/myshop/Public/images/home/<?php echo ($goodsArr['default_image']); ?>" />
          </span>
        </a>
      </div>

      <div class="bottom_btn">
        <div class="ware_box">
          <ul>
            <li class="ware_pic_hover" bigimg="/myshop/Public/images/home/<?php echo ($goodsArr['default_image']); ?>">
              <img src="/myshop/Public/images/home/<?php echo ($goodsArr['default_image']); ?>" width="40" height="40" />
            </li>
            <li  bigimg="/myshop/Public/images/home/<?php echo ($goodsArr['default_image']); ?>">
              <img src="/myshop/Public/images/home/<?php echo ($goodsArr['default_image']); ?>" width="40" height="40" />
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="ware_text">

      <div class="rate">
        <div id="is_pro"style="display:none">
          <span>
            价 <sub class="two"></sub>
            格：
          </span>
          <span ectype="goods_price"> <del class="price-del">¥</del>
          </span>
          <br />
          <span>
            促 <sub class="two"></sub>
            销：
          </span> <em class="promo-price-type" title=""></em>
          <span class="promo-price" ectype="goods_pro_price">¥0.00</span>
        </div>

        <div id="not_pro" >
          <span>
            价
            <sub class="two"></sub>
            格：
          </span>
          <span class="price-normal" ectype="goods_price">¥<?php echo ($goodsArr['price']); ?></span>
        </div>

        <span>
          品
          <sub class="two"></sub>
          牌：
        </span>
        <?php echo ($goodsArr['brand']); ?>
        <br />
        <span>销售情况：</span>
        <span>
          售出 待转让 件（
          <span class="c3b8"> <strong>0</strong>
          </span>
          条评论）
        </span>
        <br />
        <span>所在地区：</span>
        <span>中国  北京  北京  东城区</span>
        <br/>
      </div>
      <div style="width:280px;border: 2px solid #EFC97A;" size="28px" >
        <div class="food_qianggou_bottom" style="background:#FFFEF7;color:#468C00;line-height:25px;padding-left: 10px;">
          购买可获得
          <span style="color:red">0</span>
          积分,付款时可使用
          <span style="color:red">0</span>
          积分抵押现金
        </div>
      </div>
      <div class="handle">
        <ul>
          <li class="handle_title">购买数量:&nbsp;&nbsp;</li>
          <li class="num">
            <a class="reduce" href="javascript:decrease_quantity()">-</a>
            <input type="text" class="text width1" name="quantity" id="quantity" value="1" />
            <a class="increase" href="javascript:add_quantity()">﹢</a>
            件（库存
            <span class="stock" ectype="goods_stock"><?php echo ($goodsArr['spec_qty']); ?></span>
            件）
          </li>
        </ul>
      </div>

      <ul class="ware_btn">
        <div class="ware_cen" style="display:none">
          <div class="ware_center">
            <h1>
              <span class="dialog_title">商品已成功添加到购物车</span>
              <span class="close_link" title="关闭" onmouseover="this.className = 'close_hover'" onmouseout="this.className = 'close_link'" onclick="slideUp_fn();"></span>
            </h1>
            <div class="ware_cen_btn">
              <p class="ware_text_p">
                购物车内共有
                <span class="bold_num">3</span>
                种商品 共计
                <span class="bold_mly">658.00</span>
              </p>
              <p class="ware_text_btn">
                <input type="submit" class="btn1" name="" value="查看购物车" onclick="location.href='http://123.57.4.250:1003/index.php?app=cart'" />
                <input type="submit" class="btn2" name="" value="继续挑选商品" onclick="$('.ware_cen').css({'display':'none'});" />
              </p>
            </div>
          </div>
          <div class="ware_cen_bottom"></div>
        </div>
        <li class="btn_c1" title="立刻购买">
          <a href="javascript:buy(<?php echo ($goodsArr['goods_id']); ?>);"></a><!-- /myshop/index.php/Home/Cart/cart_2 -->
        </li>
        <li class="btn_c2" title="加入购物车">
          <a href="javascript:cartadd(<?php echo ($goodsArr['goods_id']); ?>);"></a>
        </li>
        
      
    </ul>
<script>
function buy(goodsid)
{
  	$.post("<?php echo U('Detail/buy');?>",{"goodsid":goodsid},function(c)
  			{
  		        if(c=="no")
  		        	{
  		        	 alert("未登录");
  		        	 location.href="<?php echo U('Login/login');?>";
  		        	}
  		        else{
                     location.href="/myshop/index.php/Home/Cart/cart_2/goodsid/"+goodsid+"/num/"+
                     $("#quantity").val();
  		        }
  			});
}
//加入购物车
function cartadd(goodsid)
{
    //判断用户是否登陆
    /*$.post("<?php echo U('Detail/checkusers');?>",{},function(c)
    		{
    	        if(c=="no")
    	        	{
    	        	  alert("未登录");
    	        	  //location.href="<?php echo U('MemLogin/Mem_login');?>";
    	        	}
    	        else{
    	        	//alert("已登陆");
    	        	//处理购物车*/
    	        	$.post("<?php echo U('Detail/processaddcart');?>",{"goodsid":goodsid,"num":$("#quantity").val()},function(d)
    	        			{
    	        		           if(d=='added')
    	        		        	   {
    	        		        	     alert("该商品已存在购物车里!");
    	        		        	   }
    	        		           else if(d=='success'){
    	        		        	   alert("添加成功!");
    	        		           }else{
    	        		        	   alert("添加失败!");
    	        		           }
    	        			});
    	        //}
    		//});
}
</script>
    <div class="share-clt clearfix">
      <span>你还可以：</span>
      <span class="it_share">
      <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt share-widget-btn" target="_blank"></a>
      <script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js?uid=1340070748395605" charset="utf-8"></script>
  	  </span>
  	<span class="it-fav"><a href="javascript:favorite(<?php echo ($goodsArr['goods_id']); ?>);" class="fav-widget-btn"></a></span>
    </div>
  </div>
</div>
</div>
</div>
<script>
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
<div id="content" class="clearfix">
<div id="left">
<div class="" area="store_left" widget_type="area">

  <div id="_widget_698" name="hot_sales_more_collect" widget_type="widget" class="widget">
    <div class="hot_sales_more_collect mb10">
      <div class="title">宝贝排行榜</div>
      <div class="tabs clearfix">
        <span anchor="tab_1" class="active">销售量</span>
        <span anchor="tab_2">收藏数</span>
      </div>
      <div class="content">
        <div class="box tab_1 active">
        <?php if(is_array($goodsSales)): foreach($goodsSales as $key=>$v): ?><dl class="clearfix">
            <dt>
              <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
                <img width="42" height="42" src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
              </a>
            </dt>
            <dd class="detail"><a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v["goods_name"]); ?></a>
            <b><i>&yen;</i>
              <?php echo ($v['price']); ?></b> 
            <span>已经售出&nbsp;<?php echo ($v['sales']); ?>&nbsp;件</span>
          </dd>
        </dl><?php endforeach; endif; ?>
        </div>
      <div class="box tab_2">
      <?php if(is_array($goodsCollects)): foreach($goodsCollects as $key=>$v): ?><dl class="clearfix">
          <dt>
            <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>">
              <img width="42" height="42" src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" />
            </a>
          </dt>
          <dd class="detail">
            <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>"><?php echo ($v["goods_name"]); ?></a>
            <b>
              <i>&yen;</i>
              <?php echo ($v['price']); ?>
            </b>
            <span>已经收藏&nbsp;<?php echo ($v['collects']); ?>&nbsp;件</span>
          </dd>
        </dl><?php endforeach; endif; ?>
      </div>
    </div>
    <script type="text/javascript">
    $(function(){
      $('.hot_sales_more_collect .tabs span').hover(function(){
        $('.hot_sales_more_collect .tabs span').removeClass('active');
        $('.hot_sales_more_collect .content .box').removeClass('active');
        $(this).addClass('active');
        var c=$(this).attr('anchor');
        $('.hot_sales_more_collect .content .'+c).addClass('active');
      });
    });
  </script>
  </div>
</div>

</div>
<div class="history">
<div class="title">浏览历史</div>
<ul>
  <li>
    <a href="#n">
      <img src="/myshop/Public/images/home/goods_153/small_201312262105539118.jpg" width="50" height="50" alt="海泉 进口柠檬 尤力克..." title="海泉 进口柠檬 尤力克 新鲜配送" />
    </a>
  </li>
  <li>
    <a href="#n">
      <img src="/myshop/Public/images/home/goods_173/small_201507191606133771.jpg" width="50" height="50" alt="52°剑南春500ml" title="52°剑南春500ml" />
    </a>
  </li>
  <li>
    <a href="#n">
      <img src="/myshop/Public/images/home/goods_6/small_201312262113269791.jpg" width="50" height="50" alt="华佗十全补酒700ml" title="华佗十全补酒700ml" />
    </a>
  </li>
</ul>
</div>
</div>

<div id="right">
<a name="module"></a>
<ul class="ks-switchable-nav user_menu clearfix">
<li class="active ks-active first">
  <a  href="#n">商品详情</a>
</li>
<li>
  <a href="#n">商品评论</a>
</li>
</ul>

<div class="option_box ks-switchable-content">

<div class="default content">
  <div class="dRight-tab-con" style="display: block;">
    <div id="proShow" class="detail_switch clearfix">
      <div class="dRight-parameter">
        <ul>
          <li>
            <span>
              产地： <em title="四川">四川</em>
            </span>
          </li>
          <li>
            <span>
              净含量：
              <em title="500ml">500ml</em>
            </span>
          </li>
          <li>
            <span>
              酒厂：
              <em title="四川绵竹剑南春酒厂有限公司">四川绵竹剑南春酒厂有限公司</em>
            </span>
          </li>
          <li>
            <span>
              产地(最新)：
              <em title="中国;四川">中国;四川</em>
            </span>
          </li>
          <li>
            <span>
              酒精度：
              <em title="52">52</em>
            </span>
          </li>
          <li>
            <span>
              奖项荣誉：
              <em title="1992年获德国莱比锡秋季博览会金奖。">1992年获德国莱比锡秋季博览会金奖。</em>
            </span>
          </li>
          <li>
            <span>
              规格：
              <em title="单瓶">单瓶</em>
            </span>
          </li>
          <li>
            <span>
              酿造工艺：
              <em title="低温入窖，粮糟缓慢糖化、发酵升温成酒">低温入窖，粮糟缓慢糖化、发酵升温成酒</em>
            </span>
          </li>
          <li>
            <span>
              箱规：
              <em title="1*6">1*6</em>
            </span>
          </li>
          <li>
            <span>
              储藏条件：
              <em title="常温、干燥、阴凉、避光。">常温、干燥、阴凉、避光。</em>
            </span>
          </li>
          <li>
            <span>
              香型：
              <em title="浓香型">浓香型</em>
            </span>
          </li>
          <li>
            <span>
              原料：
              <em title="高粱、大米、糯米、小麦、玉米">高粱、大米、糯米、小麦、玉米</em>
            </span>
          </li>
        </ul>
      </div>
      <div class="wxTip">
        <h4 class="h4_ass">
          <em></em>
          温馨提示
        </h4>
        <p>
          根据新修订的《商标法》及国家工商总局文件要求，2014年5月1日之后不得将&ldquo;驰名商标&rdquo;字样用于商品宣传，酒仙网依法对商品图片中含&ldquo;驰名商标&rdquo;字样做马赛克处理；同时，涉及厂家正在按照新规定逐步更换包装，在此期间，我们将对新旧包装货品随机发货，请以实际收到的货物为准。详情请见：（
          <a href="#n">http:// help.jiuxian.com/show-156.htm</a>
          ）。给您带来的不便，敬请谅解。
        </p>
      </div>
      <div class="part_box clearfix">
        <dl class="ass_share_dl2 clearfix"></dl>
      </div>
      <!--part_box-->
      <div class="part_box clearfix">
        <h4 class="h4_ass">
          <em></em>
          商品特点
        </h4>
        <dl class="ass_share_dl2 clearfix">
          <div style="text-align: center; ">
            <img style="display: inline;" src="/myshop/Public/images/home/ae0c3f87266948c083f98c1c6fd720f4.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/5b8d0fad43a04ac7a2a8190189d3d348.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/0b9d981c0df54997bd288a17ccbc9f3e.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/7782db8258564d5780a442438e7a5cd9.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/f83e544b63724780a30fbcd69414d2a6.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/80410a5814f944dd9386192406be8866.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/d45296b4b62b4fe4ab971f8fec895aa3.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/1326db9a192c44559cde247bc9e5fa2b.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/39925d6086a24de7ac5e819dcb67839e.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/e23ab22e6dbe491cae8233abca80fc00.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/fbc993e635fb4441a77e3d4ce01fc69a.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/ff1b5b4f08064cfbb53e1c396efbdefa.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/2f630c2abb3e40c390d8dbaedb9b0a7a.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/e5592380f86544a895c8d96ba4b851e1.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/64efded15d0e4f32a69d4bf4002e4487.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/91eaff82edcc481ebfc32c6f8f661e97.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/2982300309464cfd9b2aa0bcf43e7e8c.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/95905cc967754bf19bdab37dedcad37b.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/47861ca9c0a041f3b58b974ef3cf7890.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/6d8b0e57b8994a52baa5cafced9e01df.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/74a2d9a60a0b403a8b8575a153201b69.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/4765b4742acf4ec89478bde2707cafd1.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/bd34b0f57b7342f6b29904ca90462c48.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/ab7785ca9c4e4c27ae4640d752380203.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/8b4d744dd26c4bd7ab15d6567fff1c26.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/70668afaf8304e999b758b18822ba43b.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/4895eebb08754a3788f8b3571b9101ce.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/ab38ec9114be4544901e6662e448b1ca.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/a904dfa47ce84fde9d4e95da08bee899.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/38967817dc8645728ac84bca9ef1d244.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/5842f15cdeeb483b9a505b1fe7478162.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/48b1f9058487418890129a0e2585e3c1.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/912fbe3a8a0a45f28ff77e27185bbf77.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/7a74722912074edd829f37e0a1e1a480.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/37d21c07c9854d8b937a93fdef98d403.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/ffe5eef90d6441638f2f975a193a7879.jpg" alt="" />
            <img style="display: inline;" src="/myshop/Public/images/home/fb7f914636a44646be5381778a178c53.jpg" alt="" />
          </div>
        </dl>
      </div>
      <!--part_box over-->
      <!--part_box over-->
      <!--part_box over-->
      <!--part_box over-->
      <!--part_box-->
      <!--part_box-->
      <!-- 酒具适用场合 end-->
      <!--part_box-->
      <input id="sych" type="hidden" value="商务用酒;婚庆用酒;礼节拜访" />
      <div class="part_box clearfix">
        <h4 class="h4_ass">
          <em></em>
          适宜场合
        </h4>
        <div class="sych" style="width: 100%;">
          <div id="gvsw0" class="sych1" style="width: 788px;">
            <span>
              <img style="display: inline;" src="http://misc.jiuxian.com/img/goods/gvsw1.gif" alt="" />
            </span>
            <span>
              <img style="display: inline;" src="http://misc.jiuxian.com/img/goods/gvhq1.gif" alt="" />
            </span>
            <span>
              <img style="display: inline;" src="http://misc.jiuxian.com/img/goods/gvlj1.gif" alt="" />
            </span>
            <span>
              <img style="display: inline;" src="http://misc.jiuxian.com/img/goods/gvjh0.gif" alt="" />
            </span>
          </div>
        </div>
      </div>
      <!--part_box over-->
      <div class="part_box clearfix">
        <h4 class="h4_ass">
          <em></em>
          手机酒仙网
        </h4>
        <!--detail_prtpic-->
        <div class="detail_prtpic">
          <p>
            <a href="#n">
              <img style="display: inline;" src="http://misc.jiuxian.com/img/detail_new/0729_1.jpg" alt="" width="780" />
            </a>
          </p>
        </div>
        <!--detail_prtpic over--> </div>
      <!--part_box-->
      <div class="part_box clearfix">
        <h4 class="h4_ass">
          <em></em>
          仓储配送
        </h4>
        <!--detail_prtpic-->
        <div class="detail_prtpic">
          <p>
            <img style="display: inline;" src="http://misc.jiuxian.com/img/detail_new/storage.jpg" alt="" width="780" height="853" />
          </p>
        </div>
        <!--detail_prtpic over--> </div>
      <!--part_box-->
      <div class="part_box clearfix">
        <h4 class="h4_ass">
          <em></em>
          原厂包装
        </h4>
        <!--detail_prtpic-->
        <div class="detail_prtpic">
          <p>
            <!--白，黄，保健酒，收藏酒-->
            <img style="display: inline;" src="http://misc.jiuxian.com/img/detail_new/spirit.jpg" alt="" width="780" height="853" />
            <!-- 葡萄酒，名庄酒，啤酒，果酒 -->
            <!-- 洋酒 --> </p>
        </div>
        <!--detail_prtpic over--> </div>
      <!--part_box over--> </div>
  </div>

</div>

<div class="content">
<?php if(is_array($newArr)): foreach($newArr as $key=>$v): ?><div class="comment clearfix">
    <div class="uimg">
      <img src="/myshop/Public/images/home/tx.jpg" alt="" />
      <span class="name"><?php echo ($v['buyer_name']); ?></span>
    </div>
    <div class="commentDetail">
      <div class="commentContent">
       <?php echo ($v['comment']); ?>
      </div>
      <div class="commentTime"><?php echo ($v['add_time']); ?></div>

    </div>
  </div><?php endforeach; endif; ?>
</div>
</div>
</div>
<script>
KISSY.ready(function(S) {
  var tabs = new S.Tabs('#right',{
  aria:false,
  triggerType:'click'
  });
});
</script>
</div>
<div id="footer">
<div class="w">
<div class="copyright">
<img width="113"  height="21" src="/myshop/Public/images/home/T1lKXaXp4hXXcgU5U6-113-21.png"/>
</div>
<div class="g_foot-nav">
<span>
  Copyright &copy; 2011-2014
  <a href="">smartbuy.com</a>
  版权所有
</span>
</div>

</div>
</div>
</body>
</html>