-- Using library functions, define a function `halve :: [a] -> ([a], [a])` that splits
-- an even-lengthed list into two halves.

halve :: [a] -> ([a], [a])
halve xs = splitAt ((length xs)  `div` 2) xs


main = print (halve [1..6])
