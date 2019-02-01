echo "creating output directory..."
mkdir -p output

echo "creating tmp directory..."
mkdir -p ./tmp


yourfilenames=`ls *.gif`
for eachfile in $yourfilenames
do
   echo processing $eachfile
   cp $eachfile ./tmp
   convert -coalesce ./tmp/$eachfile ./tmp/frames%04d.png
   filename="${eachfile%%.*}"
   ffmpeg -r 10 -i ./tmp/frames%04d.png -vcodec h264 -y -pix_fmt yuv420p ./output/$filename.mp4
   echo $filename.mp4 processed
done


echo "removing tmp directory..."
rm -rf ./tmp
