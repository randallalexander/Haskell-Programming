module TypeclassEx where

data Trivial = Trivial' deriving Show

instance Eq Trivial where
  Trivial' == Trivial' = True

data DayOfWeek =
   Mon | Tue | Weds | Thu | Fri | Sat | Sun
   deriving (Show, Ord, Enum)

data Date =
  Date DayOfWeek Int
  deriving (Show, Ord)

instance Eq DayOfWeek where
  (==) Mon Mon   = True
  (==) Tue Tue   = True
  (==) Weds Weds = True
  (==) Thu Thu   = True
  (==) Fri Fri   = True
  (==) Sat Sat   = True
  (==) Sun Sun   = True
  (==) _ _       = True

instance Eq Date where
  (==) (Date weekday dayOfMonth)
       (Date weekday' dayOfMonth') =
      weekday == weekday' && dayOfMonth == dayOfMonth'
