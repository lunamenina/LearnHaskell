import System.IO
main = do
    a <- (++) <$> getLine <*> getLine
    putStrLn $ "The to lines concatenated turn out to be " ++ a
