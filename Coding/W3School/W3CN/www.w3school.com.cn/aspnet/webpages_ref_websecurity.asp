
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/aspnet/webpages_ref_websecurity.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:12:40 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<title>ASP.NET Web Pages - WebSecurity 对象</title>

</head>

<body class="dotnet">

<div id="wrapper">

<div id="header">
<a href="../index-2.html" title="w3school 在线教程" style="float:left;">w3school 在线教程</a>
<div id="ad_head">
<script type="text/javascript"><!--
google_ad_client = "pub-3381531532877742";
/* 728x90, 创建于 08-12-1 */
google_ad_slot = "7423315034";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="../../pagead2.googlesyndication.com/pagead/f.txt">
</script>
</div>
</div>

<div id="navfirst">
<ul id="menu">
<li id="h"><a href="../h.html" title="HTML 系列教程">HTML 系列教程</a></li>
<li id="b"><a href="../b.html" title="浏览器脚本教程">浏览器脚本</a></li>
<li id="s"><a href="../s.html" title="服务器脚本教程">服务器脚本</a></li>
<li id="d"><a href="../d.html" title="ASP.NET 教程">ASP.NET 教程</a></li>
<li id="x"><a href="../x.html" title="XML 系列教程">XML 系列教程</a></li>
<li id="ws"><a href="../ws.html" title="Web Services 系列教程">Web Services 系列教程</a></li>
<li id="w"><a href="../w.html" title="建站手册">建站手册</a></li>
</ul>
</div>

<div id="navsecond">

