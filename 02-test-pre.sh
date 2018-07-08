./bin/pre scateu.jpg CCTV5/CCTV5.png 1.png
./bin/water scateu.jpg CCTV5/CCTV5.png 2.png
./bin/water 1.png CCTV5/CCTV5.png 3.png

convert scateu.jpg -crop 300x200+0+0 PRE-01-origin.png
convert 1.png -crop 300x200+0+0 PRE-02-pre-anti-watermarked.png
convert 2.png -crop 300x200+0+0 PRE-03-normal-watermarked.png
convert 3.png -crop 300x200+0+0 PRE-04-final.png
