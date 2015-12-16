<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_form_selectall by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript">
function makeCheck(thisForm)
{
for (i = 0; i < thisForm.option.length; i++)
	{
	thisForm.option[i].checked=true
	}
}

function makeUncheck(thisForm)
{
for (i = 0; i < thisForm.option.length; i++)
	{
	thisForm.option[i].checked=false
	}
}
</script>
</head>
<body>

<form name="myForm">
<input type="button" value="选取" onclick="makeCheck(this.form)">
<input type="button" value="取消" onclick="makeUncheck(this.form)">
<br />
<input type="checkbox" name="option">苹果<br />
<input type="checkbox" name="option">桔子<br />
<input type="checkbox" name="option">香蕉<br />
<input type="checkbox" name="option">西瓜
</form>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_form_selectall by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>