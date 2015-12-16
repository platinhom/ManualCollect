<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_pro_js_object_modifying_2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<script type="text/javascript">

Array.prototype.enqueue = function(vItem) {
  this.push(vItem);
};

Array.prototype.dequeue = function() {
  return this.shift();
};

var arr = new Array(3)
arr[0] = "George"
arr[1] = "John"
arr[2] = "Thomas"

arr.enqueue("Bill");
document.write(arr);

document.write("<br />")

arr.dequeue();
document.write(arr);

</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_pro_js_object_modifying_2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>