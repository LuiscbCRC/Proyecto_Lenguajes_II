module Lados
( getLado ) where 

  getLado :: ((Double,Double),(Double,Double)) -> Double
  getLado ((x1,y1),(x2,y2)) = sqrt (((x2-x1)^2)+((y2-y1)^2))
  