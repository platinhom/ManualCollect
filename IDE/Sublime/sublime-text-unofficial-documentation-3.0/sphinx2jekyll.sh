#! /bin/bash
# This script help to convert the sphinx generated web dir to jekyll web dir.
# To convert _??? to ???_ in dir name and html/js/php files.
# Directly copy this script to the root directory of sphinx-website and run it.
# Zhixiong Zhao, 2015.12.15

sphinxdir=""
echo > sphinxdir_grep_tmp.log

nowsys=`uname -s`
# For MacOS
if [ $nowsys == "Darwin" ];then
echo "#!/bin/bash
function grepsed()
{
grep -H \"\$2\" \"\$1\" >> sphinxdir_grep_tmp.log
sed -i \"\" \"s/\$2\//\$3\//g\" \"\$1\"
return 0;
}

grepsed \"\$1\" \"\$2\" \"\$3\"
">sphinxdir_tmp.sh
# For MINGW in Window
elif [ ${nowsys:0:5} == "MINGW" ];then
echo "#!/bin/bash
function grepsed()
{
grep -H \"\$2\" \"\$1\" >> sphinxdir_grep_tmp.log
sed -i \"s/\$2\//\$3\//g\" \"\$1\"
return 0;
}

grepsed \"\$1\" \"\$2\" \"\$3\"
">sphinxdir_tmp.sh
fi

chmod +x sphinxdir_tmp.sh

for d in * ; do
if [ -d $d ];then
	if [ ${d:0:1} = '_' ];then 
		sphinxdir="$sphinxdir $d"
	fi
fi
done

# Modify the html/php/js files
for dir in $sphinxdir;do
	dirname="${dir:1}_"
	find . \( -iname "*.html" -or -iname "*.js" -or -iname "*.php" \) -exec ./sphinxdir_tmp.sh {} "$dir" "$dirname" \;
	mv "$dir" "$dirname"
done

rm sphinxdir_tmp.sh
