# Recover lower 4 bits and duplicate to high 4 bits.
convert tweet-image-1.png -fx '(int(u*255)&15)/15' doom-share-1.png
convert tweet-image-2.png -fx '(int(u*255)&15)/15' doom-share-2.png
convert tweet-image-3.png -fx '(int(u*255)&15)/15' doom-share-3.png

# Recover raw data
convert -depth 4 doom-share-1.png rgb:doom-share-1.zip.part
convert -depth 4 doom-share-2.png rgb:doom-share-2.zip.part
convert -depth 4 doom-share-3.png rgb:doom-share-3.zip.part

cat *zip.part > doom19s-md5-42a7314229a26e73215ddc1e9c2358f5.zip





