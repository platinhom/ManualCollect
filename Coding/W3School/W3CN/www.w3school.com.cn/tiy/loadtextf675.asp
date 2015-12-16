<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=js_dom_event_onmousedown_onmouseup2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:44 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script>
function lighton()
{
document.getElementById('myimage').src="../i/eg_bulbon.gif";
}
function lightoff()
{
document.getElementById('myimage').src="../i/eg_bulboff.gif";
}
</script>
</head>

<body>
<img id="myimage" onmousedown="lighton()" onmouseup="lightoff()" src="../i/eg_bulboff.gif" />
<p>按住鼠标不放可以点亮这盏灯！</p>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=js_dom_event_onmousedown_onmouseup2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:44 GMT -->
</html>