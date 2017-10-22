sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3

area r = pi * ( r^2 )

foo x =
    let y = x * 2
        z = x ^ 2
    in 2 * y * z

x = 7
y = 10
f = x + y
