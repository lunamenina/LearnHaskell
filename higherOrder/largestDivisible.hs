largestDivisible :: Integer
largestDivisible = head (filter p [99999,99998 .. ])
    where p x = x `mod` 3829 == 0
