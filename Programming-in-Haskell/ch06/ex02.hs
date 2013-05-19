-- In a similar way to the function `length`, show how the library function
-- `replicate` can be defined using a list comprehension.

replicate' :: Int -> a -> [a]
replicate' n a = [a | _ <- [1..n]]


main = print (replicate' 3 True)
