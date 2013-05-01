# Hi Professor Stein!
# Check out the README.md file for this directory for the complete response to Homework 4.
︠918e502b-914c-43c8-9a6c-c00e14f94251︠
# Use continued fractions to find alpha
alpha_decimal = 0.13869616280169693
continued_fraction(alpha_decimal)
︡6b887500-12aa-4638-aea5-4626cc73cef1︡{"stdout":"[0, 7, 4, 1, 3, 5, 20, 1, 1, 1, 2, 3, 1, 1, 8, 1]"}︡{"stdout":"\n"}︡
︠bea46264-f8fa-454b-9a54-858bb6a29097︠
# Find alpha from convergents
continued_fraction(alpha_decimal).convergents()
︡e6fd6087-07d2-427b-8830-840ba5c04053︡{"stdout":"[0, 1/7, 4/29, 5/36, 19/137, 100/721, 2019/14557, 2119/15278, 4138/29835, 6257/45113, 16652/120061, 56213/405296, 72865/525357, 129078/930653, 1105489/7970581, 1234567/8901234]"}︡{"stdout":"\n"}︡
︠1d57f016-c329-44aa-ba2e-895148e12ae5︠
# Aha! Found it, alpha is 1234567/8901234
alpha = 1234567/8901234

# Check alpha = alpha_decimal
float(alpha)
︡d19a886a-8550-41b3-a01b-7ce2a8a7261e︡{"stdout":"0.13869616280169692"}︡{"stdout":"\n"}︡
︠42dc1d19-434a-4c00-985e-cad9630aa0a7︠
# Show that alpha is congruent to 372806624339965 modulo 37+10^15.
# Approach:
#     alpha = N*D^-1 = 372806624339965 mod 37+10^15
#     372806624339965 = N*D^-1 mod 37+10^15
#     Solve for D^-1 mod 37+10^15
#         (1) using Euclidean Algorithm, and
#         (2) using inverse_mod
#     Plug in D^-1 mod 37+10^15 and check expression.

# First things first: initiate some variables!

N = 1234567 # numerator of alpha
D = 8901234 # denominator of alpha
b = 372806624339965
n = 37+10^15
︡0ac75f9c-dbdc-40f8-b83f-c8fe82791fd3︡
︠b54576ac-58fd-454c-9ca9-133f5d90e241︠
# Solve for D^-1 mod n using Euclidean Algorithm
d,u,v = xgcd(D,n)
D1 = u

# Solve for D^-1 mod n using inverse_mod
D2 = inverse_mod(D,n)

if D1 == D2:
    print "We found D^1 mod n!"
︡1b34c155-9dfa-41f9-a469-ad9eb2cdd6c1︡{"stdout":"We found D^1 mod n!"}︡{"stdout":"\n"}︡
︠19e23997-cd9b-4774-bc20-d5f19fff1435︠
# Now check congruence condition!
if b == Mod(D1*N,n):
    print "Alpha is congruent to 372806624339965 mod 37+10^15!"
︡e60228a0-03bb-4375-942d-72a0c0d0dff0︡{"stdout":"Alpha is congruent to 372806624339965 mod 37+10^15!"}︡{"stdout":"\n"}︡
