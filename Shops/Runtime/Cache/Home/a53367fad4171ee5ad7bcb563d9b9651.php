<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>确认收货人资料和送货方式 - 仿酒仙运营版演示站</title>
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
					location.href="/myshop/index.php/Home/Cart/cart_2?goodsid="+goodsid;
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
					location.href="/myshop/index.php/Home/Cart/cart_2?cateid="+cateid+"&goodsid="+goodsid;
				},"html");
	}
}
</script>
<!--顶部结束  -->
<div id="header" class="w-full">
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
      <a class="" href="/myshop/index.php/Home/Index/index">首页</a>
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
        <img src="static//myshop/Public/images/home/832478ffccfd441a82dc20e97166b4c6.jpg" height="40" />
      </a>
    </li>
  </ul>
</div>
</div>
<style type="text/css">.mall-nav{display:none}</style>
<div id="main" class="w-full">
<div id="page-order" class="w">
  <div class="step step2 mt10 clearfix">
    <span class="fs14 strong f60">1.查看购物车</span>
    <span class="fs14 strong fff">2.确认订单信息</span>
    <span class="fs14 strong">3.付款</span>
    <span class="fs14 strong">4.确认收货</span>
    <span class="fs14 strong">5.评价</span>
  </div>
  <div class="order-form">
    <form method="post" id="order_form" action="/myshop/index.php/Home/Cart/cart_3">
      <script type="text/javascript" src="js/mlselection.js" charset="utf-8"></script>
      <script type="text/javascript" src="js/jquery.plugins/jquery.validate.js" charset="utf-8"></script>
      <script type="text/javascript" src="js/dialog/dialog.js" id="dialog_js" charset="utf-8"></script>
      <script type="text/javascript" src="js/jquery.ui/jquery.ui.js" id="dialog_js" charset="utf-8"></script>
      <script type="text/javascript">
                var shippings = {"1":{"shipping_id":"1","store_id":"2","shipping_name":"\u5305\u90ae","shipping_desc":"","first_price":"0.00","step_price":"0.00","cod_regions":"a:1:{i:1;s:6:\"\u4e2d\u56fd\";}","enabled":"1","sort_order":"255"},"6":{"shipping_id":"6","store_id":"2","shipping_name":"\u8d27\u5230\u4ed8\u6b3e","shipping_desc":"","first_price":"0.00","step_price":"0.00","cod_regions":"a:1:{i:3;s:20:\"\u4e2d\u56fd\t\u5317\u4eac\t\u5317\u4eac\";}","enabled":"1","sort_order":"255"}};
                var addresses = {"1":{"addr_id":"1","user_id":"3","consignee":"\u8d85\u7ea7\u4e70\u5bb6","region_id":"1","region_name":"\u4e2d\u56fd","address":"\u8bf7\u5982\u5b9e\u586b\u5199\u6536\u8d27\u4eba\u8be6\u7ec6\u5730\u5740","zipcode":"","phone_tel":"","phone_mob":"8888888"}};
                var goods_amount = 36;
                var goods_quantity = 1;
                $(function(){
                    regionInit("region");
                    $('#order_form').validate({
                        invalidHandler:function(e, validator){
                         var err_count = validator.numberOfInvalids();
                         var msg_tpl = '很抱歉，您填写的订单信息中有&nbsp;<strong>{0}</strong>&nbsp;个错误(如红色斜体部分所示)，请检查并修正后再提交！:)';
                         var d = DialogManager.create('show_error');
                         d.setWidth(400);
                         d.setTitle(lang.error);
                         d.setContents('message', {type:'warning', text:$.format(msg_tpl, err_count)});
                         d.show('center');
                        },
                        errorPlacement: function(error, element){
                            var _message_box = $(element).parent().find('.field_message');
                            _message_box.find('.field_notice').hide();
                            _message_box.append(error);
                        },
                        success       : function(label){
                            label.addClass('validate_right').text('OK!');
                        },
                        rules : {
                            consignee : {
                                required : true
                            },
                            region_id : {
                                required : true,
                                min   : 1
                            },
                            address   : {
                                required : true
                            },
                            phone_tel : {
                                required : check_phone,
                                minlength:6,
                                checkTel : true
                            },
                            phone_mob : {
                                required : check_phone,
                                minlength:6,
                                digits : true
                            }
                        },
                        messages : {
                            consignee : {
                                required : '请如实填写您的收货人姓名'
                            },
                            region_id : {
                                required : '请选择所在地区',
                                min  : '请选择所在地区'
                            },
                            address   : {
                                required : '请如实填写收货人详细地址'
                            },
                            phone_tel : {
                                required : '固定电话和手机号码至少填一个',
                                minlength: '电话号码由数字、加号、减号、空格、括号组成,并不能少于6位',
                                checkTel : '电话号码由数字、加号、减号、空格、括号组成,并不能少于6位'
                            },
                            phone_mob : {
                                required : '固定电话和手机号码至少填一个',
                                minlength: '错误的手机号码,只能是数字,并且不能少于6位',
                                digits : '错误的手机号码,只能是数字,并且不能少于6位'
                            }
                        }
                    });

                    $('ul[shipping_id]').each(function(){
                        var _shipping_fee = get_shipping_fee($(this).attr('shipping_id'));
                        $(this).find('[ectype="shipping_fee"]').html(price_format(_shipping_fee));
                    }).click(function(){
                        $(this).find('input[name="shipping_id"]').attr('checked', true);
            $('.shipping_item').removeClass('selected');
            $(this).addClass('selected');
                        set_order_amount($(this).attr('shipping_id'));
                    });

                    //select first
                    $($('ul[shipping_id]')[0]).click();
                });
                function set_order_amount(shipping_id){
                    var _shipping_fee = get_shipping_fee(shipping_id);
                    var _amount  = goods_amount + _shipping_fee;
                    $('#order_amount').html(price_format(_amount));
                }
                function get_shipping_fee(shipping_id){
                    var shipping_data = shippings[shipping_id];
                    var first_price   = Number(shipping_data['first_price']);
                    var step_price   = Number(shipping_data['step_price']);
                    return first_price + (goods_quantity - 1) * step_price;
                }
                function check_phone(){
                    return ($('#phone_tel').val() == '' && $('#phone_mob').val() == '');
                }
                function hide_error(){
                    $('#region').find('.error').hide();
                }
                </script>
      <script type="text/javascript">
                //<![CDATA[
                $(function(){
                    //$("input[name='address_options']").click(set_address);
                    $('.address_item').click(function(){
                        $(this).find("input[name='address_options']").attr('checked', true);
                        $('.address_item').removeClass('selected_address');
                        $(this).addClass('selected_address');
                        set_address();
                    });
                    //init
                    set_address();
                });
                function set_address(){
                    var addr_id = $("input[name='address_options']:checked").val();
                    if(addr_id == 0)
                    {
                        $('#consignee').val("");
                        $('#region_name').val("");
                        $('#region_id').val("");
                        $('#region select').show();
                        $("#edit_region_button").hide();
                        $('#region_name_span').hide();

                        $('#address').val("");
                        $('#zipcode').val("");
                        $('#phone_tel').val("");
                        $('#phone_mob').val("");

                        $('#address_form').show();
                    }
                    else
                    {
                        $('#address_form').hide();
                        fill_address_form(addr_id);
                    }
                }
                function fill_address_form(addr_id){
                    var addr_data = addresses[addr_id];
                    for(k in addr_data){
                        switch(k){
                            case 'consignee':
                            case 'address':
                            case 'zipcode':
                            case 'email':
                            case 'phone_tel':
                            case 'phone_mob':
                            case 'region_id':
                                $("input[name='" + k + "']").val(addr_data[k]);
                            break;
                            case 'region_name':
                                $("input[name='" + k + "']").val(addr_data[k]);
                                $('#region select').hide();
                                $('#region_name_span').text(addr_data[k]).show();
                                $("#edit_region_button").show();
                            break;
                        }
                    }
                }
                //]]> </script>
      <div id="select-address" class="w mt20">
        <div class="title w mb10">
          <b class="fs14">收货人地址</b>
          <a href="/myshop/index.php/Home/Memaddress/member_address" target="_blank">[管理收货地址]</a>
        </div>
        <?php if(is_array($addressArr)): foreach($addressArr as $k=>$v): ?><div class="oldaddress w">
          <dl <?php if(($k) == "0"): ?>class="f66 clearfix address_item selected_address"<?php else: ?>class="f66 clearfix address_item"<?php endif; ?>>
            <dt class="float-left">
              <input id="address_1" type="radio" <?php if(($k) == "0"): ?>checked="true"<?php endif; ?> name="address_options" value="<?php echo ($v['addr_id']); ?>" />
            </dt>
            <dd class="float-left"><?php echo ($v['consignee']); ?>          <?php echo ($v['region_name']); echo ($v['address']); ?>          <?php echo ($v['phone_mob']); ?></dd>
          </dl>
        </div><?php endforeach; endif; ?>
        <div class="f66 w newaddress address_item">
          <input class="mb5" type="radio" name="address_options" id="use_new_address" value="0" />
          使用新的收货地址
        </div>
        <div class="newaddressform w">
          <ul class="fill_in_content mt10" id="address_form">
            <li>
              收货人姓名：
              <input type="text" name="consignee" id="consignee"  />
              <span class="field_message explain">
                <span class="field_notice">请填写真实姓名</span>
              </span>
            </li>
            <li class="clearfix">
              <div class="float-left">所在地区：</div>
              <div id="region" class="float-left">
                <span style="display:none;" id="region_name_span"></span>
                <input id="edit_region_button" type="button" class="edit_region" value="编辑" style="display:none;" />
                <select onchange="hide_error();">
                  <option value="0">请选择...</option>
                  <option value="1">中国</option>
                </select>
                <input type="hidden" class="mls_id" name="region_id" id="region_id"/>
                <input type="hidden" name="region_name" class="mls_names" id="region_name"/>
                <span class="field_message explain">
                  <span class="field_notice">请选择地区</span>
                </span>
              </div>
            </li>
            <li>
              详细地址：
              <input type="text" name="address" id="address" />
              <span class="field_message explain">
                <span class="field_notice">请填写真实地址，不需要重复填写所在地区</span>
              </span>
            </li>
            <li>
              邮政编码：
              <input type="text" name="zipcode" id="zipcode" />
              <span class="field_message explain">
                <span class="field_notice">邮政编码</span>
              </span>
            </li>
            <li>
              电话号码：
              <input type="text" name="phone_tel" id="phone_tel"/>
              <span class="field_message explain">
                <span class="field_notice">固定电话和手机至少填一项</span>
              </span>
            </li>
            <li>
              手机号码：
              <input type="text" id="phone_mob" name="phone_mob" />
              <span class="field_message explain">
                <span class="field_notice">手机和固定电话至少填一项</span>
              </span>
            </li>
            <li>
              <input  style="border:0;" type="checkbox" value="1" id="save_address" name="save_address">
              <span class="explain f66">自动保存收货地址(选择后该地址将会保存到您的收货地址列表)</span>
            </li>
          </ul>
        </div>
      </div>
      <div id="select-shipping" class="mt10">
        <div class="title fs14 strong mb10">选择配送方式</div>
        <div class="content f66">

          <ul class="shipping_item" shipping_id="1">
            <li>
              <input class="mb5" type="radio" name="shipping_id" value="1" />
              包邮          配送费用：
              <span class="money" ectype="shipping_fee">&yen; 0.00</span>
              首价：0.00续费：0.00
            </li>
          </ul>
          <ul class="shipping_item" shipping_id="6">
            <li>
              <input class="mb5" type="radio" name="shipping_id" value="6" />
              货到付款          配送费用：
              <span class="money" ectype="shipping_fee">&yen; 0.00</span>
              首价：0.00续费：0.00
            </li>
          </ul>
        </div>
      </div>
      <div class="cartbox w mt20 mb10">
        <div class="title clearfix mb10">
          <span class="col-desc">商品</span>
          <span>价格</span>
          <span>数量</span>
          <span>小计</span>
          <span>操作</span>
        </div>
        <div class="content">
          <div class="store-each">
             <!-- 展示商品信息(开始) --> 
             <?php if(is_array($valArr)): $i = 0; $__LIST__ = $valArr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><dl class="goods-each clearfix" >
              <dd class="pic">
                <a class="block" href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>" target="_blank">
                <?php if(($v['act']) == "1"): ?><img src="/myshop/Public/images/home/<?php echo ($v['default_image']); ?>" alt="" width="50" height="50" />
                <?php else: ?>
                  <img src="/myshop/Public/images/home/<?php echo ($v['goods_image']); ?>" alt="" width="50" height="50" /><?php endif; ?>
                </a>
              </dd>
              <dd class="desc">
                <p>
                  <a href="/myshop/index.php/Home/Detail/detail/goodsid/<?php echo ($v['goods_id']); ?>" target="_blank"><?php echo ($v['goods_name']); ?></a>
                </p>
                <span class="f66"></span>
              </dd>
              <input type="hidden" name="goods_id[]" value="<?php echo ($v['goods_id']); ?>">
              <dd class="price dj">￥<?php echo ($v['price']); ?></dd>
              <input type="hidden" name="price[]" value="<?php echo ($v['price']); ?>">
              <dd class="quantity"><?php echo ($v['num']); ?></dd>
              <input type="hidden" name="quantity[]" value="<?php echo ($v['num']); ?>">
              <dd class="subtotal fs14 strong xj"></dd>
              <dd class="handle"></dd>
            </dl><?php endforeach; endif; else: echo "" ;endif; ?>
             <!-- 展示商品信息(结束) -->
          </div>
        </div>
      </div>
      
      <script type="text/javascript">
