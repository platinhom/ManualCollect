<!DOCTYPE html>
<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_menuitem by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:32:36 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<body>

<div style="background:yellow;border:1px solid #cccccc;padding: 10px;" contextmenu="mymenu">
<p>请在框中右键点击，就可以看到快捷菜单！</p>

<menu type="context" id="mymenu">
  <menuitem label="Refresh" onclick="window.location.reload();" icon="ico_reload.html"></menuitem>
  <menu label="Share on...">
    <menuitem label="Twitter" icon="ico_twitter.png" onclick="window.open('//twitter.com/intent/tweet?text=' + window.location.href);"></menuitem>
    <menuitem label="Facebook" icon="ico_facebook.png" onclick="window.open('http://facebook.com/sharer/sharer.php?u=' + window.location.href);"></menuitem>
  </menu>
  <menuitem label="Email This Page" onclick="window.location='mailto:?body='+window.location.href;"></menuitem>
</menu>

</div>

<p>本例只在 Firefox 中有效！</p>

</body>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=html5_menuitem by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:32:36 GMT -->
</html>