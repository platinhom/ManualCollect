<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dom_event_onmouseover by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<div 
onmouseover="mOver(this)" 
onmouseout="mOut(this)" 
style="background-color:#D94A38;width:200px;height:50px;padding-top:25px;text-align:center;">
Mouse Over Me
</div>

<script>
function mOver(obj)
{
obj.innerHTML="谢谢你"
}

function mOut(obj)
{
obj.innerHTML="把鼠标指针移动到上面"
}
</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dom_event_onmouseover by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:09:46 GMT -->
</html>