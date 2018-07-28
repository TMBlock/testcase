
for i in pre embed pre-embed embed-post
do
	ffmpeg -i ${i}.mp4 -ss 00:00:08 -vframes 1 -y ${i}.png
done

montage -mode concatenate -tile 2x pre.png embed.png pre-embed.png embed-post.png  -set label '%f'  combined.png
