import Data.Char

main = do
    contents <- getContents
    putStr $ map toLower contents
