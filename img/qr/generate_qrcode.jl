using Pkg
Pkg.activate(@__DIR__)
using QRCoders

url = "https://github.com/gdalle/JuliaCon2024-AutoDiff"
exportqrcode(url, joinpath(@__DIR__, "qrcode.png"); width=0, pixels=660)
