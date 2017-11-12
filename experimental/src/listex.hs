module Listex where

acro xs = [ x | x <- xs, x `elem` ['A'..'Z'] ]

myfilter :: String -> [String]
myfilter sentance =
   filter (\x -> not $ isArticle x) splitWords
   where
     splitWords = words sentance

isArticle :: String -> Bool
isArticle value = value `elem` ["a", "an", "the"]
