-- Define a function `product` that produces the product of a list of numbers,
-- and show using your definition that `product [2, 3, 4] = 24`.

prod [x] = x
prod (x : xs) = x * (prod xs)


main = print (prod [2, 3, 4])

-- prod [2, 3, 4]
-- 2 * (prod [3, 4])
-- 2 * (3 * prod [4])
-- 2 * (3 * 4)
-- 2 * 12
-- 24
