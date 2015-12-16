
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/js/pro_js_object_modifying.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:02:29 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<title>ECMAScript 修改对象</title>

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

<div id="course"><h2>JavaScript 简介</h2>
<ul>
<li><a href="index_pro.html" title="JavaScript 高级教程">JavaScript 高级教程</a></li>
<li><a href="pro_js_history.asp" title="JavaScript 历史">JavaScript 历史</a></li>
<li><a href="pro_js_implement.html" title="JavaScript 实现">JavaScript 实现</a></li>
</ul>
<h2>ECMAScript 基础</h2>
<ul>
<li><a href="pro_js_syntax.html" title="ECMAScript 语法">ECMAScript 语法</a></li>
<li><a href="pro_js_variables.html" title="ECMAScript 变量">ECMAScript 变量</a></li>
<li><a href="pro_js_keywords.html" title="ECMAScript 关键字">ECMAScript 关键字</a></li>
<li><a href="pro_js_reservedwords.html" title="ECMAScript 保留字">ECMAScript 保留字</a></li>
<li><a href="pro_js_value.html" title="ECMAScript 值">ECMAScript 值</a></li>
<li><a href="pro_js_primitivetypes.html" title="ECMAScript 原始类型">ECMAScript 原始类型</a></li>
<li><a href="pro_js_typeconversion.html" title="ECMAScript 类型转换">ECMAScript 类型转换</a></li>
<li><a href="pro_js_referencetypes.html" title="ECMAScript 引用类型">ECMAScript 引用类型</a></li>
</ul>
<h2>ECMAScript 运算符</h2>
<ul>
<li><a href="pro_js_operators_unary.html" title="ECMAScript 一元运算符">一元运算符</a></li>
<li><a href="pro_js_operators_bitwise.html" title="ECMAScript 位运算符">位运算符</a></li>
<li><a href="pro_js_operators_boolean.html" title="ECMAScript 逻辑运算符">逻辑运算符</a></li>
<li><a href="pro_js_operators_multiplicative.html" title="ECMAScript 乘性运算符">乘性运算符</a></li>
<li><a href="pro_js_operators_additive.asp" title="ECMAScript 加性运算符">加性运算符</a></li>
<li><a href="pro_js_operators_relational.html" title="ECMAScript 关系运算符">关系运算符</a></li>
<li><a href="pro_js_operators_equality.html" title="ECMAScript 等性运算符">等性运算符</a></li>
<li><a href="pro_js_operators_conditional.html" title="ECMAScript 条件运算符">条件运算符</a></li>
<li><a href="pro_js_operators_assignment.html" title="ECMAScript 赋值运算符">赋值运算符</a></li>
<li><a href="pro_js_operators_comma.html" title="ECMAScript 逗号运算符">逗号运算符</a></li>
</ul>
<h2>ECMAScript 语句</h2>
<ul>
<li><a href="pro_js_statements_if.html" title="ECMAScript if 语句">if 语句</a></li>
<li><a href="pro_js_statements_iterative.html" title="ECMAScript 迭代语句">迭代语句</a></li>
<li><a href="pro_js_statements_labeled.html" title="ECMAScript 标签语句">标签语句</a></li>
<li><a href="pro_js_statements_break_continue.html" title="ECMAScript break 和 continue 语句">break 语句</a></li>
<li><a href="pro_js_statements_break_continue.html" title="ECMAScript break 和 continue 语句">continue 语句</a></li>
<li><a href="pro_js_statements_with.html" title="ECMAScript with 语句">with 语句</a></li>
<li><a href="pro_js_statements_switch.html" title="ECMAScript switch 语句">switch 语句</a></li>
</ul>
<h2>ECMAScript 函数</h2>
<ul>
<li><a href="pro_js_functions.html" title="ECMAScript 函数概述">函数概述</a></li>
<li><a href="pro_js_functions_arguments_object.html" title="ECMAScript arguments 对象">arguments 对象</a></li>
<li><a href="pro_js_functions_function_object.html" title="ECMAScript Function 对象（类）">Function 对象</a></li>
<li><a href="pro_js_functions_closures.html" title="ECMAScript 闭包（closure）">闭包（closure）</a></li>
</ul>
<h2>ECMAScript 对象</h2>
<ul>
<li><a href="pro_js_object_oriented.asp" title="ECMAScript 面向对象技术">面向对象</a></li>
<li><a href="pro_js_object_working_with.html" title="ECMAScript 对象应用">对象应用</a></li>
<li><a href="pro_js_object_types.html" title="ECMAScript 对象类型">对象类型</a></li>
<li><a href="pro_js_object_scope.html" title="ECMAScript 对象作用域">对象作用域</a></li>
<li><a href="pro_js_object_defining.html" title="ECMAScript 定义类或对象">定义类或对象</a></li>
<li class="currentLink"><a href="pro_js_object_modifying.asp" title="ECMAScript 修改对象">修改对象</a></li>
</ul>
<h2>ECMAScript 继承</h2>
<ul>
<li><a href="pro_js_inheritance_in_action.html" title="ECMAScript 继承机制实例">继承机制实例</a></li>
<li><a href="pro_js_inheritance_implementing.html" title="ECMAScript 继承机制实现">继承机制实现</a></li>
</ul>
<h2>JS 实例和测验</h2>
<ul>
<li><a href="../example/jseg_examples.html" title="JavaScript 实例">JS 实例</a></li>
<li><a href="../example/jsrf_examples.html" title="JavaScript 对象实例">JS 对象实例</a></li>
<li><a href="js_quiz.html" title="JavaScript 测验">JS 测验</a></li>
</ul>
<h2>JS 参考手册</h2>
<ul>
<li><a href="../jsref/index.html" title="JavaScript 和 HTML DOM 参考手册">JavaScript 对象</a></li>
<li><a href="../jsref/index.html" title="JavaScript 和 HTML DOM 参考手册">HTML DOM 对象</a></li>
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

