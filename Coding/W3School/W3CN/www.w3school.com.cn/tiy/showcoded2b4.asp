

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_aspnet_repeater_1 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="showcode.css" />
</head>

<body>

<pre>

<code class="aspcode">&lt;%@ Import Namespace=&quot;System.Data&quot; %&gt;</code>

<code class="jscode">&lt;script  runat=&quot;server&quot;&gt;
sub Page_Load
if Not Page.IsPostBack then
   dim mycdcatalog=New DataSet
   mycdcatalog.ReadXml(MapPath(&quot;cdcatalog.xml&quot;))
   cdcatalog.DataSource=mycdcatalog
   cdcatalog.DataBind()
end if
end sub
&lt;/script&gt;</code>

&lt;html&gt;
&lt;body&gt;

&lt;form runat=&quot;server&quot;&gt;
&lt;asp:Repeater id=&quot;cdcatalog&quot; runat=&quot;server&quot;&gt;

&lt;HeaderTemplate&gt;
&lt;table border=&quot;1&quot; width=&quot;100%&quot;&gt;
&lt;tr&gt;
&lt;th&gt;Title&lt;/th&gt;
&lt;th&gt;Artist&lt;/th&gt;
&lt;th&gt;Company&lt;/th&gt;
&lt;th&gt;Price&lt;/th&gt;
&lt;/tr&gt;
&lt;/HeaderTemplate&gt;

&lt;ItemTemplate&gt;
&lt;tr&gt;
&lt;td&gt;<code class="aspcode">&lt;%#Container.DataItem(&quot;title&quot;)%&gt;</code> &lt;/td&gt;
&lt;td&gt;<code class="aspcode">&lt;%#Container.DataItem(&quot;artist&quot;)%&gt;</code> &lt;/td&gt;
&lt;td&gt;<code class="aspcode">&lt;%#Container.DataItem(&quot;company&quot;)%&gt;</code> &lt;/td&gt;
&lt;td&gt;<code class="aspcode">&lt;%#Container.DataItem(&quot;price&quot;)%&gt;</code> &lt;/td&gt;
&lt;/tr&gt;
&lt;/ItemTemplate&gt;

&lt;FooterTemplate&gt;
&lt;/table&gt;
&lt;/FooterTemplate&gt;

&lt;/asp:Repeater&gt;
&lt;/form&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>