

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspe_drivetype by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

&lt;html&gt;
&lt;body&gt;

<code class="aspcode">&lt;%
dim fs, d, n
set fs=Server.CreateObject(&quot;Scripting.FileSystemObject&quot;)
set d=fs.GetDrive(&quot;c:&quot;)
Response.Write(&quot;驱动器类型是：&quot; & d.DriveType)
set d=nothing
set fs=nothing
%&gt;</code>

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>