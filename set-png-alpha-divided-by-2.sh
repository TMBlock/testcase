#convert $1 -channel Alpha -evaluate Divide 2 $(basename $1 .png)-alpha-0.5.png

#convert $1 -alpha set -channel Alpha -evaluate set 50% png32:$(basename $1 .png)-alpha-0.5.png

convert $1 -alpha set -background none -channel A -evaluate multiply 0.5 +channel png32:$(basename $1 .png)-alpha-0.5.png
