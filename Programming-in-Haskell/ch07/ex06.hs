-- Define: sum, take, last.


-- Calculate the sum of a list of numbers:
sum' :: [Int] -> Int
sum' [x] = x
sum' (x : xs) = x + sum' xs


-- Take a given number of elements from the start of a list:
take' :: Int -> [a] -> [a]
take' 1 (x : xs) = [x]
take' n (x : xs) = x : take' (n-1) xs


-- Select the last element of a non-empty list:
last' :: [a] -> a
last' [x] = x
last' (_ : xs) = last' xs


main = do
    print (sum' [1..100])
    print (take' 3 [1..10]) 
    print (last' [1..99])
