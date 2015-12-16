<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_chaining by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script src="../jquery/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function()
  {
  $("button").click(function(){
    $("#p1").css("color","red").slideUp(2000).slideDown(2000);
  });
});
</script>
</head>

<body>

<p id="p1">jQuery 乐趣十足！</p>
<button>点击这里</button>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_chaining by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:46 GMT -->
</html>