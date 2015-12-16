<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_label_create by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<h3>演示如何访问 LABEL 元素</h3>

<form id="myForm" action="http://www.w3school.com.cn/tiy/form_action.asp">
  <input type="radio" name="sex" id="male" value="male">
</form>

<p>点击按钮来创建 LABEL 元素。</p>

<button onclick="myFunction()">试一下</button>

<script>
function myFunction()
{
var x = document.createElement("LABEL");
var t = document.createTextNode("Male");
x.setAttribute("for", "male");
x.appendChild(t);
document.getElementById("myForm").insertBefore(x,document.getElementById("male"));
}
</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jsref_label_create by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>