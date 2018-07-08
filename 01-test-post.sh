./bin/water scateu.jpg CCTV5/CCTV5.png watermarked_scateu.png

./bin/post watermarked_scateu.png CCTV5/CCTV5.png output.png

convert scateu.jpg -crop 300x200+0+0 POST-01-origin.png
convert watermarked_scateu.png -crop 300x200+0+0 POST-02-watermarked.png
convert output.png -crop 300x200+0+0 POST-03-output.png
