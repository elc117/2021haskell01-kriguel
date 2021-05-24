-- Prática 01 de Haskell - Parte 1
-- Nome:  Leonardo Cargnin Krugel


-- 1)
sumSquares :: Int -> Int -> Int
sumSquares n1 n2 = (n1^2) + (n2^2)

-- 2)
circleArea :: Float -> Float
circleArea r = pi * (r^2)

-- 3)
age :: Int -> Int -> Int
age year0 year1 = year1 - year0

-- 4)
isElderly :: Int -> Bool
isElderly age = age > 65

-- 5)
htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

-- 6)
startWithA :: String -> Bool
startWithA str = head str == 'A'

-- 7)
isVerb :: String -> Bool
isVerb str = last str == 'r'

-- 8)
isVowel :: Char -> Bool
isVowel c = elem c ['a','e','i','o','u']

-- 9)
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads list1 list2 = (head list1) == (head list2)

-- 10)
isVowel2 :: Char -> Bool
isVowel2 c = elem c ['a','A','e','E','i','I','o','O','u','U']