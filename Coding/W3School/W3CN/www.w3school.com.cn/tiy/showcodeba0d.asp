

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspnet_regularexpvalidator by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:34 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

<code class="jscode">&lt;script  runat=&quot;server&quot;&gt;
sub submit(sender As Object, e As EventArgs)
if Page.IsValid then
   lbl.Text=&quot;页面有效！&quot;
else
   lbl.Text=&quot;页面无效！&quot;
end if
end sub
&lt;/script&gt;</code>

&lt;html&gt;
&lt;body&gt;

&lt;form runat=&quot;server&quot;&gt;
请输入 US 邮政编码：
&lt;asp:TextBox id=&quot;txtbox1&quot; runat=&quot;server&quot; /&gt;
&lt;br /&gt;&lt;br /&gt;
&lt;asp:Button text=&quot;提交&quot; OnClick=&quot;submit&quot; runat=&quot;server&quot; /&gt;
&lt;br /&gt;&lt;br /&gt;
&lt;asp:Label id=&quot;lbl&quot; runat=&quot;server&quot; /&gt;
&lt;br /&gt;
&lt;asp:RegularExpressionValidator
ControlToValidate=&quot;txtbox1&quot;
ValidationExpression=&quot;\d{5}&quot;
EnableClientScript=&quot;false&quot;
ErrorMessage=&quot;邮编必须是五位数字！&quot;
runat=&quot;server&quot; /&gt;
&lt;/form&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>