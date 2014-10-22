#TITLE=HTML (learn)
#INFO
New Cliptext library
#SORT=n

#T=flash自适应
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

				resizefalsh($(".flashwrap"),{'w':980,'h':600},{'w':1440,'h':776});

				$(window).resize(function(){
					resizefalsh($(".flashwrap"),{'w':980,'h':600},{'w':1440,'h':776});
				})
			})
		//-->
		</script>
#T=google地图不能用p来加载 一定要用div来加载 不然在ie7下会有错误
google地图不能用p来加载 一定要用div来加载 不然在ie7下会有错误
#