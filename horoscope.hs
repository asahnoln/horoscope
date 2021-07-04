module Horoscope where

import System.Random

compatible :: (Show a, Show b, Show c) => a -> b -> [c] -> Bool
compatible x y ps = fst . random $ gen
  where
    gen = mkStdGen seed
    seed = length $ show x ++ show y ++ concat (show <$> ps)
