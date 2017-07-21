<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/myshop/Public/css/admin/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/myshop/Public/css/admin/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="header" style='background:#463C79;'>

    <div class="dl-title">
                   商城管理后台
    </div>

    <div class="dl-log">欢迎您<span class="dl-log-user"><?php echo ($uname); ?></span>
    <a href="<?php echo U('Admin/Login/login');?>" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title">
        <s class="dl-inform-icon dl-up"></s>
        </div>
    </div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">属性分类管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">商品信息管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">订单信息管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">报表管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">管理员管理</div></li>

        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
</div>
<script type="text/javascript" src="/myshop/Public/js/admin/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="/myshop/Public/js/admin/bui-min.js"></script>
<script type="text/javascript" src="/myshop/Public/js/admin/main-min.js"></script>
<script type="text/javascript" src="/myshop/Public/js/admin/config-min.js"></script>
<script>
//homepage 打开选项卡 首先显示的页面 menu 菜单栏
    BUI.use('common/main',function(){
        var config=[
                        {id:'1',homePage : '2',menu:
                        	[  {text:'属性管理',items:
                        			[
                        			 {id:'2',text:'属性列表',href:'/myshop/index.php/Admin/Prop/prop_list.html'},
                        			 {id:'3',text:'添加属性',href:'/myshop/index.php/Admin/Prop/prop_add.html'}
                        			]
                                },
                                {text:'分类管理',items:
                                        [
                                         {id:'4',text:'分类列表',href:'/myshop/index.php/Admin/Category/category_list.html'},
                                         {id:'5',text:'添加分类',href:'/myshop/index.php/Admin/Category/category_add.html'}
                                        ]
                                }
                            ]
                        },
                        {id:'6',homePage : '7',menu:
                            [  {text:'商品信息管理',items:
                                    [
                                     {id:'7',text:'商品列表',href:'/myshop/index.php/Admin/Goods/goods_list.html'},
                                     {id:'8',text:'添加商品',href:'/myshop/index.php/Admin/Goods/goods_add.html'}
                                    ]
                                }
                            ]
                        },
                        {id:'9',homePage : '10',menu:
                            [  {text:'订单信息管理',items:
                                    [
                                     {id:'10',text:'订单列表',href:'/myshop/index.php/Admin/Order/order_list.html'}
                                    ]
                                }
                            ]
                        },
                        {id:'19',homePage : '20',menu:
                            [  {text:'报表管理',items:
                                    [
                                     {id:'20',text:'生成报表',href:'/myshop/index.php/Admin/Report/reportdata.html'}                                    
                                    ]
                                }
                            ]
                        },
                        {id:'11',homePage : '12',menu:
                            [  {text:'管理员管理',items:
                                    [
                                     {id:'12',text:'管理员列表',href:'/myshop/index.php/Admin/Member/member_list.html'}
                                    ]
                                }
                            ]
                        }
	                ];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>

</body>
</html>