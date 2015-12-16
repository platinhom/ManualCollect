<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_parser by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>
<script type="text/javascript">
try //Internet Explorer
  {
  xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
  }
catch(e)
  {
  try //Firefox, Mozilla, Opera, etc.
    {
    xmlDoc=document.implementation.createDocument("","",null);
    }
  catch(e) {alert(e.message)}
  }
try 
  {
  xmlDoc.async=false;
  xmlDoc.load("../example/xdom/books.xml");
  document.write("xmlDoc is loaded, ready for use");
  }
catch(e) {alert(e.message)}
</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_parser by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>