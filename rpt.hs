rpt :: Int -> a -> [a]
rpt x xs = if x <= 0 then [] else [xs] ++ rpt (x-1) xs
