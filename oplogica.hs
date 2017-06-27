operation :: Bool -> Bool -> Bool -> String -> Bool
operation b1 b2 b3 op 
                     | (op == "AND") = b1 && b2 && b3
                     | otherwise = b1 || b2 || b3

main :: IO ()
main = do
  x <- getLine
  let b1 = read x
  y <- getLine
  let b2 = read y
  z <- getLine
  let b3 = read z
  w <- getLine


  print (operation b1 b2 b3 w)

