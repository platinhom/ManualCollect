<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=css3_animation-direction by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:13:44 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<style> 
div
{
width:100px;
height:100px;
background:red;
position:relative;
animation:myfirst 5s infinite;
animation-direction:alternate;

/* Safari and Chrome */
-webkit-animation:myfirst 5s infinite;
-webkit-animation-direction:alternate;
}

@keyframes myfirst
{
0%   {background:red; left:0px; top:0px;}
25%  {background:yellow; left:200px; top:0px;}
50%  {background:blue; left:200px; top:200px;}
75%  {background:green; left:0px; top:200px;}
100% {background:red; left:0px; top:0px;}
}

@-webkit-keyframes myfirst /* Safari and Chrome */
{
0%   {background:red; left:0px; top:0px;}
25%  {background:yellow; left:200px; top:0px;}
50%  {background:blue; left:200px; top:200px;}
75%  {background:green; left:0px; top:200px;}
100% {background:red; left:0px; top:0px;}
}
</style>
</head>
<body>

<p><strong>注释：</strong>Internet Explorer 9 以及更早的版本不支持 animation-direction 属性。</p>

<div></div>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=css3_animation-direction by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:13:44 GMT -->
</html>