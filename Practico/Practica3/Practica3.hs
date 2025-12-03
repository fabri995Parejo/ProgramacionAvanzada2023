--Ejercicio 1
--merge :: (Eq a) => [a] -> [a] -> [a]
--merge ys xs = 

--Ejercicio 2
--hacer con ordenamiento
ordenarr :: (Ord a) => [a] -> [a]
ordenarr [] = []
ordenarr (x:y:xs) | x>y = y : x : ordenarr xs
                  | otherwise = x : y : ordenarr xs
                  
--Ejercicio 3
-- potencia 2 a la n
potn :: Int -> Int
potn 0 = 1
potn 1 = 2
potn n = 2 * (potn (n-1))

--Ejercicio 4
--representacion de un nro en secuencia de bits
--Para pasar un nro a binario tengo que dividir entre 2 y escribir los residuos obtenidos en cada division en orden inverso al que han sido obtenitdos
binario :: Int -> [Int]
binario 0 = [0]
binario n = n `mod` 2 : binario ( n `div` 2)

secbin :: Int -> [Int]
secbin 0 = [0]
secbin n = reverse (binario n)

--Ejercicio 5
binPar :: [Int] -> Bool
binPar (x:xs) | head(reverse (x:xs)) == 1 = False
              | otherwise = True

--Ejercicio 6
--dadas dos listas, comparar elementos en posiciones iguales, retornar cuantas posiciones son diferentes
posD :: (Eq a) => [a] -> [a] -> Int
posD [] [] = 0
posD xs [] = 0
posD [] ys = 0
posD (x:xs) (y:ys) | x == y = posD xs ys
                   | otherwise = 1 + posD xs ys
                   
--Ejercicio 7
cuadP :: Int -> Bool
cuadP n | length (perfect n) > 0 = True
        | otherwise = False

perfect :: Int -> [Int]
perfect n = [x | x <- [1..n], x*x == n]

--Ejercicio 8
repetidos :: z -> Int -> [z]
repetidos z 0 = []
repetidos z n = z : repetidos z (n-1)

--Ejercicio 9
nelem :: (Eq a) => [a] -> Int -> a
nelem (x:xs) 0 = x
nelem (x:xs) n = nelem xs (n-1)

--Ejercicio 10
posicionesC :: [Char] -> Char -> Int -> [Int]
posicionesC [] c p = []
posicionesC (x:xs) c p | x == c = p : posicionesC xs c (p+1)
                       | otherwise = posicionesC xs c (p+1)

possC :: [Char] -> Char -> [Int]
possC xs c = posicionesC xs c 0

--Ejercicio 11
compact :: (Eq a) => [a] -> [a]
compact [] = []
compact [x] = [x]
compact (x:y:xs) | x == y = compact (y:xs)
                 | otherwise = x : compact (y:xs)
