-- Show how the single comprehension with two generators can be re-expressed
-- using two comprehensions with single generators.

pairs :: [a] -> [a] -> [(a, a)]
pairs xs ys = concat [[(x,y) | y <- ys] | x <- xs]


main = print (pairs [1..3] [4..6])
