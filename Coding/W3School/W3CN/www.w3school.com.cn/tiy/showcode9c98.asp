

<html>


<!-- Mirrored from www.w3school.com.cn/tiy/showcode.asp?f=demo_php_array_rsort_num by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:12:43 GMT -->
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
$numbers=array(3,5,1,22,11);
rsort($numbers);

$arrlength=count($numbers);
for($x=0;$x&lt;$arrlength;$x++)
   {
   echo $numbers[$x];
   echo &quot;&lt;br&gt;&quot;;
   }
?&gt;</code>

&lt;/body&gt;
&lt;/html&gt;
</pre>

</body>