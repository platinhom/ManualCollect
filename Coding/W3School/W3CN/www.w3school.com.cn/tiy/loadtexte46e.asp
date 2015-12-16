<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_throw by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:00:58 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>
<script type="text/javascript">
var x=prompt("请输入 0 至 10 之间的数：","")
try
{ 
if(x>10) 
  throw "Err1" 
else if(x<0)
  throw "Err2"
else if(isNaN(x))
  throw "Err3"
} 
catch(er)
{
if(er=="Err1") 
  alert("错误！该值太大！")
if(er == "Err2") 
  alert("错误！该值太小！") 
if(er == "Err3") 
  alert("错误！该值不是数字！") 
}
</script>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_throw by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:00:58 GMT -->
</html>