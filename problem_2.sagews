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

︡a9b04899-24d5-43df-ace6-e349fc8e50e2︡
︠5be9b250-c723-4f04-a382-3e2166824874︠
# Gotta compare the primes % 15 to primes...

print pmodn(41,15)
print prime_range(41)
︡45f7b50a-ccac-419a-9f97-a95a8d06024a︡{"stdout":"[2, 3, 5, 7, 11, 13, 2, 4, 8, 14, 1, 7]"}︡{"stdout":"\n"}︡{"stdout":"[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]"}︡{"stdout":"\n"}︡
︠1d9ff5b8-7c60-4896-9007-6db56d6b162c︠
# Try it out
tests = [100,1000,10^5,10^6,10^7]
for i in tests:
    v = finance.TimeSeries(pmodn(i,15))
    print i # for me to keep track!
    v.plot_histogram(15)

︡7525ae2e-fb10-49f2-a130-e6d590ed34d4︡{"stdout":"100"}︡{"stdout":"\n"}︡{"stdout":"1000"}︡{"stdout":"\n"}︡{"stdout":"100000"}︡{"stdout":"\n"}︡{"stdout":"1000000"}︡{"stdout":"\n"}︡{"stdout":"10000000"}︡{"stdout":"\n"}︡
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
︡17432bf3-4302-40e3-bfe7-db6adffa6e6d︡{"file":{"show":true,"uuid":"44617b63-9ba1-4eb4-b468-0653ef66acb6","filename":"/mnt/home/QyzlYsgP/.sage/temp/compute4a/13150/tmp_6Ql23r.svg"}}︡{"stdout":"\n"}︡
︠d3d3673c-fcce-405a-8abc-0bb03d36dac1︠
# Distribution of primes up to 10^7 mod 4

m4 = finance.TimeSeries(pmodn(10^7,4))
m4.plot_histogram(4)
︡05551935-8988-4b9d-b1b1-4a270d6bbb02︡{"file":{"show":true,"uuid":"9111a679-f1ec-4516-b5b2-d42343aeaa02","filename":"/mnt/home/QyzlYsgP/.sage/temp/compute4a/13150/tmp_YP6je9.svg"}}︡{"stdout":"\n"}︡
︠e117207b-b2d7-4de3-b94e-bc7145d072f7︠
# Compare...
print m15.histogram(15)
print
print m4.histogram(4)
︡d4fc1256-d78f-4a66-a2ce-4505581db238︡{"stdout":"([83003, 83108, 1, 83010, 1, 0, 83104, 0, 83152, 0, 0, 83101, 0, 83077, 83022], [(1.0, 1.8666666666666667), (1.8666666666666667, 2.7333333333333334), (2.7333333333333334, 3.6), (3.6, 4.466666666666667), (4.466666666666667, 5.333333333333334), (5.333333333333334, 6.2), (6.2, 7.066666666666666), (7.066666666666666, 7.933333333333334), (7.933333333333334, 8.8), (8.8, 9.666666666666668), (9.666666666666668, 10.533333333333333), (10.533333333333333, 11.4), (11.4, 12.266666666666667), (12.266666666666667, 13.133333333333333), (13.133333333333333, 14.0)])"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"stdout":"([332180, 0, 1, 332398], [(1.0, 1.5), (1.5, 2.0), (2.0, 2.5), (2.5, 3.0)])"}︡{"stdout":"\n"}︡
