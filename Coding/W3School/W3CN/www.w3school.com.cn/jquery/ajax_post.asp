
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/jquery/ajax_post.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:49:28 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<title>jQuery ajax - post() 方法</title>
</head>

<body class="browserscripting">
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

<div id="course"><h2>jQuery 教程</h2>
<ul>
<li><a href="index.html" title="jQuery 教程">jQuery 教程</a></li>
<li><a href="jquery_intro.html" title="jQuery 简介">jQuery 简介</a></li>
<li><a href="jquery_install.html" title="jQuery 安装">jQuery 安装</a></li>
<li><a href="jquery_syntax.html" title="jQuery 语法">jQuery 语法</a></li>
<li><a href="jquery_selectors.html" title="jQuery 选择器">jQuery 选择器</a></li>
<li><a href="jquery_events.html" title="jQuery 事件">jQuery 事件</a></li>
</ul>
<h2>jQuery 效果</h2>
<ul>
<li><a href="jquery_hide_show.html" title="jQuery jQuery 效果 - 隐藏和显示">jQuery 隐藏/显示</a></li>
<li><a href="jquery_fade.html" title="jQuery jQuery 效果 - 淡入淡出">jQuery 淡入淡出</a></li>
<li><a href="jquery_slide.html" title="jQuery 效果 - 滑动">jQuery 滑动</a></li>
<li><a href="jquery_animate.html" title="jQuery 效果 - 动画">jQuery 动画</a></li>
<li><a href="jquery_stop.html" title="jQuery 停止动画">jQuery stop()</a></li>
<li><a href="jquery_callback.html" title="jQuery 回调函数">jQuery Callback</a></li>
<li><a href="jquery_chaining.html" title="jQuery - Chaining">jQuery Chaining</a></li>
</ul>
<h2>jQuery HTML</h2>
<ul>
<li><a href="jquery_dom_get.html" title="jQuery - 获取内容和属性">jQuery 获取</a></li>
<li><a href="jquery_dom_set.html" title="jQuery - 设置内容和属性">jQuery 设置</a></li>
<li><a href="jquery_dom_add.html" title="jQuery - 添加元素">jQuery 添加</a></li>
<li><a href="jquery_dom_remove.html" title="jQuery - 删除元素">jQuery 删除</a></li>
<li><a href="jquery_css_classes.html" title="jQuery - 获取和设置 CSS 类">jQuery CSS 类</a></li>
<li><a href="jquery_css.html" title="jQuery - css() 方法">jQuery css()</a></li>
<li><a href="jquery_dimensions.asp" title="jQuery - 尺寸">jQuery 尺寸</a></li>
</ul>
<h2>jQuery 遍历</h2>
<ul>
<li><a href="jquery_traversing.html" title="jQuery 遍历">jQuery 遍历</a></li>
<li><a href="jquery_traversing_ancestors.asp" title="jQuery 遍历 - 祖先">jQuery 祖先</a></li>
<li><a href="jquery_traversing_descendants.html" title="jQuery 遍历 - 后代">jQuery 后代</a></li>
<li><a href="jquery_traversing_siblings.html" title="jQuery 遍历 - 同胞">jQuery 同胞</a></li>
<li><a href="jquery_traversing_filtering.html" title="jQuery 遍历 - 过滤">jQuery 过滤</a></li>
</ul>
<h2>jQuery AJAX</h2>
<ul>
<li><a href="jquery_ajax_intro.html" title="jQuery - AJAX 简介">jQuery AJAX 简介</a></li>
<li><a href="jquery_ajax_load.html" title="jQuery - AJAX load() 方法">jQuery 加载</a></li>
<li><a href="jquery_ajax_get_post.html" title="jQuery - AJAX get() 和 post() 方法">jQuery Get/Post</a></li>
</ul>
<h2>jQuery 杂项</h2>
<ul>
<li><a href="jquery_noconflict.html" title="jQuery - noConflict() 方法">jQuery noConflict()</a></li>
</ul>
<h2>jQuery 实例</h2>
<ul>
<li><a href="jquery_examples.html" title="jQuery 实例">jQuery 实例</a></li>
<li><a href="jquery_quiz.html" title="jQuery 测验">jQuery 测验</a></li>
</ul>
<h2>jQuery 参考手册</h2>
<ul>
<li><a href="jquery_reference.html" title="jQuery 参考手册">jQuery 参考手册</a></li>
<li><a href="jquery_ref_selectors.html" title="jQuery 参考手册 - 选择器">jQuery 选择器</a></li>
<li><a href="jquery_ref_events.html" title="jQuery 参考手册 - 事件">jQuery 事件</a></li>
<li><a href="jquery_ref_effects.html" title="jQuery 参考手册 - 效果">jQuery 效果</a></li>
<li><a href="jquery_ref_manipulation.html" title="jQuery 参考手册 - 文档操作">jQuery 文档操作</a></li>
<li><a href="jquery_ref_attributes.html" title="jQuery 参考手册 - 属性操作">jQuery 属性操作</a></li>
<li><a href="jquery_ref_css.html" title="jQuery 参考手册 - CSS 操作">jQuery CSS 操作</a></li>
<li><a href="jquery_ref_ajax.html" title="jQuery 参考手册 - Ajax">jQuery Ajax</a></li>
<li><a href="jquery_ref_traversing.html" title="jQuery 参考手册 - 遍历">jQuery 遍历</a></li>
<li><a href="jquery_ref_data.html" title="jQuery 参考手册 - 数据">jQuery 数据</a></li>
<li><a href="jquery_ref_dom_element_methods.html" title="jQuery 参考手册 - DOM 元素方法">jQuery DOM 元素</a></li>
<li><a href="jquery_ref_core.html" title="jQuery 参考手册 - 核心">jQuery 核心</a></li>
<li><a href="jquery_ref_prop.html" title="jQuery 属性">jQuery 属性</a></li>
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

