
<!DOCTYPE html>
<html lang="zh-cn">

<!-- Mirrored from www.w3school.com.cn/php/php_ref_mysqli.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:16:44 GMT -->
<head>
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="w3school.com.cn" />
<link rel="stylesheet" type="text/css" href="../c5.css" />

<title>PHP 5 MySQLi 函数</title>

</head>

<body class="serverscripting">

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

<div id="course"><h2>PHP 基础教程</h2>
<ul>
<li><a href="index.html" title="PHP 教程">PHP 教程</a></li>
<li><a href="php_intro.html" title="PHP 简介">PHP 简介</a></li>
<li><a href="php_install.html" title="PHP 安装">PHP 安装</a></li>
<li><a href="php_syntax.html" title="PHP 语法">PHP 语法</a></li>
<li><a href="php_variables.html" title="PHP 变量">PHP 变量</a></li>
<li><a href="php_echo_print.html" title="PHP Echo 和 Print 语句">PHP Echo / Print</a></li>
<li><a href="php_datatypes.html" title="PHP 数据类型">PHP 数据类型</a></li>
<li><a href="php_string.html" title="PHP 字符串函数">PHP 字符串函数</a></li>
<li><a href="php_constants.html" title="PHP 常量">PHP 常量</a></li>
<li><a href="php_operators.html" title="PHP 运算符">PHP 运算符</a></li>
<li><a href="php_if_else.html" title="PHP If...Else 语句">PHP If...Else</a></li>
<li><a href="php_switch.html" title="PHP Switch 语句">PHP Switch</a></li>
<li><a href="php_looping.html" title="PHP while 循环">PHP While 循环</a></li>
<li><a href="php_looping_for.html" title="PHP for 循环">PHP For 循环</a></li>
<li><a href="php_functions.html" title="PHP 函数">PHP 函数</a></li>
<li><a href="php_arrays.html" title="PHP 数组">PHP 数组</a></li>
<li><a href="php_arrays_sort.html" title="PHP 数组排序">PHP 数组排序</a></li>
<li><a href="php_superglobals.html" title="PHP 超全局变量">PHP 超全局</a></li>
</ul>
<h2>PHP 表单</h2>
<ul>
<li><a href="php_forms.html" title="PHP Date()">PHP 表单处理</a></li>
<li><a href="php_form_validation.html" title="PHP Include 文件">PHP 表单验证</a></li>
<li><a href="php_form_required.html" title="PHP 文件处理">PHP 表单必填</a></li>
<li><a href="php_form_url_email.html" title="PHP 文件上传">PHP 表单 URL/E-mail</a></li>
<li><a href="php_form_complete.html" title="PHP Cookies">PHP 表单完成</a></li>
</ul>
<h2>PHP 高级教程</h2>
<ul>
<li><a href="php_arrays_multi.html" title="PHP 多维数组">PHP 多维数组</a></li>
<li><a href="php_date.html" title="PHP Date()">PHP 日期</a></li>
<li><a href="php_includes.html" title="PHP Include 文件">PHP Include</a></li>
<li><a href="php_file.html" title="PHP 文件处理">PHP 文件</a></li>
<li><a href="php_file_open.html" title="PHP 文件上传">PHP 文件打开/读取</a></li>
<li><a href="php_file_create.html" title="PHP 文件上传">PHP 文件创建/写入</a></li>
<li><a href="php_file_upload.html" title="PHP 文件上传">PHP 文件上传</a></li>
<li><a href="php_cookies.html" title="PHP Cookies">PHP Cookies</a></li>
<li><a href="php_sessions.html" title="PHP Sessions">PHP Sessions</a></li>
<li><a href="php_mail.html" title="PHP 发送电子邮件">PHP E-mail</a></li>
<li><a href="php_secure_mail.html" title="PHP 安全的电子邮件">PHP 安全 E-mail</a></li>
<li><a href="php_error.html" title="PHP 错误处理">PHP Error</a></li>
<li><a href="php_exception.html" title="PHP 异常处理">PHP Exception</a></li>
<li><a href="php_filter.html" title="PHP 过滤器（Filter）">PHP Filter</a></li>
</ul>
<h2>PHP 数据库</h2>
<ul>
<li><a href="php_mysql_intro.html" title="MySQL 简介">MySQL 简介</a></li>
<li><a href="php_mysql_connect.html" title="PHP MySQL 连接数据库">MySQL Connect</a></li>
<li><a href="php_mysql_create.html" title="PHP MySQL 创建数据库和表">MySQL Create</a></li>
<li><a href="php_mysql_insert.html" title="PHP MySQL Insert Into">MySQL Insert</a></li>
<li><a href="php_mysql_select.asp" title="PHP MySQL Select">MySQL Select</a></li>
<li><a href="php_mysql_where.html" title="PHP MySQL Where 子句">MySQL Where</a></li>
<li><a href="php_mysql_order_by.html" title="PHP MySQL Order By 关键词">MySQL Order By</a></li>
<li><a href="php_mysql_update.html" title="PHP MySQL Update">MySQL Update</a></li>
<li><a href="php_mysql_delete.html" title="PHP MySQL Delete From">MySQL Delete</a></li>
<li><a href="php_db_odbc.html" title="PHP Database ODBC">PHP ODBC</a></li>
</ul>
<h2>PHP XML</h2>
<ul>
<li><a href="php_xml_parser_expat.html" title="PHP XML Expat 解析器">XML Expat Parser</a></li>
<li><a href="php_xml_dom.html" title="PHP XML DOM">XML DOM</a></li>
<li><a href="php_xml_simplexml.html" title="PHP SimpleXML">XML SimpleXML</a></li>
</ul>
<h2>PHP 和 AJAX</h2>
<ul>
<li><a href="php_ajax_intro.html" title="AJAX XMLHttpRequest">AJAX 简介</a></li>
<li><a href="php_ajax_xmlhttprequest.html" title="AJAX XMLHttpRequest">XMLHttpRequest</a></li>
<li><a href="php_ajax_suggest.html" title="PHP 和 AJAX 请求">AJAX Suggest</a></li>
<li><a href="php_ajax_xml.html" title="PHP 和 AJAX XML 实例">AJAX XML</a></li>
<li><a href="php_ajax_database.html" title="PHP 和 AJAX MySQL 数据库实例">AJAX Database</a></li>
<li><a href="php_ajax_responsexml.html" title="PHP 和 AJAX responseXML 实例">AJAX responseXML</a></li>
<li><a href="php_ajax_livesearch.html" title="PHP 和 AJAX Live Search">AJAX Live Search</a></li>
<li><a href="php_ajax_rss_reader.html" title="PHP 和 AJAX RSS 阅读器">AJAX RSS Reader</a></li>
<li><a href="php_ajax_poll.html" title="PHP 和 AJAX 投票">AJAX Poll</a></li>
</ul>
<h2>PHP 参考手册</h2>
<ul>
<li><a href="php_ref_array.html" title="PHP Array 函数">PHP Array</a></li>
<li><a href="php_ref_calendar.html" title="PHP Calendar 函数">PHP Calendar</a></li>
<li><a href="php_ref_date.html" title="PHP Date / Time 函数">PHP Date</a></li>
<li><a href="php_ref_directory.asp" title="PHP Directory 函数">PHP Directory</a></li>
<li><a href="php_ref_error.html" title="PHP Error 和 Logging 函数">PHP Error</a></li>
<li><a href="php_ref_filesystem.html" title="PHP Filesystem 函数">PHP Filesystem</a></li>
<li><a href="php_ref_filter.html" title="PHP Filter 函数">PHP Filter</a></li>
<li><a href="php_ref_ftp.html" title="PHP FTP 函数">PHP FTP</a></li>
<li><a href="php_ref_http.html" title="PHP HTTP 函数">PHP HTTP</a></li>
<li><a href="php_ref_libxml.html" title="PHP LibXML 函数">PHP LibXML</a></li>
<li><a href="php_ref_mail.html" title="PHP Mail 函数">PHP Mail</a></li>
<li><a href="php_ref_math.html" title="PHP Math 函数">PHP Math</a></li>
<li><a href="php_ref_mysql.html" title="PHP MySQL 函数">PHP MySQL</a></li>
<li class="currentLink"><a href="php_ref_mysqli.asp" title="PHP 5 MySQLi 函数">PHP MySQLi</a></li>
<li><a href="php_ref_simplexml.html" title="PHP SimpleXML 函数">PHP SimpleXML</a></li>
<li><a href="php_ref_string.html" title="PHP String 函数">PHP String</a></li>
<li><a href="php_ref_xml.asp" title="PHP XML Parser 函数">PHP XML</a></li>
<li><a href="php_ref_zip.html" title="PHP Zip File 函数">PHP Zip</a></li>
<li><a href="php_ref_misc.html" title="PHP 杂项函数">PHP 杂项</a></li>
</ul>
<h2>PHP 测验</h2>
<ul>
<li><a href="php_quiz.html" title="PHP 测验">PHP 测验</a></li>
</ul>
</div><div id="selected">
<h2>建站手册</h2>
<ul>
<li><a href="../site/index.html" title="网站构建">网站构建</a></li>
<li><a href="../w3c/index.html" title="万维网联盟 (W3C)">万维网联盟 (W3C)</a></li>
<li><a href="../browsers/index.html" title="浏览器信息">浏览器信息</a></li>
<li><a href="../quality/index.html" title="网站品质">网站品质</a></li>
<li><a href="../semweb/index.html" title="语义网">语义网</a></li>
<li><a href="../careers/index.asp" title="职业规划">职业规划</a></li>
<li><a href="../hosting/index.html" title="网站主机">网站主机</a></li>
</ul>

