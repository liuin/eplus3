#TITLE=HTML(5) (key)
#INFO
Cliptext Library for HTML5 written by Fred.
This file is provided as a sample Cliptext library of EditPlus.
#SORT=y

#T=!--
<!-- ^! -->
#T=!doctype
<!doctype html>
#T=a
<a href="">^!</a>
#T=abbr
<abbr>^!</abbr>
#T=address
<address>^!</address>
#T=a-email
<a href="mailto:^!">
#T=a-link
<a href="http://^!">
#T=area
<area shape="^!" href="" coords="" alt="" />
#T=article
<article>^!<article>
#T=aside
<aside>^!</aside>
#T=audio
<audio src="^!"></audio>
#T=base
<base href="^!" />
#T=bdo
<bdo dir="rtl">^!</bdo>
#T=blockquote
<blockquote>^!</blockquote>
#T=body
<body>^!</body>
#T=br
<br />
#T=button
<button type="button">^!</button>
#T=canvas
<canvas>^!</canvas>
#T=caption
<caption>^!</caption>
#T=cc-ie
<!--[if IE]>
  ^!		
<![endif]-->
#T=cc-ie6
<!--[if lte IE 6]>
  ^!	
<![endif]-->
#T=cc-noie
<!--[if !IE]><!-->
  ^!		
<!--<![endif]-->
#T=cite
<cite>^!</cite>
#T=class
class="^!"
#T=code
<code>^!</code>
#T=col
<col>^!</col>
#T=colgroup
<colgroup>^!</colgroup>
#T=command
<command>^!</command>
#T=container
container
#T=contenteditable html5 文本框编辑
contenteditable="true"
#T=datalist
<datalist>
	<option value="^!"></option>
	<option value=""></option>
</datalist>
#T=dd
<dd>^!</dd>
#T=del
<del>^!</del>
#T=details
<details>^!</details>
#T=dfn
<dfn>^!</dfn>
#T=div
<div>^!</div>
#T=dl
<dl>
	<dt>^!</dt>
	<dd></dd>
</dl>
#T=dt
<dt>^!</dt>
#T=em
<em>^!</em>
#T=embed
<embed src="^!" quality="high" type="application/x-shockwave-flash"></embed>
#T=fieldset
<fieldset>
	<legend>^!</legend>
	<details></details>
</fieldset>
#T=figcaption
<figcaption>^!</figcaption>
#T=figure
<figure>
	<img src="" alt="" />
	<figcaption>^!</figcaption>
</figure>
#T=flash自适应
		<div class="wrap">
			<div class="flash">
					<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1440" height="774">
					 <param name="movie" value="index.swf">
					 <param name="quality" value="high">
					 <param name="wmode" value="transparent">
					 <embed src="index.swf" quality="high" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1440" height="774"></embed>
				</object>
			</div>
		</div>


<script type="text/javascript">
		function resizefalsh(obj,min,max) {
		var windw = $(window).width();
		var windh = $(window).height();
		
		if (windw < min.w) {
			obj.width(min.w);
		}else {
			if (windw > max.w) {
				obj.width(max.w);
			}else {
				obj.width(windw);
			}
		}
		
		if (windh < min.h) {
			obj.height(min.h);
		}else {
			if (windh > max.h) {
				obj.height(max.h);
			}else {
				obj.height(windh);
			}
		}
	}

	resizefalsh($(".flashwrap"),{'w':1150,'h':678},{'w':1680,'h':890});

	$(window).resize(function(){
		resizefalsh($(".flashwrap"),{'w':1150,'h':678},{'w':1680,'h':890});
	})
</script>

#T=footer
<footer>^!</footer>
#T=form-get
<form  method="get" action="">
    ^!		
</form>
#T=form-post
<form method="post" action="">
    ^!
</form>
#T=h1
<h1>^!</h1>
#T=h2
<h2>^!</h2>
#T=h3
<h3>^!</h3>
#T=h4
<h4>^!</h4>
#T=h5
<h5>^!</h5>
#T=h6
<h6>^!</h6>
#T=head
<head>^!</head>
#T=header
<header>^!</header>
#T=height
height="^!"
#T=hgroup
<hgroup>^!</hgroup>
#T=hr
<hr />^!
#T=href-j
href="javascript:void(0);"
#T=href-n
href="#"
#T=html
<html>^!</html>
#T=html-2col
<style type="text/css">
					.ct {}
					.ct .ct-c1 {width:260px;}
					.ct .ct-c2 {}
				</style>
				<div class="ct clearfix">
					<div class="ct-c1 fl">Learn more.</div>
					<div class="ct-c2">Learn more.</div>
				</div>
#T=html-3col
<style type="text/css">
					.ct {}
					.ct .ct-c1 {width:260px;}
					.ct .ct-c2 {width:500px;}
					.ct .ct-c3 {}
				</style>
				<div class="ct clearfix">
					<div class="ct-c1 fl">Learn more.</div>
					<div class="ct-c2 fl">Learn more.</div>
					<div class="ct-c3">Learn more.</div>
				</div>
