<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_lastindex_regexp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:03 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<script type="text/javascript">
var str = "The rain in Spain stays mainly in the plain";
var patt1 = new RegExp("ain", "g");

for(i = 0; i < 4; i++) 
  {
  patt1.test(str)
  document.write("ain found. index now at: " + patt1.lastIndex);
  document.write("<br />");
  }
</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_lastindex_regexp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:03 GMT -->
</html>