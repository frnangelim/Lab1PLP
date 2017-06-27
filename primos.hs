fatores :: Int -> [Int]
fatores n = [i | i <- [1..n], n `mod` i == 0]

primoCasado :: Int -> Int -> String
primoCasado n m | (fatores n) == [1,n] && (fatores m) == [1,m] = "PRIMO CASADO!" 
                | (fatores n) == [1,n] = "PRIMO!" 
                | otherwise = "NAO PRIMO!"

main :: IO ()
main = do
  x <- getLine
  let n = read x
  let m = n+2


  print (primoCasado n m)