#--        MEILER         --#
#-- simple testing script --#
#--        v0.1.0         --#
#--                       --#
#--     programmed by     --#
#--   Klaus Rettinghaus   --#
#--                       --#
rm tests.log
echo running tests
find . -type f -name "*.mei"|while read file;
do
  saxonb-xslt -s:$file -xsl:../mei2ly.xsl -o:${file%.mei}.ly && lilypond --formats=pdf --loglevel=BASIC_PROGRESS --output=${file%.mei} ${file%.mei}.ly >> tests.log 2>&1
  rm ${file%.mei}.ly
done
echo done
echo see tests.log for details
