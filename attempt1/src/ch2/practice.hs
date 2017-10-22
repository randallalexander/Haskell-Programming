result1 = let
      x = 3
      y = 1000
      in x * 3 + y

result2 = let
      y = 10
      x = 10 * 5 + y
      in x * 5

result3 = let
      x = 7
      y = negate x
      z = y * 10
      in z / x + y
