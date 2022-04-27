module JuliaOptSysimage
using PackageCompiler
export create
function create()

    create_sysimage(
        ["Revise", "JuMP", "Plots", "DataFrames", "CSV"];
        sysimage_path="sysimage/sysimage.so",
        precompile_execution_file="src/imports.jl"
    )


end
end