<h1>ECMAScript 修改对象</h1>

<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="pro_js_object_defining.html" title="ECMAScript 定义类或对象">定义类或对象</a></li>
<li class="next"><a href="pro_js_inheritance_in_action.html" title="ECMAScript 继承机制实例">继承机制实例</a></li>
</ul>
</div>


<div>
<p><strong>通过使用 ECMAScript，不仅可以创建对象，还可以修改已有对象的行为。</strong></p>
<p><strong>prototype 属性不仅可以定义构造函数的属性和方法，还可以为本地对象添加属性和方法。</strong></p>
</div>


<div>
<h2>创建新方法</h2>

<h3>通过已有的方法创建新方法</h3>

<p>可以用 prototype 属性为任何已有的类定义新方法，就像处理自己的类一样。例如，还记得 Number 类的 toString() 方法吗？如果给它传递参数 16，它将输出十六进制的字符串。如果这个方法的参数是 2，那么它将输出二进制的字符串。我们可以创建一个方法，可以把数字对象直接转换为十六进制字符串。创建这个方法非常简单：</p>

<pre>
Number.prototype.toHexString = function() {
  return this.toString(16);
};
</pre>

<p>在此环境中，关键字 this 指向 Number 的实例，因此可完全访问 Number 的所有方法。有了这段代码，可实现下面的操作：</p>

<pre>
var iNum = 15;
alert(iNum.toHexString());		<span>//输出 &quot;F&quot;</span>
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t8b8d.html?f=jseg_pro_js_object_modifying_1">TIY</a></p>

<p>由于数字 15 等于十六进制中的 F，因此警告将显示 &quot;F&quot;。</p>


<h3>重命名已有方法</h3>

<p>我们还可以为已有的方法命名更易懂的名称。例如，可以给 Array 类添加两个方法 enqueue() 和 dequeue()，只让它们反复调用已有的 push() 和 shift() 方法即可：</p>

<pre>
Array.prototype.enqueue = function(vItem) {
  this.push(vItem);
};

Array.prototype.dequeue = function() {
  return this.shift();
};
</pre>

<p class="tiy"><a target="_blank" href="../tiy/tef3a.html?f=jseg_pro_js_object_modifying_2">TIY</a></p>


<h3>添加与已有方法无关的方法</h3>

<p>当然，还可以添加与已有方法无关的方法。例如，假设要判断某个项在数组中的位置，没有本地方法可以做这种事情。我们可以轻松地创建下面的方法：</p>

<pre>
Array.prototype.indexOf = function (vItem) {
  for (var i=0; i&lt;this.length; i++) {
    if (vItem == this[i]) {
	  return i;
	}
  }

  return -1;
}
</pre>

<p>该方法 indexOf() 与 String 类的同名方法保持一致，在数组中检索每个项，直到发现与传进来的项相同的项目为止。如果找到相同的项，则返回该项的位置，否则，返回 -1。有了这种定义，我们可以编写下面的代码：</p>

<pre>
var aColors = new Array(&quot;red&quot;,&quot;green&quot;,&quot;blue&quot;);
alert(aColors.indexOf(&quot;green&quot;));	<span>//输出 &quot;1&quot;</span>
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t1a42.html?f=jseg_pro_js_object_modifying_3">TIY</a></p>


<h3>为本地对象添加新方法</h3>

