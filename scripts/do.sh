#LD_LIBRARY_PATH=$HOME/Develop/TMBlock/libtmblock/build/ ./ffmpeg_g -i $1 -i ~/Develop/TMBlock/testcase/AliSecurity/Alibaba-Security-alpha-0.5.png -filter_complex "[0:v][1:v] tmblock=x=1600:y=800:func=$2 [out]" -map "[out]" -t 10 -y $3

LD_LIBRARY_PATH=$HOME/Develop/TMBlock/libtmblock/build/ ./ffmpeg_g -i $1 -i ~/Develop/TMBlock/testcase/AliSecurity/Alibaba-Security-alpha-0.5.png -filter_complex "[0:v][1:v] tmblock=x=1200:func=$2 [out]" -map "[out]" -t 10 -pix_fmt yuv420p -y $3

#LD_LIBRARY_PATH=$HOME/Develop/TMBlock/libtmblock/build/ ./ffmpeg_g -i $1 -i ~/Develop/TMBlock/testcase/AliSecurity/Alibaba-Security-alpha-0.5.png -filter_complex "[0:v][1:v] tmblock=x=100:func=$2 [out]" -map "[out]" -t 10 -y $3
