@eval using Revise
@eval using JuMP, Plots, DataFrames, CSV


p = plot(rand(2,2))
display(p)

m = Model()

df = DataFrame()

data = """
a,b,c
1,2,3
4,5,6
"""

file = CSV.File(IOBuffer(data))

