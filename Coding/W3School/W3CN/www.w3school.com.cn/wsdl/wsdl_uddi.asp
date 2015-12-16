
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.w3school.com.cn/wsdl/wsdl_uddi.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:31:22 GMT -->
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

<title>WSDL 和 UDDI</title>
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
<li><a href="wsdl_ports.asp" title="WSDL 端口">WSDL 端口</a></li>
<li><a href="wsdl_binding.html" title="WSDL 绑定">WSDL 绑定</a></li>
<li class="currentLink"><a href="wsdl_uddi.asp" title="WSDL 和 UDDI">WSDL 和 UDDI</a></li>
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

<h1>WSDL 和 UDDI</h1>

<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="wsdl_binding.html" title="WSDL 绑定">WSDL 绑定</a></li>
<li class="next"><a href="wsdl_syntax.html" title="WSDL 语法">WSDL 语法</a></li>
</ul>
</div>

<div id="intro">
<p><strong>UDDI 是一种目录服务，企业可以使用它对 Web services 进行注册和搜索。</strong></p>
<p><strong>UDDI，英文为 &quot;Universal Description, Discovery and Integration&quot;，可译为“通用描述、发现与集成服务”。</strong></p>
</div>

<div>
<h2>什么是 UDDI？</h2>
<p>UDDI 是一个独立于平台的框架，用于通过使用 Internet 来描述服务，发现企业，并对企业服务进行集成。</p>
<ul>
<li>UDDI 指的是通用描述、发现与集成服务</li>
<li>UDDI 是一种用于存储有关 web services 的信息的目录。</li>
<li>UDDI 是一种由 WSDL 描述的 web services 界面的目录。</li>
<li>UDDI 经由 SOAP 进行通信</li>
<li>UDDI 被构建入了微软的 .NET 平台</li>
</ul>
</div>

<div>
<h2>UDDI 基于什么？</h2>
<p>UDDI 使用 W3C 和 IETF* 的因特网标准，比如 XML、HTTP 和 DNS 协议。</p>
<p>UDDI 使用 WSDL 来描述到达 web services 的界面</p>
<p>此外，通过采用 SOAP，还可以实现跨平台的编程特性，大家知道，SOAP 是 XML 的协议通信规范，可在 W3C 的网站找到相关的信息。</p>
<p class="note"><span>*注释：</span>IETF - Internet Engineering Task Force</p>
</div>

<div>
<h2>UDDI 的好处</h2>
<p>任何规模的行业或企业都能得益于 UDDI。</p>
<p>在 UDDI 之前，还不存在一种 Internet 标准，可以供企业为它们的企业和伙伴提供有关其产品和服务的信息。也不存在一种方法，来集成到彼此的系统和进程中。</p>
<p>UDDI 规范帮助我们解决的问题：</p>
<ul>
<li>使得在成百万当前在线的企业中发现正确的企业成为可能</li>
<li>定义一旦首选的企业被发现后如何启动商业</li>
<li>扩展新客户并增加对目前客户的访问</li>
<li>扩展销售并延伸市场范围</li>
<li>满足用户驱动的需要，为在全球 Internet 经济中快速合作的促进来清除障碍</li>
</ul>
</div>

<div>
<h2>UDDI 如何被使用</h2>
<p>假如行业发布了一个用于航班比率检测和预订的 UDDI 标准，航空公司就可以把它们的服务注册到一个 UDDI 目录中。然后旅行社就能够搜索这个 UDDI 目录以找到航空公司预订界面。当此界面被找到后，旅行社就能够立即与此服务进行通信，这样由于它使用了一套定义良好的预订界面。</p>
</div>

<div>
<h2>谁在支持 UDDI？</h2>
<p>UDDI 是一个跨行业的研究项目，由所有主要的平台和软件提供商驱动，比如：Dell, Fujitsu, HP, Hitachi, IBM, Intel, Microsoft, Oracle, SAP, 以及 Sun, 它既是一个市场经营者的团体，也是一个电子商务的领导者。</p>
<p>已有数百家公司参与了这个 UDDI 团体。</p>
</div>

<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="wsdl_binding.html" title="WSDL 绑定">WSDL 绑定</a></li>
<li class="next"><a href="wsdl_syntax.html" title="WSDL 语法">WSDL 语法</a></li>
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

<!-- Mirrored from www.w3school.com.cn/wsdl/wsdl_uddi.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:31:22 GMT -->
</html>