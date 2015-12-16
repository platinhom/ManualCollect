<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xmle_note_traverse_crossbrowser by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:00:58 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>
<script type="text/javascript">
var xmlDoc;
// code for IE
if (window.ActiveXObject)
{
xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
}
// code for Mozilla, Firefox, Opera, etc.
else if (document.implementation.createDocument)
{
xmlDoc=document.implementation.createDocument("","",null);
}
else
{
alert('Your browser cannot handle this script');
}
xmlDoc.async=false;
xmlDoc.load("../example/xmle/note.xml");

var x=xmlDoc.documentElement.childNodes;

for (var i=0;i<x.length;i++)
{ 
if (x[i].nodeType==1)
  { 
  //Process only element (nodeType 1) nodes
  document.write(x[i].nodeName + ": ");
  document.write(x[i].childNodes[0].nodeValue);
  document.write("<br />");
  } 
}
</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xmle_note_traverse_crossbrowser by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:00:58 GMT -->
</html>