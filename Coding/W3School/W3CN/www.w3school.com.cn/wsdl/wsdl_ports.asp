
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.w3school.com.cn/wsdl/wsdl_ports.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:31:22 GMT -->
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

<title>WSDL 端口</title>
</head>

<body class="webservices">
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

<div id="course"><h2>WSDL 教程</h2>
<ul>
<li><a href="index.html" title="WSDL 教程">WSDL 教程</a></li>
<li><a href="wsdl_intro.html" title="WSDL 简介">WSDL 简介</a></li>
<li><a href="wsdl_documents.html" title="WSDL 文档">WSDL 文档</a></li>
<li class="currentLink"><a href="wsdl_ports.asp" title="WSDL 端口">WSDL 端口</a></li>
<li><a href="wsdl_binding.html" title="WSDL 绑定">WSDL 绑定</a></li>
<li><a href="wsdl_uddi.asp" title="WSDL 和 UDDI">WSDL 和 UDDI</a></li>
<li><a href="wsdl_syntax.html" title="WSDL 语法">WSDL 语法</a></li>
<li><a href="wsdl_summary.html" title="您已经学习了 WSDL，下一步呢？">WSDL 总结</a></li>
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

<h1>WSDL 端口</h1>

<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="wsdl_documents.html" title="WSDL 文档">WSDL 文档</a></li>
<li class="next"><a href="wsdl_binding.html" title="WSDL 绑定">WSDL 绑定</a></li>
</ul>
</div>


<div id="intro">
<p><strong>WSDL 端口可描述由某个 web service 提供的界面（合法操作）。</strong></p>
</div>


<div>
<h2>WSDL 端口</h2>
<p><em>&lt;portType&gt;</em> 元素是最重要的 WSDL 元素。</p>
<p>它可描述一个 <em>web service</em>、可被执行的<em>操作</em>，以及相关的<em>消息</em>。</p>
<p>端口定义了指向某个 web service 的连接点。可以把该元素比作传统编程语言中的一个函数库（或一个模块、或一个类），而把每个操作比作传统编程语言中的一个函数。</p>
</div>


<div>
<h2>操作类型</h2>
<p>请求-响应是最普通的操作类型，不过 WSDL 定义了四种类型：</p>
<table class="dataintable">
<tr>
<th>类型</th>
<th>定义</th>
</tr>

<tr>
<td>One-way</td>
<td>此操作可接受消息，但不会返回响应。</td>
</tr>

<tr>
<td>Request-response</td>
<td>此操作可接受一个请求并会返回一个响应</td>
</tr>

<tr>
<td>Solicit-response</td>
<td>此操作可发送一个请求，并会等待一个响应。</td>
</tr>

<tr>
<td>Notification</td>
<td>此操作可发送一条消息，但不会等待响应。</td>
</tr>
</table>
</div>


<div>
<h2>One-Way 操作</h2>
<p>一个 one-way 操作的例子：</p>

<pre>&lt;message name=&quot;newTermValues&quot;&gt;
   &lt;part name=&quot;term&quot; type=&quot;xs:string&quot;/&gt;
   &lt;part name=&quot;value&quot; type=&quot;xs:string&quot;/&gt;
&lt;/message&gt;

&lt;portType name=&quot;glossaryTerms&quot;&gt;
   &lt;operation name=&quot;setTerm&quot;&gt;
      &lt;input name=&quot;newTerm&quot; message=&quot;newTermValues&quot;/&gt;
   &lt;/operation&gt;
&lt;/portType &gt;</pre>

<p>在这个例子中，端口 &quot;glossaryTerms&quot; 定义了一个名为 &quot;setTerm&quot; 的 one-way 操作。</p>
<p>这个 &quot;setTerm&quot; 操作可接受新术语表项目消息的输入，这些消息使用一条名为 &quot;newTermValues&quot; 的消息，此消息带有输入参数 &quot;term&quot; 和 &quot;value&quot;。不过，没有为这个操作定义任何输出。</p>
</div>


<div>
<h2>Request-Response 操作</h2>
<p>一个 request-response 操作的例子：</p>
<pre>&lt;message name=&quot;getTermRequest&quot;&gt;
   &lt;part name=&quot;term&quot; type=&quot;xs:string&quot;/&gt;
&lt;/message&gt;

&lt;message name=&quot;getTermResponse&quot;&gt;
   &lt;part name=&quot;value&quot; type=&quot;xs:string&quot;/&gt;
&lt;/message&gt;

&lt;portType name=&quot;glossaryTerms&quot;&gt;
  &lt;operation name=&quot;getTerm&quot;&gt;
    &lt;input message=&quot;getTermRequest&quot;/&gt;
    &lt;output message=&quot;getTermResponse&quot;/&gt;
  &lt;/operation&gt;
&lt;/portType&gt;</pre>
<p>在这个例子中，端口 &quot;glossaryTerms&quot; 定义了一个名为 &quot;getTerm&quot; 的 request-response 操作。</p>
<p>&quot;getTerm&quot; 操作会请求一个名为 &quot;getTermRequest&quot; 的输入消息，此消息带有一个名为 &quot;term&quot; 的参数，并将返回一个名为 &quot;getTermResponse&quot; 的输出消息，此消息带有一个名为 &quot;value&quot; 的参数。</p>
</div>


<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="wsdl_documents.html" title="WSDL 文档">WSDL 文档</a></li>
<li class="next"><a href="wsdl_binding.html" title="WSDL 绑定">WSDL 绑定</a></li>
</ul>
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
</div><div id="ad">
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

<!-- Mirrored from www.w3school.com.cn/wsdl/wsdl_ports.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:31:22 GMT -->
</html>