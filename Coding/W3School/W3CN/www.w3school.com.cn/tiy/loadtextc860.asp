<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_localname2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../example/xdom/loadxmldoc.js"> 
</script>
</head>
<body>
<script type="text/javascript">
//check if the last node is an element node
function get_lastchild(n)
{
var x=n.lastChild;
while (x.nodeType!=1)
  {
  x=x.previousSibling;
  }
return x;
}

xmlDoc=loadXMLDoc("../example/xdom/books.xml");

var x=xmlDoc.documentElement;
var lastNode=get_lastchild(x);

document.write(lastNode.localName);

</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_localname2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:41 GMT -->
</html>