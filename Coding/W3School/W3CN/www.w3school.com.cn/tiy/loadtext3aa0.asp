<!DOCTYPE html> 
<html> 

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_av_prop_defaultmuted by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:35 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body> 

<button onclick="getMuted()" type="button">该视频默认是静音的吗？</button>
<button onclick="setToMuted()" type="button">把视频设置为默认静音，并重载视频</button>
<br />
<br />
<video id="video1" controls="controls">
  <source src="../example/html5/mov_bbb.mp4" type="video/mp4">
  <source src="../example/html5/mov_bbb.ogg" type="video/ogg">
  Your browser does not support HTML5 video.
</video>

<script>
myVid=document.getElementById("video1");
function getMuted()
  { 
  alert(myVid.defaultMuted);
  } 
function setToMuted()
  { 
  myVid.defaultMuted=true;
  myVid.load()
  } 
</script> 

</body> 

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_av_prop_defaultmuted by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:35 GMT -->
</html>