<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_canvas_globalcompop by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<canvas id="myCanvas" width="300" height="150" style="border:1px solid #d3d3d3;">
Your browser does not support the HTML5 canvas tag.
</canvas>

<script>

var c=document.getElementById("myCanvas");
var ctx=c.getContext("2d");
ctx.fillStyle="red";
ctx.fillRect(20,20,75,50);
ctx.fillStyle="blue";	
ctx.globalCompositeOperation="source-over";
ctx.fillRect(50,50,75,50);	
ctx.fillStyle="red";
ctx.fillRect(150,20,75,50);
ctx.fillStyle="blue";	
ctx.globalCompositeOperation="destination-over";
ctx.fillRect(180,50,75,50);	

</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_canvas_globalcompop by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>