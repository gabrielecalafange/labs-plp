import Data.Char (digitToInt)

somachar :: Int -> Int
somachar n = sum . map digitToInt $ show n

fib :: Int -> Int
fib n = if n < 2 then n else fib (n-1) + fib (n-2)
    
menorFib :: Int -> Int 
menorFib soma = head . filter ((== soma) . somachar) . map fib $ [1..]

main = do 
    soma <- readLn
    let resultado = menorFib soma
    print $ resultado
