<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_embed_create by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:25:11 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<h3>演示如何创建 Embed 元素</h3>

<p>点击按钮来创建含有内嵌 flash 动画的 EMBED 元素。</p>

<button onclick="myFunction()">试一下</button>

<script>
function myFunction()
{
var x = document.createElement("EMBED");
x.setAttribute("src", "../i/helloworld.swf");
document.body.appendChild(x);
}
</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_embed_create by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:25:11 GMT -->
</html>