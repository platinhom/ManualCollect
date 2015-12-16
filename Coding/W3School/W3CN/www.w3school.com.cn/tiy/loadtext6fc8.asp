<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_tablecell_abbr by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript">
function alertAbbr()
  {
  alert(document.getElementById('td1').abbr);
  }
</script>
</head>
<body>

<table border="1">
<tr>
<th>Firstname</th>
<th>Lastname</th>
</tr>
<tr>
<td id="td1" abbr="Some text">Peter</td>
<td id="td2">Griffin</td>
</tr>
</table>
<br />
<input type="button" onclick="alertAbbr()" value="Alert abbr" />

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_tablecell_abbr by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>