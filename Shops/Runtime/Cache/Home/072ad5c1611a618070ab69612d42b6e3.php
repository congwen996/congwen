<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录 - 仿酒仙运营版演示站</title>
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


<script type="text/javascript">
//<!CDATA[
var SITE_URL = "http://localhost/jiuxian";
var REAL_SITE_URL = "http://localhost/jiuxian";
var PRICE_FORMAT = '¥%s';
//]]>
</script>

<script charset="utf-8" type="text/javascript" src="/myshop/Public/js/home/jquery.plugins/jquery.validate.js" ></script><!--<editmode></editmode>-->
</head>
<body>
<div id="site-nav" class="w-full">
   <div class="shoptop w clearfix">
      <div class="login_info">
         您好,
                  游客         <a href="<?php echo U('Home/Login/login');?>">登录</a>
         <a href="<?php echo U('Home/MemRegister/register');?>">注册</a>
               </div>
      <ul class="quick-menu">
        <li class="home"><a href="<?php echo U('Home/Index/index');?>">回到首页</a></li>        
         <li class="item">
            <div class="menu mytb">
               <a class="menu-hd" href="index.php?app=member">我是买家<b></b></a>
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
         <li class="service">
            <a href="index.php?app=article&amp;code=help">帮助中心</a>
         </li>
         <li class="item">
            <div class="menu mini-cart">
               <a class="ac" href="index.php?app=cart">
                  <s></s>购物车<strong>0</strong>件<b></b>
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
     </ul>
   </div>
</div>

<script type="text/javascript">
/**
$(function(){
    $('#login_form').validate({
        errorPlacement: function(error, element){
           var error_td = element.parent('dd');
            error_td.find('label').hide();
            error_td.append(error);
        },
        success       : function(label){
            label.addClass('validate_right').text('OK!');
        },
        onkeyup : false,
        rules : {
            user_name : {
                required : true
            },
            password : {
                required : true
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
            }
        },
        messages : {
            user_name : {
                required : '您必须提供一个用户名'
            },
            password  : {
                required : '您必须提供一个密码'
            },
            captcha : {
                required : '请输入上方图片中的文字',
                remote   : '验证码错误'
            }
        }
    });
});
**/
function refreshimg()
{
	document.getElementById("code").src="/myshop/index.php/Home/Login/genecode/"+Math.random();	
}
</script>
<style>
.w{width:990px;}
</style>
<div id="main" class="w-full">
	<div id="page-login" class="w login-register mt20 mb20">
    	<div class="w logo mb10">
			<a href="http://localhost/jiuxian" title="52ECmall仿酒仙运营版演示站"><img alt="52ECmall仿酒仙运营版演示站" src="/myshop/Public/images/home/site_logo.gif" /></a>
		</div>
        <div class="w clearfix">
    	<div class="col-main">
    		<div class="login-edit-field" area="login_left" widget_type="area">
         		
<div id="_widget_369" name="jiuxian_image_ads" widget_type="widget" class="widget">
<div class="global-image-ads" style="">

<div class="global-image-ads-content" style="width:502px;">
<a href="" target="_blank"><img  width="502px"  height="350px" class="lazyload" initial-url="/myshop/Public/images/home/201401020405319180.png" /></a>
</div>


</div>

</div>
        	</div>
    	</div>
		<div class="col-sub">
      		<div class="form">
        	<div class="title">用户登录</div>
            <div class="content">
        		<form method="post" id="login_form">
                	<dl class="clearfix">
                    	<dt>用户名</dt>
                        <dd>
                        	<input class="input" type="text" name="user_name"  />
                            <div class="clr"></div><label></label>
                        </dd>
                    </dl>
               		<dl class="clearfix">
                    	<dt>密&nbsp;&nbsp;&nbsp;码</dt>
                        <dd>
                        	<input class="input" type="password" name="password"/>
                            <div class="clr"></div><label></label>
                        </dd>
                    </dl>
               		<dl class="clearfix">
                    	<dt>验证码</dt>
                        <dd>
                        	<input class="input" type="text" name="captcha"/>
                            <div class="code"></div><label></label>
                        </dd>
                    </dl>
                    <dl class="clearfix">
                    	<dt>&nbsp;</dt>
                        <dd>
                        	<img src="/myshop/index.php/Home/Login/genecode" width='150' height='50' id='code' style="margin-top:10px;" />
                            <a href="javascript:refreshimg();">看不清，换一张</a>
                        </dd>
                    </dl>
               		<dl class="clearfix">
                  		<dt>&nbsp;</dt>
                  		<dd class="clearfix">
                     		<input type="submit" class="login-submit" name="Submit" value="登录" title="登录" />
                     		<a href="index.php?app=find_password" class="find-password">忘记密码？</a>
                     		<input type="hidden" name="ret_url" value="http%3A%2F%2Flocalhost%2Fjiuxian%2F" />
                  		</dd>
               		</dl>
                	<dl class="clearfix">
                  		<dt>&nbsp;</dt>
                  		<dd class="register-now">
                        	如果您还不是会员，请<a href="<?php echo U('Home/MemRegister/register');?>" title="注册">注册</a><br/>
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