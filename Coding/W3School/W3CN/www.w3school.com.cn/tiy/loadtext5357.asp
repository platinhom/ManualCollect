<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_form_bg by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript">
function bgChange(bg)
{
document.getElementById('x').style.background="url(" + bg + ")"
}
</script>
</head>

<body>

<p>本例演示如何向输入框插入背景图像。</p>
<p>把鼠标移动到这两幅图像上，输入框会获得一幅背景图像。</p>

<table width="300" height="100">
<tr>
<td onmouseover="bgChange('../i/eg_bg_03.gif')" 
background="../i/eg_bg_03.gif">
</td>
<td onmouseover="bgChange('../i/eg_bg_04.gif')" 
background="../i/eg_bg_04.gif">
</td>
</tr>
</table>

<form>
<input id="x" type="text" value="把鼠标移动到图像上" size="20">
</form>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_form_bg by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>