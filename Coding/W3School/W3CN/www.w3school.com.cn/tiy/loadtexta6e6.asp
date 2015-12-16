<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=js_blocks by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:44 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<h1>My Web Page</h1>

<p id="myPar">I am a paragraph.</p>
<div id="myDiv">I am a div.</div>

<p>
<button type="button" onclick="myFunction()">点击这里</button>
</p>

<script>
function myFunction()
{
document.getElementById("myPar").innerHTML="Hello World";
document.getElementById("myDiv").innerHTML="How are you?";
}
</script>

<p>当您点击上面的按钮时，两个元素会改变。</p>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=js_blocks by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:44 GMT -->
</html>