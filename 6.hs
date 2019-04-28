(/\) :: Bool -> Bool -> Bool
x /\ y | x == True && y == True = True
       | otherwise = False


(\/) :: Bool -> Bool -> Bool
x \/ y | x == False && y == False = False
       | otherwise = True

(~>) :: Bool -> Bool -> Bool
x ~> y | x == True && y == False = False
       | otherwise = True

--(><) :: Bool -> Bool -> Bool
x >< y | x == True && y == True = False
       | x == False && y == False = False
       | otherwise = True

