rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++[x]

--OR

rev1 x = if x==[] then [] else rev1 xs ++ [x1]
        where
                xs = tail x
                x1 = head x
                
                
-- OR

rev3 x     | x==[]=[]
rev3 (y:xs)| otherwise = rev3 xs ++ [y]


