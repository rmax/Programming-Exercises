-- Show that the library function `last` could be defined in terms of the
-- library functions introduced in this chapter.


mylast xs = head (take 1 (reverse xs))


main = print (mylast [1..100])
