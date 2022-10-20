sabitNumbers = [3 * 2^n - 1 | n <- [0..]]

-- Need to figure it out
primeNumbers = filterPrime [2..]
  where filterPrime (p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0]
