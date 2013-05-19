-- Using a list comprehension, define a function `pythagorean`.

isPythagorean :: (Int, Int, Int) -> Bool
isPythagorean (x, y, z) = x^2 + y^2 == z^2

pythagoreans :: Int -> [(Int, Int, Int)]
pythagoreans n
    = [(x, y, z) | x <- range, y <- range, z <- range, isPythagorean(x, y, z)]
    where
        range = [1..n]


main = print (pythagoreans 10)
