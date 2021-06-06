module Radianes
( sqFloat
, radianes ) where 

  sqFloat :: Float -> Float
  sqFloat x = x * x

  radianes :: Float -> Float -> Float -> Float
  radianes a b c = ( -(((sqFloat a) - (sqFloat b) - (sqFloat c))/ (2*b*c)))