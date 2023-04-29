#/usr/local/bin/bash
mkdir -p .output
SRC=./dict/*.txt
for f in $SRC; do
  OUTFILE=.output/`basename $f`
  grep --no-filename -e '^[^#].*' $f | sort -u > $OUTFILE
  ZIPFILE=`echo $OUTFILE | sed 's/\.txt$/.zip/'`
  zip -j $ZIPFILE $OUTFILE
  rm -f $OUTFILE
done
# all
grep --no-filename -e '^[^#].*' $SRC | sort -u > .output/mh-dict-jp-all.txt

