
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/html5/html_5_geolocation.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 01:45:00 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />

<link rel="stylesheet" type="text/css" href="../c5.css" />
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />

<title>HTML5 地理定位</title>

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

<div id="course"><h2>HTML5 教程</h2>
<ul>
<li><a href="index.html" title="HTML5 教程">HTML5 教程</a></li>
<li><a href="html_5_intro.html" title="HTML5 简介">HTML5 简介</a></li>
<li><a href="html_5_video.html" title="HTML5 视频">HTML5 视频</a></li>
<li><a href="html_5_video_dom.html" title="HTML5 Video + DOM">HTML5 视频/DOM</a></li>
<li><a href="html_5_audio.html" title="HTML5 音频">HTML5 音频</a></li>
<li><a href="html_5_draganddrop.html" title="HTML5 拖放">HTML5 拖放</a></li>
<li><a href="html_5_canvas.html" title="HTML5 Canvas">HTML5 画布</a></li>
<li><a href="html_5_svg.html" title="HTML5 内联 SVG">HTML5 SVG</a></li>
<li><a href="html_5_canvas_vs_svg.html" title="HTML5 Canvas vs. SVG">HTML5 画布 vs SVG</a></li>
<li class="currentLink"><a href="html_5_geolocation.asp" title="HTML5 地理定位">HTML5 地理定位</a></li>
<li><a href="html_5_webstorage.html" title="HTML5 Web 存储">HTML5 Web 存储</a></li>
<li><a href="html_5_app_cache.html" title="HTML 5 应用程序缓存">HTML5 应用缓存</a></li>
<li><a href="html_5_webworkers.html" title="HTML5 Web Workers">HTML5 Web Workers</a></li>
<li><a href="html_5_serversentevents.html" title="HTML5 服务器发送事件">HTML5 服务器发送事件</a></li>
</ul>
<h2>HTML5 表单</h2>
<ul>
<li><a href="html_5_form_input_types.html" title="HTML5 Input 类型">HTML5 输入类型</a></li>
<li><a href="html_5_form_elements.html" title="HTML5 表单元素">HTML5 表单元素</a></li>
<li><a href="html_5_form_attributes.html" title="HTML5 表单属性">HTML5 表单属性</a></li>
</ul>
<h2>HTML5 测验</h2>
<ul>
<li><a href="html5_quiz.html" title="HTML5 测验">HTML5 测验</a></li>
</ul>
<h2>HTML5 参考手册</h2>
<ul>
<li><a href="html5_reference.asp" title="HTML5 参考手册">HTML5 标签</a></li>
<li><a href="../tags/html_ref_standardattributes.html" title="HTML5 标准属性">HTML5 属性</a></li>
<li><a href="../tags/html_ref_eventattributes.html" title="HTML5 事件属性">HTML5 事件</a></li>
<li><a href="../tags/html_ref_audio_video_dom.html" title="HTML5 Audio/Video DOM 属性">HTML5 视频/音频</a></li>
<li><a href="../tags/html_ref_canvas.html" title="HTML5 Canvas 参考手册">HTML5 画布</a></li>
<li><a href="../tags/html_ref_dtd.asp" title="HTML 元素和有效的 DTD">HTML 有效 DTD</a></li>
</ul>
</div>

</div>

<div id="maincontent">

<h1>HTML5 地理定位</h1>

<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="html_5_canvas_vs_svg.html" title="HTML5 Canvas vs. SVG">HTML5 画布 vs SVG</a></li>
<li class="next"><a href="html_5_webstorage.html" title="HTML5 Web 存储">HTML5 Web 存储</a></li>
</ul>
</div>


<div id="intro">
<p><strong>HTML5 Geolocation（地理定位）用于定位用户的位置。</strong></p>
<p class="tiy"><a target="_blank" href="../tiy/t88ae.html?f=html5_geolocation_map_script">亲自试一试：在谷歌地图上显示您的位置</a></p>
</div>


