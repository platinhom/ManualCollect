#! /bin/bash

for f in *.html */*.html */*/*.html
# for f in `cat llllllll | awk -F: '{print $1}'`
do
#result=`grep gbk "$f"`
#[ -z "$result" ] && continue
echo $f
python hi.py "$f"
done
