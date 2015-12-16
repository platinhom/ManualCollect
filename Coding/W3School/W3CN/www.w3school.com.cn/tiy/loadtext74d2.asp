<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_cursorimage by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript">
function cursor(event)
{
document.getElementById('trail').style.visibility="visible"
document.getElementById('trail').style.position="absolute"
document.getElementById('trail').style.left=event.clientX+10
document.getElementById('trail').style.top=event.clientY
}
</script>
</head>

<body onmousemove="cursor(event)">

<h1>请在页面上移动指针</h1>

<img id="trail" style="visibility:hidden" src="../i/eg_w3school.gif" />

</body>


<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_cursorimage by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>