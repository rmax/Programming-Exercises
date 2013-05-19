-- How should the definition of the function `qsort` be modified so that it
-- produces a _reverse_ sorted version of a list?

-- Reversed quicksort
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
                 where
                   smaller = [a | a <- xs, a <= x]
                   larger = [b | b <- xs, b > x]


main = print (qsort [3, 4, 1, 5, 0])