<div id="course"><h2>ASP.NET 教程</h2>
<ul>
<li><a href="index.html" title="ASP.NET 教程">ASP.NET 教程</a></li>
<li><a href="aspnet.html" title="ASP.NET 简介">ASP.NET 简介</a></li>
</ul>
<h2>WP 教程</h2>
<ul>
<li><a href="webpages_intro.html" title="WebPages 简介">WebPages 简介</a></li>
<li><a href="webpages_razor.html" title="WebPages Razor">WebPages Razor</a></li>
<li><a href="webpages_layout.html" title="WebPages 布局">WebPages 布局</a></li>
<li><a href="webpages_folders.html" title="WebPages 文件夹">WebPages 文件夹</a></li>
<li><a href="webpages_global.html" title="WebPages 全局">WebPages 全局</a></li>
<li><a href="webpages_forms.html" title="WebPages 窗体">WebPages 窗体</a></li>
<li><a href="webpages_objects.html" title="WebPages 对象">WebPages 对象</a></li>
<li><a href="webpages_files.html" title="WebPages 文件">WebPages 文件</a></li>
<li><a href="webpages_helpers.html" title="WebPages 帮助器">WebPages 帮助器</a></li>
<li><a href="webpages_webgrid.html" title="WebPages WebGrid">WebPages WebGrid</a></li>
<li><a href="webpages_chart.html" title="WebPages 图表">WebPages 图表</a></li>
<li><a href="webpages_email.html" title="WebPages 电邮">WebPages 电邮</a></li>
<li><a href="webpages_php.html" title="WebPages PHP">WebPages PHP</a></li>
<li><a href="webpages_publish.html" title="WebPages 发布">WebPages 发布</a></li>
<li><a href="webpages_examples.html" title="WebPages 实例">WebPages 实例</a></li>
</ul>
<h2>WP 参考手册</h2>
<ul>
<li><a href="webpages_ref_classes.html" title="WebPages 类">WebPages 类</a></li>
<li class="currentLink"><a href="webpages_ref_websecurity.asp" title="WebPages 安全">WebPages 安全</a></li>
<li><a href="webpages_ref_database.asp" title="WebPages 数据库">WebPages 数据库</a></li>
<li><a href="webpages_ref_webmail.html" title="WebPages WebMail">WebPages WebMail</a></li>
<li><a href="webpages_ref_helpers.asp" title="WebPages 助手">WebPages 助手</a></li>
</ul>
<h2>ASP.NET Razor</h2>
<ul>
<li><a href="razor_intro.html" title="Razor 简介">Razor 简介</a></li>
<li><a href="razor_syntax.html" title="Razor 语法">Razor 语法</a></li>
<li><a href="razor_cs_variables.html" title="Razor C# 变量">Razor C# 变量</a></li>
<li><a href="razor_cs_loops.html" title="Razor C# 循环">Razor C# 循环</a></li>
<li><a href="razor_cs_logic.html" title="Razor 外边距合并">Razor C# 逻辑</a></li>
<li><a href="razor_vb_variables.html" title="Razor VB 变量">Razor VB 变量</a></li>
<li><a href="razor_vb_loops.html" title="Razor VB 循环">Razor VB 循环</a></li>
<li><a href="razor_vb_logic.html" title="Razor VB 逻辑">Razor VB 逻辑</a></li>
</ul>
<h2>ASP.NET MVC</h2>
<ul>
<li><a href="mvc_intro.html" title="MVC 简介">MVC 简介</a></li>
<li><a href="mvc_app.html" title="MVC 应用程序">MVC 应用程序</a></li>
<li><a href="mvc_folders.html" title="MVC 文件夹">MVC 文件夹</a></li>
<li><a href="mvc_layout.html" title="MVC 布局">MVC 布局</a></li>
<li><a href="mvc_controllers.html" title="MVC 控制器">MVC 控制器</a></li>
<li><a href="mvc_views.asp" title="MVC 视图">MVC 视图</a></li>
<li><a href="mvc_database.html" title="MVC 数据库">MVC 数据库</a></li>
<li><a href="mvc_models.html" title="MVC 模型">MVC 模型</a></li>
<li><a href="mvc_security.html" title="MVC 安全">MVC 安全</a></li>
<li><a href="mvc_htmlhelpers.html" title="MVC HTML 助手">MVC HTML 助手</a></li>
<li><a href="mvc_publish.asp" title="MVC 发布">MVC 发布</a></li>
<li><a href="mvc_reference.html" title="MVC 参考手册">MVC 参考手册</a></li>
</ul>
<h2>WF 教程</h2>
<ul>
<li><a href="aspnet_intro.html" title="WebForms 简介">WebForms 简介</a></li>
<li><a href="aspnet_pages.html" title="WebForms Pages">WebForms Pages</a></li>
<li><a href="aspnet_controls.html" title="WebForms 控件">WebForms 控件</a></li>
<li><a href="aspnet_events.html" title="WebForms 事件">WebForms 事件</a></li>
<li><a href="aspnet_forms.html" title="WebForms 窗体">WebForms 窗体</a></li>
<li><a href="aspnet_viewstate.asp" title="WebForms ViewState">WebForms ViewState</a></li>
<li><a href="aspnet_textbox.asp" title="WebForms TextBox">WebForms TextBox</a></li>
<li><a href="aspnet_button.asp" title="WebForms Button">WebForms Button</a></li>
<li><a href="aspnet_databinding.html" title="WebForms Data Binding">WebForms 数据绑定</a></li>
<li><a href="aspnet_arraylist.html" title="WebForms ArrayList">WebForms ArrayList</a></li>
<li><a href="aspnet_hashtable.html" title="WebForms Hashtable">WebForms Hashtable</a></li>
<li><a href="aspnet_sortedlist.html" title="WebForms SortedList">WebForms SortedList</a></li>
<li><a href="aspnet_xml.html" title="WebForms XML 文件">WebForms XML 文件</a></li>
<li><a href="aspnet_repeater.html" title="WebForms Repeater">WebForms Repeater</a></li>
<li><a href="aspnet_datalist.html" title="WebForms DataList">WebForms DataList</a></li>
<li><a href="aspnet_dbconnection.html" title="WebForms DbConnection">WebForms 数据库连接</a></li>
<li><a href="aspnet_masterpages.html" title="WebForms Master Pages">WebForms 母版页</a></li>
<li><a href="aspnet_navigation.html" title="WebForms 导航">WebForms 导航</a></li>
<li><a href="aspnet_examples.html" title="WebForms 实例">WebForms 实例</a></li>
</ul>
<h2>WF 参考手册</h2>
<ul>
<li><a href="aspnet_refhtmlcontrols.html" title="WebForms HTML">WebForms HTML</a></li>
<li><a href="aspnet_refwebcontrols.asp" title="WebForms Controls">WebForms Controls</a></li>
<li><a href="aspnet_refvalidationcontrols.html" title="WebForms Validation">WebForms Validation</a></li>
</ul>
</div>

</div>

<div id="maincontent">

<h1>ASP.NET Web Pages - WebSecurity 对象</h1>


<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="webpages_ref_classes.html" title="WebPages 类">WebPages 类</a></li>
<li class="next"><a href="webpages_ref_database.asp" title="WebPages 数据库">WebPages 数据库</a></li>
</ul>
</div>


<div>
<h2>描述</h2>

<p>WebSecurity 对象提供为 ASP.NET Web Pages 应用程序提供安全和认证。</p>

<p>通过 WebSecurity 对象，您能够创建用户账户、登录和注销，重置或更改密码等等。</p>
</div>


<div>
<h2>WebSecurity 对象参考手册 - 属性</h2>

<table class="dataintable">
<tr>
<th style="width:35%;">属性</th>
<th>描述</th>
</tr>

<tr>
<td>CurrentUserId</td>
<td>获取当前用户的 ID。</td>
</tr>

