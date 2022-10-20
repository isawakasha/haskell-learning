-- This module is needed to generate sets of numbers

sabitNumbers = [3 * 2^n - 1 | n <- [0..]]

primeNumbers = filterPrime [2..]
  where filterPrime (p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0] -- Need to figure it out

factorialNumbers = [product [1..n] | n <- [0..]]

factorial n = factorialNumbers !! n
