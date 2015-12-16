<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_ajax_load_func by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<script type="text/javascript" src="../jquery/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("button").click(function(){
    $("div").load("../example/xmle/cd_catalog.xml",function(response,status){
      if (status=="success")
      {
      $("div").html("<ol></ol>");
      $(response).find("artist").each(function(){
        var item_text = $(this).text();
        $('<li></li>').html(item_text).appendTo('ol');
        });
      alert("There are "+$(response).find("cd").size()+" CDs")
      }
    });
  });
});
</script>
</head>
<body>
<p>Artists</p>
<div></div>
<button>获得 CD 信息</button>
<p>本例中使用的 XML 文件是 <a href="../example/xmle/cd_catalog.xml" target="_blank">cd_catalog</a></p>
</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_ajax_load_func by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:38 GMT -->
</html>