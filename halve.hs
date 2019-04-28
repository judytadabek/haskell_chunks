halve :: [a] -> ([a], [a])
halve v = (take n v, drop n v)
        where n = length v `div` 2

        
split3 :: [a] -> ([a], [a], [a])
split3 v = (take n v, take n (drop n v), drop n(drop n v))
        where n = length v `div` 3
        
        
safeTail :: [a] -> [a]
safeTail d = if length d >= 1 then tail d else []


second :: [a] -> a
second (_:xs:_) =  xs

--third :: [a] -> a
third (_:_:b:_) = b
--third (_:_:b) = head b



        
