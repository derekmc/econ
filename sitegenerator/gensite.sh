#!/usr/bin/env sh

# rm -r output/*

#echo 'hey'
find content/ -type f -name "*.md" |
  sed -e 's/content\/\(.*\)\.md/\0 ..\/\1.html/g' |
  while read infile outfile; do
    #./md2html $infile > $outfile;
    ./md2html $infile | cat template/header.html - template/footer.html > $outfile
done


#cp -r static/* ../
#find static/ -type f |
  #set -e 's/static\/\(.*\)/\0 output\/\1/g' |
  #while read $from $to; do
    #cp $from $to
#done
