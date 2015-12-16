<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_attributes_removeAttr by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../jquery/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("button").click(function(){
    $("p").removeAttr("style");
  });
});
</script>
</head>

<body>
<h1>这是一个标题</h1>
<p style="font-size:120%;color:red">这是一个段落。</p>
<p>这是另一个段落。</p>
<button>删除所有 p 元素的 style 属性</button>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_attributes_removeAttr by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
</html>