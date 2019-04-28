addOne :: Int -> Int
addOne x = x+1

timesTwo :: Int -> Int
timesTwo x = x*2

doublePlusOne :: Int -> Int
doublePlusOne x = addOne (timesTwo x)

largerOf2 :: Int -> Int -> Int
largerOf2 x y = if x > y then x else y

largerOf3 :: Int -> Int -> Int -> Int
largerOf3 a b c = largerOf2 a (largerOf2 b c)

sumTo :: Int -> Int
sumTo n = sum [1..n]

countWords :: String -> Int
countWords str = length (words str)

