<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_password_tabindex by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:35 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript">
function showTabIndex()
  {
  var email=document.getElementById('email').tabIndex;
  var pwd=document.getElementById('pwd').tabIndex;
  document.write("Tab index of email field: " + email);
  document.write("<br />");
  document.write("Tab index of password field: " + pwd);
  }
</script>
</head>
<body>

<form>
Email: <input type="text" id="email" tabindex="1" />
<br />
Password: <input type="password" id="pwd" tabindex="2" />
<br />
<input type="button" onclick="showTabIndex()" value="Show tabIndex" />
</form>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_password_tabindex by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:35 GMT -->
</html>