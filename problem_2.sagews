# Hi Professor Stein!
# Check out the README.md file for this directory for the complete response to Homework 4.
︠e903129c-0d81-475a-bc65-d8e6a5a32721︠
# Practice histogram

v = finance.TimeSeries(prime_range(100))
v.plot_histogram(100) #just shows where the primes are on the number line

︡8373ea93-5a92-4071-8598-7e244ca0d754︡{"file":{"show":true,"uuid":"02460b03-9b89-4f81-8a1c-87281920b3db","filename":"/mnt/home/QyzlYsgP/.sage/temp/compute4a/2205/tmp_skOUaF.svg"}}︡{"stdout":"\n"}︡
︠a5ee382e-695f-4a7f-9812-32ffc6227e33︠
# Function to get the distribution of a number of primes mod n.

def pmodn(num,mod):
    d = []
    for p in prime_range(num):
        d.append(Mod(p,mod))
    return d

︡4c96c77a-9256-44b3-adcd-c2a3b91b4787︡
︠5be9b250-c723-4f04-a382-3e2166824874︠
# Gotta compare the primes % 15 to primes...

print pmodn(41,15)
print prime_range(41)
︡ed560450-a854-47f7-836e-284c179896f1︡{"stdout":"[2, 3, 5, 7, 11, 13, 2, 4, 8, 14, 1, 7]"}︡{"stdout":"\n"}︡{"stdout":"[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]"}︡{"stdout":"\n"}︡
︠1d9ff5b8-7c60-4896-9007-6db56d6b162c︠
# Try it out
tests = [100,1000,10^5,10^6,10^7]
for i in tests:
    v = finance.TimeSeries(pmodn(i,15))
    print i # for me to keep track!
    v.plot_histogram(15)

︡c2a67e7c-47d3-4fc2-b027-04f9c793ae5f︡{"stdout":"100"}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"8234157f-dc76-4ab3-9f92-b8b84d2c18d5","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_X5vSUv.svg"}}︡{"stdout":"\n"}︡{"stdout":"1000"}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"05ce9647-0843-4870-a671-b48a9b0d4b65","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_SsR8E4.svg"}}︡{"stdout":"\n"}︡{"stdout":"100000"}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"7d12847d-7739-4df9-8e9e-42c323df2e04","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_s6kXEq.svg"}}︡{"stdout":"\n"}︡{"stdout":"1000000"}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"14d0ed7b-cca5-4d5b-ac60-fb3377c0f4ae","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_TTFGuf.svg"}}︡{"stdout":"\n"}︡{"stdout":"10000000"}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"e57b6698-3b38-4c20-a8dd-ef2f1719338b","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_cOMylA.svg"}}︡{"stdout":"\n"}︡
︠c6707889-2bb1-46c4-8953-d825d2263751︠
# Loop to plot the distribution of a number of primes mod n

mods = [4,8,15,20]
for i in mods:
    v = finance.TimeSeries(pmodn(10^7,i))
   # v.plot_histogram(i) <-- too messy, I'm going to make new cells for each plot.
︡5b93e8fb-3cd7-4e81-95b2-36f34b17d589︡
︠e6048011-4614-493d-bf20-72dd7f43a63c︠
# Distribution of primes up to 10^7 mod 15

m15 = finance.TimeSeries(pmodn(10^7,15))
m15.plot_histogram(15)
︡ce5ed42c-db93-48ca-af98-f0ca6ef20ca0︡{"file":{"show":true,"uuid":"e57b6698-3b38-4c20-a8dd-ef2f1719338b","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_yNXvw0.svg"}}︡{"stdout":"\n"}︡
︠d3d3673c-fcce-405a-8abc-0bb03d36dac1︠
# Distribution of primes up to 10^7 mod 4

m4 = finance.TimeSeries(pmodn(10^7,4))
m4.plot_histogram(4)
︡2502be15-c173-4a87-84bb-bc01b0ef8ed3︡{"file":{"show":true,"uuid":"d3263995-a4fa-4bbe-a294-cf887da49e39","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_AuxfMD.svg"}}︡{"stdout":"\n"}︡
︠e117207b-b2d7-4de3-b94e-bc7145d072f7︠
# Compare...
print m15.histogram(15)
print
print m4.histogram(4)
︡52f4ce3d-9633-453b-83ea-07ac2179259f︡{"stdout":"([83003, 83108, 1, 83010, 1, 0, 83104, 0, 83152, 0, 0, 83101, 0, 83077, 83022], [(1.0, 1.8666666666666667), (1.8666666666666667, 2.7333333333333334), (2.7333333333333334, 3.6), (3.6, 4.466666666666667), (4.466666666666667, 5.333333333333334), (5.333333333333334, 6.2), (6.2, 7.066666666666666), (7.066666666666666, 7.933333333333334), (7.933333333333334, 8.8), (8.8, 9.666666666666668), (9.666666666666668, 10.533333333333333), (10.533333333333333, 11.4), (11.4, 12.266666666666667), (12.266666666666667, 13.133333333333333), (13.133333333333333, 14.0)])"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"stdout":"([332180, 0, 1, 332398], [(1.0, 1.5), (1.5, 2.0), (2.0, 2.5), (2.5, 3.0)])"}︡{"stdout":"\n"}︡
︠d4f311ed-6221-49f8-81bd-9b1b2a9c050f︠
m9 = finance.TimeSeries(pmodn(10^7,8))
m9.plot_histogram(8)
︡595fc7ff-f901-47b1-b2b5-143aa08eff8f︡{"file":{"show":true,"uuid":"0c5cbe52-c419-4cc8-a766-7f35b6422eb7","filename":"/mnt/home/BBSSK4oo/.sage/temp/compute3a/17652/tmp_l7VlRd.svg"}}︡{"stdout":"\n"}︡
︠ce56a156-6a79-4004-b3c5-c14b012682fd︠
# I conjecture that the primes mod n can take on only some of its possible values, and that
# as the number of primes in the distribution approaches infinity,
# the relative frequencies of each of those values approach the same value.
