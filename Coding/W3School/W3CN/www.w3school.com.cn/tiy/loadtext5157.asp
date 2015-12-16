<!DOCTYPE html> 
<html> 

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_av_prop_src by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:35 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body> 

<button onclick="changeSource()" type="button">改变视频</button>
<br />
<br />
<video id="video1" controls="controls" autoplay="autoplay">
  <source id="mp4_src" src="../example/html5/mov_bbb.mp4" type="video/mp4">
  <source id="ogg_src" src="../example/html5/mov_bbb.ogg" type="video/ogg">
  Your browser does not support HTML5 video.
</video>

<script> 
myVid=document.getElementById("video1");
function changeSource()
  { 
  isSupp=myVid.canPlayType("video/mp4");
  if (isSupp=="")
    {
    myVid.src="movie.html";
    }
  else
    {
    myVid.src="movie.mp4";
    }
  myVid.load();
  } 
</script> 

</body> 

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_av_prop_src by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:35 GMT -->
</html>