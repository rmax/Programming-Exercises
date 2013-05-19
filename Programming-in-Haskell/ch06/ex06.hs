-- Redefine the function `positions` using the function `find`.

-- Find all values associated for given key
find :: Eq key => key -> [(key,val)] -> [val]
find key table = [val | (key', val) <- table, key == key']


-- Returns all positions at which a value occurs in a list.
positions :: Eq a => a -> [a] -> [Int]
positions val values
    = find val (zip values [0..n])
    where
        n = length values - 1


main = print (positions False [True, False, True, False])
