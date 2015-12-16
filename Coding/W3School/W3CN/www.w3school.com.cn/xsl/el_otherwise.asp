
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.w3school.com.cn/xsl/el_otherwise.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:02:37 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-cn" />

<meta name="robots" content="all" />

<meta name="author" content="w3school.com.cn" />
<meta name="Copyright" content="Copyright W3school.com.cn All Rights Reserved." />
<meta name="MSSmartTagsPreventParsing" content="true" />
<meta http-equiv="imagetoolbar" content="false" />

<link rel="stylesheet" type="text/css" href="../c5.css" />
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />

<title>XSLT &lt;xsl:otherwise&gt; 元素</title>
</head>

<body class="xml">
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

<div id="course"><h2>XSLT 教程</h2>
<ul>
<li><a href="index.html" title="XSLT 教程">XSLT 教程</a></li>
<li><a href="xsl_languages.html" title="XSLT 语言">XSLT 语言</a></li>
<li><a href="xsl_intro.asp" title="XSLT 简介">XSLT 简介</a></li>
<li><a href="xsl_browsers.html" title="对 XSLT 的浏览器支持">XSLT 浏览器</a></li>
<li><a href="xsl_transformation.html" title="XSLT - 转换">XSLT 转换</a></li>
<li><a href="xsl_templates.html" title="XSLT &lt;xsl:template&gt; 元素">XSLT &lt;template&gt;</a></li>
<li><a href="xsl_value_of.html" title="XSLT &lt;xsl:value-of&gt; 元素">XSLT &lt;value-of&gt;</a></li>
<li><a href="xsl_for_each.html" title="XSLT &lt;xsl:for-each&gt; 元素">XSLT &lt;for-each&gt;</a></li>
<li><a href="xsl_sort.html" title="XSLT &lt;xsl:sort&gt; 元素">XSLT &lt;xsl:sort&gt;</a></li>
<li><a href="xsl_if.html" title="XSLT &lt;xsl:if&gt; 元素">XSLT &lt;if&gt;</a></li>
<li><a href="xsl_choose.html" title="XSLT &lt;xsl:choose&gt; 元素">XSLT &lt;choose&gt;</a></li>
<li><a href="xsl_apply_templates.html" title="XSLT &lt;xsl:apply-templates&gt; 元素">XSLT apply</a></li>
</ul>
<h2>XSLT 高级</h2>
<ul>
<li><a href="xsl_client.html" title="XSLT - 客户端">XSLT 在客户端</a></li>
<li><a href="xsl_server.html" title="XSLT - 在服务器上">XSLT 在服务器端</a></li>
<li><a href="xsl_editxml.html" title="XSLT - 编辑 XML">XSLT 编辑 XML</a></li>
<li><a href="xsl_editors.html" title="XSLT 编辑器">XSLT 编辑器</a></li>
<li><a href="xsl_summary.html" title="您已经学习了 XSLT，下一步呢？">XSLT 教程总结</a></li>
</ul>
<h2>XSLT 参考手册</h2>
<ul>
<li><a href="xsl_w3celementref.html" title="XSLT 元素参考手册">XSLT 元素</a></li>
<li><a href="xsl_functions.html" title="XSLT 函数参考手册">XSLT 函数</a></li>
</ul>
</div><div id="selected">
<h2>建站手册</h2>
<ul>
<li><a href="../site/index.html" title="网站构建">网站构建</a></li>
<li><a href="../w3c/index.html" title="万维网联盟 (W3C)">万维网联盟 (W3C)</a></li>
<li><a href="../browsers/index.html" title="浏览器信息">浏览器信息</a></li>
<li><a href="../quality/index.html" title="网站品质">网站品质</a></li>
<li><a href="../semweb/index.html" title="语义网">语义网</a></li>
<li><a href="../careers/index.asp" title="职业规划">职业规划</a></li>
<li><a href="../hosting/index.html" title="网站主机">网站主机</a></li>
</ul>

<h2><a href="../about/index.html" title="关于 W3School" id="link_about">关于 W3School</a></h2>
<h2><a href="../about/about_helping.html" title="帮助 W3School" id="link_help">帮助 W3School</a></h2>

</div>

</div>

<div id="maincontent">

<h1>XSLT &lt;xsl:otherwise&gt; 元素</h1>

