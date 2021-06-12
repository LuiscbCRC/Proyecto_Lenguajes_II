module Angulos
( sqFloat
, radianes ) where 

  sqFloat :: Double -> Double
  sqFloat x = x * x

  radianes :: Double -> Double -> Double -> Double
  radianes a b c = acos ( -(((sqFloat a) - (sqFloat b) - (sqFloat c))/ (2*b*c)))