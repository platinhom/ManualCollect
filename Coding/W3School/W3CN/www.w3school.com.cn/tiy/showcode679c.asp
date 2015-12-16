

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspnet_arraylist_radio_1 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:13:39 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

<code class="jscode">&lt;script  runat=&quot;server&quot;&gt;
Sub Page_Load
if Not Page.IsPostBack then
   dim mycountries=New ArrayList
   mycountries.Add(&quot;China&quot;)
   mycountries.Add(&quot;Sweden&quot;)
   mycountries.Add(&quot;France&quot;)
   mycountries.Add(&quot;Italy&quot;)
   mycountries.TrimToSize()
   mycountries.Sort()
   rb.DataSource=mycountries
   rb.DataBind()
end if
end sub

sub displayMessage(s as Object,e As EventArgs)
lbl1.text=&quot;Your favorite country is: &quot; & rb.SelectedItem.Text
end sub
&lt;/script&gt;</code>

&lt;html&gt;
&lt;body&gt;

&lt;form runat=&quot;server&quot;&gt;
&lt;asp:RadioButtonList id=&quot;rb&quot; runat=&quot;server&quot;
AutoPostBack=&quot;True&quot; onSelectedIndexChanged=&quot;displayMessage&quot; /&gt;
&lt;p&gt;&lt;asp:label id=&quot;lbl1&quot; runat=&quot;server&quot; /&gt;&lt;/p&gt;
&lt;/form&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>