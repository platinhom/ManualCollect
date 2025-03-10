
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.w3school.com.cn/vbscript/func_timeserial.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:02:36 GMT -->
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

<title>VBScript TimeSerial 函数</title>
</head>

<body class="serverscripting">
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

<div id="course"><h2>VBScript 教程</h2>
<ul>
<li><a href="index.html" title="VBScript 教程">VB 教程</a></li>
<li><a href="vbscript_intro.asp" title="VBScript 简介">VB 简介</a></li>
<li><a href="vbscript_howto.html" title="VBScript How to">VB How to</a></li>
<li><a href="vbscript_whereto.asp" title="VBScript Where to">VB Where to</a></li>
<li><a href="vbscript_variables.asp" title="VBScript 变量">VB 变量</a></li>
<li><a href="vbscript_procedures.html" title="VBScript 程序">VB 程序</a></li>
<li><a href="vbscript_conditionals.asp" title="VBScript 条件语句">VB 条件语句</a></li>
<li><a href="vbscript_looping.html" title="VBScript 循环语句">VB 循环语句</a></li>
<li><a href="vbscript_summary.html" title="您已经学习了 VBScript，下一步呢？">VB 教程总结</a></li>
</ul>
<h2>VBScript 实例</h2>
<ul>
<li><a href="../example/vbst_examples.html" title="VBScript 实例">VB 实例</a></li>
</ul>
<h2>VBScript 参考手册</h2>
<ul>
<li><a href="vbscript_ref_functions.html" title="VBScript 函数">VB 函数</a></li>
<li><a href="vbscript_ref_keywords.html" title="VBScript 关键字">VB 关键字</a></li>
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
<h1>VBScript TimeSerial 函数</h1>

<div class="backtoreference">
<p><a href="vbscript_ref_functions.html" title="VBScript 函数">VBScript 函数参考手册</a></p>
</div>

<div>
<h2>定义和用法</h2>
<p>TimeSerial 函数可把时、分、秒合并成为时间。</p>
<p class="note"><span>注释：</span>时分秒若超过应有的范围，其推算的原理与 DateSerial 相同。若经推算后得到的时间小于 #00:00:00#，则自动将负时间变为正时间；若经推算后得到的时间大于等于 #24:00:00#，则时间向前增加，使数据变成一个含有日期时间的数据，其中日期的起算日是 #12/30/1899#。</p>

<h3>语法</h3>
<pre>TimeSerial(hour,minute,second)</pre>

<table class="dataintable"> 
  <tr>
    <th>参数</th>
    <th>描述</th>
  </tr>  
  <tr>
    <td>hour</td>
    <td>必需的。介于 0-23 的数字，或数值表达式。</td>
  </tr>
  <tr>
    <td>minute</td>
    <td>必需的。介于 0-59 的数字，或数值表达式。</td>
  </tr>
  <tr>
    <td>second</td>
    <td>必需的。介于 0-59 的数字，或数值表达式。</td>
  </tr>
  </table>
<p>要指定一时刻，如 11:59:59，TimeSerial 的参数取值应在可接受的范围内；也就是说，小时应介于 0-23 之间，分和秒应介于 0-59 之间。但是，可以使用数值表达式为每个参数指定相对时间，这一表达式代表某时刻之前或之后的时、分或秒数。</p>

<p>当任何一个参数的取值超出可接受的范围时，它会正确地进位到下一个较大的时间单位中。例如，如果指定了 75 分钟，则这个时间被解释成一小时十五分钟。但是，如果任何一个参数值超出 -32768 到 32767 的范围，就会导致错误。如果使用三个参数直接指定的时间或通过表达式计算出的时间超出可接受的日期范围，也会导致错误。</p>
</div>

<div>
<h2>实例</h2>
<h3>例子 1</h3>
<pre>document.write(TimeSerial(9,30,50)) '正常的调用方法</pre>
<p>输出：</p>
<pre>9:30:50 或 9:30:50 AM</pre>

<h3>例子 2</h3>
<pre>document.write(TimeSerial(0,9,11)) '正常的调用方法</pre>
<p>输出：</p>
<pre>0:09:11 或 12:09:11 AM</pre>

<h3>例子 3</h3>
<pre>document.write(TimeSerial(14+2,9-2,1-1)) '根据数值表达式的结果来输出时间</pre>
<p>输出：</p>
<pre>16:07:00 或 4:07:00 PM</pre>

<h3>例子 4</h3>
<pre>document.write(TimeSerial(26,30,0)) '日期从#12/30/1899#起向后增加1日</pre>
<p>输出：</p>
<pre>1899-12-31 2:30:00 AM</pre>
</div>

<div class="backtoreference">
<p><a href="vbscript_ref_functions.html" title="VBScript 函数">VBScript 函数参考手册</a></p>
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
<h5 id="tools_reference"><a href="vbscript_ref_functions.html">VBScript 参考手册</a></h5>
<h5 id="tools_example"><a href="../example/vbst_examples.html">VBScript 实例</a></h5>
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

<!-- Mirrored from www.w3school.com.cn/vbscript/func_timeserial.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:02:36 GMT -->
</html>