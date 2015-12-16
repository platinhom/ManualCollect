<!DOCTYPE HTML>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_canvas_image by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:07:59 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<canvas id="myCanvas" width="200" height="100" style="border:1px solid #c3c3c3;">
Your browser does not support the canvas element.
</canvas>

<script type="text/javascript">

var c=document.getElementById("myCanvas");
var cxt=c.getContext("2d");
var img=new Image()
img.src="../i/eg_flower.png"
cxt.drawImage(img,0,0);

</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_canvas_image by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:07:59 GMT -->
</html>