<tr>
<td>CurrentUserName</td>
<td>获取当前用户的名称。</td>
</tr>

<tr>
<td>HasUserId</td>
<td>获取指示当前用户是否具有用户 ID 的值。如果是，返回 true。</td>
</tr>

<tr>
<td>IsAuthenticated</td>
<td>获取当前用户的身份验证状态。</td>
</tr>
</table>
</div>


<div>
<h2>WebSecurity 对象参考手册 - 方法</h2>

<table class="dataintable">
<tr>
<th style="width:35%;">属性</th>
<th>描述</th>
</tr>

<tr>
<td>ChangePassword()</td>
<td>更改用户的密码。</td>
</tr>

<tr>
<td>ConfirmAccount()</td>
<td>确认帐户有效并激活该帐户。</td>
</tr>

<tr>
<td>CreateAccount()</td>
<td>创建新的用户帐户。</td>
</tr>

<tr>
<td>CreateUserAndAccount()</td>
<td>创建新的用户帐户。</td>
</tr>

<tr>
<td>GeneratePasswordResetToken()</td>
<td>生成可以通过电子邮件发送给用户的密码重置令牌。</td>
</tr>

<tr>
<td>GetCreateDate()</td>
<td>返回创建指定成员资格帐户的日期和时间。</td>
</tr>

<tr>
<td>GetPasswordChangeDate()</td>
<td>返回最近更改指定成员资格帐户密码的日期和时间。</td>
</tr>

<tr>
<td>GetPasswordFailures<br />SinceLastSuccess()</td>
<td>返回自上次成功登录或创建成员资格帐户以来错误输入密码的次数。</td>
</tr>

<tr>
<td>GetUserId()</td>
<td>基于指定用户名返回用户 ID。</td>
</tr>

<tr>
<td>GetUserIdFrom<br />PasswordResetToken ()</td>
<td>从密码重置令牌中返回用户 ID。</td>
</tr>

<tr>
<td>InitializeDatabaseConnection()</td>
<td>通过连接到包含用户信息的数据库来初始化成员资格系统。</td>
</tr>

<tr>
<td>IsAccountLockedOut()</td>
<td>指示指定的成员资格帐户是否因为密码尝试失败次数太多而被锁定。</td>
</tr>

<tr>
<td>IsConfirmed()</td>
<td>返回一个值，指示用户是否已经过确认的值。</td>
</tr>

<tr>
<td>IsCurrentUser()</td>
<td>返回一个值，指示已登录用户的用户名是否与指定用户名匹配的值。</td>
</tr>

<tr>
<td>Login()</td>
<td>登录用户。</td>
</tr>

<tr>
<td>Logout()</td>
<td>注销用户。</td>
</tr>

<tr>
<td>RequireAuthenticatedUser()</td>
<td>如果用户未经过身份验证，请将 HTTP 状态设置为 401（未经授权）。</td>
</tr>

<tr>
<td>RequireRoles()</td>
<td>如果当前用户不属于指定的角色，请将 HTTP 状态代码设置为 401。</td>
</tr>

<tr>
<td>RequireUser()</td>
<td>如果当前用户不是指定用户，请将 HTTP 状态设置为 401。</td>
</tr>

<tr>
<td>ResetPassword()</td>
<td>通过使用密码重置令牌来重置密码。</td>
</tr>

<tr>
<td>UserExists()</td>
<td>检查用户是否存在。</td>
</tr>
</table>
</div>


<div>
<h2>技术数据</h2>

<table class="dataintable">
<tr>
<th style="width:35%;">名称</th>
<th>值</th>
</tr>

<tr>
<td>Class</td>
<td>WebMatrix.WebData.WebSecurity</td>
</tr>

<tr>
<td>Namespace</td>
<td>WebMatrix.WebData</td>
</tr>

<tr>
<td>Assembly</td>
<td>WebMatrix.WebData.dll</td>
</tr>
</table>
</div>


<div>
<h2>初始化 WebSecurity 数据库</h2>

<p>在代码中使用 WebSecurity 对象之前，必须创建或初始化 WebSecurity 数据库。</p>

<p>在 web 更目录中，创建或编辑 _AppStart.cshtml 页面。</p>

<p>在该文件中写入以下代码：</p>

<h3>_AppStart.cshtml</h3>

<pre>
@{
WebSecurity.InitializeDatabaseConnection(&quot;Users&quot;, &quot;UserProfile&quot;, &quot;UserId&quot;, &quot;Email&quot;, 
true);
}
</pre>

<p>网站每次启动时都会运行以上代码。它会对 WebSecurity 数据库进行初始化。</p>

<p>&quot;Users&quot; 是 WebSecurity 数据库的名称。(Users.sdf)</p>

