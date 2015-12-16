<!DOCTYPE HTML>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_webstorage_session_pagecount by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:07:59 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<script type="text/javascript">

if (sessionStorage.pagecount)
	{
	sessionStorage.pagecount=Number(sessionStorage.pagecount) +1;
	}
else
	{
	sessionStorage.pagecount=1;
	}
document.write("Visits " + sessionStorage.pagecount + " time(s) this session.");

</script> 

<p>刷新页面会看到计数器在增长。</p>

<p>请关闭浏览器窗口，然后再试一次，计数器已经重置了。</p>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_webstorage_session_pagecount by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:07:59 GMT -->
</html>