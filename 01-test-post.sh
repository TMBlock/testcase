./water scateu.jpg cctv5.png watermarked_scateu.png

./post watermarked_scateu.png cctv5.png output.png

convert scateu.jpg -crop 300x200+0+0 01-origin.png
convert watermarked_scateu.png -crop 300x200+0+0 02-watermarked.png
convert output.png -crop 300x200+0+0 03-output.png
