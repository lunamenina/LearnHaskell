import Control.Monad.Writer

newtype DiffList a = DiffList { getDiffList :: [a] -> [a] }
toDiffList :: [a] -> DiffList a
toDiffList xs = DiffList (xs++)

fromDiffList :: DiffList a -> [a]
fromDiffList (DiffList f) = f []

instance Monoid (DiffList a) where
    mempty = DiffList (\xs -> [] ++ xs)
    (DiffList f) `mappend` (DiffList g) = DiffList (\xs -> f (g xs))

gcdReverse :: Int -> Int -> Writer (DiffList String) Int
gcdReverse a b
    | b == 0 = do
        tell (toDiffList ["Finished with " ++ show a])
        return a
    | otherwise = do
        result <- gcdReverse b (a`mod` b)
        tell (toDiffList [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)])
        return result


finalCountDown :: Int -> Writer (DiffList String) ()
finalCountDown 0 = do
    tell (toDiffList ["0"])
finalCountDown x = do
    finalCountDown (x-1)
    tell (toDiffList [show x])

finalSlowCountDown :: Int -> Writer [String] ()
finalSlowCountDown 0 = do
    tell ["0"]
finalSlowCountDown x = do
    finalSlowCountDown (x-1)
    tell [show x]
