<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/tiy/t.asp?f=dhtm_menu_descrimage by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:07:16 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />

<link rel="stylesheet" type="text/css" href="tc.css" />

<title>W3School在线测试工具 V2</title>
</head>

<body id="editor">

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

<form action="http://www.w3school.com.cn/tiy/v.asp" method="post" id="tryitform" name="tryitform" onSubmit="validateForm();" target="i">

<div id="butt">
<input type="button" value="提交代码" onClick="submitTryit()">
</div>

<div id="CodeArea">
<h2>编辑您的代码：</h2>
<textarea id="TestCode" wrap="logical">
<html>
<head>
<style>
table
{
background:black;
}
a
{
text-decoration:none;
color:#000000;
}
th
{
width:200px;
background:#FF8080;
}
td
{
font:bold;
background:#ADD8E6;
}
</style>
<script type="text/javascript">
function gettip(image)
{
document.getElementById('tip').innerHTML="<img src='" + image + "' />"
}
function reset()
{
document.getElementById('tip').innerHTML=" "
}
</script>
</head>

<body>
<b>请把鼠标移动到链接上，就可以看到它们的 logo：</b><br />
<table width="400px">
<tr>
<th>
<a href="../index-2.html" 
onmouseover="gettip('../i/w3school_logo_black.gif')"
onmouseout="reset()">W3School.com.cn</a>
</th>
<td rowspan="3" id="tip" align="center" valign="center"> </td>
</tr>
<tr>
<th>
<a href="http://www.microsoft.com/"
onmouseover="gettip('../i/eg_logo_microsoft.gif')"
onmouseout="reset()">Internet Explorer</a>
</th>
</tr>
</tr>
<tr>
<th>
<a href="http://my.netscape.com/"
onmouseover="gettip('../i/eg_logo_netscape.gif')"
onmouseout="reset()">Netscape Navigator</a>
</th>
</tr>
</table>
</body>


<!-- Mirrored from www.w3school.com.cn/tiy/t.asp?f=dhtm_menu_descrimage by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:07:18 GMT -->
</html>
</textarea>
</div>

<input type="hidden" id="code" name="code"  />
<input type="hidden" id="bt" name="bt" />

</form>

<div id="result">
<h2>查看结果:</h2>
<iframe frameborder="0" name="i" src="loadtext5b0d.html?f=dhtm_menu_descrimage"></iframe>
</div>

<div id="footer">
<p>请在上面的文本框中编辑您的代码，然后单击提交按钮测试结果。<a href="../index-2.html" title="W3School 在线教程">w3school.com.cn</a></p>
</div>

</div>

<script type="text/javascript">
function submitTryit()
{
var t=document.getElementById("TestCode").value;
t=t.replace(/=/gi,"w3equalsign");
t=t.replace(/script/gi,"w3scrw3ipttag");

document.getElementById("code").value=t;

document.getElementById("tryitform").action="v.html";

validateForm();

document.getElementById("tryitform").submit();
}

function validateForm()
{
var code=document.getElementById("code").value;
if (code.length>5000)
	{
	document.getElementById("code").value="<h1>Error</h1>";
	}
}
</script>

</body>
</html>