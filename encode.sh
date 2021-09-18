# Pad zip to resolution multiple
cp doom19s.orig.zip doom19s.padded.zip
# 900*675 * 1.5 (12bits per pixel, 4 per r g b)
truncate doom19s.padded.zip --size="%911250"

# Convert data into image
convert -depth 4 -size 900x675 rgb:doom19s.padded.zip rgbshift-doom19s.partial.png

# Keep 4 most significant bits, shift to 4 least
convert rgbshift-doom19s.partial-0.png -fx '(int(u*255)&240)/(255*16)' rgbshift-data-0.png
convert rgbshift-doom19s.partial-1.png -fx '(int(u*255)&240)/(255*16)' rgbshift-data-1.png
convert rgbshift-doom19s.partial-2.png -fx '(int(u*255)&240)/(255*16)' rgbshift-data-2.png

# Keep 4 most significant bits of cover image
convert doom-title-clean-900x675.png -fx '(int(u*255)&240)/255' rgbshift-title.png
convert doom-order-clean-900x675.png -fx '(int(u*255)&240)/255' rgbshift-order.png
convert doom-game-clean-900x675.png  -fx '(int(u*255)&240)/255' rgbshift-game.png

# Composose new image with combined bit planes
convert rgbshift-title.png rgbshift-data-0.png -background black -compose plus -layers flatten tweet-image-1.png
convert rgbshift-order.png rgbshift-data-1.png -background black -compose plus -layers flatten tweet-image-2.png
convert rgbshift-game.png  rgbshift-data-2.png -background black -compose plus -layers flatten tweet-image-3.png

