<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/myshop/Public/js/admin/jquery-1.8.3.js"></script>
</head>
<body>
	<form id="login" action="/myshop/index.php/Admin/Login/login" method="post" onsubmit="return chkVal();">
		<h1><font face="隶书" size="+4" color="#FF9900">管理系统登录</font></h1>
		<table>
			<tbody><tr>
				<th style="color:#FF9999">账    号：</th>
				<td>
				    <input type="text" name="uname" id='uname'>
				    <span id='userspan'></span>
				</td>
			</tr>
			<tr>
				<th style="color:#FF9999">密    码：</th>
				<td>
				   <input type="password" name="upwd" id='upwd'>
				   <span id='pwdspan'></span>
				</td>
			</tr>
			<tr>
				<th style="color:#FF9999">验 证 码：</th>
				<td>
				   <input type="text" name="code" id='code'>
				   <img src="/myshop/index.php/Admin/Login/getcode" id='auth'>
				   <a href="javascript:refresh();">换一张</a>
				   <span id='codespan'></span>
				</td>
			</tr> 
			<tr>
				<th colspan="2">					
					<button type="submit" id="login-button" ><strong>登陆</strong></button>
				</th>
			</tr>
		</tbody>
		</table>
	</form>
</body>
<script>
    //换一张
    function refresh()
    {
    	var auth=document.getElementById('auth');
    	auth.src="/myshop/index.php/Admin/Login/getcode?"+Math.random();
    }
    
    //验证格式
    function chkVal()
    {
  	  var user=$('#uname').val();
  	  var pwd=$('#upwd').val();
  	  if(user=='')
  		  {
  		      $('#userspan').html('用户名不能为空');
  		      $('#userspan').css({'color':'red'});
  		      return false;
  		  }
  	  if(pwd=='')
  		  {
  		      $('#pwdspan').html('密码不能为空');
  		      $('#pwdspan').css({'color':'red'});
  		      return false;
  		  }
    }
  //验证用户名
    $('#uname').blur(function()
    		{
    	         var username=$('#uname').val();
    	         var regs=/^[A-Za-z]\w{4,24}$/;
    	         if(regs.test(username))
    	         {
    		         $('#userspan').html('用户名格式正确');
    		         $('#userspan').css({'color':'green'});
    	         }
    	         else
    	         {
    	        	 $('#userspan').html('用户名格式不正确,用户名应为4,12位字符');
    		         $('#userspan').css({'color':'red'});
    		         $('#uname').focus();
    	         }
    	    });
    //验证密码
    $('#upwd').blur(function()
    		{
    	         var password=$('#pwd').val();
    	         var regs=/^\w{2,11}$/;
    	         if(regs.test(password))
    	         {
    		         $('#pwdspan').html('密码格式正确');
    		         $('#pwdspan').css({'color':'green'});
    	         }
    	         else
    	         {
    	        	 $('#pwdspan').html('密码格式不正确,用户名应为2,12位字符');
    		         $('#pwdspan').css({'color':'red'});
    		         $('#upwd').focus();
    	         }
    	    });
</script>
</html>