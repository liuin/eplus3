#TITLE=有用copy
#SORT=y

#T=$(this)[0].offsetWidth;
$(this)[0].offsetWidth;
#T=@内核判断
@-moz-document url-prefix() {.body { overflow-x: hidden; }}
@media screen and (-webkit-min-device-pixel-ratio:0) { .body { overflow-y: hidden;}}
#T=text
baiduyuhn

#T=““
“  ”
#T=<div id='fancybox-loading'><div></div></div>
<div id='fancybox-loading'><div></div></div>
#T=cdn
<script src="http://cdn.staticfile.org/jquery/1.8.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/jqueryui/1.10.3/jquery-ui.min.js"></script>


http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js
http://lib.sinaapp.com/js/jquery/1.7.2/jquery.min.js
#T=fc公用函数
var fc = {
		//绝对定位
		dataPosAb: function  (obj) {
			var getVal = obj.data("pos-ab").split(",");
			var setCss ={
				"position":"absolute",
				"width":parseInt(getVal[0]),
				"height":parseInt(getVal[1]),
				"top":parseInt(getVal[2]),
				"left":parseInt(getVal[3]),
				"visibility":"visible"
			}
			obj.css(setCss);
		},
		ie6: function  () {
			var isIe6 = false;
			if (/msie/.test(navigator.userAgent.toLowerCase())) {
				if (jQuery.browser && jQuery.browser.version && jQuery.browser.version == '6.0') {
					isIe6 = true
				} else if (!$.support.leadingWhitespace) {
					isIe6 = true;
				}
			}
			return isIe6;
		},
		dataFormType: function  (obj,ind) {
			var gVal = obj.data("form-type");
			
			switch (gVal) {
			case 'select':
					
					if (false){
						return false;
					}else {
						
						obj.css("opacity","0");	    
						obj.wrap("<span class='selectstyle'></span>");
						var gettxt = '<span class="val textb" style="display:inline-block;">'+obj.find("option:eq(0)").html()+'</span>';
						
						gettxt = $(gettxt);
						
						
						gettxt.insertBefore(obj);
						gettxt.width(obj.width());
						obj.parents(".selectstyle").width(obj.width()).addClass("select-"+ind);
						
						obj.bind("change changeval",function  () {
							var vl = $(this).find("option:selected").html();
							$(this).prev('.val').html(vl);
						})
						
						
						obj.trigger('changeval');
					}	
			break
			case 2:
			break
			default:
			}
		}
}

#T=git指令
cd path/to/你的项目根目录

git remote add liuin https://github.com/liuin/welab.git

git checkout develop

git fetch liuin

git merge liuin/develop

git push

git pull

$ cd /path/to/welab/webapp/develop
$ pure release # 编译
$ pure release -omp # -omp 代表压缩,md5后缀,打包
$ pure release -d build # -d 代表发布到配置文件中的build节点
#T=jquery pugin
+function ($) {
  'use strict';

}(jQuery);
#T=v.charAt(i)
v.charAt(i)
#T=valcss
/*==========以下部分是Validform必须的===========*/
.Validform_checktip{
	margin-left:8px;
	line-height:20px;
	height:20px;
	overflow:hidden;
	color:#999;
	font-size:12px;
}
.Validform_right{
	color:#71b83d;
	padding-left:20px;
	background:url(../images/right.png) no-repeat left center;
}
.Validform_wrong{
	color:red;
	padding-left:20px;
	white-space:nowrap;
	background:url(../images/error.png) no-repeat left center;
}
.Validform_loading{
	padding-left:20px;
	background:url(../images/onLoad.gif) no-repeat left center;
}
.Validform_error{
	background-color:#ffe7e7;
}
#