import qualified Data.Map as Map

phoneBook = [("betty", "555-2938"),
             ("betty", "342-2492"),
             ("bonnie", "452-2928"),
             ("patsy", "493-2928"),
             ("patsy", "827-9162"),
             ("lucille", "205-2928"),
             ("penny", "853-2492"),
             ("penny", "555-2111")
            ]


phoneBookToMap2 :: (Ord k) => [(k,a)] -> Map.Map k [a]
phoneBookToMap2 xs = Map.fromListWith (++) $ map (\(k,v) -> (k, [v])) xs
