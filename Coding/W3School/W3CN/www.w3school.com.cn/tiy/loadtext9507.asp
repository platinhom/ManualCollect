<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=css3_animation1 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:37 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<style> 
div
{
width:100px;
height:100px;
background:red;
animation:myfirst 5s;
-moz-animation:myfirst 5s; /* Firefox */
-webkit-animation:myfirst 5s; /* Safari and Chrome */
-o-animation:myfirst 5s; /* Opera */
}

@keyframes myfirst
{
from {background:red;}
to {background:yellow;}
}

@-moz-keyframes myfirst /* Firefox */
{
from {background:red;}
to {background:yellow;}
}

@-webkit-keyframes myfirst /* Safari and Chrome */
{
from {background:red;}
to {background:yellow;}
}

@-o-keyframes myfirst /* Opera */
{
from {background:red;}
to {background:yellow;}
}
</style>
</head>
<body>

<div></div>

<p><b>注释：</b>本例在 Internet Explorer 中无效。</p>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=css3_animation1 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:37 GMT -->
</html>