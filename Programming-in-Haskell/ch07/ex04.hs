-- Define a recursive function `merge` that merges two sorted lists to give a
-- single sorted list.

merge ::  Ord a => [a] -> [a] -> [a]
merge [] xs = xs
merge xs [] = xs
merge (x : xs) (y : ys)
    = if x < y
         then x : merge xs (y : ys)
         else y : merge (x : xs) ys


main = print (merge [2,5,6] [1,3,4])