<p>&quot;UserProfile&quot; 是包含用户配置信息的数据库表的名称。</p>

<p>&quot;UserId&quot; 包含用户 ID 的列的名称（主键）。</p>

<p>&quot;Email&quot; 是包含用户名称的列名。</p>

<p>最后一个参数 true 是一个逻辑值，指示应创建用户配置文件表和成员资格表（如果它们不存在），否则 false。</p>

<p>提示：尽管 true 指示自动创建数据库表，但数据库本身不会被自动创建。它必须存在。</p>
</div>


<div>
<h2>WebSecurity 数据库</h2>

<p>UserProfile 表中的每条记录代表一个用户，其中包括用户 ID （主键）和用户名称（email）：</p>

<table class="dataintable">
<tr>
<th style="width:35%;">UserId</th>
<th>Email</th>
</tr>

<tr>
<td>1</td>
<td>john@johnson.net</td>
</tr>

<tr>
<td>2</td>
<td>peter@peterson.com</td>
</tr>

<tr>
<td>3</td>
<td>lars@larson.eut</td>
</tr>
</table>

<p>Membership 表包含成员资格信息，比如用户何时创建以及是否（以及何时）确认成员资格。</p>

<p>类似这样（某些列未列出）：</p>

<table class="dataintable">
<tr>
<th>UserId</th>
<th>创建日期</th>
<th>确认<br />令牌</th>
<th>是否<br />确认</th>
<th>最后的<br />密码错误</th>
<th>密码</th>
<th>密码更改</th>
</tr>

<tr>
<td>1</td>
<td class="no_wrap">12.04.2012 16:12:17</td>
<td>NULL</td>
<td>True</td>
<td>NULL</td>
<td>AFNQhWfy....</td>
<td class="no_wrap">12.04.2012 16:12:17</td>
</tr>
</table>

<p class="note"><span>注释：</span>如果您希望看到所有列和所有内容，请通过 WebMatrix 打开数据库，然后查看每张表。</p>
</div>


<div>
<h2>简单的成员资格配置</h2>

<p>如果您的站点未配置为使用 ASP.NET Web Pages 成员资格系统 SimpleMembership，那么可能会在使用 WebSecurity 对象时出现错误。</p>

<p>如果主机提供商的配置与您的本地服务器不同，就会发生错误。为了解决这个问题，请在站点的 Web.config 文件中添加以下元素：</p>

<pre>
&lt;appSettings&gt; 
&lt;add key=&quot;enableSimpleMembership&quot; value=&quot;true&quot; /&gt; 
&lt;/appSettings&gt;
</pre>
</div>


<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="webpages_ref_classes.html" title="WebPages 类">WebPages 类</a></li>
<li class="next"><a href="webpages_ref_database.asp" title="WebPages 数据库">WebPages 数据库</a></li>
</ul>
</div>




</div>
<!-- maincontent end -->

<div id="sidebar">

<div id="searchui">
<form method="get" id="searchform" action="http://www.google.com.hk/search">
<p><label for="searched_content">Search:</label></p>
<p><input type="hidden" name="sitesearch" value="w3school.com.cn" /></p>
<p>
<input type="text" name="as_q" class="box"  id="searched_content" title="在此输入搜索内容。" />
<input type="submit" value="Go" class="button" title="搜索！" />
</p>
</form>
</div>

<div id="tools">
<h5 id="tools_reference"><a href="aspnet_reference.html">ASP.NET 参考手册</a></h5>
</div>

<div id="ad">
<script type="text/javascript"><!--
google_ad_client = "ca-pub-3381531532877742";
/* sidebar-160x600 */
google_ad_slot = "3772569310";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
<script type="text/javascript"
src="../../pagead2.googlesyndication.com/pagead/f.txt">
</script>
</div>

</div>

<div id="footer">
<p>
W3School 提供的内容仅用于培训。我们不保证内容的正确性。通过使用本站内容随之而来的风险与本站无关。W3School 简体中文版的所有内容仅供测试，对任何法律问题及风险不承担任何责任。
</p>

<p>
当使用本站时，代表您已接受了本站的<a href="../about/about_use.html" title="关于使用">使用条款</a>和<a href="../about/about_privacy.html" title="关于隐私">隐私条款</a>。版权所有，保留一切权利。
赞助商：<a href="http://www.yktz.net/" title="上海赢科投资有限公司">上海赢科投资有限公司</a>。
<a href="http://www.miitbeian.gov.cn/">蒙ICP备06004630号</a>
</p>
</div>

</div>
<!-- wrapper end -->

</body>


<!-- Mirrored from www.w3school.com.cn/aspnet/webpages_ref_websecurity.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 05:12:40 GMT -->
</html>