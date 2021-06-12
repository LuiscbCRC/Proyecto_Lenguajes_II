module Main where

  import Colineal
  import Conversion
  import Angulos
  import Lados

  main = do{
    
    --Para el punto 1
    putStrLn ("Digite el valor de x del primer punto")
    ; x_input1 <- getLine
    ; let x_punto1 = read x_input1 :: Double
    ; putStrLn ("Digite el valor de y del primer punto")
    ; y_input1 <- getLine
    ; let y_punto1 = read y_input1 :: Double
    ;let punto1 = par_ordenado x_punto1 y_punto1

    --Para el punto 2
    ; putStrLn ("Digite el valor de x del segundo punto")
    ; x_input2 <- getLine
    ; let x_punto2 = read x_input2 :: Double
    ; putStrLn ("Digite el valor de y del segundo punto")
    ; y_input2 <- getLine
    ; let y_punto2 = read y_input2 :: Double
    ; let punto2 = par_ordenado x_punto2 y_punto2

    --Para el punto 3
    ; putStrLn ("Digite el valor de x del tercer punto")
    ; x_input3 <- getLine
    ; let x_punto3 = read x_input3 :: Double
    ; putStrLn ("Digite el valor de x del tercer punto")
    ; y_input3 <- getLine
    ; let y_punto3 = read y_input3 :: Double
    ;let punto3 = par_ordenado x_punto3 y_punto3
  
    ; if isColineal (punto1,punto2,punto3)
      then do putStrLn ("0.0")
      else do
      ;putStrLn ("Valor de los angulos")
      ; let lado1 = getLado(punto1, punto2)
      ; let lado2 = getLado(punto1, punto3)
      ; let lado3 = getLado(punto2, punto3)

      ; putStr ( show $ radianes lado1 lado2 lado3 )
      ; putStr " + "
      ; putStr ( show $ radianes lado2 lado1 lado3 )
      ; putStr " + "
      ; putStr ( show $ radianes lado3 lado2 lado1 )

      ; putStrLn ("Valor de la suma de los angulos")
      ; let suma1 = radianes lado1 lado2 lado3
      ; let suma2 = suma1 + radianes lado2 lado1 lado3
      ; let suma = suma2 + radianes lado3 lado2 lado1 
      ; putStr ( show $ suma )
}