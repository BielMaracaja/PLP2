main = do  
    input <- getLine
    let saida = verifica_perfeito (read input)
    print saida

verifica_perfeito :: Int -> Bool
verifica_perfeito num
		| ((sum (obter_fatores num)) == num) = True
		| otherwise = False


obter_fatores :: Int -> [Int]
obter_fatores num = [ x | x <- [1 .. num-1], ((mod num x) == 0)]