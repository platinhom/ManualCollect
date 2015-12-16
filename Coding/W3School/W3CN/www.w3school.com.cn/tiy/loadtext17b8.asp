<!DOCTYPE html> 
<html> 

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_av_event_canplaythrough by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:36 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body> 

<video id="video1" controls="controls">
  <source src="../example/html5/mov_bbb.mp4" type="video/mp4">
  <source src="../example/html5/mov_bbb.ogg" type="video/ogg">
  Your browser does not support HTML5 video.
</video>

<script>
myVid=document.getElementById("video1");
myVid.oncanplaythrough=alert("Can play through video without stopping");
</script> 

</body> 

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_av_event_canplaythrough by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:36 GMT -->
</html>