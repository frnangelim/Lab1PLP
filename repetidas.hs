repetidas :: [String] -> [(String, Int)]
repetidas [] = []
repetidas (s:lista) = [(s, 1+verificaOcorrencias lista s)] ++ repetidas (removeOcorrencias lista s)

verificaOcorrencias :: [String] -> String -> Int
verificaOcorrencias [] elemento = 0
verificaOcorrencias (x:xs) elemento = if elemento == x then 1 + verificaOcorrencias xs elemento else verificaOcorrencias xs elemento

removeOcorrencias :: [String] -> String -> [String]
removeOcorrencias lista elemento  = [x | x <- lista , x /= elemento] 


main :: IO ()
main = do

	x <- getLine
	let lista = (read x)
	let result = repetidas lista

	print (result)