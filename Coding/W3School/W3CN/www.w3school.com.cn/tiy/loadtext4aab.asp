<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_namednodemap_length by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:05 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<p id="demo">点击按钮来查看 button 元素拥有的属性数：</p>

<button onclick="myFunction()">试一下</button>

<script>
function myFunction()
{
var a=document.getElementsByTagName("BUTTON")[0].attributes;
var x=document.getElementById("demo");  
x.innerHTML=a.length;
}
</script>

<p>结果是 1（button 元素的 onclick 属性）。</p>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_namednodemap_length by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:05 GMT -->
</html>
