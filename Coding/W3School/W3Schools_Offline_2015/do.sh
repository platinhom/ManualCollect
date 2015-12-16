#! /bin/bash
for f in *.html

do
python deleteAD.py "$f"
done
