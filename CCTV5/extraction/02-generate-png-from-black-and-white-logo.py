"""
assume :
 - logo1.png is a watermarked picture with full black background
 - logo2.png is a watermarked picture with full white background

Y = (1 - alpha) * X + alpha * L

where:
    Y is watermarked pixel
    X is unwatermarked pixel
    L is logo pixel (to be solved)

"""
from __future__ import division
from PIL import Image
logo_black = Image.open("logo1.png")
logo_white = Image.open("logo2.png")


pix_black = logo_black.load()
pix_white = logo_white.load()

X1_R, X1_G, X1_B, a = pix_black[10,10]
X2_R, X2_G, X2_B, a = pix_white[10,10]
deltaX_R = X1_R - X2_R
deltaX_G = X1_G - X2_G
deltaX_B = X1_B - X2_B

print deltaX_R, deltaX_G, deltaX_B

for i in range(logo_black.size[0]):
    for j in range(logo_black.size[1]):
        Y1_R, Y1_G, Y1_B, a = pix_black[i,j]
        Y2_R, Y2_G, Y2_B, a = pix_white[i,j]
        deltaY_R = Y1_R - Y2_R 
        deltaY_G = Y1_G - Y2_G 
        deltaY_B = Y1_B - Y2_B 


        alpha = 1 - deltaY_R / deltaX_R

        if deltaX_R == deltaY_R or deltaX_G == deltaY_G or deltaX_B == deltaY_B:
            Logo_R = X1_R
            Logo_G = X1_G
            Logo_B = X1_B
        else:
            print "+",
            Logo_R = (deltaX_R * Y1_R - deltaY_R * X1_R) / (deltaX_R - deltaY_R)
            Logo_G = (deltaX_G * Y1_G - deltaY_G * X1_G) / (deltaX_G - deltaY_G)
            Logo_B = (deltaX_B * Y1_B - deltaY_B * X1_B) / (deltaX_B - deltaY_B)

        pix_black[i,j]=(int(Logo_R),int(Logo_G),int(Logo_B),int(alpha*255))

        if alpha != 0:
            print pix_black[i,j]

logo_black.save("derived_logo.png")
