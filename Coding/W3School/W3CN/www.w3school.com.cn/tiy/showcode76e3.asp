

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspe_rootfolder by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

&lt;html&gt;
&lt;body&gt;

<code class="aspcode">&lt;%
dim fs,d
set fs=Server.CreateObject(&quot;Scripting.FileSystemObject&quot;)
set d=fs.GetDrive(&quot;c:&quot;)
Response.Write(&quot;根文件是：&quot; & d.RootFolder)
set d=nothing
set fs=nothing
%&gt;</code>

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>