<h1>jQuery ajax - post() 方法</h1>

<div class="backtoreference">
<p><a href="jquery_ref_ajax.html" title="jQuery 参考手册 - Ajax">jQuery Ajax 参考手册</a></p>
</div>


<div>
<h2>实例</h2>

<p>请求 test.php 网页，忽略返回值：</p>

<pre>$.post(&quot;test.php&quot;);</pre>


<h3>TIY 实例</h3>

<p>通过 AJAX POST 请求改变 div 元素的文本：</p>

<pre>
$(&quot;input&quot;).keyup(function(){
  txt=$(&quot;input&quot;).val();
  $.post(&quot;demo_ajax_gethint.asp&quot;,{suggest:txt},function(result){
    $(&quot;span&quot;).html(result);
  });
});
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t4a58.html?f=jquery_ajax_post">亲自试一试</a></p>
</div>


<div>
<h2>定义和用法</h2>

<p>post() 方法通过 HTTP POST 请求从服务器载入数据。</p>

<h3>语法</h3>

<pre>jQuery.post(<i>url</i>,<i>data</i>,<i>success(data, textStatus, jqXHR)</i>,<i>dataType</i>)</pre>

<table class="dataintable">
<tr>
<th style="width:35%;">参数</th>
<th>描述</th>
</tr>

<tr>
<td><i>url</i></td>
<td>必需。规定把请求发送到哪个 URL。</td>
</tr>

<tr>
<td><i>data</i></td>
<td>可选。映射或字符串值。规定连同请求发送到服务器的数据。</td>
</tr>

<tr>
<td><i>success(data, textStatus, jqXHR)</i></td>
<td>可选。请求成功时执行的回调函数。</td>
</tr>

<tr>
<td><i>dataType</i></td>
<td>
<p>可选。规定预期的服务器响应的数据类型。</p>
<p>默认执行智能判断（xml、json、script 或 html）。</p>
</td>
</tr>
</table>

<h3>详细说明</h3>

<p>该函数是简写的 Ajax 函数，等价于：</p>

<pre>$.ajax({
  type: 'POST',
  url: <i>url</i>,
  data: <i>data</i>,
  success: <i>success</i>,
  dataType: <i>dataType</i>
});</pre>

<p>根据响应的不同的 MIME 类型，传递给 success 回调函数的返回数据也有所不同，这些数据可以是 XML 根元素、文本字符串、JavaScript 文件或者 JSON 对象。也可向 success 回调函数传递响应的文本状态。</p>

<p>对于 jQuery 1.5，也可以向 success 回调函数传递 <a href="#jqxhr_object">jqXHR 对象</a>（jQuery 1.4 中传递的是 XMLHttpRequest 对象）。</p>

<p>大部分实现会规定一个 success 函数：</p>

<pre>
$.post(&quot;ajax/test.html&quot;, function(data) {
  $(&quot;.result&quot;).html(data);
});
</pre>

<p>本例读取被请求的 HTML 片段，并插入页面中。</p>

<p>通过 POST 读取的页面不被缓存，因此 <a href="ajax_ajaxsetup.html" title="jQuery ajax - ajaxSetup() 方法">jQuery.ajaxSetup()</a> 中的 cache 和 ifModified 选项不会影响这些请求。</p>

<p class="note"><span>注释：</span>由于浏览器安全方面的限制，大多数 "Ajax" 请求遵守同源策略；请求无法从不同的域、子域或协议成功地取回数据。</p>

