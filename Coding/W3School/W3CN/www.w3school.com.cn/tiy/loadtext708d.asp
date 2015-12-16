<html>

<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_menu10 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=GB2312" /><!-- /Added by HTTrack -->
<head>
<style>
body{font-family:arial;}
table{font-size:80%;background:black}
a{color:black;text-decoration:none;font:bold}
a:hover{color:#606060}
td.menu{background:lightblue}
table.menu
{
font-size:100%;
position:absolute;
visibility:hidden;
}
</style>
<script type="text/javascript">
function showmenu(elmnt)
{
document.getElementById(elmnt).style.visibility="visible"
}
function hidemenu(elmnt)
{
document.getElementById(elmnt).style.visibility="hidden"
}
</script>
</head>

<body>
<h3>下拉菜单</h3>
<table width="100%">
 <tr bgcolor="#FF8080">
  <td onmouseover="showmenu('tutorials')" onmouseout="hidemenu('tutorials')">
   <a href="../i/eg_landscape.jpg">教程</a><br />
   <table class="menu" id="tutorials" width="120">
   <tr><td class="menu"><a href="../html/index.html">HTML</a></td></tr>
   <tr><td class="menu"><a href="../xhtml/index.html">XHTML</a></td></tr>
   <tr><td class="menu"><a href="../css/index.html">CSS</a></td></tr>
   <tr><td class="menu"><a href="../xml/index.html">XML</a></td></tr>
   <tr><td class="menu"><a href="../xsl/index.html">XSL</a></td></tr>
   </table>
  </td>
  <td onmouseover="showmenu('scripting')" onmouseout="hidemenu('scripting')">
   <a href="../i/eg_landscape.jpg">脚本</a><br />
   <table class="menu" id="scripting" width="120">
   <tr><td class="menu"><a href="../js/index.html">JavaScript</a></td></tr>
   <tr><td class="menu"><a href="../vbscript/index.html">VBScript</a></td></tr>
   <tr><td class="menu"><a href="../dhtml/index.html">DHTML</a></td></tr>
   <tr><td class="menu"><a href="../asp/index.html">ASP</a></td></tr>
   <tr><td class="menu"><a href="../ado/index.html">ADO</a></td></tr>
   </table>
  </td>
  <td onmouseover="showmenu('validation')" onmouseout="hidemenu('validation')">
   <a href="../site/site_validate.html">验证</a><br />
   <table class="menu" id="validation" width="120">
   <tr><td class="menu"><a href="../site/site_validate.html">验证 HTML</a></td></tr>
   <tr><td class="menu"><a href="../site/site_validate.html">验证 XHTML</a></td></tr>
   <tr><td class="menu"><a href="../site/site_validate.html">验证 CSS</a></td></tr>
   <tr><td class="menu"><a href="../site/site_validate.html">验证 XML</a></td></tr>
   <tr><td class="menu"><a href="../site/site_validate.html">验证 WML</a></td></tr>
   </table>
  </td>
 </tr>
</table>
<p>把鼠标移动到不同的选项上，就可以看到下拉菜单。</p>
</body>


<!-- Mirrored from www.w3school.com.cn/tiy/loadtext.asp?f=dhtm_menu10 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 07:01:00 GMT -->
</html>