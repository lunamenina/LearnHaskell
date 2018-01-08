import Control.Monad
import Data.Char

main = forever $ do
    rs <- sequence [getLine, getLine, getLine]
    print rs
    input <- getLine
    when (input == "SWORDFISH") $ do
        putStrLn input
        putStr "Hey, "
        putStr "I'm "
        putStrLn "Samantha!"
        print True
        print 2
        print "haha"
        print 3.2
        print[3,4,3]
        putChar 't'
        putChar 'e'
        putChar 'h'

