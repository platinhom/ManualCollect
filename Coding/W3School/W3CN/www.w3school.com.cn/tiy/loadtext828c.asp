<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_pro_object_defining_factory_paradigm_arguments by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<script type="text/javascript">

function createCar(sColor,iDoors,iMpg) {
  var oTempCar = new Object;
  oTempCar.color = sColor;
  oTempCar.doors = iDoors;
  oTempCar.mpg = iMpg;
  oTempCar.showColor = function() {
    document.write(this.color);
  };
  return oTempCar;
}

var oCar1 = createCar("red",4,23);
var oCar2 = createCar("blue",3,25);

oCar1.showColor();
document.write("<br />")
oCar2.showColor();

</script>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=jseg_pro_object_defining_factory_paradigm_arguments by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:33:33 GMT -->
</html>