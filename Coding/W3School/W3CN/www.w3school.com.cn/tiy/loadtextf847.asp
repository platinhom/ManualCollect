<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_traversing_is_3 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
  <script type="text/javascript" src="../jquery/jquery.js"></script>
</head>

<body>
<ul>
  <li><strong>list</strong> item 1 - one strong tag</li>
  <li><strong>list</strong> item <strong>2</strong> -
    two <span>strong tags</span></li>
  <li>list item 3</li>
  <li>list item 4</li>
  <li>list item 5</li>
</ul>

<script>
$("li").click(function() {
  var $li = $(this),
    isWithTwo = $li.is(function() {
      return $('strong', this).length === 2;
    });
  if ( isWithTwo ) {
    $li.css("background-color", "green");
  } else {
    $li.css("background-color", "red");
  }
});
</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_traversing_is_3 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>