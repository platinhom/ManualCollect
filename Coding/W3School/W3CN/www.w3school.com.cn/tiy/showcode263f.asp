

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspe_isclientconnected by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:02 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

&lt;html&gt;
&lt;body&gt;

<code class="aspcode">&lt;%
If Response.IsClientConnected=true then
Response.Write(&quot;用户仍然保持连接。&quot;)
else
Response.Write(&quot;用户未连接。&quot;)
end if
%&gt;</code>

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>