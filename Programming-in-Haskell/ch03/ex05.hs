-- Show how the library function `init` could be defined in two different ways.


init1 [x] = []
init1 (x : xs) = [x] ++ init1 xs

init2 xs = reverse (drop 1 (reverse xs))


main = print (init1 [1..10])
