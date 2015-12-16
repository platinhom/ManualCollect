<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_onkeydown by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:05 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>
<script type="text/javascript">
function noNumbers(e)
{
var keynum
var keychar
var numcheck

if(window.event) // IE
	{
	keynum = e.keyCode
	}
else if(e.which) // Netscape/Firefox/Opera
	{
	keynum = e.which
	}
keychar = String.fromCharCode(keynum)
numcheck = /\d/
return !numcheck.test(keychar)
}
</script>

<form>
Type some text (numbers not allowed):
<input type="text" onkeydown="return noNumbers(event)" />
</form>


<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=hdom_onkeydown by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:05 GMT -->
</html>