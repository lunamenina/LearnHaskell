newtype CharList = CharList {getCharList :: [Char] } deriving (Eq, Show)
newtype Pair b a = Pair { getPair :: (a, b) }
newtype CoolBool = CoolBool {getCoolBool :: Bool }

instance Functor (Pair c) where
    fmap f (Pair (x, y)) = Pair (f x , y)


helloMe :: CoolBool -> String
helloMe (CoolBool _) = "hello"
