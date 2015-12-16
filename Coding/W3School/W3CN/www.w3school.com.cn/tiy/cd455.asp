<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/tiy/c.asp?f=css_box-direction&p=2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 06:05:23 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />

<link rel="stylesheet" type="text/css" href="cc.css" />

<script type="text/javascript" src="cs.js"></script>

<title>w3school在线测试工具 v1.2</title>

<script type="text/javascript">
<!--
function test_demo_val(strValue)
{

var strId="DemoArea"

document.getElementById(strId).style.boxDirection=strValue;
document.getElementById(strId).style.MozBoxDirection=strValue;
document.getElementById(strId).style.WebkitBoxDirection=strValue;

document.getElementById("CodeValue").innerHTML=strValue;
}
//-->
</script>

<style>
div#DemoArea
{
display:-moz-box;
display:-webkit-box;
}

div#DemoArea
{
display:box;
box-direction:normal;
-moz-box-direction:normal;
-webkit-box-direction:normal;

}
</style>

</head>

<body>

<div id="wrapper">

<div id="header">
<h1>W3School TIY</h1>

<div id="ad">
<script type="text/javascript"><!--
google_ad_client = "pub-3381531532877742";
/* 728x90, tiy_big */
google_ad_slot = "7947784850";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="../../pagead2.googlesyndication.com/pagead/f.txt">
</script>
</div>
</div>


<div id="SelArea">
<h2>CSS 属性：</h2>

<h3>box-direction:</h3>				

<form action="javascript:return false;">
<ul>
<input type="hidden" id="PreSelectedValue" value="reverse" />
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_1" value="normal" />normal</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_2" value="reverse" />reverse</li>
</ul>
</form>


<p><b>注释：</b>本例在 IE 或 Opera 中无效。</p>


</div>


<div id="result">
<h2>结果：</h2>

<div id="DemoArea">

<div style="background:red;width:50px;height:50px;">Box 1</div>
<div style="background:blue;width:100px;height:100px;">Box 2</div>
<div style="background:yellow;width:200px;height:200px;">Box 3</div>

</div>

<h2>CSS 代码：</h2>

<pre id="CodeArea">
div#DemoArea
{
display:box;
box-direction:<span id="CodeValue">normal</span>;
}
</pre>
</div>


<div id="footer">
<p class="help">请点击上面的属性值来查看结果</p>
<p class="copyright"><a href="../index.html">W3School.com.cn</a> - TIY</p>
</div>

</div>

</body>

<script type="text/javascript">tiy_onload()</script>


<!-- Mirrored from www.w3school.com.cn/tiy/c.asp?f=css_box-direction&p=2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 06:05:23 GMT -->
</html>

