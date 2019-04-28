add (x,y) = x + y

join (xs,ys) = xs ++ ys

sumFromTo (m,n) = sum [m .. n]

volumeCylinder (radius,height) = pi * radius^2 * height

mult (x,y,z) = x * y * z

roots (a,b,c) = ((-b + t)/a', (-b - t)/a')
  where
     t  = b ^ 2 - 4 * a * c
     a' = 2 * a
     
min3 (a, b, c) = min (a, min (b, c))
