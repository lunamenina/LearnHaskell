import Data.List
import Data.Char

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo :: Int -> Maybe Int
firstTo n = find(\x -> digitSum x == n)[1 ..]