<p class="note"><span>注释：</span>如果由 jQuery.post() 发起的请求返回错误代码，那么不会有任何提示，除非脚本已调用了全局的 <a href="ajax_ajaxerror.html" title="jQuery ajax - ajaxError() 方法">.ajaxError() 方法</a>。或者对于 jQuery 1.5，jQuery.post() 返回的 jqXHR 对象的 .error() 方法也可以用于错误处理。</p>
</div>


<div id="jqxhr_object">
<h2>jqXHR 对象</h2>

<p>对于 jQuery 1.5，所有 jQuery 的 AJAX 方法返回的是 XMLHTTPRequest 对象的超集。由 $.post() 返回的 jQuery XHR 对象或 &quot;jqXHR,&quot;实现了约定的接口，赋予其所有的属性、方法，以及约定的行为。出于对由 <a href="ajax_ajax.html" title="jQuery ajax - ajax() 方法">$.ajax()</a> 使用的回调函数名称便利性和一致性的考虑，它提供了 .error(), .success() 以及 .complete() 方法。这些方法使用请求终止时调用的函数参数，该函数接受与对应命名的 $.ajax() 回调函数相同的参数。</p>

<p>jQuery 1.5 中的约定接口同样允许 jQuery 的 Ajax 方法，包括 $.post()，来链接同一请求的多个 .success()、.complete() 以及 .error() 回调函数，甚至会在请求也许已经完成后分配这些回调函数。</p>

<pre>
<span>// 请求生成后立即分配处理程序，请记住该请求针对 jqxhr 对象</span>
    var jqxhr = $.post(&quot;example.php&quot;, function() {
      alert(&quot;success&quot;);
    })
    .success(function() { alert(&quot;second success&quot;); })
    .error(function() { alert(&quot;error&quot;); })
    .complete(function() { alert(&quot;complete&quot;); });

    <span>// 在这里执行其他任务</span>
	
    <span>// 为上面的请求设置另一个完成函数</span>
    jqxhr.complete(function(){ alert(&quot;second complete&quot;); });
</pre>
</div>


<div>
<h2>更多实例</h2>

<h3>例子 1</h3>

<p>请求 test.php 页面，并一起发送一些额外的数据（同时仍然忽略返回值）：</p>

<pre>$.post(&quot;test.php&quot;, { name: &quot;John&quot;, time: &quot;2pm&quot; } );</pre>

<h3>例子 2</h3>

<p>向服务器传递数据数组（同时仍然忽略返回值）：</p>

<pre>$.post(&quot;test.php&quot;, { 'choices[]': [&quot;Jon&quot;, &quot;Susan&quot;] });</pre>

<h3>例子 3</h3>

<p>使用 ajax 请求发送表单数据：</p>

<pre>$.post(&quot;test.php&quot;, $(&quot;#testform&quot;).serialize());</pre>

<h3>例子 4</h3>

<p>输出来自请求页面 test.php 的结果（HTML 或 XML，取决于所返回的内容）：</p>

<pre>
$.post(&quot;test.php&quot;, function(data){
   alert(&quot;Data Loaded: &quot; + data);
 });
</pre>

<h3>例子 5</h3>

<p>向页面 test.php 发送数据，并输出结果（HTML 或 XML，取决于所返回的内容）：</p>

<pre>
$.post(&quot;test.php&quot;, { name: &quot;John&quot;, time: &quot;2pm&quot; },
   function(data){
     alert(&quot;Data Loaded: &quot; + data);
   });
</pre>

<h3>例子 6</h3>

<p>获得 test.php 页面的内容，并存储为 XMLHttpResponse 对象，并通过 process() 这个 JavaScript 函数进行处理：</p>

<pre>
$.post(&quot;test.php&quot;, { name: &quot;John&quot;, time: &quot;2pm&quot; },
   function(data){
     process(data);
   }, &quot;xml&quot;);
</pre>

<h3>例子 7</h3>

<p>获得 test.php 页面返回的 json 格式的内容：</p>

<pre>
$.post(&quot;test.php&quot;, { &quot;func&quot;: &quot;getNameAndTime&quot; },
   function(data){
     alert(data.name); // John
     console.log(data.time); //  2pm
   }, &quot;json&quot;);
</pre>
</div>


<div class="backtoreference">
<p><a href="jquery_ref_ajax.html" title="jQuery 参考手册 - Ajax">jQuery Ajax 参考手册</a></p>
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
<h5 id="tools_reference"><a href="jquery_reference.html" title="jQuery 参考手册">jQuery 参考手册</a></h5>
<h5 id="tools_quiz"><a href="jquery_quiz.html">jQuery 测验</a></h5>
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

<!-- Mirrored from www.w3school.com.cn/jquery/ajax_post.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:49:28 GMT -->
</html>