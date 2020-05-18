#######----------------- FEM in 1-D -------------###########
# declare f
function f(x)
    sin(x) + cos(x)
end
# declare the domain
vect = 0.0:0.1:5.0
# print the domain
for x in vect
    print(x)
    print("\n")
end
# define 0.1 < h <= 1
h = 0.5
# declare an empty 1-D array
vv = Array{Float16}(undef, 1, length(vect))
# loop over the local basis functions
for i in 1:length(vect)
    x = vect[i]
    # when x <= .5
    if x - floor(Int8, vect[i]) <= h
    x_j = floor(Int8, vect[i])
    x_jplus1 = floor(Int8, vect[i]) + h
# local function
vv[i] = f(x_j) * ((x_jplus1 - x) / (x_jplus1 - x_j)) +
f(x_jplus1) * ((x - x_j) / (x_jplus1 - x_j))
    #  when x > .5
else
    # local function
    x_j = floor(Int8, vect[i]) + h
    x_jplus1 = floor(Int8, vect[i]) + 1

    vv[i] = f(x_j) * ((x_jplus1 - x) / (x_jplus1 - x_j)) +
    f(x_jplus1) * ((x - x_j) / (x_jplus1 - x_j))
end
println(vv[i])
end
# rearrange the approximations to match the domain
exactValue = Array{Float64}(undef, 1, length(vv))
exactValue[1,:] = map.(f, vect)
# merge two arrays
y = vcat(vv, exactValue)
yy = Array{Float64}(undef, length(vv), 2)
yy[:, 1] = y[1,:]
yy[:, 2] = y[2,:]

# plot
using Plots
gr() # load GR as a backend for Plots
plot(vect, yy,
lw = 3,
label = ["Approximation" "f (x)"])
