-- Using the definitions given in this chapter, show how
--    length [1,2,3]
--    drop 3 [1,2,3,4,5]
--    init [1,2,3]
-- are evaluated.

length' :: [a] -> Int
length' [] = 0
length' (_ : xs) = 1 + length' xs


drop' :: Integral b => b -> [a] -> [a]
drop' 0 xs = xs
drop' n [] | n > 0 = []
drop' n (_ : xs) | n > 0 = drop' (n-1) xs


init' :: [a] -> [a]
init' [_] = []
init' (x : xs) = x : init xs


main = do
    print (length' [1,2,3])
    print (drop' 3 [1,2,3,4,5])
    print (init' [1,2,3])

-- length' [1, 2, 3] = 1 + length' [2, 3]
--                   = 1 + (1 + length' [3])
--                   = 1 + (1 + (1 + length' []))
--                   = 1 + (1 + (1 + 0))
--                   = 1 + (1 + 1)
--                   = 1 + 2
--                   = 3
-- drop' 3 [1,2,3,4,5] = drop' 2 [2,3,4,5]
--                     = drop' 1 [3,4,5]
--                     = drop' 0 [4,5]
--                     = [4,5]
-- init' [1,2,3] = 1 : init [2,3]
--               = 1 : 2 : init [3]
--               = 1 : 2 : []
--               = [1,2]
