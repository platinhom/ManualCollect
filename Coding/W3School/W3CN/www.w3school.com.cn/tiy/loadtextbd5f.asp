<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_ev_onsubmit by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:34 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script>
function checkForm()
{
alert("表单已提交！");
}
</script>
</head>
<body>

<form action="http://www.w3school.com.cn/demo/demo_form.asp" onsubmit="checkForm()">
姓：<input type="text" name="lname"><br>
名：<input type="text" name="fname"><br>
<input type="submit" value="提交">

<p>函数 checkForm() 在提交按钮被点击时触发。此函数向用户显示一段消息。</p>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_ev_onsubmit by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:34 GMT -->
</html>