<h2><a href="../about/index.html" title="关于 W3School" id="link_about">关于 W3School</a></h2>
<h2><a href="../about/about_helping.html" title="帮助 W3School" id="link_help">帮助 W3School</a></h2>

</div>

</div>

<div id="maincontent">

<h1>PHP 5 MySQLi 函数</h1>

<div id="tpn">
<ul class="prenext">
<li class="pre"><a href="php_ref_mysql.html" title="PHP MySQL 函数">PHP MySQL</a></li>
<li class="next"><a href="php_ref_simplexml.html" title="PHP SimpleXML 函数">PHP SimpleXML</a></li>
</ul>
</div>


<div>
<h2>PHP MySQLi 简介</h2>

<p><em>PHP MySQLi = PHP MySQL Improved!</em></p>

<p>MySQLi 函数允许您访问 MySQL 数据库服务器。</p>

<p class="note"><span>注释：</span>MySQLi 扩展被设计为适用于 MySQL 版本 4.1.13 或更新的版本。</p>
</div>


<div>
<h2>安装 / Runtime 配置</h2>

<p>为了使 MySQLi 可用，您必须对 PHP 进行编译，以支持 MySQLi 扩展。</p>

<p>MySQLi 扩展通过 PHP 版本 5.0.0 引入。PHP version 5.0.0 MySQL 本地驱动程序包含在 PHP 5.3.0 版。</p>

