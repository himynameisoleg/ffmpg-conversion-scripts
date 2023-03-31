if not exist ".\CONVERTED\" mkdir ".\CONVERTED"
for %%f IN (*.MP4) DO ffmpeg -i "%%f" -c:v prores_ks -profile:v 3 -c:a aac ".\CONVERTED\%%f"