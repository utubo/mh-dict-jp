#/usr/local/bin/bash
mkdir -p .output
if [ -z "$GITHUB_WORKSPACE" ]; then
  GITHUB_WORKSPACE=.
fi
SRC=$GITHUB_WORKSPACE/dict
for f in $SRC/*.txt; do
  OUTFILE=.output/`basename $f`
  grep --no-filename -e '^[^#].*' $f | sort -u > $OUTFILE
  ZIPFILE=`echo $OUTFILE | sed 's/\.txt$/.zip/'`
  zip -j $ZIPFILE $OUTFILE
  rm -f $OUTFILE
done
# all
grep --no-filename -e '^[^#].*' $SRC/*.txt | sort -u > .output/mh-dict-jp-all.txt

