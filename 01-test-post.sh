if [ "$#" -ne 2 ]; then
	echo "Usage: ./01-test-post.sh <input> <watermark>"
	exit -1
fi

./bin/water $1 $2 watermarked_scateu.png

./bin/post watermarked_scateu.png $2 output.png

convert $1 -crop 300x200+0+0 POST-01-origin.png
convert watermarked_scateu.png -crop 300x200+0+0 POST-02-watermarked.png
convert output.png -crop 300x200+0+0 POST-03-output.png

rm output.png watermarked_scateu.png

