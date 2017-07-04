uniao :: [Int] -> [Int] -> [Int]
uniao first second = first ++ notInFirst first second

notInFirst :: [Int] -> [Int] -> [Int]
notInFirst first second = [y | y <- second, not(y `elem` first)]

main :: IO ()
main = do

	x <- getLine
	y <- getLine

	let result = uniao (read x) (read y)

	print (result)