import Control.Monad.Writer

keepSmall :: Int -> Writer [String] Bool
keepSmall x 
    | x <4 = do
        tell ["Keeping " ++ show x]
        return True
    | otherwise = do
        tell [show x ++ " is too large"]
        return False

binSmalls :: Int -> Int -> Maybe Int
binSmalls acc x
    | x > 9 = Nothing
    | otherwise = Just (acc + x)


powerset :: [a] -> [[a]]
powerset xs = filterM (\x -> [True, False]) xs