<div class="backtoreference">
<p><a href="xsl_w3celementref.html" title="XSLT 元素参考手册">XSLT 元素参考手册</a></p>
</div>

<div>
<h2>定义和用法</h2>

<p>&lt;xsl:otherwise&gt; 元素规定了 &lt;xsl:choose&gt; 元素的默认行为。在没有 &lt;xsl:when&gt; 的条件应用时，将发生该行为。</p>

</div>

<div>
<h2>语法</h2>

<pre>&lt;xsl:otherwise&gt;

&lt;!-- Content:template --&gt;

&lt;/xsl:otherwise&gt;</pre>

<h3>属性</h3>
<p>None</p>
</div>

<div>
<h2>实例</h2>

<h3>例子 1</h3>
<p>下面的代码将在 cd 的价格高于 30 时，向 artist 列添加粉色的背景色，否则仅仅会输出 artist 的 name：</p>
<pre>&lt;?xml version=&quot;1.0&quot; encoding=&quot;ISO-8859-1&quot;?&gt;
&lt;xsl:stylesheet version=&quot;1.0&quot;
xmlns:xsl=&quot;http://www.w3.org/1999/XSL/Transform&quot;&gt;

&lt;xsl:template match=&quot;/&quot;&gt;
  &lt;html&gt;
  &lt;body&gt;
    &lt;h2&gt;My CD Collection&lt;/h2&gt;
    &lt;table border=&quot;1&quot;&gt;
      &lt;tr bgcolor=&quot;#9acd32&quot;&gt;
        &lt;th&gt;Title&lt;/th&gt;
        &lt;th&gt;Artist&lt;/th&gt;
      &lt;/tr&gt;
      &lt;xsl:for-each select=&quot;catalog/cd&quot;&gt;
      &lt;tr&gt;
        &lt;td&gt;&lt;xsl:value-of select=&quot;title&quot;/&gt;&lt;/td&gt;
      	&lt;xsl:choose&gt;
          &lt;xsl:when test=&quot;price&amp;gt;'10'&quot;&gt;
            &lt;td bgcolor=&quot;#ff00ff&quot;&gt;
            &lt;xsl:value-of select=&quot;artist&quot;/&gt;&lt;/td&gt;
          &lt;/xsl:when&gt;
          <code>&lt;xsl:otherwise&gt;</code>
            &lt;td&gt;&lt;xsl:value-of select=&quot;artist&quot;/&gt;&lt;/td&gt;
          <code>&lt;/xsl:otherwise&gt;</code>
        &lt;/xsl:choose&gt;
      &lt;/tr&gt;
      &lt;/xsl:for-each&gt;
    &lt;/table&gt;
  &lt;/body&gt;
  &lt;/html&gt;
&lt;/xsl:template&gt;

&lt;/xsl:stylesheet&gt;</pre>
<p><a href="cdcatalog.xml">查看 XML 文件</a>，<a href="cdcatalog_choose.xsl">查看 XSL 文件</a>，<a href="cdcatalog_choose.xml">查看结果</a>。</p>

<h3>例子 2</h3>
<p>声明一个名为 &quot;color&quot; 变量。把它的值赋给当前元素的 color 属性。如果当前元素没有 color 属性，&quot;color&quot; 的值将是 &quot;green&quot;：</p>
<pre>&lt;xsl:variable name=&quot;color&quot;&gt;
  &lt;xsl:choose&gt;
    &lt;xsl:when test=&quot;@color&quot;&gt;
      &lt;xsl:value-of select=&quot;@color&quot;/&gt;
    &lt;/xsl:when&gt;  
    <code>&lt;xsl:otherwise&gt;green&lt;/xsl:otherwise&gt;</code>
  &lt;/xsl:choose&gt;
&lt;/xsl:variable&gt;</pre>
</div>

<div class="backtoreference">
<p><a href="xsl_w3celementref.html" title="XSLT 元素参考手册">XSLT 元素参考手册</a></p>
</div>

</div>

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
<h5 id="tools_reference"><a href="xsl_w3celementref.html">XSLT 参考手册</a></h5>
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
</body>

<!-- Mirrored from www.w3school.com.cn/xsl/el_otherwise.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:02:37 GMT -->
</html>