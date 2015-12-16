<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_traversing_parents by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:40 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
  <style>
  b, span, p, html body {
    padding: .5em;
    border: 1px solid;
  }
  b { color:blue; }
  strong { color:red; }
  </style>
  <script type="text/javascript" src="../jquery/jquery.js"></script>
</head>

<body>
  <div>
    <p>
      <span>
        <b>我的父元素是：</b>
      </span>
    </p>
  </div>

<script>
var parentEls = $("b").parents()
            .map(function () { 
                  return this.tagName; 
                })
            .get().join(", ");
$("b").append("<strong>" + parentEls + "</strong>");
</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jquery_traversing_parents by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:31:40 GMT -->
</html>