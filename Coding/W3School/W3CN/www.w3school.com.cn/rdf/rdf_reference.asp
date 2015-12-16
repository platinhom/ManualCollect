
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.w3school.com.cn/rdf/rdf_reference.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:31:23 GMT -->
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

<title>RDF 参考手册</title>
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

<div id="course"><h2>RDF 教程</h2>
<ul>
<li><a href="index.html" title="RDF 教程">RDF 教程</a></li>
<li><a href="rdf_intro.html" title="RDF 简介">RDF 简介</a></li>
<li><a href="rdf_rules.html" title="RDF 规则">RDF 规则</a></li>
<li><a href="rdf_example.html" title="RDF 实例">RDF 实例</a></li>
<li><a href="rdf_main.html" title="RDF 元素">RDF 元素</a></li>
<li><a href="rdf_containers.html" title="RDF 容器">RDF 容器</a></li>
<li><a href="rdf_collections.html" title="RDF 集合">RDF 集合</a></li>
<li><a href="rdf_schema.html" title="RDF Schema">RDF Schema</a></li>
<li><a href="rdf_dublin.html" title="RDF 都柏林核心">RDF 都柏林核心</a></li>
<li><a href="rdf_owl.html" title="RDF OWL">RDF OWL</a></li>
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

<h1>RDF 简介</h1>

<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="#" title=""></a></li>
<li class="next"><a href="#" title=""></a></li>
</ul>
</div>


<div>
<h2>RDF 命名空间</h2>

<h3>RDF 命名空间 (xmlns:rdf)：</h3>
<p><a href="rdf-syntax-ns.xml">http://www.w3.org/1999/02/22-rdf-syntax-ns#</a></p>

<h3>RDFS 命名空间 (xmlns:rdfs )：</h3>
<p><a href="rdf-schema.xml">http://www.w3.org/2000/01/rdf-schema#</a></p>
</div>

<div>
<h2>RDF 扩展名和 Mime 类型</h2>
<p>RDF 文件的推荐扩展名是 *<em>.rdf</em>。不过，*<em>.xml</em> 常用于提供对老式 XML 解析器的兼容性。</p>
<p>已注册的 MIME 类型是 &quot;<em>application/rdf+xml</em>&quot;。</p>
</div>

<div>
<h2>RDFS / RDF 类</h2>
<table class="dataintable">
  <tr>
    <th>Element</th>
    <th>Class of</th>

    <th>Subclass of</th>
  </tr>
  <tr>
    <td>rdfs:Class</td>
    <td>All classes</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdfs:Datatype</td>
    <td>Data types</td>

    <td>Class</td>
    </tr>
  <tr>
    <td>rdfs:Resource</td>
    <td>All resources</td>
    <td>Class</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdfs:Container</td>
    <td>Containers</td>

    <td>Resource</td>
    </tr>
  <tr>
    <td>rdfs:Literal</td>
    <td>Literal values (text and numbers)</td>
    <td>Resource</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>rdf:List</td>
    <td>Lists</td>

    <td>Resource</td>
    </tr>
  <tr>
    <td>rdf:Property</td>
    <td>Properties</td>
    <td>Resource</td>
  </tr>

  <tr>
    <td>rdf:Statement</td>
    <td>Statements</td>
    <td>Resource</td>
  </tr>
  <tr>
    <td>&nbsp;</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdf:Alt</td>
    <td>Containers of alternatives</td>
    <td>Container</td>

    </tr>
  <tr>
    <td>rdf:Bag</td>
    <td>Unordered containers</td>
    <td>Container</td>
  </tr>
  <tr>

    <td>rdf:Seq</td>
    <td>Ordered containers</td>
    <td>Container</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>

    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>rdfs:ContainerMembershipProperty</td>
    <td>Container membership properties</td>
    <td>Property</td>
    </tr>

  <tr>
    <td>rdf:XMLLiteral</td>
    <td>XML literal values</td>
    <td>Literal</td>
  </tr>
</table>
</div>

