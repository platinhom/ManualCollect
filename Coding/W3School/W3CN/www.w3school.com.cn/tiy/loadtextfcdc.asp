<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_attr_textcontent_set by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../example/xdom/loadxmldoc.js"> 
</script>
</head>
<body>

<script type="text/javascript">
xmlDoc=loadXMLDoc("../example/xdom/books.xml");
x=xmlDoc.getElementsByTagName('book');

//set textContent
for(i=0;i<x.length;i++)
{
x.item(i).attributes[0].textContent="TOO_OLD";
}
  
//output textContent
for(i=0;i<x.length;i++)
{
document.write(x.item(i).attributes[0].textContent);
document.write("<br />");
}

</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_attr_textcontent_set by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>