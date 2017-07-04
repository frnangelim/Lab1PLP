iesimo :: [Int] -> Int -> Int
iesimo entrada indice = entrada !! (indice-1)

main :: IO ()
main = do

	lista <- getLine
	indice <- getLine
	let result = iesimo (read lista) (read indice)
	print (result)