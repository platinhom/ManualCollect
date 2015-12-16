<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_event_pagex_pagey by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../jquery/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(document).mousemove(function(e){ 
    $("span").text("X: " + e.pageX + ", Y: " + e.pageY); 
  });
});

</script>
</head>
<body>
<p>鼠标指针位于： <span></span></p>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_event_pagex_pagey by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>