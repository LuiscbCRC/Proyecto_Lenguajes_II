module Main where

  import Colineal
  import Conversion
  import Radianes

  main = do
    if isColineal ((1.0,2.0),(2.0,1.3),(1.5,1.5))
      then print("0.0")
      else print(radianes_a_grados (2*pi)/2000)