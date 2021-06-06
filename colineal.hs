module Colineal
( isColineal
, pendiente ) where

  isColineal :: ((Double,Double),(Double,Double),(Double,Double)) -> Bool
  isColineal ((x1,y1),(x2,y2),(x3,y3)) = (pendiente ((x1,y1),(x2,y2))==pendiente ((x2,y2),(x3,y3))) && (pendiente ((x2,y2),(x3,y3))==pendiente ((x1,y1),(x3,y3)))

  pendiente :: ((Double,Double),(Double,Double)) -> Double
  pendiente (p1,p2) = (snd p2 - snd p1)/(fst p2 - fst p1)