<div>
<h2>定位用户的位置</h2>

<p>HTML5 Geolocation API 用于获得用户的地理位置。</p>

<p>鉴于该特性可能侵犯用户的隐私，除非用户同意，否则用户位置信息是不可用的。</p>
</div>


<div>
<h2>浏览器支持</h2>

<p>Internet Explorer 9、Firefox、Chrome、Safari 以及 Opera 支持地理定位。</p>

<p class="note"><span>注释：</span>对于拥有 GPS 的设备，比如 iPhone，地理定位更加精确。</p>
</div>


<div>
<h2>HTML5 - 使用地理定位</h2>

<p>请使用 getCurrentPosition() 方法来获得用户的位置。</p>

<p>下例是一个简单的地理定位实例，可返回用户位置的经度和纬度。</p>

<h3>实例</h3>

<pre>
&lt;script&gt;
var x=document.getElementById(&quot;demo&quot;);
function getLocation()
  {
  if (navigator.geolocation)
    {
    navigator.geolocation.<code>getCurrentPosition(showPosition)</code>;
    }
  else{x.innerHTML=&quot;Geolocation is not supported by this browser.&quot;;}
  }
function showPosition(position)
  {
  x.innerHTML=&quot;Latitude: &quot; + position.coords.latitude +
  &quot;&lt;br /&gt;Longitude: &quot; + position.coords.longitude;
  }
&lt;/script&gt;
</pre>

<p class="tiy"><a target="_blank" href="../tiy/td69d.html?f=html5_geolocation">亲自试一试</a></p>

<p>例子解释：</p>

<ul>
<li>检测是否支持地理定位</li>
<li>如果支持，则运行 getCurrentPosition() 方法。如果不支持，则向用户显示一段消息。</li>
<li>如果getCurrentPosition()运行成功，则向参数showPosition中规定的函数返回一个coordinates对象</li>
<li>showPosition() 函数获得并显示经度和纬度</li>
</ul>

<p>上面的例子是一个非常基础的地理定位脚本，不含错误处理。</p>
</div>


<div>
<h2>处理错误和拒绝</h2>

<p>getCurrentPosition() 方法的第二个参数用于处理错误。它规定当获取用户位置失败时运行的函数：</p>

<h3>实例</h3>

<pre>
function showError(error)
  {
  switch(error.code)
    {
    case error.PERMISSION_DENIED:
      x.innerHTML=&quot;User denied the request for Geolocation.&quot;
      break;
    case error.POSITION_UNAVAILABLE:
      x.innerHTML=&quot;Location information is unavailable.&quot;
      break;
    case error.TIMEOUT:
      x.innerHTML=&quot;The request to get user location timed out.&quot;
      break;
    case error.UNKNOWN_ERROR:
      x.innerHTML=&quot;An unknown error occurred.&quot;
      break;
    }
  }
</pre>

<p class="tiy"><a target="_blank" href="../tiy/tb8dc.asp?f=html5_geolocation_error">亲自试一试</a></p>

<p>错误代码：</p>

<ul>
<li>Permission denied - 用户不允许地理定位</li>
<li>Position unavailable - 无法获取当前位置</li>
<li>Timeout - 操作超时</li>
</ul>
</div>


<div>
<h2>在地图中显示结果</h2>

<p>如需在地图中显示结果，您需要访问可使用经纬度的地图服务，比如谷歌地图或百度地图：</p>

<h3>实例</h3>

<pre>
function showPosition(position)
{
var latlon=position.coords.latitude+&quot;,&quot;+position.coords.longitude;

var img_url=&quot;http://maps.googleapis.com/maps/api/staticmap?center=&quot;
+latlon+&quot;&amp;zoom=14&amp;size=400x300&amp;sensor=false&quot;;

document.getElementById(&quot;mapholder&quot;).innerHTML=&quot;&lt;img src='&quot;+img_url+&quot;' /&gt;&quot;;
}
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t6d05.html?f=html5_geolocation_map">亲自试一试</a></p>