<p>如需安装细节，请访问：<a href="http://www.php.net/manual/zh/mysqli.installation.php" target="_blank">http://www.php.net/manual/zh/mysqli.installation.php</a></p>

<p>如需运行时配置细节，请访问：<a href="http://www.php.net/manual/zh/mysqli.configuration.php" target="_blank">http://www.php.net/manual/zh/mysqli.configuration.php</a></p>
</div>


<div>
<h2>PHP 5 MySQLi 函数</h2>

<table class="dataintable">
<tr>
<th>函数</th>
<th>描述</th>
</tr>

<tr>
<td>mysqli_affected_rows()</td>
<td>返回前一个 Mysql 操作的受影响行数。</td>
</tr>

<tr>
<td>mysqli_autocommit()</td>
<td>打开或关闭自动提交数据库修改功能。</td>
</tr>

<tr>
<td>mysqli_change_user()</td>
<td>更改指定数据库连接的用户。</td>
</tr>

<tr>
<td>mysqli_character_set_name()</td>
<td>返回数据库连接的默认字符集。</td>
</tr>

<tr>
<td>mysqli_close()</td>
<td>关闭先前打开的数据库连接。</td>
</tr>

<tr>
<td>mysqli_commit()</td>
<td>提交当前事务。</td>
</tr>

<tr>
<td>mysqli_connect_errno()</td>
<td>返回最后一次连接调用的错误代码。</td>
</tr>

<tr>
<td>mysqli_connect_error()</td>
<td>返回上一次连接错误的错误描述。</td>
</tr>

