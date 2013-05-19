-- Define the exponentiation operator ^ for non-negative integers using the
-- same pattern of recursion as multiplication operator *, and show how 2^3 is
-- evaluated using your definition.

pow :: Int -> Int -> Int
pow x 0 = 1
pow x n = (*) x (pow x (n-1))


main = print (pow 2 3)

-- pow 2 3 = (*) 2 (pow 2 2)
--         = (*) 2 ((*) 2 (pow 2 1))
--         = (*) 2 ((*) 2 ((*) 2 (pow 2 0)))
--         = (*) 2 ((*) 2 ((*) 2 1))
--         = (*) 2 ((*) 2 2)
--         = (*) 2 4
--         = 8
