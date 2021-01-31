spotdl $1 > spotdl.log
SONG=$(tail -n1 spotdl.log | sed "s/Searching for: //")

echo "$SONG"

mkdir -p "tracks/$SONG"
mv "$SONG.mp3" "tracks/$SONG"

spleeter separate -p spleeter:4stems -o "tracks" "tracks/$SONG/$SONG.mp3"

cd "tracks/$SONG" && ffmpeg -i bass.wav -i other.wav -i vocals.wav -filter_complex amix=inputs=3:duration=longest drumless.wav
