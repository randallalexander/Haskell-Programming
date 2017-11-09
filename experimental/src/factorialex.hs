module Factorial where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

fibonacci :: Integral a => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x -2)
