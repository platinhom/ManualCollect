
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/cssref/pr_transform-origin.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:41:41 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<title>CSS3 transform-origin 属性</title>

</head>

<body class="html" id="cssref">

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

<div id="course"><h2>CSS 参考手册</h2>
<ul>
<li><a href="index.html" title="CSS 参考手册">CSS 参考手册</a></li>
<li><a href="css_selectors.html" title="CSS 选择器参考手册">CSS 选择器</a></li>
<li><a href="css_ref_aural.html" title="CSS 听觉参考手册">CSS 听觉参考手册</a></li>
<li><a href="css_websafe_fonts.asp" title="CSS 网络安全字体组合">CSS 网络安全字体</a></li>
<li><a href="css_units.html" title="CSS 单位">CSS 单位</a></li>
<li><a href="css_colors.html" title="CSS 颜色">CSS 颜色</a></li>
<li><a href="css_colors_legal.html" title="CSS 合法颜色值">CSS 颜色值</a></li>
<li><a href="css_colornames.html" title="CSS 颜色名">CSS 颜色名</a></li>
<li><a href="css_colorsfull.asp" title="CSS 颜色十六进制值">CSS 颜色十六进制</a></li>
</ul>
</div>

</div>

<div id="maincontent">

<h1>CSS3 transform-origin 属性</h1>


<div class="backtoreference">
<p><a href="index.html" title="CSS 参考手册">CSS 参考手册</a></p>
</div>


<div>
<h2>实例</h2>

<p>设置旋转元素的基点位置：</p>

<pre>
div
{
transform: rotate(45deg);
transform-origin:20% 40%;

-ms-transform: rotate(45deg); 		<span class="code_comment">/* IE 9 */</span>
-ms-transform-origin:20% 40%; 		<span class="code_comment">/* IE 9 */</span>

-webkit-transform: rotate(45deg);	<span class="code_comment">/* Safari 和 Chrome */</span>
-webkit-transform-origin:20% 40%;	<span class="code_comment">/* Safari 和 Chrome */</span>

-moz-transform: rotate(45deg);		<span class="code_comment">/* Firefox */</span>
-moz-transform-origin:20% 40%;		<span class="code_comment">/* Firefox */</span>

-o-transform: rotate(45deg);		<span class="code_comment">/* Opera */</span>
-o-transform-origin:20% 40%;		<span class="code_comment">/* Opera */</span>
}
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t2730.html?f=css3_transform-origin">亲自试一试</a></p>

<p>页面底部有更多实例。</p>
</div>


<div>
<h2>浏览器支持</h2>

<table class="dataintable browsersupport">
  <tr>
      <th>IE</th>
      <th>Firefox</th>
      <th>Chrome</th>
      <th>Safari</th>
      <th>Opera</th>
  </tr>
  <tr>
      <td class="bsIE"></td>						
      <td class="bsFirefox"></td>
      <td class="bsChrome"></td>
      <td class="bsSafari"></td>				
      <td class="bsOpera"></td>				
  </tr>
</table>

<p>Internet Explorer 10、Firefox、Opera 支持 transform-origin 属性。</p>

<p>Internet Explorer 9 支持替代的 -ms-transform-origin 属性（仅适用于 2D 转换）。</p>

<p>Safari 和 Chrome 支持替代的 -webkit-transform-origin 属性（3D 和 2D 转换）。</p>

<p>Opera 只支持 2D 转换。</p>
</div>


<div>
<h2>定义和用法</h2>

<p>transform-origin 属性允许您改变被转换元素的位置。</p>

<p>2D 转换元素能够改变元素 x 和 y 轴。3D 转换元素还能改变其 Z 轴。</p>

<p>为了更好地理解 transform-origin 属性，请查看这个<a target="_blank" href="../example/css3/demo_css3_transform-origin.html">演示</a>。</p>

<p>Safari/Chrome 用户：为了更好地理解 transform-origin 属性用于 3D 转换的情况，请查看这个<a target="_blank" href="../example/css3/demo_css3_transform-origin_3D.html">演示</a>。</p>

<p class="note"><span>注释：</span>该属性必须与 <a href="pr_transform.html" title="CSS3 transform 属性">transform</a> 属性一同使用。</p>

<p>为了更好地理解 transform 属性，请查看这个<a target="_blank" href="../example/css3/demo_css3_transform.html">演示</a>。</p>

<table class="dataintable">
  <tr>
    <th style="width:25%;">默认值：</th>
    <td style="width:75%;">50% 50% 0</td>
  </tr>
  <tr>
    <th>继承性：</th>
    <td>no</td>
  </tr>
  <tr>
    <th>版本：</th>
    <td>CSS3</td>
  </tr>
  <tr>
    <th>JavaScript 语法：</th>
    <td><i>object</i>.style.transformOrigin=&quot;20% 40%&quot;</td>
  </tr>
</table>
</div>

<div>
<h2>语法</h2>

<pre>transform-origin: <i>x-axis</i> <i>y-axis</i> <i>z-axis</i>;</pre>

<table class="dataintable">
<tr>
<th style="width:25%;">值</th>
<th>描述</th>
</tr>

<tr>
<td>x-axis</td>
<td>
	<p>定义视图被置于 X 轴的何处。可能的值：</p>
	<ul class="listintable">
	<li>left</li>
	<li>center</li>
	<li>right</li>
	<li><i>length</i></li>
	<li><i>%</i></li>
	</ul>
</td>
</tr>

<tr>
<td>y-axis</td>
<td>
<p>定义视图被置于 Y 轴的何处。可能的值：</p>
	<ul class="listintable">
	<li>top</li>
	<li>center</li>
	<li>bottom</li>
	<li><i>length</i></li>
	<li><i>%</i></li>
	</ul>
</td>
</tr>

<tr>
<td>z-axis</td>
<td>
	<p>定义视图被置于 Z 轴的何处。可能的值：</p>
	<ul class="listintable">
	<li><i>length</i></li>
	</ul>
</td>
</tr>
</table>
</div>


<div>
<h2>相关页面</h2>

<p>CSS3 教程：<a href="../css3/css3_2dtransform.html" title="CSS3 2D 转换">CSS3 2D 转换</a></p>
<p>CSS3 教程：<a href="../css3/css3_3dtransform.html" title="CSS3 3D 转换">CSS3 3D 转换</a></p>
</div>


<div class="backtoreference">
<p><a href="index.html" title="CSS 参考手册">CSS 参考手册</a></p>
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
<h5 id="tools_reference"><a href="index.html">CSS 参考手册</a></h5>
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


<!-- Mirrored from www.w3school.com.cn/cssref/pr_transform-origin.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:41:52 GMT -->
</html>