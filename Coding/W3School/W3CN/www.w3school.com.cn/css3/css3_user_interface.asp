
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/css3/css3_user_interface.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 02:14:52 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<style>
#resize
	{
	border:2px solid;
	padding:10px 40px; 
	width:300px;
	resize:both;
	overflow:auto;
	}

#outlineoffset
	{
	margin:40px 0 40px 20px;
	width:150px; 
	padding:10px;
	height:70px;
	border:2px solid black;
	outline:2px solid red;
	outline-offset:15px;
	} 
</style>

<title>CSS3 用户界面</title>

</head>

<body class="html">

<div id="wrapper">

<div id="header">
<a href="../index-2.html" title="w3school 在线教程" style="float:left;">w3school 在线教程</a>
<div id="ad_head">
<script type="text/javascript"><!--
google_ad_client = "pub-3381531532877742";
/* 728x90, 创建于 08-12-1 */
google_ad_slot = "7423315034";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="../../pagead2.googlesyndication.com/pagead/f.txt">
</script>
</div>
</div>

<div id="navfirst">
<ul id="menu">
<li id="h"><a href="../h.html" title="HTML 系列教程">HTML 系列教程</a></li>
<li id="b"><a href="../b.html" title="浏览器脚本教程">浏览器脚本</a></li>
<li id="s"><a href="../s.html" title="服务器脚本教程">服务器脚本</a></li>
<li id="d"><a href="../d.html" title="ASP.NET 教程">ASP.NET 教程</a></li>
<li id="x"><a href="../x.html" title="XML 系列教程">XML 系列教程</a></li>
<li id="ws"><a href="../ws.html" title="Web Services 系列教程">Web Services 系列教程</a></li>
<li id="w"><a href="../w.html" title="建站手册">建站手册</a></li>
</ul>
</div>

<div id="navsecond">

<div id="course"><h2>CSS3 教程</h2>
<ul>
<li><a href="index.html" title="CSS3 教程">CSS3 教程</a></li>
<li><a href="css3_intro.html" title="CSS3 简介">CSS3 简介</a></li>
<li><a href="css3_border.html" title="CSS3 边框">CSS3 边框</a></li>
<li><a href="css3_background.html" title="CSS3 背景">CSS3 背景</a></li>
<li><a href="css3_text_effect.html" title="CSS3 文本效果">CSS3 文本效果</a></li>
<li><a href="css3_font.html" title="CSS3 字体">CSS3 字体</a></li>
<li><a href="css3_2dtransform.html" title="CSS3 2D 转换">CSS3 2D 转换</a></li>
<li><a href="css3_3dtransform.html" title="CSS3 3D 转换">CSS3 3D 转换</a></li>
<li><a href="css3_transition.html" title="CSS3 过渡">CSS3 过渡</a></li>
<li><a href="css3_animation.html" title="CSS3 动画">CSS3 动画</a></li>
<li><a href="css3_multiple_columns.html" title="CSS3 多列">CSS3 多列</a></li>
<li class="currentLink"><a href="css3_user_interface.asp" title="CSS3 用户界面">CSS3 用户界面</a></li>
</ul>
<h2>CSS3 参考手册</h2>
<ul>
<li><a href="../cssref/index.html" title="CSS3 参考手册">CSS3 参考手册</a></li>
<li><a href="../css/css_ref_print.html" title="CSS 打印">CSS 打印</a></li>
<li><a href="../cssref/css_ref_aural.html" title="CSS 听觉">CSS 听觉</a></li>
<li><a href="../css/css_units.asp" title="CSS 单位">CSS 单位</a></li>
<li><a href="../cssref/css_colors_legal.html" title="CSS 颜色值">CSS 颜色值</a></li>
</ul>
</div>

</div>

<div id="maincontent">

<h1>CSS3 用户界面</h1>


<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="css3_multiple_columns.html" title="CSS3 多列">CSS3 多列</a></li>
<li class="next"><a href="index.html" title="CSS3 教程">CSS3 教程</a></li>
</ul>
</div>


<div>
<h2>CSS3 用户界面</h2>

<p>在 CSS3 中，新的用户界面特性包括重设元素尺寸、盒尺寸以及轮廓等。</p>

<p>在本章中，您将学到以下用户界面属性：</p>

<ul>
<li>resize</li>
<li>box-sizing</li>
<li>outline-offset</li>
</ul>
</div>


<div>
<h2>浏览器支持</h2>

<table class="browsersupport">
<tr>
<th>属性</th>
<th colspan="5">浏览器支持</th>
</tr>

<tr>
<td class="bsProperty">resize</td>
<td class="bsNoIE"></td>						
<td class="bsFirefox"></td>
<td class="bsChrome"></td>
<td class="bsSafari"></td>		
<td class="bsNoOpera"></td>				
</tr>

<tr>
<td class="bsProperty">box-sizing</td>
<td class="bsIE"></td>						
<td class="bsPreFirefox"></td>
<td class="bsChrome"></td>
<td class="bsSafari"></td>				
<td class="bsOpera"></td>				
</tr>

<tr>
<td class="bsProperty">outline-offset</td>
<td class="bsNoIE"></td>						
<td class="bsFirefox"></td>
<td class="bsChrome"></td>
<td class="bsSafari"></td>		
<td class="bsOpera"></td>				
</tr>
</table>

<p>Firefox、Chrome 以及 Safari 支持 resize 属性。</p>

<p>Internet Explorer、Chrome、Safari 以及 Opera 支持 box-sizing 属性。Firefox 需要前缀 -moz-。</p>

<p>所有主流浏览器都支持 outline-offset 属性，除了 Internet Explorer。</p>
</div>


<div>
<h2>CSS3 Resizing</h2>

<p>在 CSS3，resize 属性规定是否可由用户调整元素尺寸。</p>

