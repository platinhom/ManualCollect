
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/cssref/pr_unicode-bidi.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:40:49 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<title>CSS unicode-bidi 属性</title>

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

<h1>CSS unicode-bidi 属性</h1>

<div class="backtoreference">
<p><a href="index.html" title="CSS 参考手册">CSS 参考手册</a></p>
</div>


<div>
<h2>定义</h2>

<p><em>unicode-bidi</em> 属性设置文本的方向。</p>

<p class="inherited">继承性：<span>Yes</span></p>

<h3>说明</h3>

<p>尽管 CSS 试图处理书写方向，但 Unicode 有一种更健壮的方式来处理方向性。利用属性 unicode-bidi，CSS 创作人员可以充分利用 Unicode 的某些功能。</p>
</div>



<div>
<h2>可能的值</h2>

<p>在这里，我们将简要引用 CSS2.1 规范中关于这些值的描述，这些描述很好地说明了各个值的实现。</p>


<h3>normal</h3>

<p>元素不会对双向算法打开附加的一层嵌套。对于行内元素，顺序的隐式重排会跨元素边界进行。</p>

<h3>embed</h3>

<p>如果是一个行内元素，这个值对于双向算法会打开附件的一层嵌套。这个嵌套层的方向由 <a href="pr_text_direction.html" title="CSS direction 属性">direction 属性</a>指定。会在元素内部隐式地完成顺序重排。这对应于在元素开始处增加一个 LRE（对于 direction:ltr ：U+202A）或 RLE（对于 direction:rtl ：U+202B），并在元素的最后增加一个 PDF（U+202C）。</p>

<h3>bidi-override</h3>

<p>这会为行内元素创建一个覆盖。对于块级元素，将为不在另一块中的行内后代创建一个覆盖。这说明，顺序重排在元素内部严格按照 <a href="pr_text_direction.html" title="CSS direction 属性">direction 属性</a>进行；忽略了双向算法的隐式部分。这对应于在元素开始处增加一个 LRO（对于 direction:ltr ：U+202D）或 RLO（对于 direction:rtl ：U+202E），并在元素最后增加一个 PDF（U+202C）。</p>
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


<!-- Mirrored from www.w3school.com.cn/cssref/pr_unicode-bidi.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:40:49 GMT -->
</html>