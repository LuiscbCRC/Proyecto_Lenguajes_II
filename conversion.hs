module Conversion 
( grados_a_radianes
, radianes_a_grados ) where

  grados_a_radianes :: (Double) -> Double
  grados_a_radianes(grados) = (grados * (pi/180))

  radianes_a_grados :: (Double) -> Double
  radianes_a_grados(rad) = (rad * (180/pi))