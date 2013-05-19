-- Using a list comprehension, give an expression that calculates the sum
-- 1^2 + 2^2 + ... + 100^2 of the first one hundred integers squares.


f :: Int -> Int
f n = sum [x^2 | x <- [1..n]]


main = print (f 100)

