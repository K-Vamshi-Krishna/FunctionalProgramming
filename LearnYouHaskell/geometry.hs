module geometry
(
	sphereVolume,
	sphereArea,
	cubeVolume,
	cuboidVolume


) where

sphereVolume :: (Float -> Float)
sphereVolume x = (4.0/3.0) * pi * (x ^3)

sphereArea :: (Double -> Double)
sphereArea = \x ->  4* pi * (x^2)

cubeVoume :: (Double -> Double )
cubeVolume = \x -> cuboidVolume x x x

cuboidVolume :: ( Double -> Double -> Double -> Double )
cuboidVolume = \x -> \y -> \z -> x*y*z
