<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_effect_animate by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../jquery/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function()
  {
  $(".btn1").click(function(){
    $("#box").animate({height:"300px"});
  });
  $(".btn2").click(function(){
    $("#box").animate({height:"100px"});
  });
});
</script>
</head>
<body>
<div id="box" style="background:#98bf21;height:100px;width:100px;margin:6px;">
</div>
<button class="btn1">Animate</button>
<button class="btn2">Reset</button>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_effect_animate by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
</html>