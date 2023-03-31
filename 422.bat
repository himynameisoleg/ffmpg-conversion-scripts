for %%A IN (*.*) DO ren *.mp4 *.mov

if not exist ".\converted\" mkdir ".\CONVERTED"

for %%A IN (*.*) DO ffmpeg -i "%%A" -c:v prores_ks -profile:v 3 -c:a aac  ".\converted\%%A"

if not exist ".\converted-proxies\" mkdir ".\CONVERTED-PROXIES"

for %%A IN (*.*) DO ffmpeg -i "%%A" -c:v dnxhd -vf "scale=854:480,format=yuv422p" -profile:v dnxhr_lb -c:a aac  ".\converted-proxies\%%A"
