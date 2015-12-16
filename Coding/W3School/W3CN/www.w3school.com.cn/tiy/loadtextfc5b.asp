<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_dim_outerwidth_outerheight2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:37 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script src="../jquery/jquery-1.11.1.min.js">
</script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    var txt="";
    txt+="Width of div: " + $("#div1").width() + "</br>";
    txt+="Height of div: " + $("#div1").height() + "</br>";
    txt+="Outer width of div (margin included): " + $("#div1").outerWidth(true) + "</br>";
    txt+="Outer height of div (margin included): " + $("#div1").outerHeight(true);
    $("#div1").html(txt);
  });
});
</script>
</head>
<body>

<div id="div1" style="height:100px;width:300px;padding:10px;margin:3px;border:1px solid blue;background-color:lightblue;"></div>
<br>
<button>显示 div 的尺寸</button>
<p>outerWidth(true) - 返回元素的宽度（包括内边距、边框和外边距）。</p>
<p>outerHeight(true) - 返回元素的高度（包括内边距、边框和外边距）。</p>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_dim_outerwidth_outerheight2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:37 GMT -->
</html>