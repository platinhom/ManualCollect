
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/cssref/pr_resize.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:42:06 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<title>CSS3 resize 属性</title>

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

<h1>CSS3 resize 属性</h1>


<div class="backtoreference">
<p><a href="index.html" title="CSS 参考手册">CSS 参考手册</a></p>
</div>


<div>
<h2>实例</h2>

<p>规定可以由用户调整 div 元素的大小：</p>

<pre>
div
{
<code>resize:both;</code>
overflow:auto;
}
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t10c7.html?f=css3_resize">亲自试一试</a></p>
</div>


<div>
<h2>浏览器支持</h2>

<p>Firefox 4+、Chrome 以及 Safari 不支持 resize。</p>
</div>


<div>
<h2>定义和用法</h2>

<p>resize 属性规定是否可由用户调整元素的尺寸。</p>

<p class="note"><span>注释：</span>如果希望此属性生效，需要设置元素的 overflow 属性，值可以是 auto、hidden 或 scroll。</p>

<table class="dataintable">
  <tr>
    <th style="width:25%;">默认值：</th>
    <td style="width:75%;">none</td>
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
    <td><i>object</i>.style.resize=&quot;both&quot;</td>
  </tr>
</table>
</div>


<div>
<h2>语法</h2>

<pre>resize: none|both|horizontal|vertical;</pre>

<table class="dataintable">
<tr>
<th style="width:25%;">值</th>
<th>描述</th>
</tr>

<tr>
<td>none</td>
<td>用户无法调整元素的尺寸。</td>
</tr>

<tr>
<td>both</td>
<td>用户可调整元素的高度和宽度。</td>
</tr>

<tr>
<td>horizontal</td>
<td>用户可调整元素的宽度。</td>
</tr>

<tr>
<td>vertical</td>
<td>用户可调整元素的高度。</td>
</tr>
</table>
</div>


<div>
<h2>相关页面</h2>

<p>CSS3 教程：<a href="../css3/css3_user_interface.asp" title="CSS3 用户界面">CSS3 用户界面</a></p>
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


<!-- Mirrored from www.w3school.com.cn/cssref/pr_resize.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:42:06 GMT -->
</html>