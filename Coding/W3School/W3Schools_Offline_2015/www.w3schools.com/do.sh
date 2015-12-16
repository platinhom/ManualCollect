#! /bin/bash
for f in *.html */*.html
do
python deleteAD.py "$f"
done
