module Conversion 
( grados_a_radianes
, radianes_a_grados
, par_ordenado ) where

  grados_a_radianes :: (Double) -> Double
  grados_a_radianes(grados) = (grados * (pi/180))

  radianes_a_grados :: (Double) -> Double
  radianes_a_grados(rad) = (rad * (180/pi))

  par_ordenado :: Double -> Double -> (Double, Double)
  par_ordenado x y = (x,y)