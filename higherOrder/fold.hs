reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x:acc)[]

product' :: (Num a) => [a] -> a
product' = foldl (*) 1

filter' :: (a->Bool) -> [a] -> [a]
filter' p = foldr(\x acc -> if p x then x:acc else acc) []

last' :: [a] -> a
last' = foldl1 (\ _ x -> x)
