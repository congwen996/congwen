<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户注册 - 仿酒仙运营版演示站</title>
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

    <script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/jquery.plugins/jquery.validate.js" ></script>
    <script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/jquery.plugins/poshy_tip/jquery.poshytip.js" ></script>
    <link rel="stylesheet" type="text/css" href="/myshop/Public/js/home/jquery.plugins/poshy_tip/tip-yellowsimple/tip-yellowsimple.css"  />
    <!--<editmode></editmode>
-->
</head>
<body>
<div id="site-nav" class="w-full">
    <div class="shoptop w clearfix">
        <div class="login_info">
            您好,
                  游客
            <a href="/myshop/index.php/Home/Memlogin/login">登录</a>
            <a href="/myshop/index.php/Home/Register/Register">注册</a>
        </div>
        <ul class="quick-menu">
            <li class="home">
                <a href="/myshop/index.php/Home/Index/index">回到首页</a>
            </li>
            <li class="item">
                <div class="menu mytb">
                    <a class="menu-hd" href="index.php?app=member">
                        我是买家 <b></b>
                    </a>
                    <div class="menu-bd">
                        <div class="menu-bd-panel">
                            <div>
                                <p>
                                    <a href="index.php?app=buyer_order">已买到的宝贝</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="service">
                <a href="index.php?app=article&amp;code=help">帮助中心</a>
            </li>
            <li class="item">
                <div class="menu mini-cart">
                    <a class="ac" href="index.php?app=cart">
                        <s></s>
                        购物车 <strong>0</strong>
                        件 <b></b>
                    </a>
                    <div class="mini-cart-content menu-bd">
                        <dl class="mini-cart-bd">
                            <dt class="mt10 float-left mini-cart-empty">您购物车里还没有任何宝贝</dt>
                            <dd class="mini-cart-bt">
                                <a href="index.php?app=cart">查看我的购物车</a>
                            </dd>
                        </dl>
                    </div>
                </div>
            </li>
            <li class="service">
                <a href="index.php?app=article&amp;code=help">在线客服</a>
            </li>
            <li class="item">
                <div class="menu favorite">
                    <a class="menu-hd" href="index.php?app=my_favorite">
                        收藏夹
                        <b></b>
                    </a>
                    <div class="menu-bd">
                        <div class="menu-bd-panel">
                            <div>
                                <p>
                                    <a href="index.php?app=my_favorite">收藏的宝贝</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
