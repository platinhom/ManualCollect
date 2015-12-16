<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/tiy/c.asp?f=css_column-rule-style&p=6 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 06:06:14 GMT -->
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

document.getElementById(strId).style.columnRuleStyle=strValue;
document.getElementById(strId).style.WebkitColumnRuleStyle=strValue;
document.getElementById(strId).style.MozColumnRuleStyle=strValue;

document.getElementById("CodeValue").innerHTML=strValue;
}
//-->
</script>

<style>
div#DemoArea
{
-moz-column-count:3;
-moz-column-rule-width:3px;		
-webkit-column-count:3;
-webkit-column-rule-width:3px;		
}

div#DemoArea
{
column-count:3;
column-rule-style:none;
-moz-column-rule-style:none;
-webkit-column-rule-style:none;

column-rule-width:3px;
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

<h3>column-rule-style:</h3>				

<form action="javascript:return false;">
<ul>
<input type="hidden" id="PreSelectedValue" value="double" />
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_1" value="none" />none</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_2" value="hidden" />hidden</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_3" value="dotted" />dotted</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_4" value="dashed" />dashed</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_5" value="solid" />solid</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_6" value="double" />double</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_7" value="groove" />groove</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_8" value="ridge" />ridge</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_9" value="inset" />inset</li>
<li><input autocomplete="off" type="radio" name="rpos" onClick="test_demo(this)" id="value_10" value="outset" />outset</li>
</ul>
</form>



</div>


<div id="result">
<h2>结果：</h2>

<div id="DemoArea">

人民网北京2月24日电 (记者 刘阳)国家发展改革委近日发出通知，决定自2月25日零时起将汽、柴油价格每吨分别提高300元和290元，折算到90号汽油和0号柴油（全国平均）每升零售价格分别提高0.22元和0.25元。
此次国内成品油价格调整幅度，是按照现行国内成品油价格形成机制，根据国际市场油价变化情况确定的。去年11月16日国内成品油价格调整以来，受市场预期欧美经济复苏前景向好以及中东局势持续动荡等因素影响，国际市场原油价格先抑后扬，2月上旬WTI和布伦特原油期货价格再次回升至每桶95美元和115美元以上。虽然近两日价格有所回落，但国内油价挂钩的国际市场三种原油连续22个工作日移动平均价格上涨幅度已超过4%，达到国内成品油价格调整的边界条件。
通知指出，这次成品油调价后，国家将按照已建立的补贴机制，继续对种粮农民、渔业（含远洋渔业）、林业、城市公交、农村道路客运（含岛际和农村水路客运）等给予补贴。同时，为保证市场物价基本稳定，防止连锁涨价，对与居民生活密切相关的铁路客运、城市公交、农村道路客运（含岛际和农村水路客运）价格不作调整。
通知要求，中石油、中石化、中海油三大公司要组织好成品油生产和调运，保持合理库存，加强综合协调和应急调度，保障成品油供应。各级价格主管部门要加大市场监督检查力度，依法查处不执行国家价格政策，以及囤积居奇、造谣惑众、合谋涨价、搭车涨价等违法行为，维护正常市场秩序。

</div>

<h2>CSS 代码：</h2>

<pre id="CodeArea">
div#DemoArea
{
column-count:3;
column-rule-style:<span id="CodeValue">none</span>;
column-rule-width:3px;
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


<!-- Mirrored from www.w3school.com.cn/tiy/c.asp?f=css_column-rule-style&p=6 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 06:06:14 GMT -->
</html>

