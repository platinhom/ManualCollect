<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_option_disabled_selected by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript">
function alertDefaultDisabled()
{
  var x=document.getElementById("mySelect").selectedIndex;
  var y=document.getElementsByTagName("option");
  alert("Is " + y[x].text + " disabled by default? " + y[x].disabled);
}
</script>
</head>
<body>

<form>
Select your favorite fruit:
<select id="mySelect">
  <option>Apple</option>
  <option>Orange</option>
  <option disabled="disabled">Pineapple</option>
  <option>Banana</option>
</select>
<br />
<br />
<input type="button" onclick="alertDefaultDisabled()" value="Is the chosen fruit disabled by default?">
</form>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_option_disabled_selected by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>