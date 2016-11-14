#!/bin/awk
# Euclid Algorithm to find the Greatest Common Divisor
#
# gcd function returns gcd for two numbers
function gcd(p,q)
{
    return(q?gcd(q,(p%q)):p)
}

BEGIN { printf "Find the Greatest Common Divisor (GCD)\n"  
    printf "Enter number A: "
    getline A < "-"
    printf "Enter number B: "
    getline B < "-"
    print gcd(A,B)
}
