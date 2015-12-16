#! /usr/bin/env python
# -*- coding: utf8 -*-

import sys,codecs

try:
	f=codecs.open(sys.argv[1],'r','gb2312')
	lines=f.read()
except UnicodeDecodeError:
	try: 
		f=codecs.open(sys.argv[1],'r','gbk')
		lines=f.read()
	except UnicodeDecodeError:
		f=codecs.open(sys.argv[1],'r','utf-8')
		lines=f.read()
else:
	print "Error for file", sys.argv[1]
	exit(1)
finally:
	f.close()

f=codecs.open(sys.argv[1],'w','utf-8')

out=lines.replace("<meta charset=\"gbk\" />", "<meta charset=\"utf-8\" />",1).replace("<meta charset=\"gb2312\" />", "<meta charset=\"utf-8\" />",1);
out=out.replace("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gbk\" />", \
		"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />",1).replace( \
		"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />", \
		"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />",1)
f.write(out)

#f.write(lines.replace("<meta charset=\"gbk\" />", "<meta charset=\"utf-8\" />",1))
#f.write(lines.replace("<meta charset=\"gb2312\" />", "<meta charset=\"utf8\" />", 1).replace(\
#"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />",\
#"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />",1))

f.close()
