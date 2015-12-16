<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_nav_prevsibling by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../example/xdom/loadxmldoc.js">
</script>
<script type="text/javascript">
//check if the first node is an element node
function get_previousSibling(n)
{
y=n.previousSibling;
while (y.nodeType!=1)
  {
  y=y.previousSibling;
  }
return y;
}
</script>
</head>

<body>
<script type="text/javascript">
xmlDoc=loadXMLDoc("../example/xdom/books.xml");

x=get_previousSibling(xmlDoc.getElementsByTagName("price")[0]);
document.write(x.nodeName);
</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_nav_prevsibling by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>