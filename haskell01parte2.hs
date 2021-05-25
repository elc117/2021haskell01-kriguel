-- Prática 01 de Haskell - Parte 2
-- Nome: Leonardo Cargnin Krugel


-- 1)
htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

itemize :: [String] -> [String]
itemize names = map htmlItem names


-- 2)
isVowel2 :: Char -> Bool
isVowel2 c = elem c ['a','A','e','E','i','I','o','O','u','U']

onlyVowels :: String -> String
onlyVowels str = filter isVowel2 str


-- 3)
isElderly :: Int -> Bool
isElderly age = age > 65

onlyElderly :: [Int] -> [Int]
onlyElderly list = filter isElderly list


-- 4)
isLongWord :: String -> Bool
isLongWord s = length s > 10

onlyLongWords :: [String] -> [String]
onlyLongWords list = filter isLongWord list


-- 5)
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False

onlyEven :: [Int] -> [Int]
onlyEven list = filter isEven list


-- 6)
between60and80 :: Num -> Bool
between60and80 n = (n > 60) && (n < 80)

onlyBetween60and80 :: [Num] -> [Num]
onlyBetween60and80 list = filter between60and80 list


-- 7)
isSpace :: Char -> Bool
isSpace c = c == ' '

onlySpaces :: [Char] -> [Char]
onlySpaces str = filter isSpace str

countSpaces :: String -> Int
countSpaces str = length (onlySpaces str)


-- 8)
circleArea :: Float -> Float
circleArea r = pi * (r^2)

calcAreas :: [Float] -> [Float]
calcAreas list = map circleArea list


-- 9) WIP
isTheChar ::

charFound :: Char -> String -> Bool
charFound c str = 
