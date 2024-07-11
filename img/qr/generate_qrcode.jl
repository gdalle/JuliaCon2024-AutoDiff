using Pkg
Pkg.activate(@__DIR__)
using ImageCore, ImageTransformations, FileIO
using QRCoders

# Simple QR code
url = "https://github.com/gdalle/JuliaCon2024-AutoDiff"
exportqrcode(url, joinpath(@__DIR__, "qrcode.png"); width=0, pixels=660)

# Create background image for title slide
scale = 8
qr = qrcode(url; width = 0)
qr = repeat(qr; inner=(scale, scale))
h, w = size(qr)

pad = 30
bg = fill(RGB(1, 1, 1), 1080, 1920)
bg[end-pad-h+1:end-pad, end-pad-w+1:end-pad] .= qr
save(joinpath(@__DIR__, "qrbackground.png"), bg)
