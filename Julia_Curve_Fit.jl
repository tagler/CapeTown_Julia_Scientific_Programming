
Pkg.add("Plots")

using Plots; pyplot()

# read data into array 
data_tofit = readdlm("Week3_PR_Data.dat")

# alternative: add data into array directly 
data_tofit = [1.6800483    -1.641695388; 
              0.501309281  -0.977697538; 
              1.528012113   0.52771122;
              1.70012253    1.711524991; 
              1.992493625   1.891000015;
              2.706075824  -0.463427794;
              2.994931927  -0.443566619;
              3.491852811  -1.275179133;
              3.501191722  -0.690499597;
              4.459924502  -5.516130799;
              4.936965851  -6.001703074;
              5.023289852  -8.36416901;
              5.04233698   -7.924477517;
              5.50739285  -10.77482371;
              5.568665171 -10.9171878]

# manually loop through and print values in data_tofit
for values in data_tofit
    println(values) 
end

# manually loop through and print values in data_tofit in a 15x2 matrix
for rs in 1:(size(data_tofit)[1])
    for cs in 1:(size(data_tofit)[2])
        value = data_tofit[rs,cs]
        if cs == 1
            print("$value \t")
        else
            print("$value \n")
        end
    end
end

# create the arrays x and y, assigning x the first column and y the second column
x = data_tofit[:,1]
y = data_tofit[:,2]

# print values
println("x values: $x \n")
println("y values: $y")

# plot the x and y data points using a scatter plot of the x and y array variables
plot(x, y, 
    title = "Scatter Plot of X vs. Y", 
    xlabel = "X",
    ylabel = "Y",
    linetype = :scatter, 
    legend = false)

# create a function called parabfit, with x as the argument, returning a*x^2 + b*x + c
function parabfit(x)
    return a*x^2 + b*x + c
end

# create variables a, b and c, assigning each the value 1
a = 1; b = 1; c = 1;

# plot function 
plot(parabfit, -5, 5,
    title = "Parabfit Function with a=1, b=1, and c=1", 
    xlabel = "X",
    ylabel = "Y",
    line = (:path, :red),
    legend = false)

# modify variables a, b and c
a = 1; b = 1; c = 1;

# scatter plot data
plot(x, y, linetype = :scatter, legend = false)

# overlay parabolic curve fit
plot!(parabfit, 0, 6,
    title = "Parabfit Function Curve Fit (a=$a, b=$b, and c=$c)", 
    xlabel = "X",
    ylabel = "Y",
    line = (:path, :red),
    legend = false)

# modify variables a, b and c
a = -1; b = 1; c = 0;

# scatter plot data
plot(x, y, linetype = :scatter, legend = false)

# overlay parabolic curve fit
plot!(parabfit, 0, 6,
    title = "Parabfit Function Curve Fit (a=$a, b=$b, and c=$c)", 
    xlabel = "X",
    ylabel = "Y",
    line = (:path, :red),
    legend = false)

# modify variables a, b and c
a = -1; b = 2; c = 0;

# scatter plot data
plot(x, y, linetype = :scatter, legend = false)

# overlay parabolic curve fit
plot!(parabfit, 0, 6,
    title = "Parabfit Function Curve Fit (a=$a, b=$b, and c=$c)", 
    xlabel = "X",
    ylabel = "Y",
    line = (:path, :red),
    legend = false)

# modify variables a, b and c
a = -1; b = 3; c = 0;

# scatter plot data
plot(x, y, linetype = :scatter, legend = false)

# overlay parabolic curve fit
plot!(parabfit, 0, 6,
    title = "Parabfit Function Curve Fit (a=$a, b=$b, and c=$c)", 
    xlabel = "X",
    ylabel = "Y",
    line = (:path, :red),
    legend = false)

# modify variables a, b and c
a = -1; b = 3; c = -2;

# scatter plot data
plot(x, y, linetype = :scatter, legend = false)

# overlay parabolic curve fit
plot!(parabfit, 0, 6,
    title = "Parabfit Function Curve Fit (a=$a, b=$b, and c=$c)", 
    xlabel = "X",
    ylabel = "Y",
    line = (:path, :red),
    legend = false)

# modify variables a, b and c
a = -.75; b = 2.75; c = -1.75;

# scatter plot data
plot(x, y, linetype = :scatter, color="blue", legend = false)

# overlay parabolic curve fit
plot!(parabfit, 0, 6,
title = "Final Parabfit Curve Fit (a=$a, b=$b, and c=$c)", 
    xlabel = "X",
    ylabel = "Y",
    line = (:path, :red, :dash),
    legend = false)
