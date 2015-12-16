

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_php_func_string_sscanf by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:14:39 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;body&gt;

<code class="phpcode">&lt;?php
$str = &quot;age:30 weight:60kg&quot;;
sscanf($str,&quot;age:%d weight:%dkg&quot;,$age,$weight);
// 显示类型和值
var_dump($age,$weight);
?&gt;</code>
  
&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>