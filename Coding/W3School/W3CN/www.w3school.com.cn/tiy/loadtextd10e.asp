<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_css_height_get by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../jquery/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(".btn1").click(function(){
    $("span").text($("p").height());
  });
});
</script>
</head>
<body>
<p>本段落的高度是 <span>unknown</span> px。</p>
<button class="btn1">获得高度</button>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_css_height_get by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
</html>