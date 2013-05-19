-- Using recursion, define the functions: and, concat, replicate, (!!), elem

-- Decide if all logical values in a list are True:
and' :: [Bool] -> Bool
and' [x] = x
and' (False : xs) = False
and' (True : xs) = and' xs


-- Concatenate a list of lists:
concat' :: [[a]] -> [a]
concat' [xs] = xs
concat' (xs : xss) = xs ++ concat' xss


-- Produce a list with n identical elements:
replicate' :: Int -> a -> [a]
replicate' 0 x = []
replicate' n x = [x] ++ replicate (n-1) x


-- Select the nth element of a list:
select' :: [a] -> Int -> a
select' (x : xs) 0 = x
select' (x : xs) n = select' xs (n-1)


-- Decide if a value is an element of a list:
elem' :: Eq a => a -> [a] -> Bool
elem' x [y] = x == y
elem' x (y : ys)
    | x == y = True
    | otherwise = elem' x ys


main = do
    print (and' [True, False, True])
    print (and' [True, True, True])
    print (concat' [[1], [2,3], [4,5,6]])
    print (replicate' 5 "a")
    print (select' [1,2,3,4,5] 3)
    print (elem' 4 [1,2,3,4,5])
    print (elem' 0 [1,2,3,4,5])
