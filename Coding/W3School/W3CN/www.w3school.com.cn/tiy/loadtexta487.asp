<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_examples_tooltip by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript">
function gettip(txt)
{
document.getElementById('tip').innerHTML=txt
}

function reset()
{
document.getElementById('tip').innerHTML=""
}
</script>
</head>

<body>
<p>把鼠标移动到下面的饮料上：</p>

<span onmouseover="gettip('热的黑色饮品')"
onmouseout="reset()">咖啡</span>
<br /><br />
<span onmouseover="gettip('冷的白色饮品')"
onmouseout="reset()">牛奶</span>

<p id="tip"></p>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_examples_tooltip by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>