function postscript_activation(tt){
  if (!tt.name){
    tt.value    = '';
        tt.name = 'postscript';
    tt.style.height = '50px';
    }
}


</script>
      <div id="postscript" class="w clearfix">
        <div class="float-left">给卖家的附言：</div>
        <div class="content float-left">
          <textarea  name="postscript" class="f66"id="postscript" onclick="postscript_activation(this);">附注：选填，可以告诉卖家您对商品的特殊需求，如颜色、尺码等</textarea>
        </div>
      </div>
      <script type="text/javascript">
                $(function(){      
           /* tyioocom  */
           $('#use_coupon').click(function(){
             $(this).parent('p').next().toggle();
             //$(this).hide();
             
             if($(this).val()=='使用优惠券'){
               $(this).val('不使用优惠券');
               $("select[name='coupon_sn']")[0].selectedIndex=0;
             }else{
               $(this).val('使用优惠券')
             }
           }); 
               });
                </script>
      <div class="w price-promotion mt10 mb10 f60">
        <p class="mb10 mt10">
          <input id="use_coupon" type="button" class="btn-allow-coupon center" value="使用优惠券" />
        </p>
        <p class="allow-coupon border padding10 mb10 hidden clearfix">
          <select name="coupon_sn" id="coupon_sn">
            <option value="">选择您可用的优惠券</option>
          </select>
          <span class="note">
            本商城优惠券每次只能使用一张。您可以到
            <a href='index.php?app=my_coupon'>我的优惠券</a>
            登记或者查询具体的优惠券信息：
          </span>
        </p>
      </div>
      <div class="make_sure w mb10">
        <p>
          <a href="/myshop/index.php/Home/Cart/cart_1" class="back">返回购物车</a>
          <span class="ml20">订单总价：</span>
          <strong  id="order_amount"></strong>
          <!--  
                        <a href="javascript:void($('#order_form').submit());" class="btn-step fff center strong fs14 ml20">下单完成并支付</a>
        -->
        <!--<a href="/myshop/index.php/Home/Cart/cart_3" class="btn-step fff center strong fs14 ml20">下单完成并支付</a>
      	-->
      	<input type="submit" value="下单完成并支付" class="btn-step fff center strong fs14 ml20"></input>
      </p>
    </div>
    <div class="w price-notice mt10 mb10 pt10 f60 pb10">若有价格变动（包括运费），请在点击确认订单后，联系卖家修改。卖家修改后，您可以至订单管理中查看、完成支付。</div>
	
  </form>
</div>
</div>
</div>
<script>
	zj=0;
	for(var i=0;i<$(".dj").length;i++)
	{
		var dj=$(".dj").eq([i]).html().substr(1);
		var sl=$(".quantity").eq([i]).html();
		var xj=dj*sl;
		$(".subtotal").eq([i]).append("￥<span class='xj'>"+xj+"</span>");
		zj+=xj;
	}
	$("#order_amount").append("￥<span>"+zj+"</span>");
</script>
<!-- 底部开始 -->

<!-- 底部结束 -->
</body>
</html>