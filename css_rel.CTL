#TITLE=css(learn)
#INFO
New Cliptext library
#SORT=n

#T=table
border-collapse: collapse; 可以让TR有boder
#T=IE7中子层float后的margin-bottom如果链接在父边框 一般都无效的
IE7中子层float后的margin-bottom如果链接在父边框 一般都无效的
#T=ipad手机
/*  iPad Portrait and Landscape */
@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {

	#template_options{
		position: relative !important;
	}
	
	#sidebar div.cog{
		line-height:40px !important;
		width:40px !important;
		right:-40px !important;
	}
	
}
#T=line-height:26px\9; /* 所有IE浏览器 */ 
line-height:26px\9;
#T=ie6在某种情况下 相连的标签不能有空格 不然会产生BUG
ie6在某种情况下 相连的标签不能有空格 不然会产生BUG
#T=设置滚动条样式
/* 设置滚动条的样式 */
::-webkit-scrollbar {
    width: 5px;
}
/* 滚动槽 */
::-webkit-scrollbar-track {
   background:#4a7fa4;
}
/* 滚动条滑块 */
::-webkit-scrollbar-thumb {
   background:#29cbf3;
   height:10px;
}
::-webkit-scrollbar-thumb:window-inactive {
    background: rgba(255,0,0,0.4);
}

#T=ie图片居中
1.在父层用上line-height
2.用两个子层一个用postion：absolute；top：50%；另一个用postion：absolute；top：-50%；
#