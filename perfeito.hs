fatores :: Int -> [Int]
fatores n = [i | i <- [1..n-1], n `mod` i == 0]

isPerfect :: Int -> Bool
isPerfect n = if sum(fatores n) == n then True else False

main :: IO ()
main = do
  x <- getLine
  let n = read x


  print (isPerfect n)