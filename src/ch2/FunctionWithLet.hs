module FunctionWithLet
    ( printInc2
    ) where

printInc2 n = let plusTwo = n + 2
              in print plusTwo
