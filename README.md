# Bop-Split!

Download your favorite bops, and split out single instruments so you can re-record them.

Usage: `bash bop-split.sh https://open.spotify.com/track/451GvHwY99NKV4zdKPRWmv\?si\=Kwgnk6ZNSwSFmm5gPJ3sPg`

The script uses spotdl to download Spotify song URLs, Spleeter to split mp3s into their audio sources, and ffmpeg to recombine all tracks but one (currently drums). 
