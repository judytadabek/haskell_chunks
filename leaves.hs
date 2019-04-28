data Tree = Leaf Int | Fork Tree Int Tree
                deriving Show
                
t0 :: Tree
t0 = Leaf 0

t1 :: Tree
t1 = Fork ( Fork (Leaf 1) 2 ( Leaf 3 )) 4 ( Fork (Leaf 5) 6 (Leaf 7))

t2 :: Tree
t2 = Fork (Fork (Fork (Leaf 1) 2 (Leaf 3)) 4 (Leaf 5)) 6 (Leaf 7)



--count Leaves
leaves :: Tree -> Int
leaves (Leaf x) = 1
leaves (Fork l x r) = (leaves l) + (leaves r)


--asList
asList :: Tree -> [Int]
asList (Leaf nx) = [nx]
asList (Fork l nx r) = asList l ++ [nx] ++ asList r


--reflect
reflect :: Tree -> Tree
reflect (Leaf nx) = (Leaf nx)
reflect (Fork l nx r) = Fork (reflect r)  nx  (reflect l)



--height
height :: Tree -> Int
height (Leaf x) = 1
height (Fork l nx r) = (max (height l)  (height r)) + 1


--mapTree
mapTree :: (Int -> Int ) -> Tree -> Tree
mapTree f (Leaf x) = (Leaf (f x))
mapTree f (Fork l nx r) = Fork ( mapTree f l) (f nx) (mapTree f r)
f :: Int -> Int
f x =2*x

--contains
contains :: Tree -> Int -> Bool
contains (Leaf x) z = x==z
contains (Fork l nx r) z = nx == z || contains l z || contains r z



--listing
--listing :: Tree -> [Char, Int]
--listing (
