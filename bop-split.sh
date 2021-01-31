spotdl https://open.spotify.com/track/5ghIJDpPoe3CfHMGu71E6T\?si\=eB8jHOBwS22wCP5gZExZrQ

mv "Nirvana - Smells Like Teen Spirit.mp3" "tracks/Nirvana - Smells Like Teen Spirit"

spleeter separate -p spleeter:4stems -o "tracks" "tracks/Nirvana - Smells Like Teen Spirit/Nirvana - Smells Like Teen Spirit.mp3"

ffmpeg -i bass.wav -i other.wav -i vocals.wav -filter_complex amix=inputs=3:duration=longest drumless.wav