<p>在上例中，我们使用返回的经纬度数据在谷歌地图中显示位置（使用静态图像）。</p>

<p class="tiy"><a target="_blank" href="../tiy/t88ae.html?f=html5_geolocation_map_script">谷歌地图脚本</a></p>

<p>上面的链接向您演示如何使用脚本来显示带有标记、缩放和拖曳选项的交互式地图。</p>
</div>

<div>
<h2>给定位置的信息</h2>

<p>本页演示的是如何在地图上显示用户的位置。不过，地理定位对于给定位置的信息同样很有用处。</p>

<p>案例：</p>

<ul>
<li>更新本地信息</li>
<li>显示用户周围的兴趣点</li>
<li>交互式车载导航系统 (GPS)</li>
</ul>
</div>


<div>
<h2>getCurrentPosition() 方法 - 返回数据</h2>

<p>若成功，则 getCurrentPosition() 方法返回对象。始终会返回 latitude、longitude 以及 accuracy 属性。如果可用，则会返回其他下面的属性。</p>

<table class="dataintable">
<tr>
<th style="width:40%;">属性</th>
<th>描述</th>
</tr>

<tr>
<td>coords.latitude</td>
<td>十进制数的纬度</td>
</tr>

<tr>
<td>coords.longitude</td>
<td>十进制数的经度</td>
</tr>

<tr>
<td>coords.accuracy</td>
<td>位置精度</td>
</tr>

<tr>
<td>coords.altitude</td>
<td>海拔，海平面以上以米计</td>
</tr>

<tr>
<td>coords.altitudeAccuracy</td>
<td>位置的海拔精度</td>
</tr>

<tr>
<td>coords.heading</td>
<td>方向，从正北开始以度计</td>
</tr>

<tr>
<td>coords.speed</td>
<td>速度，以米/每秒计</td>
</tr>

<tr>
<td>timestamp</td>
<td>响应的日期/时间</td>
</tr>
</table>
</div>


<div>
<h2>Geolocation 对象 - 其他有趣的方法</h2>

<p>watchPosition() - 返回用户的当前位置，并继续返回用户移动时的更新位置（就像汽车上的 GPS）。</p>

<p>clearWatch() - 停止 watchPosition() 方法</p>

<p>下面的例子展示 watchPosition() 方法。您需要一台精确的 GPS 设备来测试该例（比如 iPhone）：</p>

<h3>实例</h3>

<pre>
&lt;script&gt;
var x=document.getElementById(&quot;demo&quot;);
function getLocation()
  {
  if (navigator.geolocation)
    {
    navigator.geolocation.<code>watchPosition(showPosition)</code>;
    }
  else{x.innerHTML=&quot;Geolocation is not supported by this browser.&quot;;}
  }
function showPosition(position)
  {
  x.innerHTML=&quot;Latitude: &quot; + position.coords.latitude +
  &quot;&lt;br /&gt;Longitude: &quot; + position.coords.longitude;
  }
&lt;/script&gt;
</pre>

<p class="tiy"><a target="_blank" href="../tiy/td036.html?f=html5_geolocation_watchposition">亲自试一试</a></p>
</div>


<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="html_5_canvas_vs_svg.html" title="HTML5 Canvas vs. SVG">HTML5 画布 vs SVG</a></li>
<li class="next"><a href="html_5_webstorage.html" title="HTML5 Web 存储">HTML5 Web 存储</a></li>
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
<h5 id="tools_reference"><a href="../tags/index.html">HTML5 参考手册</a></h5>
<h5 id="tools_quiz"><a href="html5_quiz.html">HTML5 测验</a></h5>
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

<!-- Mirrored from www.w3school.com.cn/html5/html_5_geolocation.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 01:45:26 GMT -->
</html>