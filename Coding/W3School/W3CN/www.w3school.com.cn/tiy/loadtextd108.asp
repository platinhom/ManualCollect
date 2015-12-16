<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_parsertest2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../example/xdom/loadxmlstring.js"></script>
</head>
<body>
<script type="text/javascript">
text="<bookstore>"
text=text+"<book>";
text=text+"<title>Harry Potter</title>";
text=text+"<author>J K. Rowling</author>";
text=text+"<year>2005</year>";
text=text+"</book>";
text=text+"</bookstore>";

xmlDoc=loadXMLString(text);

document.write(xmlDoc.getElementsByTagName("title")[0].childNodes[0].nodeValue);
document.write("<br />");
document.write(xmlDoc.getElementsByTagName("author")[0].childNodes[0].nodeValue);
document.write("<br />");
document.write(xmlDoc.getElementsByTagName("year")[0].childNodes[0].nodeValue);
</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=xdom_parsertest2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>