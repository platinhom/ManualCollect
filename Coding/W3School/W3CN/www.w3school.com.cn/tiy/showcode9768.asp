

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspe_totalbytes by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:03 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

&lt;html&gt;
&lt;body&gt;

&lt;form action=&quot;/example/aspe/demo_aspe_totalbytes.asp&quot; method=&quot;post&quot;&gt;
请键入一些字符：
&lt;input type=&quot;text&quot; name=&quot;txt&quot;&gt;&lt;br /&gt;&lt;br /&gt;
&lt;input type=&quot;submit&quot; value=&quot;提交&quot;&gt;
&lt;/form&gt;

<code class="aspcode">&lt;%
If Request.Form(&quot;txt&quot;)&lt;&gt;&quot;&quot; Then
   Response.Write(&quot;您提交了：&quot;)
   Response.Write(Request.Form)
   Response.Write(&quot;&lt;br /&gt;&lt;br /&gt;&quot;)
   Response.Write(&quot;字节总计：&quot;)
   Response.Write(Request.Totalbytes)
End If
%&gt;</code>

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>