<div>
<h2>RDFS / RDF 属性</h2>
<table class="dataintable">
  <tr>
    <th>Element</th>
    <th>Domain</th>
    <th>Range</th>
    <th>Description</th>

  </tr>
  <tr>
    <td>rdfs:domain</td>
    <td>Property</td>
    <td>Class</td>
    <td>The domain of the resource</td>
  </tr>

  <tr>
    <td>rdfs:range</td>
    <td>Property</td>
    <td>Class</td>
    <td>The range of the resource</td>
  </tr>
  <tr>

    <td>rdfs:subPropertyOf</td>
    <td>Property</td>
    <td>Property</td>
    <td>The property is a sub property of a property</td>
  </tr>
  <tr>
    <td>&nbsp;</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdfs:subClassOf</td>
    <td>Class</td>
    <td>Class</td>

    <td>The resource is a subclass of a class</td>
  </tr>
  <tr>
    <td>rdfs:comment</td>
    <td>Resource</td>
    <td>Literal</td>
    <td>The human readable description of the resource</td>

  </tr>
  <tr>
    <td>rdfs:label</td>
    <td>Resource</td>
    <td>Literal</td>
    <td>The human readable label (name)&nbsp; of the resource</td>

  </tr>
  <tr>
    <td>rdfs:isDefinedBy</td>
    <td>Resource</td>
    <td>Resource</td>
    <td>The definition of the resource</td>
  </tr>

  <tr>
    <td>rdfs:seeAlso</td>
    <td>Resource</td>
    <td>Resource</td>
    <td>The additional information about the resource</td>
  </tr>
  <tr>

    <td>rdfs:member</td>
    <td>Resource</td>
    <td>Resource</td>
    <td>The member of the resource</td>
  </tr>
  <tr>
    <td>&nbsp;</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdf:first</td>
    <td>List</td>
    <td>Resource</td>

    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdf:rest</td>
    <td>List</td>
    <td>List</td>
    <td>&nbsp;</td>

  </tr>
  <tr>
    <td>rdf:subject</td>
    <td>Statement</td>
    <td>Resource</td>
    <td>The subject of the resource in an RDF Statement</td>
  </tr>

  <tr>
    <td>rdf:predicate</td>
    <td>Statement</td>
    <td>Resource</td>
    <td>The predicate of the resource in an RDF Statement</td>
  </tr>
  <tr>

    <td>rdf:object</td>
    <td>Statement </td>
    <td>Resource</td>
    <td>The object of the resource in an RDF Statement</td>
  </tr>
  <tr>
    <td>rdf:value</td>

    <td>Resource</td>
    <td>Resource</td>
    <td>The property used for values</td>
  </tr>
  <tr>
    <td>rdf:type</td>
    <td>Resource</td>

    <td>Class</td>
    <td>The resource is an instance of a class</td>
  </tr>
</table>
</div>

<div>
<h2>RDF 属性</h2>
<table class="dataintable">
  <tr>

    <th>Element</th>
    <th>Domain</th>
    <th>Range</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>&nbsp;</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdf:about</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>

    <td>Defines the resource being described</td>
  </tr>
  <tr>
    <td>rdf:Description</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Container for the description of a resource</td>

  </tr>
  <tr>
    <td>rdf:resource</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Defines a resource to identify a property</td>
  </tr>
  <tr>

    <td>rdf:datatype</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Defines the data type of an element</td>
  </tr>
  <tr>
    <td>rdf:ID</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Defines the ID of an element</td>
  </tr>
  <tr>
    <td>rdf:li</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>

    <td>Defines a list</td>
  </tr>
  <tr>
    <td>rdf:_<i>n</i></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Defines a node</td>

  </tr>
  <tr>
    <td>rdf:nodeID</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Defines the ID of an element node</td>
  </tr>
  <tr>

    <td>rdf:parseType</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Defines how an element should be parsed</td>
  </tr>
  <tr>
    <td>rdf:RDF</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>The root of an RDF document</td>
  </tr>
  <tr>
    <td>xml:base</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>

    <td>Defines the XML base</td>
  </tr>
  <tr>
    <td>xml:lang</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Defines the language of the element content</td>

  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>rdf:aboutEach</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>(removed)</td>
  </tr>
  <tr>
    <td>rdf:aboutEachPrefix</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>

    <td>(removed)</td>
  </tr>
  <tr>
    <td>rdf:bagID</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>(removed)</td>

  </tr>
</table>
</div>

<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="#" title=""></a></li>
<li class="next"><a href="#" title=""></a></li>
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
</div>

<div id="tools">
<h5 id="tools_reference"><a href="rdf_reference.asp">RDF 参考手册</a></h5>
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

<!-- Mirrored from www.w3school.com.cn/rdf/rdf_reference.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:31:27 GMT -->
</html>