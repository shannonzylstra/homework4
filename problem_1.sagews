# Hi Professor Stein!
# Check out the README.md file for this directory for the complete response to Homework 4.
︠dcd3812a-68b3-4688-97dd-28c82f14bcc7︠
# The "lucky Euler numbers" are the coefficients b such that
# x^2 + x + b is prime for x = 0,1,...,b-2 (not infinite)
lucky_euler = [2,3,5,11,17,41]

# evaluate f(x) = x^2 + x + b, make sure it is prime
def prime_poly(x,b):
    f = x^2 + x + b
    if is_prime(f):
        return f
    else:
        return "f(" + x + ") is not prime."

# look at each polynomial
for bb in (0..len(lucky_euler)-1):
    b = lucky_euler[bb]
    p = [prime_poly(x,b) for x in (0..b-2)]
    print p
︡5f444edd-a71d-436b-a036-8463f812f11e︡{"stdout":"[2]"}︡{"stdout":"\n"}︡{"stdout":"[3, 5]"}︡{"stdout":"\n"}︡{"stdout":"[5, 7, 11, 17]"}︡{"stdout":"\n"}︡{"stdout":"[11, 13, 17, 23, 31, 41, 53, 67, 83, 101]"}︡{"stdout":"\n"}︡{"stdout":"[17, 19, 23, 29, 37, 47, 59, 73, 89, 107, 127, 149, 173, 199, 227, 257]"}︡{"stdout":"\n"}︡{"stdout":"[41, 43, 47, 53, 61, 71, 83, 97, 113, 131, 151, 173, 197, 223, 251, 281, 313, 347, 383, 421, 461, 503, 547, 593, 641, 691, 743, 797, 853, 911, 971, 1033, 1097, 1163, 1231, 1301, 1373, 1447, 1523, 1601]"}︡{"stdout":"\n"}︡
︠1d19fbfe-9aed-42fb-82e7-0c334ebcb712︠
# The difference between the nth and (n+1)th values of f(n) is precisely
# the difference between the nth and (n+1)th primes!

# calculate steps of Euler-like polynomial with given b
def poly_steps(b):-+
    steps = []
    for x in (0..b-3):
        steps.append(prime_poly(x+1,b) - prime_poly(x,b))
    return steps

# look at steps of each polynomial
for bb in (0..len(lucky_euler)-1):
    b = lucky_euler[bb]
    print poly_steps(b)
︡1e4407ec-c9c6-490b-a3f7-3d2294d853cd︡{"stdout":"[]"}︡{"stdout":"\n"}︡{"stdout":"[2]"}︡{"stdout":"\n"}︡{"stdout":"[2, 4, 6]"}︡{"stdout":"\n"}︡{"stdout":"[2, 4, 6, 8, 10, 12, 14, 16, 18]"}︡{"stdout":"\n"}︡{"stdout":"[2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]"}︡{"stdout":"\n"}︡{"stdout":"[2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78]"}︡{"stdout":"\n"}︡