#T=html5-ie
<!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
#T=html-artlist
<style type="text/css">
					.ar-list {}
					.ar-list li {height: auto; padding: 24px 0 18px 0; overflow: hidden; border-top: 1px #ddd dotted; position: relative; top: -1px; _top: -3px; left: 0;}
					.ar-list h2 {font-size: 16px; margin-bottom: 10px;}
					.ar-list p {height: 75px; line-height: 25px; color: #666;}
					.ar-list p a {float:left;margin: 5px 10px 0 0;display: block; width: 110px; height: 65px; float: left;}
				</style>
				<ul class="ar-list clearfix">
					<li><h2><a href="#">前端之Android入门 – 环境配置</a></h2>
					<p><a href="article-1297-1.html" target="_blank"><img width="110" height="65" src="#" alt="前端之Android入门 – 环境配置"></a>随着移动互联网的迅速发展，前端的概念已发生很大的变化，已不仅仅局限在网页端。而Android系统作为智能机市场的老大，作为前端开发工程师，非常有必要了解和学习。但面对众多学习资</p>
					</li>
					<li>
						<h2><a href="article-1296-1.html" target="_blank">网页浏览毫秒必争，超强前端网页性能总结</a></h2>
						<p><a href="article-1296-1.html" target="_blank"><img  width="110" height="65" src="#" alt="网页浏览毫秒必争，超强前端网页性能总结"></a>你愿意为打开一个网页等待多长时间？我一秒也不愿意等。但是事实上大多数网站在响应速度方面都让人失望。现在越来越多的人开始建立自己的网站，博客，你的网页响应速度如何呢？在这篇</p>
					</li>
				</ul>
#T=html-back-top
	  <style type="text/css">
		.back-top {display: none;width: 18px;line-height: 1.2;padding: 5px 0;background-color: #000;color: #fff;font-size: 12px;text-align: center;position: fixed;_position:absolute;right: 112px;_right: 92px;bottom: 100px;_bottom: "auto";cursor: pointer;opacity: 0.6;filter: Alpha(opacity=60);}
		</style>
	  <script type="text/javascript">
		//<![CDATA[

		//返回顶部
		(function() {
			var $backToTopTxt = "返回顶部", 
				$backToTopEle = $('<div class="back-top"></div>').appendTo($("body"))
				.text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
						$("html, body").animate({ scrollTop: 0 }, 300);
				});

				$backToTopFun = function() {					
					var st = $(document).scrollTop(), winh = $(window).height();
					if(st > 200)
					{
						if($backToTopEle.data('pos') == 'top'){return false;} $backToTopEle.data('pos','top').stop().css('opacity','1').fadeIn();
					}else{
						if($backToTopEle.data('pos') == 'scroll'){return false;}
						$backToTopEle.data('pos','scroll').stop().fadeOut()
					}
				
					//IE6下的定位
					if (!window.XMLHttpRequest) {
						$backToTopEle.css("top", st + winh - 166);
					}
				};
			$(window).bind("scroll", $backToTopFun);
			$(function() { $backToTopFun(); });
		})();
#T=html-checkbox
<!-- start html-radio and  -->
				<style type="text/css">
					.checkbox1 { display:inline-block; background:#000; color:#fff;}
					.checkbox-hover {background:blue;}
					.checkbox1 input {position:absolute;left:-999em;}
				</style>

				<script type="text/javascript">
					var fc = {
						checkbox: function  (obj) {
							obj.each(function () {
							    $(this).change(function  () {
									if ($(this).is(":checked")) {
										$(this).parent('label').addClass('checkbox-hover');
									}else {
										$(this).parent('label').removeClass('checkbox-hover');
									}
									
							    })
								$(this).trigger('change');
							})
						}
					}
					
					$(document).ready(function() {
						fc.checkbox($(".ck1"));							
					})
				    
				</script>

				<label class="checkbox1">
					<input class="ck1" checked="checked" type="checkbox" name="ck1" id="" />check1
				</label>
				<label class="checkbox1">
					<input class="ck1" type="checkbox" name="ck1" id="" />check2				
				</label>
				<label class="checkbox1">
					<input class="ck1" type="checkbox" name="ck1" id="" />check3				
				</label>
				<!-- end -->
#T=html-dialog
      <style type="text/css">
	.popbox{ background:blue; color:#fff; width:800px; height:300px; text-align:center; display:none;}
		.cover {background:#000; display:none; position:fixed; width:100%; height:100%; z-index:1000; top:0; left:0;
			_position:absolute;
		}
		.close {position:absolute; right:0; top:0; cursor:pointer; background:red; width:30px; height:30px;}
		.close span {visibility:hidden;}
	</style>
   <div class="cover"></div>
	<div id="popbox" class="popbox">
		<h1>fdsflak fdslkfjs flkjf dalkfjlsakf sflksajf l </h1>
		<p>leopdn pejdfi difdsifu dsifsif </p>
		<span class="close"><span>close</span></span>
	</div>
	
	<script type="text/javascript">
	<!--
		var fc = {
			dialog:function  (obj,coverobj) {
				fc.objcenter(obj);
				coverobj.css("opacity","0.5").show();
				if (fc.ifiesix()) {
					var ht = ($(window).height() > $("body").height()) ? $(window).height() : $("body").height();
					
					
					coverobj.height(ht);
				}
				obj.find(".close").click(function  () {
					$(this).parent().hide();
					coverobj.hide();
				})
			},
			//是否IE6
			ifiesix: function() {
					return $.browser.msie&&($.browser.version == "6.0");
			},
			//让层居中
			objcenter:function  (obj, obj_size) {
				var m_left=-(obj.innerWidth())/2;
				var m_top = '';
				if (fc.ifiesix()) {

				var objtop=$(window).scrollTop()+($(window).height()-obj.height()>0?$(window).height()-obj.height(): 60)/2;

				obj.css({'top':objtop+'px','position':'absolute',"margin-left":m_left,"z-index":"1010","left":"50%;"});
					
				}else {
				var gettop=0;
				if ($(window).height()<obj.height()) {
					gettop=$(window).scrollTop()+30;
					var objtop=$(window).height()+$(window).scrollTop()+30;
					obj.css({'top':'50%','left':'50%','position':'absolute',"margin-left":m_left + 'px',top:gettop+'px'});			
				}else {
					if (obj_size) {
						m_left = obj_size.goleft;
						m_top = obj_size.gotop;
					}else {
						m_top = -obj.height()/2;
					}
					gettop=($(window).height()-obj.height())/2;
					obj.css({"position":"fixed",'top':'50%','left':'50%',"margin-left": m_left + 'px',"margin-top": m_top + 'px'});
				}
				}
				obj.css({"z-index":"1110"}).show();
			}
		}
		$(document).ready(function() {
			$("#opener").click(function  () {
				fc.dialog($("#popbox"),$(".cover"));
			})
		})
	//-->
	</script>
#T=html-facnybox
<!-- start facnybox -->
			<!-- Add mousewheel plugin (this is optional) -->
				<script type="text/javascript" src="js/fancybox/jquery.mousewheel-3.0.6.pack.js"></script>

				<!-- Add fancyBox -->
				<link rel="stylesheet" href="css/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
				<script type="text/javascript" src="js/fancybox/jquery.fancybox.js"></script>

				<script type="text/javascript">
				    $(document).ready(function() {
						$(".various").fancybox({});	
				    })
				</script>

				<a class="various" data-fancybox-type="iframe" href="http://fancyapps.com/demo/iframe.html">Iframe</a>


			<!-- end facnbox-->
#T=html-flash自适应
		<style type="text/css">
			body {max-width:1440px; margin:0 auto;}
			.wrap {overflow:hidden;position:relative; }
			.flash {text-align:center; width:100%; margin:0 auto; }
		</style>
		<div class="wrap">
			<div class="flash">
					<object  class="flashwrap" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" >
					 <param name="movie" value="index.swf">
					 <param name="quality" value="high">
					 <embed src="index.swf" class="flashwrap"  quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" ></embed>
				</object>
			</div>
		</div>
		<script type="text/javascript">
		<!--
			$(document).ready(function() {
				function resizefalsh(obj,min,max) {
					var windw = $(window).width();
					var windh = $(window).height()-5;
					
					if (windw < min.w) {
						obj.width(min.w);
					}else {
						if (windw > max.w) {
							obj.width(max.w);
						}else {
							obj.width(windw);
						}
					}
					
					if (windh < min.h) {
						obj.height(min.h);
					}else {
						if (windh > max.h) {
							obj.height(max.h);
						}else {
							obj.height(windh);
						}
					}
				}

				resizefalsh($(".flashwrap"),{'w':980,'h':600},{'w':1440,'h':776});

				$(window).resize(function(){
					resizefalsh($(".flashwrap"),{'w':980,'h':600},{'w':1440,'h':776});
				})
			})
		//-->
		</script>
#T=html-footer
				<style type="text/css">
					.footer .link {margin-right:20px;}
					.footer .copyright {text-align:right;}
					.footer .share {margin-right:20px;}
					.share *,.wb * {vertical-align:top;margin-left:1px;}
					.share img,.wb img {position:relative;top:-3px;}
				</style>
				<!-- start 底部 -->
				<div class="footer clearfix">
					<div class="link fl yh">
						<a href="#">> 集团链接</a>
						<a href="#">> 联系我们</a>
					</div>
					
					<div class="share fl">
						<span class="link-sh">分享好友</span>
						<a href="#" class="sina" target="_blank"><img src="images/share/sina.png" alt="新浪" /></a>
						<a href="#" class="qq" target="_blank"><img src="images/share/qq.png" alt="腾讯" /></a>
						<a href="#" class="kaixin" target="_blank"><img src="images/share/fx.png" alt="开心" /></a>
						<a href="#" class="renren" target="_blank"><img src="images/share/rr.png" alt="人人" /></a>
						<a href="#" class="doupan" target="_blank"><img src="images/share/db.png" alt="豆瓣" /></a>
					</div>
					<div class="wb fl">
						<span class="link-sh">关注微博</span>
						<a href="#" target="_blank" class="sina"><img src="images/share/sina.png" alt="新浪" /></a>
						<a href="#" target="_blank" class="qq"><img src="images/share/qq.png" alt="腾讯" /></a>
						<a href="#" target="_blank" class="souhu"><img src="images/share/sh.png" alt="搜狐" /></a>
						<a href="#" target="_blank" class="wangyi"><img src="images/share/wy.png" alt="网易" /></a>
					</div>
					<div class="copyright" >
						客服热线:4008-303-666 &nbsp;
						版权所有?比亚迪汽车销售有限公司&nbsp;<a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备10216027号</a>
					</div>
				</div>
				<!-- end 底部 -->
#T=html-form-inline
<!-- start form-inline -->
				<style type="text/css">
					.form-inline .form-group{display: inline-block; margin-bottom: 0; vertical-align: middle; _display:inline;}
					.form-inline .form-control {display:inline-block; height: 20px; padding: 6px 12px; font-size: 14px; line-height: 1.428571429; color: #555; vertical-align: middle; background-color: #fff; background-image: none; border: 1px solid #ccc; border-radius: 4px;}
					.form-inline .sr-only {position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0,0,0,0); border: 0;}
					.form-inline .radio, .form-inline .checkbox { display: inline-block; padding-left: 0; margin-top: 0; margin-bottom: 0; _display:inline; }
					.form-inline .checkbox input,.form-inline .radio input{position:relative;top:2px;}
					.form-inline .btn {display: inline-block;  padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: normal; line-height: 1.428571429; text-align: center; white-space: nowrap; vertical-align: middle;}
				</style>
				<form class="form-inline" >
				    <div class="form-group">
					    <label class="sr-only" for="exampleInputEmail2">Email address</label>
					    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
				    </div>
				    <div class="form-group">
				    	<label class="sr-only" for="exampleInputPassword2">Password</label>
				    	<input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
				    </div>
				    <div class="checkbox">
					    <label>
							<input type="checkbox"> Remember me
					    </label>
					</div>
					<div class="radio">
					    <label>
							<input type="radio"> Remember me
					    </label>
					</div>
				    <button type="submit" class="btn btn-default">Sign in</button>
				</form>
				<!-- end form-inline -->
#T=html-form-v
				<!-- start form-v -->
				<style type="text/css">
					.form-v {font-size:14px;}
					.form-v .form-group {margin-bottom:15px;}
					.form-v .form-group label {display:inline-block;margin-bottom:5px; font-weight:bold;}
					.form-v .form-control,.form-v .file{display:block;width:100%;height: 20px; padding: 6px 12px; font-size: 14px; line-height: 1.428571429; color: #555; vertical-align: middle; background-color: #fff; background-image: none; border: 1px solid #ccc; border-radius: 4px;}
					.form-v .file {border:0;padding:0;}
					.form-v .help-block { display: block; margin-top: 5px; margin-bottom: 10px; color: #737373; line-height:2;}
					.form-v .checkbox,.form-v .radio {display: block; min-height: 20px;  margin-top: 10px; margin-bottom: 10px; vertical-align: middle;}
					.form-v .checkbox input,.form-v .radio input{ line-height: normal;padding: 0; box-sizing: border-box; float:left; margin-right:5px;}
					.form-v .btn {display: inline-block; padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: normal; line-height: 1.428571429; text-align: center; white-space: nowrap; vertical-align: middle;}
				</style>
				<form action="#" class="form-v">
				  <div class="form-group">
					<label for="exampleInputEmail1">Email address</label>
					<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
				  </div>
				  <div class="form-group">
					<label for="exampleInputPassword1">Password</label>
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				  </div>
				  <div class="form-group">
					<label for="exampleInputFile">File input</label>
					<input class="file" type="file" id="exampleInputFile">
					<p class="help-block">Example block-level help text here.</p>
				  </div>
				  <div class="checkbox">
					<label>
					  <input type="checkbox"> Check me out
					</label>
				  </div>
				  <div class="radio">
					<label>
					  <input type="radio"> Check me out
					</label>
				  </div>
				  <button type="submit" class="btn btn-default">Submit</button>
				</form>
				<!-- end form-ver -->
#T=html-header
	<style type="text/css">
		.logo {padding-top: 18px; padding-bottom: 5px; padding-left: 20px;}
	</style>
	<!-- start wrap-header -->
	<div class="wrap-header clearfix">
		<!-- start logo -->
		<div class="logo fl">
			<a href="#"><img src="images/logo.jpg" alt="logo" /></a>
		</div>
		<!-- end -->
	</div>	
	<!-- end wrap-header -->
#T=html-hovershow
<style type="text/css">
					
					.top-nav {width:auto; padding-right:10px; position:relative; height:300px;}
					.top-nav li {float:left;  font-weight: 800; list-style-type:none;}
					.top-nav li a {color:#000; text-decoration:none; display:block; margin-left:10px; }
					.block-menu {position:absolute;left:0; top:14px; display:none; width:300px; height:300px; background:#000; color:#fff; }
				</style>
				<script type="text/javascript">
					var fc= {
							hovershow:function  (triggerobj,showobj) {
								triggerobj.add(showobj).hover(function  (e) {
										showobj.show();
								
								},function  () {
										showobj.hide();					
								})
							}		
					}
					$(document).ready(function() {
						fc.hovershow($(".top-nav-ul li"),$(".block-menu"));
					})
				</script>
				<div class="top-nav fl">
					<ul class="top-nav-ul clearfix">
						<li><a href="#"><span>豆瓣读书</span></a></li>
						<li><a href="#"><span>豆瓣读书</span></a></li>
						<li><a href="#"><span>豆瓣读书</span></a></li>
						<li><a href="#"><span>豆瓣读书</span></a></li>
						<li><a href="#"><span>豆瓣读书</span></a></li>
					</ul>
					<div class="block-menu">
						豆瓣读书 豆瓣读书 豆瓣读书 豆瓣读书 豆瓣读书
						豆瓣读书 豆瓣读书 豆瓣读书 豆瓣读书 豆瓣读书
					</div>
				</div>
#T=html-Jseasing
/* jQuery EasIng v1.1.2 - http://gsgd.co.uk/sandbox/jquery.easIng.php
*
* Uses the built In easIng capabilities added In jQuery 1.1
* to offer multiple easIng options
*
* Copyright (c) 2007 George Smith
* Licensed under the MIT License:
*   http://www.opensource.org/licenses/mit-license.php
*/

// t: current time, b: begInnIng value, c: change In value, d: duration 动画特效

jQuery.extend(jQuery.easing, {
	easeInQuad : function(x, t, b, c, d) {
		return c * (t /= d) * t + b;
	},
	easeOutQuad : function(x, t, b, c, d) {
		return -c * (t /= d) * (t - 2) + b;
	},
	easeInOutQuad : function(x, t, b, c, d) {
		if((t /= d / 2) < 1)
			return c / 2 * t * t + b;
		return -c / 2 * ((--t) * (t - 2) - 1) + b;
	},
	easeInCubic : function(x, t, b, c, d) {
		return c * (t /= d) * t * t + b;
	},
	easeOutCubic : function(x, t, b, c, d) {
		return c * (( t = t / d - 1) * t * t + 1) + b;
	},
	easeInOutCubic : function(x, t, b, c, d) {
		if((t /= d / 2) < 1)
			return c / 2 * t * t * t + b;
		return c / 2 * ((t -= 2) * t * t + 2) + b;
	},
	easeInQuart : function(x, t, b, c, d) {
		return c * (t /= d) * t * t * t + b;
	},
	easeOutQuart : function(x, t, b, c, d) {
		return -c * (( t = t / d - 1) * t * t * t - 1) + b;
	},
	easeInOutQuart : function(x, t, b, c, d) {
		if((t /= d / 2) < 1)
			return c / 2 * t * t * t * t + b;
		return -c / 2 * ((t -= 2) * t * t * t - 2) + b;
	},
	easeInQuint : function(x, t, b, c, d) {
		return c * (t /= d) * t * t * t * t + b;
	},
	easeOutQuint : function(x, t, b, c, d) {
		return c * (( t = t / d - 1) * t * t * t * t + 1) + b;
	},
	easeInOutQuint : function(x, t, b, c, d) {
		if((t /= d / 2) < 1)
			return c / 2 * t * t * t * t * t + b;
		return c / 2 * ((t -= 2) * t * t * t * t + 2) + b;
	},
	easeInSine : function(x, t, b, c, d) {
		return -c * Math.cos(t / d * (Math.PI / 2)) + c + b;
	},
	easeOutSine : function(x, t, b, c, d) {
		return c * Math.sin(t / d * (Math.PI / 2)) + b;
	},
	easeInOutSine : function(x, t, b, c, d) {
		return -c / 2 * (Math.cos(Math.PI * t / d) - 1) + b;
	},
	easeInExpo : function(x, t, b, c, d) {
		return (t == 0) ? b : c * Math.pow(2, 10 * (t / d - 1)) + b;
	},
	easeOutExpo : function(x, t, b, c, d) {
		return (t == d) ? b + c : c * (-Math.pow(2, -10 * t / d) + 1) + b;
	},
	easeInOutExpo : function(x, t, b, c, d) {
		if(t == 0)
			return b;
		if(t == d)
			return b + c;
		if((t /= d / 2) < 1)
			return c / 2 * Math.pow(2, 10 * (t - 1)) + b;
		return c / 2 * (-Math.pow(2, -10 * --t) + 2) + b;
	},
	easeInCirc : function(x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t /= d) * t) - 1) + b;
	},
	easeOutCirc : function(x, t, b, c, d) {
		return c * Math.sqrt(1 - ( t = t / d - 1) * t) + b;
	},
	easeInOutCirc : function(x, t, b, c, d) {
		if((t /= d / 2) < 1)
			return -c / 2 * (Math.sqrt(1 - t * t) - 1) + b;
		return c / 2 * (Math.sqrt(1 - (t -= 2) * t) + 1) + b;
	},
	easeInElastic : function(x, t, b, c, d) {
		var s = 1.70158;
		var p = 0;
		var a = c;
		if(t == 0)
			return b;
		if((t /= d) == 1)
			return b + c;
		if(!p)
			p = d * .3;
		if(a < Math.abs(c)) {
			a = c;
			var s = p / 4;
		} else
			var s = p / (2 * Math.PI) * Math.asin(c / a);
		return -(a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b;
	},
	easeOutElastic : function(x, t, b, c, d) {
		var s = 1.70158;
		var p = 0;
		var a = c;
		if(t == 0)
			return b;
		if((t /= d) == 1)
			return b + c;
		if(!p)
			p = d * .3;
		if(a < Math.abs(c)) {
			a = c;
			var s = p / 4;
		} else
			var s = p / (2 * Math.PI) * Math.asin(c / a);
		return a * Math.pow(2, -10 * t) * Math.sin((t * d - s) * (2 * Math.PI) / p) + c + b;
	},
	easeInOutElastic : function(x, t, b, c, d) {
		var s = 1.70158;
		var p = 0;
		var a = c;
		if(t == 0)
			return b;
		if((t /= d / 2) == 2)
			return b + c;
		if(!p)
			p = d * (.3 * 1.5);
		if(a < Math.abs(c)) {
			a = c;
			var s = p / 4;
		} else
			var s = p / (2 * Math.PI) * Math.asin(c / a);
		if(t < 1)
			return -.5 * (a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b;
		return a * Math.pow(2, -10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p) * .5 + c + b;
	},
	easeInBack : function(x, t, b, c, d, s) {
		if(s == undefined)
			s = 1.70158;
		return c * (t /= d) * t * ((s + 1) * t - s) + b;
	},
	easeOutBack : function(x, t, b, c, d, s) {
		if(s == undefined)
			s = 1.70158;
		return c * (( t = t / d - 1) * t * ((s + 1) * t + s) + 1) + b;
	},
	easeInOutBack : function(x, t, b, c, d, s) {
		if(s == undefined)
			s = 1.70158;
		if((t /= d / 2) < 1)
			return c / 2 * (t * t * (((s *= (1.525)) + 1) * t - s)) + b;
		return c / 2 * ((t -= 2) * t * (((s *= (1.525)) + 1) * t + s) + 2) + b;
	},
	easeInBounce : function(x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce(x, d - t, 0, c, d) + b;
	},
	easeOutBounce : function(x, t, b, c, d) {
		if((t /= d) < (1 / 2.75)) {
			return c * (7.5625 * t * t) + b;
		} else if(t < (2 / 2.75)) {
			return c * (7.5625 * (t -= (1.5 / 2.75)) * t + .75) + b;
		} else if(t < (2.5 / 2.75)) {
			return c * (7.5625 * (t -= (2.25 / 2.75)) * t + .9375) + b;
		} else {
			return c * (7.5625 * (t -= (2.625 / 2.75)) * t + .984375) + b;
		}
	},
	easeInOutBounce : function(x, t, b, c, d) {
		if(t < d / 2)
			return jQuery.easing.easeInBounce(x, t * 2, 0, c, d) * .5 + b;
			return jQuery.easing.easeOutBounce(x, t * 2 - d, 0, c, d) * .5 + c * .5 + b;
	}
});
#T=html-note-ie6
<!--[if lte IE 6]>

<div style='border: 1px solid #F7941D; background: #FEEFDA; text-align: center; clear: both; height: 75px; position: relative;'>

<div style='width: 640px; margin: 0 auto; text-align: left; padding: 0; overflow: hidden; color: black;'>
<div style='width: 75px; float: left;'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-warning.jpg ' alt='Warning!'/></div>
<div style='width: 275px; float: left; font-family: Arial, sans-serif;'>
<div style='font-size: 14px; font-weight: bold; margin-top: 12px;'>发现你的浏览器(IE6)需要升级</div>
<div style='font-size: 12px; margin-top: 6px; line-height: 12px;'>为达最佳呈现效果,请升级至最新式浏览器.</div>
</div>

<div style='width: 75px; float: left;'><a href='http://www.firefox.com ' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-firefox.jpg ' style='border: none;' alt='Get Firefox 3.5'/></a></div>
<div style='width: 75px; float: left;'><a href='http://www.browserforthebetter.com/download.html ' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-ie8.jpg ' style='border: none;' alt='Get Internet Explorer 8'/></a></div>
<div style='width: 73px; float: left;'><a href='http://www.apple.com/safari/download/ ' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-safari.jpg ' style='border: none;' alt='Get Safari 4'/></a></div>
<div style='float: left;'><a href='http://www.google.com/chrome ' target='_blank'><img src='http://www.ie6nomore.com/files/theme/ie6nomore-chrome.jpg ' style='border: none;' alt='Get Google Chrome'/></a></div>
</div>
</div>
<![endif]-->

#T=html-radio
<!-- start html-raido -->
				<style type="text/css">
					.radio1 { display:inline-block; background:#000; color:#fff;}
					.radio-hover {background:blue;}
					.radio1 input {position:absolute;left:-999em;}
				</style>
				<script type="text/javascript">
				    var fc = {
						radio: function  (obj) {
							obj.each(function () {
							    $(this).click(function  () {
									$(this).parent('label').addClass("radio-hover");
									$(this).parent('label').siblings().removeClass("radio-hover");
							    })
								$(this).trigger('change');
							})
						}
					}
					
					$(document).ready(function() {
						fc.radio($(".rd1"));							
					})
				</script>
				
				<label class="radio1">
					<input class="rd1" type="radio" name="r1" id="" />radio1
				</label>
				<label class="radio1">
					<input class="rd1" type="radio" name="r1" id="" />radio1
				</label>
				<label class="radio1">
					<input class="rd1" type="radio" name="r1" id="" />radio1
				</label>

				<!-- end html-raido -->
#T=html-scrollpan
<link rel="stylesheet" type="text/css" href="css/scrollbar/jquery.jscrollpane.css" media="all" />
			<script type="text/javascript" src="js/scrollbar/jquery.mousewheel.js"></script>
			<script type="text/javascript" src="js/scrollbar/jquery.jscrollpane.min.js"></script>
			<div class="scroll-pane" style="height:200px;">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in ligula id sem tristique ultrices
					eget id neque. Duis enim turpis, tempus at accumsan vitae, lobortis id sapien. Pellentesque nec orci
					mi, in pharetra ligula. Nulla facilisi. Nulla facilisi. Mauris convallis venenatis massa, quis
					consectetur felis ornare quis. Sed aliquet nunc ac ante molestie ultricies. Nam pulvinar ultricies
					bibendum. Vivamus diam leo, faucibus et vehicula eu, molestie sit amet dui. Proin nec orci et elit
					semper ultrices. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus
					mus. Sed quis urna mi, ac dignissim mauris. Quisque mollis ornare mauris, sed laoreet diam malesuada
					quis. Proin vel elementum ante. Donec hendrerit arcu ac odio tincidunt posuere. Vestibulum nec risus
					eu lacus semper viverra.
				</p>
				<p>
					Vestibulum dictum consectetur magna eu egestas. Praesent molestie dapibus erat, sit amet sodales
					lectus congue ut. Nam adipiscing, tortor ac blandit egestas, lorem ligula posuere ipsum, nec
					faucibus nisl enim eu purus. Quisque bibendum diam quis nunc eleifend at molestie libero tincidunt.
					Quisque tincidunt sapien a sapien pellentesque consequat. Mauris adipiscing venenatis augue ut
					tempor. Donec auctor mattis quam quis aliquam. Nullam ultrices erat in dolor pharetra bibendum.
					Suspendisse eget odio ut libero imperdiet rhoncus. Curabitur aliquet, ipsum sit amet aliquet varius,
					est urna ullamcorper magna, sed eleifend libero nunc non erat. Vivamus semper turpis ac turpis
					volutpat non cursus velit aliquam. Fusce id tortor id sapien porta egestas. Nulla venenatis luctus
					libero et suscipit. Sed sed purus risus. Donec auctor, leo nec eleifend vehicula, lacus felis
					sollicitudin est, vitae lacinia lectus urna nec libero. Aliquam pellentesque, arcu condimentum
					pharetra vestibulum, lectus felis malesuada felis, vel fringilla dolor dui tempus nisi. In hac
					habitasse platea dictumst. Ut imperdiet mauris vitae eros varius eget accumsan lectus adipiscing.
				</p>
				<p>
					Quisque et massa leo, sit amet adipiscing nisi. Mauris vel condimentum dolor. Duis quis ullamcorper
					eros. Proin metus dui, facilisis id bibendum sed, aliquet non ipsum. Aenean pulvinar risus eu nisi
					dictum eleifend. Maecenas mattis dolor eget lectus pretium eget molestie libero auctor. Praesent sit
					amet tellus sed nibh convallis semper. Curabitur nisl odio, feugiat non dapibus sed, tincidunt ut
					est. Nullam erat velit, suscipit aliquet commodo sit amet, mollis in mauris. Curabitur pharetra
					dictum interdum. In posuere pretium ultricies. Curabitur volutpat eros vehicula quam ultrices
					varius. Proin volutpat enim a massa tempor ornare. Sed ullamcorper fermentum nisl, ac hendrerit sem
					feugiat ac. Donec porttitor ullamcorper quam. Morbi pretium adipiscing quam, quis bibendum diam
					congue eget. Sed at lectus at est malesuada iaculis. Sed fermentum quam dui. Donec eget ipsum dolor,
					id mollis nisi. Donec fermentum vehicula porta.
				</p>
				<p>
					Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
					Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero
					sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
					Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed,
					commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros
					ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis.
					Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna
					eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis
					luctus, metus
				</p>
				<p>
					Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
					Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
					amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
				</p>
			</div>
			<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
			</script>
#T=html-scrollPic
<!-- start scrollPic -->
			<style type="text/css">
				/*-- banner1 --*/
				.scroll-ad {position:relative; top:-83px; margin-bottom:-83px;}
				.banner1 {overflow:hidden; width:980px; position:relative; margin-bottom:12px; height:317px; margin-left:-200px;}
				.slider1 {position:relative;}
				.slider1 li{float:left; width:980px; text-align:center; overflow:hidden;}
				.banner1 .banner-nav {bottom: 21px; left: auto; position: absolute; right: 10px; bottom: 25px; }
				.banner1 .banner-nav a {display:inline-block; width:8px; height:8px; background:#494949; margin-right:4px; overflow:hidden;border:2px solid #494949;}

				.banner1 .banner-nav a span {display:inline-block;line-height:1; text-indent:-999em;}
				.banner1 .banner-nav a:hover,.banner1 .banner-nav a.current{background:#fff; border:2px solid #72aef8;}
			</style>
			<ul id="slider1" class="slider1">
				<li><img src="images/ad-pic1.jpg" width="980" height="300" alt=""></li>
				<li><img src="images/ad-pic1.jpg" width="980" height="300" alt=""></li>
				<li><img src="images/ad-pic1.jpg" width="980" height="300" alt=""></li>
			</ul>

			<script type="text/javascript">
				$(document).ready(function() {
						$('#slider1').scbanner({
							showType: 'scroll'
						});	
				})
				

			   /** 
* extend 图片滚动插件
* 
* @package scbanner
* @author k-night
*/
;(function($){  
	$.fn.scbanner = function (options) {  
		var defualts = { 
			scrollWidth: 980,     //滚动距离
			warpcss: 'banner1', //外部包含CSS
			auto:	true,     //是否自动,
			speed:	5000,     //间隔5秒
			showType: 'scroll'
		};  
		var opts = $.extend({}, defualts, options);  
		var obj = $(this);

		//生成控制器
		obj.wrap('<div class="'+opts.warpcss+'"></div>');
	
		//生成页码
		function  nav(obj) {
			var nav_html = '<div class="banner-nav">';
			for (var i = 0; i < obj.find('li').length; i++) {
				nav_html += '<a class="'+(i == 0 ? 'current' : '')+'" data="'+i+'" href="javascript:void(0);"><span>'+(i+1)+'</span></a>';
			}
			nav_html += '</div>';
			return nav_html;
		}

		obj.css('width',opts.scrollWidth*obj.find('li').length);
		var timecount = '';

		var nav=$(nav(obj));

		nav.find('a').click(function  (e) {
			if ($(this).hasClass('current')) {
				return false;
			}else {
				var w = $(this).attr('data');
				var that = $(this);
				obj_scroll(obj,-w,opts.showType,function  () {
					that.siblings('.current').removeClass('current'); 
					that.addClass('current');
				});
				
			}
			e.preventDefault();	
		})
		var wpauto = true;
		//自动滚动函数

		obj.parent().parent().delegate('.'+opts.warpcss,'mouseenter',function  () {
				wpauto = false;
				clearInterval(timecount);
			}).delegate('.'+opts.warpcss,'mouseleave',function  () {
				wpauto = true;
					timecount = setInterval(function  () {
					loop_main();
				}, opts.speed);
		})

		function loop_main() {
			if (wpauto) {
				click_next();
			}
		}
		//循环
		timecount = setInterval(function  () {
			loop_main();
		}, opts.speed);
		
		function click_next() {
			var n = nav.find('a.current').next();
			if (n.length > 0) {
				n.trigger('click');
			}else {
				nav.find('a').eq(0).trigger('click');
			}
		}

		function click_prev() {
			var n = nav.find('a.current').prev();
			if (n.length > 0) {
				n.trigger('click');
			}else {
				nav.find('a').last().trigger('click');
			}
		}
		
		//moblie tounch
		var currntp = 0;
		var pageX;
		var ifchlick = false;
		
		$("."+opts.warpcss).bind("touchstart",function  (e) {
			$("."+opts.warpcss).trigger("mouseenter");
			currntp = window.event.touches[0].pageX;
			ifchlick = true;
		});

	   $("."+opts.warpcss).bind('touchend', function(e) {
			ifchlick = false;
			var width_step = 5;
			if (Math.abs(currntp - pageX) >= width_step) {
				if (currntp - pageX >= width_step) {
					click_prev();
					//$(".show-pic .prev").trigger('click');
				} else {
					click_next();
					//$(".show-pic .next").trigger('click');
				}
				$("."+opts.warpcss).trigger("mouseleave");
			}
		});

		$("."+opts.warpcss).bind('touchmove', function(e) {
			if (ifchlick) {
				ifchlick = false;
				pageX = window.event.targetTouches[0].pageX;					
			}else {
				return false;
			}
		});

		nav.insertAfter(obj);





		//显示
		function obj_scroll(obj,w,type,callback) {
			switch (type) {
			case 'scroll':
				obj.stop().animate({'left':opts.scrollWidth*w},800,'easeInOutExpo',function  () {
					if (callback) {
						callback();
					}
				});
			break
			case 'fade':
				obj.css({'left':opts.scrollWidth*w}).hide().fadeIn();
			break
			default:
			}
		}

	};  
})(jQuery);
			</script>
			<!-- end scrollPic -->
#T=html-search
<style type="text/css">
					.form-search .search-query{padding-right: 14px; height: 20px; padding: 4px 6px;  font-size: 14px; line-height: 20px; vertical-align: middle; border:1px solid #000; }
					.form-search .btn {display: inline-block;  cursor: pointer; background-color: #f5f5f5; height:30px; border:1px solid #000; background:none; padding:0 20px; vertical-align:middle;}
				</style>

				<form class="form-search">
					<input type="text" class="search-query">
					<button type="submit" class="btn">Search</button>
					<span>文字部分</span>
				</form>
#T=html-select-ui
<!-- start html-select-ui -->
				<style type="text/css">
					.selectstyle {position:relative; border:1px solid #ccc; height:30px;display:inline-block;line-height:30px;padding-left:5px; padding-right:5px; width:100px; overflow:hidden;}
					.selectstyle select {position:absolute;left:0; top:0px; height:30px; margin:0; padding:0; width:110px; }
					.selectstyle .val {white-space: nowrap; overflow: hidden; text-overflow: ellipsis;}
				</style>
				<script type="text/javascript">
				<!--
					var fc = {
						selectstyle:function  (obj) {
							if (this.ie6()) {
								return false;
							}
							obj.each(function () {
								$(this).css("opacity","0");	    
								$(this).wrap("<span class='selectstyle'></span>");
								var gettxt = '<span class="val textb" style="display:inline-block;">'+$(this).find("option:eq(0)").html()+'</span>';
								
								gettxt = $(gettxt);
								
								gettxt.insertBefore($(this));
								gettxt.width($(this).width());

								$(this).change(function  () {
									var vl = $(this).find("option:selected").html();
									$(this).prev('.val').html(vl);
								})
								$(this).trigger('change');

							})
						},
						ie6: function  () {
							return !window.XMLHttpRequest;
						}
					}
					$(document).ready(function() {
						fc.selectstyle($(".selectname"));
					})
				//-->
				</script>
				<select name="pro" class="selectname">
					<option value="0"  selected="selected" >请选择</option>
					<option value="1"  >广东省</option>
					<option value="2"  >广西壮族自治区广西壮族自治区</option>
				</select>

				<select name="pro" class="selectname">
					<option value="0" select="selected" >请选择</option>
					<option value="1"  >广东省</option>
					<option value="2"  >广西壮族自治区广西壮族自治区</option>
				</select>
				<!-- end html-select-ui -->
#T=html-table
<style type="text/css">
					.table-bordered {border: 1px solid #ddd; border-collapse: collapse; border-left: 0; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; border-top:0;border-spacing: 0;}
					.table-bordered td,.table-bordered th{padding: 8px; line-height: 20px; text-align: left; vertical-align: top; border: 1px solid #ddd;}
				</style>

				<!-- start table -->
				<table class="table-bordered">
				  <thead>
					<tr>
					  <th>#</th>
					  <th>First Name</th>
					  <th>Last Name</th>
					  <th>Username</th>
					</tr>
				  </thead>
				  <tbody>
					<tr>
					  <td rowspan="2">1</td>
					  <td>Mark</td>
					  <td>Otto</td>
					  <td>@mdo</td>
					</tr>
					<tr>
					  <td>Mark</td>
					  <td>Otto</td>
					  <td>@TwBootstrap</td>
					</tr>
					<tr>
					  <td>2</td>
					  <td>Jacob</td>
					  <td>Thornton</td>
					  <td>@fat</td>
					</tr>
					<tr>
					  <td>3</td>
					  <td colspan="2">Larry the Bird</td>
					  <td>@twitter</td>
					</tr>
				  </tbody>
				</table>
				<!-- end table -->
#T=html-table-hor
<!-- start form-hor -->
				<style type="text/css">
					.form-horizontal {font-size:14px;}
					.form-horizontal .control-label{text-align: right;}
					.form-horizontal .col-sm-2 { position: relative; width:150px; padding-top:10px; min-height: 1px; padding-right: 15px; padding-left: 15px;}
					.form-horizontal .col-sm-10 { width:130px;}
					.form-horizontal .form-control { display: block; width: auto; height: 20px; padding: 6px 12px; font-size: 14px; line-height: 1.428571429; color: #555; vertical-align: middle; background-color: #fff; background-image: none; border: 1px solid #ccc; border-radius: 4px;}
					.form-horizontal .form-group {margin-bottom:15px;}
					.form-horizontal .checkbox {padding-left:182px;}
					.form-horizontal .checkbox input{float:left;margin-right:5px;}
					.form-horizontal .btn { display: inline-block; padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: normal; line-height: 1.428571429; text-align: center; white-space: nowrap; vertical-align: middle; cursor: pointer; background-image: none; border: 1px solid transparent; border-radius: 4px; margin-left:182px;}
				</style>
				<form class="form-horizontal">
					<div class="form-group clearfix">
						<label for="inputEmail3" class="col-sm-2 fl control-label">Email</label>
						<div class="col-sm-10 fl">
						  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
						</div>
					</div>
					<div class="form-group clearfix">
						<label for="inputPassword3" class="col-sm-2 fl control-label">Password</label>
						<div class="col-sm-10 fl">
						  <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
						</div>
					</div>
				    <div class="form-group clearfix">
						  <div class="checkbox">
							<label>
							  <input type="checkbox"> Remember me
							</label>
						  </div>
				    </div>
				    <div class="form-group clearfix">
				  		<div class="col-sm-offset-2 col-sm-10">
						  <button type="submit" class="btn btn-default">Sign in</button>
						</div>
					</div>
				</form>
				<!-- end form-hor -->
#T=html-tag
<style type="text/css">
			/*-- tag-box --*/
			.tag-box{}
			.tag-nav li{float:left; line-height:30px; margin-right:10px;}
			.tag-nav li a {text-decoration:none;}
			.tag-box .none{display:none;}
			.tag-box .c1 {position:relative; background:#ccc;}
			.tag-box .c1 .tag-box-setion{background:#ccc; height:400px;}
		</style>

		<div id="tag-message-box" class="tag-box clearfix">
			<!-- start 目录 -->
			<div class="c2">
				<ul class="tag-nav clearfix">
					<li><a rel="0" class="current" href="javascript:;">动力节油冠军评选比赛</a></li>
					<li><a rel="1" class="c2_c1" href="javascript:;">城市动力节油挑战赛</a></li>
					<li><a rel="2" href="javascript:;" class="">各省冠军挑战赛</a></li>
				</ul>
			</div>
			<!-- end 目录 -->
				
			<!-- start tag1模块 -->
			<div class="c1">
				<div class="tag-box1-setion tag-box-setion clearfix">
				</div>
			
			</div>
			<!-- end tag1模块 -->
			
			<!-- start  tag2模块  -->
			<div class="c1 none">				
				<div class="tag-box2-setion tag-box-setion clearfix">
				</div>
			</div>
			<!-- end tag2模块 -->

			<!-- start tag3模块  -->
			<div class="c1 none">				
				<div class="tag-box3-setion tag-box-setion clearfix">
				</div>
			</div>
			<!-- end tag3模块 -->
		</div>
		<script type="text/javascript">
		<!--
		$(document).ready(function() {	
			//tag切换
			$('.tag-box').tagshow({
				objshow: $(this).find('.c1'),
				taglink: $(this).find('.c2 a')
			}); 
		})
		/** 
		* extend tag切换
		* 
		* @package tagshow
		* @author xcld
		*/
		;(function($){  
			$.fn.tagshow = function (options) {
				var obj=$(this);

				var defualts = {
					objshow: obj.find('.c1'),			//展示的区域 
					taglink: obj.find('.c2 a'),			//点击链接
					current_class: 'current'			//当前的样式
				};

				var opts = $.extend({}, defualts, options);  

				var is_fade=false;   //判断效果是否在执行
				opts.taglink.click(function  () {
					if ($(this).hasClass(opts.current_class)) {
						return false;
					}else {
						if (is_fade) {
							return false;
						}
						var e=$(this).attr('rel');
						is_fade=true;
						opts.objshow.not('.none').fadeOut(200,function  () {
							$(this).addClass('none').hide();
							opts.objshow.eq(e).fadeIn(200).removeClass('none');
							is_fade=false;
						});

						opts.taglink.removeClass(opts.current_class);
						$(this).addClass(opts.current_class);
					}
					return false;
				});

				
			};  
		})(jQuery);

		//-->
		</script>
#T=html-thumbnail
<style type="text/css">
									.thumbnail{display:block;margin-left:auto;margin-right:auto;text-align:center;width:300px;border:1px solid #ddd;line-height:1.5; padding:4px;}
									.thumbnail .caption{height:200px;overflow-y:hidden;color:#555; padding:10px;}
									.thumbnail .caption h3 {font-size:24px;margin-top: 20px; margin-bottom: 10px; line-height: 1.1;}
									.thumbnail .caption h3 a {color:#428bca;}
									.thumbnail .caption h3 small {font-size:65%; color:#999;}
									.thumbnail .caption a:hover,.projects .thumbnail .caption a:focus{text-decoration:none}
									.thumbnail img{max-width:100%;height:auto}
									.thumbnail .caption p{font-size:14px;}
								</style>
								<div class="thumbnail">
									<a href="#" title="Headroom.js 是一个轻量级、纯 JS 组件，用来隐藏或展现页面上的元素，为你的页面留下更多展示内容的空间。" target="_blank" ><img class="lazy" src="http://www.bootcss.com/assets/img/headroom.png" width="300" height="150" data-src="assets/img/headroom.png" alt="Headroom.js"></a>
									<div class="caption">
									  <h3> 
										<a href="/p/headroom.js/" title="Headroom.js 是一个轻量级、纯 JS 组件，用来隐藏或展现页面上的元素，为你的页面留下更多展示内容的空间。" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'headroom'])">Headroom.js<br><small>隐藏或展示页面元素</small></a>
									  </h3>
									  <p>
									  Headroom.js 是一个轻量级、纯 JavaScript 组件，用来隐藏或展现页面上的元素，为你的页面留下更多展示内容的空间。
									  </p>
									</div>
								</div>
#T=html-top-nav
		<style type="text/css">
			/*-- top-nav float --*/
			.top-nav {width:auto; padding-right:10px;}
			.top-nav li {float:left;  font-weight: 800; list-style-type:none;}
			.top-nav li a {color:#000; text-decoration:none; display:block; margin-left:10px; }
		</style>
		<div class="top-nav fr">
			<ul class="top-nav-ul clearfix">
				<li><a href="#"><span>豆瓣读书</span></a></li>
				<li><a href="#"><span>豆瓣读书</span></a></li>
				<li><a href="#"><span>豆瓣读书</span></a></li>
				<li><a href="#"><span>豆瓣读书</span></a></li>
				<li><a href="#"><span>豆瓣读书</span></a></li>
			</ul>
		</div>
#T=html-vm
<style type="text/css">
			.list {margin-left:0px;}
			.list li{float:left; width:298px; border: 1px solid green; margin-left:10px; display:inline; height:300px;}
			/*-- vm-outer  --*/
			.vm-outer{ width: 100%; background:ivory; display: table; position: static; height: 100%; overflow: hidden; position: relative; }
			.vm-middle{display: table-cell; vertical-align: middle; position: static;*position: absolute; *top: 50%; *text-align:center;}
			.vm-inner{border: 1px solid green; background-color: #FFF; position: relative; top: -50%; margin: 0 auto;text-align:center; zoom:1;}
		</style>


		<ul class="list clearfix">
			<li>
				<!-- start vm-outer -->
				<div class="vm-outer">
				  <div class="vm-middle">
					<div class="vm-inner">
						<img src="images/pic-small.jpg" width="91" height="58" alt="" />
					</div>
				   </div>
				 </div>				
				<!-- end  vm-outer -->
			</li>
			<li>
				<div class="vm-outer">
				  <div class="vm-middle">
					<div class="vm-inner">
						<img src="images/pic-small.jpg" width="91" height="58" alt="" />
					</div>
				   </div>
				 </div>
				
			</li>
			<li>
				<div class="vm-outer">
				  <div class="vm-middle">
					<div class="vm-inner">
						<img src="images/pic-small.jpg" width="91" height="58" alt="" />
					</div>
				   </div>
				 </div>
			</li>
		</ul>
#T=i
<i>^!</i>
#T=iframe
<iframe src="^!"></iframe>
#T=img
<img src="^!" alt="" />
#T=input
<input type="^!" name="" />
#T=input-b
<input type="button" value="" />
#T=input-button
<input type="button" value="" />
#T=input-c
<input type="checkbox" name="" id="" />
#T=input-checkbox
<input type="checkbox" name="" id="" />
#T=input-color
<input type="color" name="" id="" />
#T=input-date
<input type="date" name="" id="" />
#T=input-datetime
<input type="datetime" name="" id="" />
#T=input-datetime-local
<input type="datetime-local" name="" id="" />
#T=input-email
<input type="email" name="" id="" />
#T=input-f
<input type="file" name="" id="" />
#T=input-file
<input type="file" name="" id="" />
#T=input-h
<input type="hidden" name="" />
#T=input-hidden
<input type="hidden" name="" />
#T=input-i
<input type="image" src="" alt="" />
#T=input-image
<input type="image" src="" alt="" />
#T=input-month
<input type="month" name="" id="" />
#T=input-number
<input type="number" name="" id="" />
#T=input-p
<input type="password" name="" id="" />
#T=input-password
<input type="password" name="" id="" />
#T=input-r
<input type="radio" name="" id="" />
#T=input-range
<input type="range" name="" id="" />
#T=input-reset
<input type="reset" value="" />
#T=input-s
<input type="submit" value="" />
#T=input-search
<input type="search" name="" id="" />
#T=input-submit
<input type="submit" value="" />
#T=input-t
<input type="text" name="" id="" />
#T=input-text
<input type="text" name="" id="" />
#T=input-time
<input type="time" name="" id="" />
#T=input-url
<input type="url" name="" id="" />
#T=input-week
<input type="week" name="" id="" />
#T=ins
<ins>^!</ins>
#T=js-v
javascript:void(0);
#T=k
{
  ^!
}
#T=kbd
<kbd>^!</kbd>
#T=keygen
<keygen name="^!"></keygen>
#T=kk
"^!"
#T=l
(^!)
#T=label
<label for="">^!</label>
#T=legend
<legend>^!</legend>
#T=li
<li>^!</li>
#T=link-atom
<link rel="alternate" type="application/atom+xml" title="Atom" href="atom.xml" />
#T=link-css
<link rel="stylesheet" type="text/css" href="" media="all" />
#T=link-favicon
<link rel="shortcut icon" type="image/x-icon" href="^!favicon.ico" />
#T=link-print
<link rel="stylesheet" type="text/css" href="^!print.css" media="print" />
#T=link-rss
<link rel="alternate" type="application/rss+xml" title="RSS" href="^!rss.xml" />
#T=link-touch
<link rel="apple-touch-icon" href="^!favicon.png" />
#T=ll
"^!"
#T=map
<map id="^!">
	<area shape="" href="" coords="" alt="" />
</map>
#T=mark
<mark>^!</mark>
#T=menu
<menu>^!</menu>
#T=meta-com
<meta http-equiv="X-UA-Compatible" content="IE=7" />
#T=meta-edge
<meta http-equiv="X-UA-Compatible" content="IE=edge">
#T=meta-moblie
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
#T=meta-utf
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
#T=meter
<meter>^!</meter>
#T=nav
<nav>^!</nav>
#T=ng-controller
ng-controller
#T=ng-model
ng-model
#T=ng-repeat
ng-repeat
#T=noscript
<noscript>^!</noscript>
#T=object
<object type="^!" width="550" height="400"></object>
#T=ol
<ol>
	<li>^!</li>
	<li></li>
</ol>
#T=optgroup
<optgroup label="^!">
	<option><option>
	<option><option>
</optgroup>
#T=option
<option>^!</option>
#T=output
<output>^!</output>
#T=p
<p>^!</p>
#T=param
<param name="^!" value="" />
#T=placeholder
placeholder="^!"
#T=pre
<pre>^!</pre>
#T=progress
<progress>^!</progress>
#T=q
<q>^!</q>
#T=rp
<rp>^!</rp>
#T=rt
<rt>^!</rt>
#T=ruby
<ruby>^!</ruby>
#T=samp
<samp>^!</samp>
#T=script
<script type="text/javascript">
    ^!
</script>
#T=script-jq
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
#T=script-src
<script type="text/javascript" src="^!"></script>
#T=section
<section>^!</section>
#T=select
<select name="^!">
	<option></option>
	<option></option>
</select>
#T=small
<small>^!</small>
#T=source
<source>^!</source>
#T=span
<span>^!</span>
#T=strong
<strong>^!</strong>
#T=style
<style type="text/css">
  ^!	
</style>
#T=sub
<sub>^!</sub>
#T=summary
<summary>^!</summary>
#T=sup
<sup>^!</sup>
#T=table
<table>
<tr>
	<td>^!</td>
	<td></td>
</tr>
</table>
#T=target-b
target="_blank"
#T=tbody
<tbody>^!</tbody>
#T=td
<td>^!</td>
#T=textarea
<textarea name="^!"></textarea>
#T=tfoot
<tfoot>^!</tfoot>
#T=th
<th>^!</th>
#T=thead
<thead>^!</thead>
#T=thtml-3cols (wrap > head > content 3col > footer)
<div class="wrap">
	<div class="wrap-header">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</div>
	<div class="wrap-content clearfix">
		<div class="wrap-left">
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	
		</div>
		<div class="wrap-center">
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	
		</div>
		<div class="wrap-right">
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</div>
	</div>			
	<div class="wrap-footer">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</div>
</div>
#T=thtml-bt1 (a > span)
<a href="#" class="bt1"><span>^!</span></a>
#T=thtml-bt1 (input > span >span)
<button class="input-bt" type="button"><span class="bt1" ><span>按钮</span></span></button>
#T=thtml-list (ul > li > a > span)
<ul class="list-fl clearfix">
	<li><a href="#"><span>豆瓣读书</span></a></li>
	<li><a href="#"><span>豆瓣读书</span></a></li>
	<li><a href="#"><span>豆瓣读书</span></a></li>
	<li><a href="#"><span>豆瓣读书</span></a></li>
	<li><a href="#"><span>豆瓣读书</span></a></li>
</ul>
#T=thtml-list (ul > li > a)
<ul class="list-fl clearfix">
	<li><a href="#">豆瓣读书</a></li>
	<li><a href="#">豆瓣读书</a></li>
	<li><a href="#">豆瓣读书</a></li>
	<li><a href="#">豆瓣读书</a></li>
	<li><a href="#">豆瓣读书</a></li>
	<li><a href="#">豆瓣读书</a></li>
	<li><a href="#">豆瓣读书</a></li>
</ul>

#T=thtml-list-nofl (ul > li > a > span)
<ul class="list-nofl clearfix">
	<li><a href="#"><span>美国夫妇在华救助数千孤残儿童 善款多来自美国</span></a></li>
	<li><a href="#"><span>美国夫妇在华救助数千孤残儿童 善款多来自美国</span></a></li>
	<li><a href="#"><span>美国夫妇在华救助数千孤残儿童 善款多来自美国</span></a></li>
	<li><a href="#"><span>美国夫妇在华救助数千孤残儿童 善款多来自美国</span></a></li>
</ul>
#T=thtml-list-nofl (ul > li > a)
<ul class="list-nofl clearfix">
	<li><a href="#">美国夫妇在华救助数千孤残儿童 善款多来自美国</a></li>
	<li><a href="#">美国夫妇在华救助数千孤残儿童 善款多来自美国</a></li>
	<li><a href="#">美国夫妇在华救助数千孤残儿童 善款多来自美国</a></li>
	<li><a href="#">美国夫妇在华救助数千孤残儿童 善款多来自美国</a></li>
	<li><a href="#">美国夫妇在华救助数千孤残儿童 善款多来自美国</a></li>
</ul>
#T=time
<time>^!</time>
#T=title
<title>^!</title>
#T=tr
<tr>^!</tr>
#T=ul
<ul>
    <li>^!</li>
    <li></li>
</ul>
#T=var
<var>^!</var>
#T=video
<video>^!</video>
#T=width=""
width="^!"
#T=zs-ze
<!-- /^! -->
#