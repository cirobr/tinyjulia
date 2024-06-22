using Pkg
# proprietary packages
Pkg.add(url="git@github.com:cirobr/TinyMachines.jl.git")
Pkg.add(url="git@github.com:cirobr/LibML.jl.git")
Pkg.add(url="git@github.com:cirobr/PreprocessingImages.jl.git")
Pkg.add(url="git@github.com:cirobr/PascalVocTools.jl.git")


# cuda packages
pkgs = [
    "CUDA",
    "cuDNN",
]
Pkg.add(pkgs)

# public packages
pkgs = [
    "Flux",
    "Metalhead",
    # "Images",   # replaced by the below line, saves > 100 MB
    "FileIO", "ImageIO", "Colors", "MosaicViews",
    "Plots",
    "DataFrames",
    "CSV",
    "JLD2",
    "ImageInTerminal",
]
Pkg.add(pkgs)
