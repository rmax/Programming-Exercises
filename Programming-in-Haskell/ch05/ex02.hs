-- Define safetail (as tail but maps empty list to itself) using:
--  (a) a conditional expression,
--  (b) guarded equations,
--  (c) pattern matching.

safetail1 :: [a] -> [a]
safetail1 xs
    = if null xs 
         then xs
         else tail xs


safetail2 :: [a] -> [a]
safetail2 xs
    | null xs = xs
    | otherwise = tail xs


safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 xs = tail xs


main = print (safetail3 [1..0])
