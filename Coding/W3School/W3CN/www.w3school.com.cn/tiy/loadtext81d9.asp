<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_dom_remove2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script src="../jquery/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $("p").remove(".italic");
  });
});
</script>
</head>

<body>

<p>This is a paragraph in the div.</p>
<p class="italic"><i>This is another paragraph in the div.</i></p>
<p class="italic"><i>This is another paragraph in the div.</i></p>
<button>删除 class="italic" 的所有 p 元素</button>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_dom_remove2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>