<tr>
<td>mysqli_connect()</td>
<td>打开到 Mysql 服务器的新连接。</td>
</tr>

<tr>
<td>mysqli_data_seek()</td>
<td>调整结果指针到结果集中的一个任意行。</td>
</tr>

<tr>
<td>mysqli_debug()</td>
<td>执行调试操作。</td>
</tr>

<tr>
<td>mysqli_dump_debug_info()</td>
<td>转储调试信息到日志中。</td>
</tr>

<tr>
<td>mysqli_errno()</td>
<td>返回最近的函数调用产生的错误代码。</td>
</tr>

<tr>
<td>mysqli_error_list()</td>
<td>返回最近的函数调用产生的错误列表。</td>
</tr>

<tr>
<td>mysqli_error()</td>
<td>返回字符串描述的最近一次函数调用产生的错误代码。</td>
</tr>

<tr>
<td>mysqli_fetch_all()</td>
<td>抓取所有的结果行并且以关联数据，数值索引数组，或者两者皆有的方式返回结果集。</td>
</tr>

<tr>
<td>mysqli_fetch_array()</td>
<td>以一个关联数组，数值索引数组，或者两者皆有的方式抓取一行结果。</td>
</tr>

<tr>
<td>mysqli_fetch_assoc()</td>
<td>以一个关联数组方式抓取一行结果。</td>
</tr>

<tr>
<td>mysqli_fetch_field_direct()</td>
<td>以对象返回结果集中单字段的元数据。</td>
</tr>

<tr>
<td>mysqli_fetch_field()</td>
<td>以对象返回结果集中的下一个字段。</td>
</tr>

<tr>
<td>mysqli_fetch_fields()</td>
<td>返回代表结果集中字段的对象数组。</td>
</tr>

<tr>
<td>mysqli_fetch_lengths()</td>
<td>返回结果集中当前行的列长度。</td>
</tr>

<tr>
<td>mysqli_fetch_object()</td>
<td>以对象返回结果集的当前行。</td>
</tr>

<tr>
<td>mysqli_fetch_row()</td>
<td>从结果集中抓取一行并以枚举数组的形式返回它。</td>
</tr>

<tr>
<td>mysqli_field_count()</td>
<td>返回最近一次查询获取到的列的数目。</td>
</tr>

<tr>
<td>mysqli_field_seek()</td>
<td>设置字段指针到特定的字段开始位置。</td>
</tr>

<tr>
<td>mysqli_field_tell()</td>
<td>返回字段指针的位置。</td>
</tr>

<tr>
<td>mysqli_free_result()</td>
<td>释放与某个结果集相关的内存。</td>
</tr>

<tr>
<td>mysqli_get_charset()</td>
<td>返回字符集对象。</td>
</tr>

<tr>
<td>mysqli_get_client_info()</td>
<td>返回字符串类型的 Mysql 客户端版本信息。</td>
</tr>

<tr>
<td>mysqli_get_client_stats()</td>
<td>返回每个客户端进程的统计信息。</td>
</tr>

<tr>
<td>mysqli_get_client_version()</td>
<td>返回整型的 Mysql 客户端版本信息。</td>
</tr>

<tr>
<td>mysqli_get_connection_stats()</td>
<td>返回客户端连接的统计信息。</td>
</tr>

<tr>
<td>mysqli_get_host_info()</td>
<td>返回 MySQL 服务器主机名和连接类型。</td>
</tr>

<tr>
<td>mysqli_get_proto_info()</td>
<td>返回 MySQL 协议版本。</td>
</tr>

<tr>
<td>mysqli_get_server_info()</td>
<td>返回 MySQL 服务器版本。</td>
</tr>

<tr>
<td>mysqli_get_server_version()</td>
<td>返回整型的 MySQL 服务器版本信息。</td>
</tr>

<tr>
<td>mysqli_info()</td>
<td>返回最近一次执行的查询的检索信息。</td>
</tr>

<tr>
<td>mysqli_init()</td>
<td>初始化 mysqli 并且返回一个由 mysqli_real_connect() 使用的资源类型。</td>
</tr>

<tr>
<td>mysqli_insert_id()</td>
<td>返回最后一次查询中使用的自动生成 id。</td>
</tr>

<tr>
<td>mysql_kill()</td>
<td>请求服务器终结某个 MySQL 线程。</td>
</tr>

