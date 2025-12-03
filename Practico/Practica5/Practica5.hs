--Ejercicio 1
unos :: [Int]
unos = 1 : unos

--Ej2
--numeros naturales
natt :: Int -> [Int]
natt n = n : natt (n+1)

--Ej3
natP :: Int -> [Int]
natP 0 = [0]
natP n = n : natP (n-1)

invocacionNatP :: Int -> [Int]
invocacionNatP n = reverse (natP n)

--Ej 4


--Ej 5
cuadL :: [Int] -> [Int]
cuadL [] = []
cuadL (x:xs) = (x*x) : cuadL xs

--Ej 6
divi :: Int -> Int -> [Int]
divi n 1= [1]
divi n m | n `mod` m == 0 = m : divi n (m-1)
         | otherwise = divi n (m-1)

invocDivi :: Int -> [Int]
invocDivi n = divi n n

--Ej 7
nrosP :: [Int] -> [Int]
nrosP [] = []
nrosP [x] | primo x == True = [x]
nrosP (x:xs) | primo x == True = x : nrosP xs
             | otherwise = nrosP xs

--cantidad de divisores
divC :: Int -> Int -> Int
divC n 1 = 1
divC n m | n `mod` m == 0 = 1 + divC n (m-1)
         | otherwise = divC n (m-1)

--Primo o no
primo :: Int -> Bool
primo 0 = False
primo 1 = False
primo n | divC n n == 2 = True
        | otherwise = False

--Ejercicio 8
--retornar la suma de los cuadrados de la lista
sumaCL :: [Int] -> Int
sumaCL [] = 0
sumaCL [x] = x*x
sumaCL (x:xs) = (x*x) + sumaCL xs

--Ejercicio 9
sucesorL :: [Int] -> [Int]
sucesorL [] = []
sucesorL [x] = [(x+1)]
sucesorL (x:xs) = (x+1) : sucesorL xs

--Ejercicio 10
sumaL :: [Int] -> Int
sumaL [x] = x
sumaL (x:xs) = x + sumaL xs

--Ejercicio 11
mult :: [Int] -> Int
mult [] = 1
mult xs = foldr (*) 1 xs

factt :: Int -> Int
factt 1 = 1
factt n = n * factt (n-1)

factL :: [Int] -> Int
factL [] = 1
factL xs = foldr (*) 1 xs
--Ej 12
--como funciona and?
--Ej 13
--tam :: [a] -> Int
--tam [] = 0
--tam [a] = 1
--tam xs = foldr (+) 0 xs
--Ej 14
--lista de enteros, retornar sucesores
--invsucc :: [Int] -> [Int]
--invsucc [] = []
--invsucc xs = succ xs

succ :: [Int] -> [Int]
succ [] = []
succ xs = [x+1 | x <- xs]

--Ej 15
cuaddL :: [Int] -> [Int]
cuaddL [] = []
cuaddL xs = [x*x | x <- xs]

--Ej 16
may10 :: [Int] -> [Int]
may10 [] = []
may10 xs = [x | x <- xs, (x `mod` 2 == 0) && x > 10]

--Ej 17
divvL :: Int -> [Int]
divvL 0 = [0]
divvL 1 = [1]
divvL n = [x | x <- [1..n], n `mod` x == 0]

--Ej 18
todosOcurrenEn :: (Eq a) => [a] -> [a] -> Bool
todosOcurrenEn [] [] = True
--todosOcurrenEn [] [a] = False
--todosOcurrenEn [a] [] = False
--todosOcurrenEn xs ys = 

--igual :: (Eq a) => [a] -> [a] ->

--Ej 19
--uso funcion primo
prim2n :: Int -> [Int]
prim2n 2 = [2]
prim2n n = [x | x <- [2..n], primo x == True]


