module Darts (score) where

vectorLength :: Float -> Float -> Float
vectorLength x y = sqrt (x * x + y * y)

calculateScore :: Float -> Int
calculateScore distance
  | distance <= 1 = 10
  | distance <= 5 = 5
  | distance <= 10 = 1
  | otherwise = 0

score :: Float -> Float -> Int
score x y = calculateScore $ vectorLength x y
