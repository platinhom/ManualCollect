

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_php_func_string_printf_4 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:32:33 GMT -->
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
$str1 = &quot;Hello&quot;;
$str2 = &quot;Hello world!&quot;;

printf(&quot;[%s]&lt;br&gt;&quot;,$str1);
printf(&quot;[%8s]&lt;br&gt;&quot;,$str1);
printf(&quot;[%-8s]&lt;br&gt;&quot;,$str1);
printf(&quot;[%08s]&lt;br&gt;&quot;,$str1);
printf(&quot;[%'*8s]&lt;br&gt;&quot;,$str1);
printf(&quot;[%8.8s]&lt;br&gt;&quot;,$str2);
?&gt;</code>

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>