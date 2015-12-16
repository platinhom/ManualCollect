<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_manipulation_wrap_unwrap by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../jquery/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("button").toggle(function(){
    $("p").wrap("<div></div>");
    }, function(){
    $("p").unwrap();
  });
});

</script>
<style type="text/css">
div{background-color:yellow;padding:10px;}
</style>
</head>
<body>

<p>This is a paragraph.</p>
<button>包裹或解开 p 元素</button>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_manipulation_wrap_unwrap by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
</html>