<p>最后，如果想给 ECMAScript 中每个本地对象添加新方法，必须在 Object 对象的 prototype 属性上定义它。前面的章节我们讲过，所有本地对象都继承了 Object 对象，所以对 Object 对象做任何改变，都会反应在所有本地对象上。例如，如果想添加一个用警告输出对象的当前值的方法，可以采用下面的代码：</p>

<pre>
Object.prototype.showValue = function () {
  alert(this.valueOf());
};

var str = &quot;hello&quot;;
var iNum = 25;
str.showValue();		<span>//输出 &quot;hello&quot;</span>
iNum.showValue();		<span>//输出 &quot;25&quot;</span>
</pre>

<p class="tiy"><a target="_blank" href="../tiy/taa2b.html?f=jseg_pro_js_object_modifying_4">TIY</a></p>

<p>这里，String 和 Number 对象都从 Object 对象继承了 showValue() 方法，分别在它们的对象上调用该方法，将显示 &quot;hello&quot; 和 &quot;25&quot;。</p>
</div>


<div>
<h2>重定义已有方法</h2>

<p>就像能给已有的类定义新方法一样，也可重定义已有的方法。如前面的章节所述，函数名只是指向函数的指针，因此可以轻松地指向其他函数。如果修改了本地方法，如 toString()，会出现什么情况呢？</p>

<pre>
Function.prototype.toString = function() {
  return &quot;Function code hidden&quot;;
}
</pre>

<p>前面的代码完全合法，运行结果完全符合预期：</p>

<pre>
function sayHi() {
  alert(&quot;hi&quot;);
}

alert(sayHi.toString());	<span>//输出 &quot;Function code hidden&quot;</span>
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t956d.html?f=jseg_pro_js_object_modifying_5">TIY</a></p>

<p>也许你还记得，Function 对象这一章中介绍过 Function 的 toString() 方法通常输出的是函数的源代码。覆盖该方法，可以返回另一个字符串（在这个例子中，可以返回 &quot;Function code hidden&quot;）。不过，toString() 指向的原始函数怎么了呢？它将被无用存储单元回收程序回收，因为它被完全废弃了。没有能够恢复原始函数的方法，所以在覆盖原始方法前，比较安全的做法是存储它的指针，以便以后的使用。有时你甚至可能在新方法中调用原始方法：</p>

<pre>
<code>Function.prototype.originalToString = Function.prototype.toString;</code>

Function.prototype.toString = function() {
  if (this.originalToString().length &gt; 100) {
    return &quot;Function too long to display.&quot;;
  } else {
    return this.originalToString();
  }
};
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t4fda.html?f=jseg_pro_js_object_modifying_6">TIY</a></p>

<p>在这段代码中，第一行代码把对当前 toString() 方法的引用保存在属性 originalToString 中。然后用定制的方法覆盖了 toString() 方法。新方法将检查该函数源代码的长度是否大于 100。如果是，就返回错误信息，说明该函数代码太长，否则调用 originalToString() 方法，返回函数的源代码。</p>

</div>


<div>
<h2>极晚绑定（Very Late Binding）</h2>

<p>从技术上讲，根本不存在极晚绑定。本书采用该术语描述 ECMAScript 中的一种现象，即能够在对象实例化后再定义它的方法。例如：</p>

<pre>
var o = new Object();

Object.prototype.sayHi = function () {
  alert(&quot;hi&quot;);
};

o.sayHi();
</pre>

<p class="tiy"><a target="_blank" href="../tiy/t6292.html?f=jseg_pro_js_object_modifying_7">TIY</a></p>

<p>在大多数程序设计语言中，必须在实例化对象之前定义对象的方法。这里，方法 sayHi() 是在创建 Object 类的一个实例之后来添加进来的。在传统语言中不仅没听说过这种操作，也没听说过该方法还会自动赋予 Object 对象的实例并能立即使用（接下来的一行）。</p>

<p class="important"><span>注意：</span>不建议使用极晚绑定方法，因为很难对其跟踪和记录。不过，还是应该了解这种可能。</p>
</div>


<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="pro_js_object_defining.html" title="ECMAScript 定义类或对象">定义类或对象</a></li>
<li class="next"><a href="pro_js_inheritance_in_action.html" title="ECMAScript 继承机制实例">继承机制实例</a></li>
</ul>
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
<h5 id="tools_reference"><a href="../jsref/index.html">JavaScript 参考手册</a></h5>
<h5 id="tools_example"><a href="../example/jseg_examples.html">JavaScript 实例</a></h5>
<h5 id="tools_quiz"><a href="js_quiz.html">JavaScript 测验</a></h5>
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


<!-- Mirrored from www.w3school.com.cn/js/pro_js_object_modifying.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:02:34 GMT -->
</html>