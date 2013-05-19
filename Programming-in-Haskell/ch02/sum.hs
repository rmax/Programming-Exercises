-- avoid `sum` name as it's defined in Prelude.sum and we do not want
-- to add an import+hiding statement.
mysum [] = 0
mysum (x : xs) = x + sum xs

main = print (mysum [1..100])
