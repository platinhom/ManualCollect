

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspe_bufferclear by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:01 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

<code class="aspcode">&lt;%
Response.Buffer=true
%&gt;</code>
&lt;html&gt;
&lt;body&gt;
&lt;p&gt;这是我希望发送给用户的文本。&lt;/p&gt;
&lt;p&gt;不，我改变主意了。我希望清除这些文本。&lt;/p&gt;
<code class="aspcode">&lt;%
Response.Clear
%&gt;</code>
&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>