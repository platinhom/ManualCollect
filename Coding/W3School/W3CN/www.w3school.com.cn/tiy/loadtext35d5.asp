<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=css3_animation by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:32:03 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<style> 
div
{
width:100px;
height:100px;
background:red;
position:relative;
animation:mymove 5s infinite;
-webkit-animation:mymove 5s infinite; /*Safari and Chrome*/
}

@keyframes mymove
{
from {left:0px;}
to {left:200px;}
}

@-webkit-keyframes mymove /*Safari and Chrome*/
{
from {left:0px;}
to {left:200px;}
}
</style>
</head>
<body>

<p><strong>注释：</strong>Internet Explorer 9 以及更早的版本不支持 animation 属性。</p>

<div></div>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=css3_animation by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:32:03 GMT -->
</html>