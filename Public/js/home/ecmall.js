jQuery.extend({
  getCookie : function(sName) {
    var aCookie = document.cookie.split("; ");
    for (var i=0; i < aCookie.length; i++){
      var aCrumb = aCookie[i].split("=");
      if (sName == aCrumb[0]) return decodeURIComponent(aCrumb[1]);
    }
    return '';
  },
  setCookie : function(sName, sValue, sExpires) {
    var sCookie = sName + "=" + encodeURIComponent(sValue);
    if (sExpires != null) sCookie += "; expires=" + sExpires;
    document.cookie = sCookie;
  },
  removeCookie : function(sName) {
    document.cookie = sName + "=; expires=Fri, 31 Dec 1999 23:59:59 GMT;";
  }
});
function drop_confirm(msg, url){
    if(confirm(msg)){
        window.location = url;
    }
}
function update_confirm(msg, url){
    if(confirm(msg)){
        window.location = url;
    }
}
/* 显示Ajax表单 */
function ajax_form(id, title, url, width, style, opacity)
{
    if (!width)
    {
        width = 400;
    }
    var d = DialogManager.create(id);
    d.setTitle(title);
    d.setContents('ajax', url);
    d.setWidth(width);
	if(style)
	{
		d.setStyle(style);
	}
	if(opacity)
	{
		ScreenLocker.style.opacity = opacity;
	}
    d.show('center');

    return d;
}
function go(url){
    window.location = url;
}

function change_captcha(jqObj){
    jqObj.attr('src', 'index.php?app=captcha&' + Math.round(Math.random()*10000));
}

/* 格式化金额 */
function price_format(price){
    if(typeof(PRICE_FORMAT) == 'undefined'){
        PRICE_FORMAT = '&yen;%s';
    }
    price = number_format(price, 2);

    return PRICE_FORMAT.replace('%s', price);
}

function number_format(num, ext){
    if(ext < 0){
        return num;
    }
    num = Number(num);
    if(isNaN(num)){
        num = 0;
    }
    var _str = num.toString();
    var _arr = _str.split('.');
    var _int = _arr[0];
    var _flt = _arr[1];
    if(_str.indexOf('.') == -1){
        /* 找不到小数点，则添加 */
        if(ext == 0){
            return _str;
        }
        var _tmp = '';
        for(var i = 0; i < ext; i++){
            _tmp += '0';
        }
        _str = _str + '.' + _tmp;
    }else{
        if(_flt.length == ext){
            return _str;
        }
        /* 找得到小数点，则截取 */
        if(_flt.length > ext){
            _str = _str.substr(0, _str.length - (_flt.length - ext));
            if(ext == 0){
                _str = _int;
            }
        }else{
            for(var i = 0; i < ext - _flt.length; i++){
                _str += '0';
            }
        }
    }

    return _str;
}

/* 收藏商品 */
function collect_goods(id)
{
    var url = SITE_URL + '/index.php?app=my_favorite&act=add&type=goods&ajax=1';
    $.getJSON(url, {'item_id':id}, function(data){
        alert(data.msg);
    });
}

/* 收藏店铺 */
function collect_ico(id)
{
    var url = SITE_URL + '/index.php?app=my_favorite&act=add&type=ico&jsoncallback=?&ajax=1';
    $.getJSON(url, {'item_id':id}, function(data){
        alert(data.msg);
    });
}

function collect_store(id)
{
    var url = SITE_URL + '/index.php?app=my_favorite&act=add&type=store&jsoncallback=?&ajax=1';
    $.getJSON(url, {'item_id':id}, function(data){
        alert(data.msg);
    });
}
/* 火狐下取本地全路径 */
function getFullPath(obj)
{
    if(obj)
    {
        //ie
        if (window.navigator.userAgent.indexOf("MSIE")>=1)
        {
            obj.select();
            if(window.navigator.userAgent.indexOf("MSIE") == 25){
            	obj.blur();
            }
            return document.selection.createRange().text;
        }
        //firefox
        else if(window.navigator.userAgent.indexOf("Firefox")>=1)
        {
            if(obj.files)
            {
                //return obj.files.item(0).getAsDataURL();
            	return window.URL.createObjectURL(obj.files.item(0)); 
            }
            return obj.value;
        }
		
        return obj.value;
    }
}


/**
 *    启动邮件队列
 *
 *    @author    Garbin
 *    @param     string req_url
 *    @return    void
 */
function sendmail(req_url)
{
    $(function(){
        var _script = document.createElement('script');
        _script.type = 'text/javascript';
        _script.src  = req_url;
        document.getElementsByTagName('head')[0].appendChild(_script);
    });
}
/* 转化JS跳转中的 ＆ */
function transform_char(str)
{
    if(str.indexOf('&'))
    {
        str = str.replace(/&/g, "%26");
    }
    return str;
}

function countdown(theDaysBox, theHoursBox, theMinsBox, theSecsBox)
{
	var refreshId = setInterval(function() {
		var currentSeconds = theSecsBox.text();
		var currentMins    = theMinsBox.text();
		var currentHours   = theHoursBox.text();
		var currentDays    = theDaysBox.text();
	  
		// hide day
		if(currentDays == 0) {
			theDaysBox.next('em').hide();
			theDaysBox.hide();
		}
	  
		if(currentSeconds == 0 && currentMins == 0 && currentHours == 0 && currentDays == 0) {
			// if everything rusn out our timer is done!!
			// do some exciting code in here when your countdown timer finishes
	  	
		} else if(currentSeconds == 0 && currentMins == 0 && currentHours == 0) {
			// if the seconds and minutes and hours run out we subtract 1 day
			theDaysBox.html(currentDays-1);
			theHoursBox.html("23");
			theMinsBox.html("59");
			theSecsBox.html("59");
		} else if(currentSeconds == 0 && currentMins == 0) {
			// if the seconds and minutes run out we need to subtract 1 hour
			theHoursBox.html(currentHours-1);
			theMinsBox.html("59");
			theSecsBox.html("59");
		} else if(currentSeconds == 0) {
			// if the seconds run out we need to subtract 1 minute
			theMinsBox.html(currentMins-1);
			theSecsBox.html("59");
		} else {
			theSecsBox.html(currentSeconds-1);
		}
	}, 1000);
}
