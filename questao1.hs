main = do  
    input <- getLine
    input2 <- getLine 
    input3 <- getLine 
    input4 <- getLine
    let saida = verifica_logico (read input) (read input2) (read input3)  input4
    print saida

verifica_logico:: Bool -> Bool -> Bool -> String -> Bool
verifica_logico x y z entr = if entr == "AND" then verifica_and(x) (y) (z) else verifica_or (x) (y) (z) 

verifica_and:: Bool -> Bool -> Bool-> Bool
verifica_and x y z = (x && y && z)

verifica_or:: Bool -> Bool -> Bool-> Bool
verifica_or x y z = (x || y || z)
