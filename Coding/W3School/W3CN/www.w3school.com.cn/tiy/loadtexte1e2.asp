<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_fieldset_create by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:35 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<h3>演示如何创建 FIELDSET 元素</h3>

<p>点击按钮来创建包含文本的 FIELDSET 元素。</p>

<button onclick="myFunction()">试一下</button>

<script>
function myFunction()
{
var x = document.createElement("FIELDSET");
var t = document.createTextNode("Insert content here...");
x.appendChild(t);
document.body.appendChild(x);
}
</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_fieldset_create by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:35 GMT -->
</html>