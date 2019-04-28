import Data.Char

zoe :: (Integral a, Num a) => a -> Int
zoe n = if n == 0 then 0 else if n `mod` 2 == 0 then 2 else 1
--it's not guarded expr

pal :: String -> Bool
pal xs = if reverse xs == xs then True else False

upr :: Char -> Char
--guarded equation looks like:
upr x | x `elem` ['A'..'Z'] = x
      | x `elem` ['a'..'z'] = toUpper x --why this is not working???
      | otherwise = '?'