<p id="resize">这个 div 元素可由用户调整尺寸（在 Firefox 4+、Chrome 以及 Safari 中）。</p>

<p>CSS 代码如下：</p>

<h3>实例</h3>

<p>规定 div 元素可由用户调整大小：</p>

<pre>
div
{
resize:both;
overflow:auto;
}
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t10c7.html?f=css3_resize">亲自试一试</a></p>
</div>


<div>
<h2>CSS3 Box Sizing</h2>

<p>box-sizing 属性允许您以确切的方式定义适应某个区域的具体内容。</p>

<h3>实例</h3>

<p>规定两个并排的带边框方框：</p>

<pre>
div
{
box-sizing:border-box;
-moz-box-sizing:border-box;	/* Firefox */
-webkit-box-sizing:border-box;	/* Safari */
width:50%;
float:left;
}
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t18d1.html?f=css3_box-sizing">亲自试一试</a></p>
</div>


<div>
<h2>CSS3 Outline Offset</h2>

<p>outline-offset 属性对轮廓进行偏移，并在超出边框边缘的位置绘制轮廓。</p>

<p>轮廓与边框有两点不同：</p>

<ul>
<li>轮廓不占用空间</li>
<li>轮廓可能是非矩形</li>
</ul>

<p id="outlineoffset">这个 div 在边框之外 15 像素处有一个轮廓。</p>

<p>CSS 代码如下：</p>

<h3>实例</h3>

<p>规定边框边缘之外 15 像素处的轮廓：</p>

<pre>
div
{
border:2px solid black;
outline:2px solid red;
outline-offset:15px;
}
</pre>

<p class="tiy"><a target="_blank" href="../tiy/tcff9.html?f=css3_outline-offset">亲自试一试</a></p>
</div>


<div>
<h2>新的用户界面属性</h2>

<p>下面的表格列出了所有的转换属性：</p>

<table class="dataintable">
<tr>
<th style="width:25%;">属性</th>
<th>描述</th>
<th style="width:5%;">CSS</th>
</tr>

<tr>
<td><a href="../cssref/pr_appearance.html" title="CSS3 appearance 属性">appearance</a></td>
<td>允许您将元素设置为标准用户界面元素的外观</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_box-sizing.asp" title="CSS3 box-sizing 属性">box-sizing</a></td>
<td>允许您以确切的方式定义适应某个区域的具体内容。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_icon.html" title="CSS3 icon 属性">icon</a></td>
<td>为创作者提供使用图标化等价物来设置元素样式的能力。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_nav-down.html" title="CSS3 nav-down 属性">nav-down</a></td>
<td>规定在使用 arrow-down 导航键时向何处导航。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_nav-index.html" title="CSS3 nav-index 属性">nav-index</a></td>
<td>设置元素的 tab 键控制次序。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_nav-left.html" title="CSS3 nav-left 属性">nav-left</a></td>
<td>规定在使用 arrow-left 导航键时向何处导航。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_nav-right.html" title="CSS3 nav-right 属性">nav-right</a></td>
<td>规定在使用 arrow-right 导航键时向何处导航。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_nav-up.html" title="CSS3 nav-up 属性">nav-up</a></td>
<td>规定在使用 arrow-up 导航键时向何处导航。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_outline-offset.html" title="CSS3 outline-offset 属性">outline-offset</a></td>
<td>对轮廓进行偏移，并在超出边框边缘的位置绘制轮廓。</td>
<td>3</td>
</tr>

<tr>
<td><a href="../cssref/pr_resize.asp" title="CSS3 resize 属性">resize</a></td>
<td>规定是否可由用户对元素的尺寸进行调整。</td>
<td>3</td>
</tr>
</table>
</div>


<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="css3_multiple_columns.html" title="CSS3 多列">CSS3 多列</a></li>
<li class="next"><a href="index.html" title="CSS3 教程">CSS3 教程</a></li>
</ul>
</div>




</div>
<!-- maincontent end -->

<div id="sidebar">

<div id="searchui">
<form method="get" id="searchform" action="http://www.google.com.hk/search">
<p><label for="searched_content">Search:</label></p>
<p><input type="hidden" name="sitesearch" value="w3school.com.cn" /></p>
<p>
<input type="text" name="as_q" class="box"  id="searched_content" title="在此输入搜索内容。" />
<input type="submit" value="Go" class="button" title="搜索！" />
</p>
</form>
</div>

<div id="tools">
<h5 id="tools_reference"><a href="../cssref/index.html">CSS 参考手册</a></h5>
</div>

<div id="ad">
<script type="text/javascript"><!--
google_ad_client = "ca-pub-3381531532877742";
/* sidebar-160x600 */
google_ad_slot = "3772569310";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
<script type="text/javascript"
src="../../pagead2.googlesyndication.com/pagead/f.txt">
</script>
</div>

</div>

<div id="footer">
<p>
W3School 提供的内容仅用于培训。我们不保证内容的正确性。通过使用本站内容随之而来的风险与本站无关。W3School 简体中文版的所有内容仅供测试，对任何法律问题及风险不承担任何责任。
</p>

<p>
当使用本站时，代表您已接受了本站的<a href="../about/about_use.html" title="关于使用">使用条款</a>和<a href="../about/about_privacy.html" title="关于隐私">隐私条款</a>。版权所有，保留一切权利。
赞助商：<a href="http://www.yktz.net/" title="上海赢科投资有限公司">上海赢科投资有限公司</a>。
<a href="http://www.miitbeian.gov.cn/">蒙ICP备06004630号</a>
</p>
</div>

</div>
<!-- wrapper end -->

</body>


<!-- Mirrored from www.w3school.com.cn/css3/css3_user_interface.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 02:14:54 GMT -->
</html>