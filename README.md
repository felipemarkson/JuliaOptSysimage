# Julia for Optimization Sysimage
A script to compile Julia's Sysimage for Optimization-based projects.

> **NOTE:** Using a compiled Sysimage fixes the version of the Sysimage's built-in packages when compiling.

## Packages built-in

- [Revise.jl](https://github.com/timholy/Revise.jl) allows you to modify code and use the changes without restarting Julia.
- [JuMP](https://jump.dev/JuMP.jl/stable/) is a domain-specific modeling language for mathematical optimization.
- [Plots](https://docs.juliaplots.org/stable/) is a data visualization interface and toolset.
- [DataFrames.jl](https://dataframes.juliadata.org/stable/) is a set of tools for working with tabular data.
- [CSV.jl](https://github.com/JuliaData/CSV.jl) is a Utility library for working with CSV and other delimited files.

Package versions are defined during the build process.

**Feel free to fork this repository and change the packages!**

## How to build

#### 1. Clone this repository
```shell
$ git clone https://github.com/felipemarkson/JuliaOptSysimage
```
#### 2. Run the command bellow 

```shell
$ julia --project=JuliaOptSysimage JuliaOptSysimage/main.jl
```


## How to use
You first need to build the Sysimage as described above, then run:

```shell
$ julia --sysimage="JuliaOptSysimage/sysimage/sysimage.so" 
```

If you are in a shell-based environment (like macOS or Linux), you can set to use the Sysimage permanently put this line:
```shell
alias julia='julia --sysimage="path/to/JuliaOptSysimage/sysimage/sysimage.so"'
```
in your configuration file (like `.bashrc` or `.zshrc`).


## License
This script is licensed under MIT License terms. See [LICENSE](/LICENSE).