$(function(){
    $('#register_form').validate({
        errorPlacement: function(error, element){
            var error_td = element.parent('dd');
            error_td.find('label').hide();
            error_td.append(error);
        },
        success       : function(label){
            label.addClass('validate_right').text('OK!');
        },
        onkeyup: false,
        rules : {
/*             user_name : {
                required : true,
                byteRange: [3,15,'utf-8'],
                remote   : {
                    url :'index.php?app=member&act=check_user&ajax=1',
                    type:'get',
                    data:{
                        user_name : function(){
                            return $('#user_name').val();
                        }
                    },
                    beforeSend:function(){
                        var _checking = $('#checking_user');
                        _checking.prev('.field_notice').hide();
                        _checking.next('label').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#checking_user').hide();
                    }
                }
            }, */
            password : {
                required : true,
                minlength: 6
            },
            password_confirm : {
                required : true,
                equalTo  : '#password'
            },
            email : {
                required : true,
                email    : true
            },
            captcha : {
                required : true,
                remote   : {
                    url : 'index.php?app=captcha&act=check_captcha',
                    type: 'get',
                    data:{
                        captcha : function(){
                            return $('#captcha1').val();
                        }
                    }
                }
            },
            agree : {
                required : true
            }
        },
        messages : {
/*             user_name : {
                required : '您必须提供一个用户名',
                byteRange: '用户名必须在3-15个字符之间',
                remote   : '您提供的用户名已存在'
            }, */
            password  : {
                required : '您必须提供一个密码',
                minlength: '密码长度应在6-20个字符之间'
            },
            password_confirm : {
                required : '您必须再次确认您的密码',
                equalTo  : '两次输入的密码不一致'
            },
            email : {
                required : '您必须提供您的电子邮箱',
                email    : '这不是一个有效的电子邮箱'
            },
            captcha : {
                required : '请输入右侧图片中的文字',
                remote   : '验证码错误'
            },
            agree : {
                required : '您必须阅读并同意该协议,否则无法注册'
            }
        }
    });
});
</script>
<script type="text/javascript">
$(function(){
    poshytip_message($('#user_name'));
    poshytip_message($('#password'));
    poshytip_message($('#password_confirm'));   
    poshytip_message($('#email'));
    poshytip_message($('#captcha1'));
});
</script>
<style>.w{width:990px;}</style>
<div id="main" class="w-full">
    <div id="page-register" class="w login-register mt20 mb20">
        <div class="w logo mb10">
            <p>
                <a href="http://localhost/jiuxian" title="仿酒仙运营版演示站">
                    <img alt="仿酒仙运营版演示站" src="/myshop/Public/images/home/site_logo.gif" />
                </a>
            </p>
        </div>
        <div class="w clearfix">
            <div class="col-main">
                <ul class="clearfix">
                    <li class="icon_1"> <i></i>
                        购买商品支付订单
                    </li>
                    <li class="icon_3"> <i></i>
                        收藏你喜欢的商品
                    </li>
                    <li class="icon_5">
                        <i></i>
                        商品咨询服务评价
                    </li>
                    <li class="icon_6">
                        <i></i>
                        安全交易诚信无忧
                    </li>
                </ul>
                <h4>如果您是本站用户</h4>
                <div class="login-field">
                    <span>
                        我已经注册过帐号，立即
                        <a href="/myshop/index.php/Home/Memlogin/login" class="login-field-btn">登录</a>
                    </span>
                    <span>
                        或者
                        <a href="index.php?app=find_password" class="find-password">找回密码</a>
                    </span>
                </div>
            </div>
            <div class="col-sub">
                <div class="form">
                    <div class="title">用户注册</div>
                    <div class="content">
                        <form id="register_form" method="post" action="/myshop/index.php/Home/Register/Register">

                            <dl class="clearfix">
                                <dt>用户名</dt>
                                <dd>
                                    <input type="text" style="width:245px;height:26px;" id="user_name" class="input"  name="user_name" title="3-15位字符，由中文、英文、数字以及'-'、'_'组成"  />
                                    <br />
                                    <label></label>
                                </dd>
                            </dl>
                            <dl class="clearfix">
                                <dt>密&nbsp;&nbsp;&nbsp;码</dt>
                                <dd>
                                    <input class="input" type="password" id="password" name="password" title="长度在6-20个字符之间,由字母、数字和标点符号组成" />
                                    <div class="clr"></div>
                                    <label></label>
                                </dd>
                            </dl>
                            <dl class="clearfix">
                                <dt>确认密码</dt>
                                <dd>
                                    <input class="input" type="password" id="password_confirm" name="password_confirm" title="请再次输入你的密码" />
                                    <div class="clr"></div>
                                    <label></label>
                                </dd>
                            </dl>
                            <dl class="clearfix">
                                <dt>电子邮箱</dt>
                                <dd>
                                    <input class="input" type="text" id="email" name="email" title="请输入你的常用电邮，将来用于找回密码和接收商城信息" />
                                    <div class="clr"></div>
                                    <label></label>
                                </dd>
                            </dl>
                            <dl class="clearfix">
                                <dt>&nbsp;</dt>
                                <dd class="mall-eula">
                                    <input id="clause" type="checkbox" name="agree" value="1" class="agree-checkbox" checked="checked" />
                                    <span>
                                        我已阅读并同意
                                        <a href="index.php?app=article&amp;act=system&amp;code=eula" target="_blank">用户服务协议</a>
                                    </span>
                                    <div class="clr"></div>
                                    <label></label>
                                </dd>
                            </dl>
                            <dl class="clearfix">
                                <dt>&nbsp;</dt>
                                <dd>
                                    <input type="submit" name="Submit" value="立即注册" class="register-submit" title="立即注册" />
                                    <input type="hidden" name="ret_url" value="http%3A%2F%2Flocalhost%2Fjiuxian%2F" />
                                </dd>
                            </dl>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
</html>