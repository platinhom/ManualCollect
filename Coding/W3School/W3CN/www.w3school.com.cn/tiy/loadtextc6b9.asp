<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_manipulation_detach_restore by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../jquery/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("button").click(function(){
    $("body").append($("p").detach());
  });
 $("p").click(function(){
    $(this).animate({fontSize:"+=1px"})
  });
});
</script>
</head>
<body>
<p>在本段落移动之后，试着点击该段落，请注意它保留了 click 事件。</p>
<button>移动 p 元素</button>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_manipulation_detach_restore by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
</html>