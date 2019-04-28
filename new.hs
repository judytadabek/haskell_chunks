--add x y z = x + y + z


--add:: Int -> Int -> Int -> Int
add x y z = x + y + z

--append :: [a]  -> [a] -> [a]
append x y = x ++ y

--swap:: (t, t1) -> (t1, t)
swap (x,y) = (y, x)

--block:: (t, t) -> [t]
block (x, y) = [x, y]

--velocity:: Fractional a => a -> a -> a -> a
velocity u a t = u + 0.5 * a * t^2

--hash:: Integral a => a -> a
hash key = key `mod` 97

--smallest:: 0rd a => a -> a -> a ->a
smallest x y z = minimum [x,y,z]

--largest :: 0rd a => a -> a -> a -> a
largest x y z = x `max` y `max` z

--bigSMall :: 0rd t => t-> t-> t-> -> (t, t)
bigSMall x y z = (largest x y z, smallest x y z)

--upDown :: (0rd t, 0rd t1) => t -> t -> t1 -> t1 -> (t, t1)
upDown a b c d = (a `max` b, c `min` d)

--bracket :: [Char] -> [Char]
bracket xs = "(" ++ xs ++ ")"

--identity :: t -> t
identity x = x

--twice :: t -> (t, t)
twice x = (x, x)

--constant :: t -> t1 -> t
constant a b = a

--apply :: (t1 -> t) -> t1 ->t
apply f x = f x

--zeroSum :: Num a => (a -> t) -> a -> t
zeroSum f x = f (x + 0)

--zeroSum' :: (Num a, Num a1) => (a1 -> a) -> a1 -> a
zeroSum' f x = f (x + 0) + 0
