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

︡44456d38-07cd-4087-8673-41d88165de80︡
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
# Function to plot distribution of a number of primes mod n

mods = [4,8,15,20]
for i in mods:
    v = finance.TimeSeries(pmodn(10^7,i))
    print i
    v.plot_histogram(i)
︡712762a9-b18b-4871-941e-6d6e1fcf0f83︡{"file":{"show":true,"uuid":"626dd5e6-5110-4851-8acc-a400ad5e96b9","filename":"/mnt/home/QyzlYsgP/.sage/temp/compute4a/2205/tmp_4knrUX.svg"}}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"38e69079-4c3c-47e2-8de2-e1430bcfaf6e","filename":"/mnt/home/QyzlYsgP/.sage/temp/compute4a/2205/tmp_G3AMQ9.svg"}}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"1b6b9676-0308-4ac5-b49e-84c79886275f","filename":"/mnt/home/QyzlYsgP/.sage/temp/compute4a/2205/tmp_nFp2FT.svg"}}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"b5eade96-ffb0-4169-ae22-06fa90cff7b1","filename":"/mnt/home/QyzlYsgP/.sage/temp/compute4a/2205/tmp_VseND3.svg"}}︡{"stdout":"\n"}︡
