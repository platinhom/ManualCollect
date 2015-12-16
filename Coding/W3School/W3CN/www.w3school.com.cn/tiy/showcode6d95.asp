

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_php_func_string_htmlspecialchars by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:14:31 GMT -->
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
$str = &quot;This is some &lt;b&gt;bold&lt;/b&gt; text.&quot;;
echo htmlspecialchars($str);
?&gt;</code>

&lt;p&gt;把 &lt; 和 &gt; 转换为实体常用于防止浏览器将其用作 HTML 元素。当用户有权在您的页面上显示输入时，对于防止代码运行非常有用。&lt;/p&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>