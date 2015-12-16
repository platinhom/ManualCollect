<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_attr_ownerelement by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../example/xdom/loadxmldoc.js"> 
</script>
</head>
<body>

<script type="text/javascript">
xmlDoc=loadXMLDoc("../example/xdom/books.xml");

x=xmlDoc.getElementsByTagName('book');

document.write(x.item(0).attributes[0].ownerElement);
document.write("<br />");
document.write(x.item(0).attributes[0].ownerElement.nodeName);
document.write("<br />");
document.write(x.item(0).attributes[0].ownerElement.nodeType);
</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_attr_ownerelement by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:41 GMT -->
</html>