<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=js_intro_style by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:44 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<h1>我的第一段 JavaScript</h1>

<p id="demo">
JavaScript 能改变 HTML 元素的样式。
</p>

<script>
function myFunction()
{
x=document.getElementById("demo") // 找到元素
x.style.color="#ff0000";          // 改变样式
}
</script>

<button type="button" onclick="myFunction()">点击这里</button>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=js_intro_style by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:44 GMT -->
</html>