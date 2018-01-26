import Control.Applicative

sequenceB :: (Applicative f) => [f a] -> f [a]
sequenceB [] = pure []
sequenceB (x:xs) = (:) <$> x <*> sequenceB xs

sequenceC :: (Applicative f) => [f a] -> f [a]
sequenceC = foldr (liftA2 (:)) (pure [])
