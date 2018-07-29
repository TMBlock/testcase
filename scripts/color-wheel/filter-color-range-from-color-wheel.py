from __future__ import division
from PIL import Image
#image = Image.open("color_wheel.webp")
#image = Image.open("01.png")
image = Image.open("wheel-3-rgb.png")


pix = image.load()


for i in range(image.size[0]):
    for j in range(image.size[1]):
#        print pix[i,j]
        scale = 1.0
        if 127*scale <= pix[i,j][0] <= 255 and 127*scale <= pix[i,j][1] <= 255 and 127*scale <= pix[i,j][2] <= 255:
            pass
        else:
            pix[i,j]=(255,255,255)

image.save("generated.png")
