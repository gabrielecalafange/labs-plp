
funcao:: Float -> Float -> Float -> Float
funcao x y z = z * y / x



main::IO()
main = do
  x <- getLine
  y <- getLine
  z <- getLine
  let num = funcao (read x) (read y) (read z)
  putStrLn "O valor de x é:"
  print num
