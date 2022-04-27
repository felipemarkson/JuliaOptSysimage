module JuliaOptSysimage
using PackageCompiler
export create
function create()

    create_sysimage(
        ["Revise", "JuMP", "Plots", "DataFrames", "CSV"];
        sysimage_path="JuliaOptSysimage/sysimage/sysimage.so",
        precompile_execution_file="JuliaOptSysimage/src/imports.jl"
    )


end
end

