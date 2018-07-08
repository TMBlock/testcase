if [ "$#" -ne 2 ]; then
	echo "Usage: ./02-test-pre.sh <input> <watermark>"
	exit -1
fi

./bin/pre $1 $2 1.png
./bin/water $1 $2 2.png
./bin/water 1.png $2 3.png

convert $1 -crop 300x200+0+0 PRE-01-origin.png
convert 1.png -crop 300x200+0+0 PRE-02-pre-anti-watermarked.png
convert 2.png -crop 300x200+0+0 PRE-03-normal-watermarked.png
convert 3.png -crop 300x200+0+0 PRE-04-final.png

rm 1.png 2.png 3.png
