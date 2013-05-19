-- Using list comprehensions define a function `perfects` that returns a list
-- of all perfect numbers up to a given limit.

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]


isPerfect :: Int -> Bool
isPerfect n = n == sum [x | x <- factors n, x /= n]


perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], isPerfect(x)]


main = print (perfects 500)
