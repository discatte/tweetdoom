# 👿 tweetdoom 👿

Using steganography for SHAREWARE

![tweetdoom](https://raw.githubusercontent.com/discatte/tweetdoom/main/tweedoom.png)

There are two main files here, `encode.sh` and `recover.sh` They use Image Magick to interpret raw bytes of data into a png and back.

The only 'gotcha' is the file needs to padded to the byte size of the pixel resolution you want. I use `truncate` for that in encode.sh.

DOOM logo copyright iD software.
