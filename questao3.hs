main = do
	input <- getLine
	let saida = eh_Casado (read input)
	print saida

divisores :: Int -> [Int]
divisores n = [ x | x <- [1 .. n], ((mod n x) == 0)]

ehPrimo :: Int -> Bool
ehPrimo n = if (divisores n) == [1,n] then True else False

eh_Casado :: Int -> String
eh_Casado n
	| ehPrimo(nSoma) && ehPrimo(n) = "PRIMO CASADO!"
	| ehPrimo(n) = "PRIMO!"
	| otherwise = "NAO PRIMO!"
	where nSoma = n + 2