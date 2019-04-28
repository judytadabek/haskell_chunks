unwrds :: [String] -> String

unwrds []=""
unwrds (x:xs) | xs==[]=x
              | otherwise = x ++ " "++ unwrds xs
