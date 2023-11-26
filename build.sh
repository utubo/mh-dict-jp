#/usr/local/bin/bash
mkdir -p .output
SRC=./src/*.txt
for f in $SRC; do
  OUTFILE=.output/`basename $f`
  grep --no-filename -e '^[^#].*' $f | sort -u > $OUTFILE
  ZIPFILE=`echo $OUTFILE | sed 's/\.txt$/.zip/'`
  zip -j $ZIPFILE $OUTFILE
  rm -f $OUTFILE
done
# all
grep --no-filename -e '^[^#].*' $SRC | sort -u > .output/mh-dict-jp-all.txt
# skk
node tsv2skk.js .output/mh-dict-jp-all.txt .output/SKK-JISYO.mh-dict-jp.utf8

