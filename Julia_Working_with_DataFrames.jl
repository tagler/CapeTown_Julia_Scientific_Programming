
Pkg.add("Distributions")

Pkg.add("DataFrames")

using Distributions, DataFrames

# random seed
srand(1234)

# create random 3 x 30 array 
    # first column: standard normal distrubtion (mean = 0 and std = 1)
    # second column: standard normal distrubtion (mean = 10 and std = 2)
    # third column: random values between/including 5-15
array_1 = [rand(Normal(0,1),30) rand(Normal(10,2),30) rand(5:15,30)]

# mean and variance of column 1
println("Column 1 mean: ", mean(array_1[:,1]), 
        " variance: ", var(array_1[:,1]), 
        " standard deviation: ", std(array_1[:,1]))

# mean and variance of column 2
println("Column 2 mean: ", mean(array_1[:,2]), 
        " variance: ", var(array_1[:,2]), 
        " standard deviation: ", std(array_1[:,2]))

# mean and variance of column 3
println("Column 3 mean: ", mean(array_1[:,3]), 
        " variance: ", var(array_1[:,3]), 
        " standard deviation: ", std(array_1[:,3]))

# import array_1 into a DataFrame
df = DataFrame(array_1)

# change column names to Var1, Var2, and Var3
rename!(df, [:x1,:x2,:x3], [:Var1,:Var2,:Var3])
df

# select last 20 rows of df
df2 = df[11:end, :]

# descriptive statistics of all the columns in df2 
describe(df2)

# add group column
df2[:Cat1] = rand(["GroupA","GroupB"], size(df2)[1])
df2

# create new data frame
df3 = DataFrame(A = 1:20, B = 21:40, C = 41:60)

# change values to NA
df3[10,1] = NA
df3[15,2] = NA
df3[19,3] = NA
df3

# only use complete rows 
df4 = df3[complete_cases(df3), :]