<tr>
<td>mysqli_more_results()</td>
<td>检查一个多语句查询是否还有其他查询结果集。</td>
</tr>

<tr>
<td>mysqli_multi_query()</td>
<td>在数据库上执行一个或多个查询。</td>
</tr>

<tr>
<td>mysqli_next_result()</td>
<td>从 mysqli_multi_query() 中准备下一个结果集。</td>
</tr>

<tr>
<td>mysqli_num_fields()</td>
<td>返回结果集中的字段数。</td>
</tr>

<tr>
<td>mysqli_num_rows()</td>
<td>返回结果集中的行数。</td>
</tr>

<tr>
<td>mysqli_options()</td>
<td>设置选项。</td>
</tr>

<tr>
<td>mysqli_ping()</td>
<td>Ping 一个服务器连接，或者如果那个连接断了尝试重连。</td>
</tr>

<tr>
<td>mysqli_prepare()</td>
<td>准备一条用于执行的 SQL 语句。</td>
</tr>

<tr>
<td>mysqli_query()</td>
<td>在数据库上执行查询。</td>
</tr>

<tr>
<td>mysqli_real_connect()</td>
<td>打开一个到 Mysql 服务端的新连接。</td>
</tr>

<tr>
<td>mysqli_real_escape_string()</td>
<td>转义在 SQL 语句中使用的字符串中的特殊字符。</td>
</tr>

<tr>
<td>mysqli_real_query()</td>
<td>执行 SQL 查询。</td>
</tr>

<tr>
<td>mysqli_reap_async_query()</td>
<td>返回异步查询的结果。</td>
</tr>

<tr>
<td>mysqli_refresh()</td>
<td>刷新表或缓存，或者重置复制服务器信息。</td>
</tr>

<tr>
<td>mysqli_rollback()</td>
<td>回滚当前事务。</td>
</tr>

<tr>
<td>mysqli_select_db()</td>
<td>改变连接的默认数据库。</td>
</tr>

<tr>
<td>mysqli_set_charset()</td>
<td>设置默认客户端字符集。</td>
</tr>

<tr>
<td>mysqli_set_local_infile_default()</td>
<td>清除用户为 load local infile 命令定义的处理程序。</td>
</tr>

<tr>
<td>mysqli_set_local_infile_handler()</td>
<td>设置 LOAD DATA LOCAL INFILE 命令执行的回调函数。</td>
</tr>

<tr>
<td>mysqli_sqlstate()</td>
<td>返回前一个 Mysql 操作的 SQLSTATE 错误代码。</td>
</tr>

<tr>
<td>mysqli_ssl_set()</td>
<td>使用 SSL 建立安装连接。</td>
</tr>

<tr>
<td>mysqli_stat()</td>
<td>返回当前系统状态。</td>
</tr>

<tr>
<td>mysqli_stmt_init()</td>
<td>初始化一条语句并返回一个由 mysqli_stmt_prepare() 使用的对象。</td>
</tr>

<tr>
<td>mysqli_store_result()</td>
<td>传输最后一个查询的结果集。</td>
</tr>

<tr>
<td>mysqli_thread_id()</td>
<td>返回当前连接的线程 ID。</td>
</tr>

<tr>
<td>mysqli_thread_safe()</td>
<td>返回是否设定了线程安全。</td>
</tr>

<tr>
<td>mysqli_use_result()</td>
<td>初始化一个结果集的取回。</td>
</tr>

<tr>
<td>mysqli_warning_count()</td>
<td>返回连接中最后一次查询的警告数量。</td>
</tr>
</table>
</div>


<div id="bpn">
<ul class="prenext">
<li class="pre"><a href="php_ref_mysql.html" title="PHP MySQL 函数">PHP MySQL</a></li>
<li class="next"><a href="php_ref_simplexml.html" title="PHP SimpleXML 函数">PHP SimpleXML</a></li>
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
<h5 id="tools_reference"><a href="php_ref.html">PHP 参考手册</a></h5>
<h5 id="tools_quiz"><a href="php_quiz.html">PHP 测验</a></h5>
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


<!-- Mirrored from www.w3school.com.cn/php/php_ref_mysqli.asp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 02 Dec 2015 03:16:44 GMT -->
</html>