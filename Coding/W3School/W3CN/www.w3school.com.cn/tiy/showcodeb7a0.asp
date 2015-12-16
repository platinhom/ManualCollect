

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspe_readlines by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:30:45 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

&lt;html&gt;
&lt;body&gt;
&lt;p&gt;这是从文本文件中读取的所有行：&lt;/p&gt;

<code class="aspcode">&lt;%
Set fs=Server.CreateObject(&quot;Scripting.FileSystemObject&quot;)
Set f=fs.OpenTextFile(Server.MapPath(&quot;testread.txt&quot;), 1)

do while f.AtEndOfStream = false
Response.Write(f.ReadLine)
Response.Write(&quot;&lt;br /&gt;&quot;)
loop

f.Close
Set f=Nothing
Set fs=Nothing
%&gt;</code>

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>