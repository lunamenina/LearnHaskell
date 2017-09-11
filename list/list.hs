-- Problem 1: Find the last element of a list

myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

-- Problem 2: Find the second to last element of a list
myButLast :: [a] -> a
myButLast = last . init

-- Problem 3: Find the kth element of a list
elementAt :: [a] ->  Int -> a
elementAt list i = list !! (i-1)

-- Problem 4: length of list
myLength :: [a] -> Int
myLength = sum . map (\_ -> 1)

-- Problem 5: reverse list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = xs ++ [x]

-- Problem 6: palindrome
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

-- Problem 7: Flatten nested list
data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

-- Problem 8: Compress
compress :: Eq a => [a] -> [a]
compress []     = []
compress (x:xs) = [x] ++ (compress $ dropWhile (== x) xs)

-- Problem 9: Group
grp [] = []
grp (x:xs) = (x:(filter (== x) xs)):(grp $ filter (/=x) xs)

-- Problem 10: Encode Length
encode [] = []
encode (x:xs) = (length $ x : takeWhile (==x) xs, x)
                : encode (dropWhile (==x) xs)
