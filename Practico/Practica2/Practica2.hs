--Ejercicio 2
--retornar el primer valor de una lista
hd :: [a] -> a
hd (x:xs) = x

--Retornar todos los valores de la lista(en una lista), sin el primer elemento
tl :: [a] -> [a]
tl (x:xs) = xs

--retornar el ultimo elemento de la lista
lastt :: [a] -> a
lastt (x:xs) = hd(reverse(x:xs))

--retornar toda la lista menos el ultimo elemento
init :: [a] -> [a]
init (x:xs) = reverse(tail(reverse(x:xs)))

--Ejercicio 3
--retornar el valor maximo entre tres valores
maxTres :: Int -> Int -> Int -> Int
maxTres x y z | x>y || x>=y && x>z = x
              | y>x && y>z = y
              | otherwise = z

--Ejercicio 4
----take
tomar :: Int -> [a] -> [a]
tomar n [] = []
tomar 0 (x:xs) = []
tomar n (x:xs) = x : tomar(n-1) xs
----drop
tirar :: Int -> [a] -> [a]
tirar 0 xs = xs
tirar n [] = []
tirar n xs = tail(tirar (n-1) xs)
----concatenar
con :: [[a]] -> [a]
con [] = []
con (x:xs) = x ++ con xs
----concatenar al revez
conR :: a -> [a] -> [a]
conR n [] = [n]
conR n xs = reverse(n : reverse xs)

--Ejercicio 5
--valor absoluto
abss :: Int -> Int
abss n | n>=0 = n
       | n<0 = -1 * n

--Ejercicio 6
edad :: (Int,Int,Int) -> (Int,Int,Int) -> Int
edad (a,b,c) (x,y,z) | z>c = z-c
                     | z<c = c-z
--ejercicio 7
--Disyuncion exclusiva, true when the two are true
xor :: Bool -> Bool -> Bool
xor p q | p ==True && q == True = False
        | p ==False && q == False = False
        | otherwise = True
--ejercicio 8
--numero primo o no
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

-- Ej 9
-- desde m tengo que hacer m-1 para ir viendo todos los divisores que tiene, e ir poniendolos en una lista
--Puedo usar funcion primo para saber si el numero anterior a n es primo o no y meterlo a la lista

primosM :: Int-> [Int]
primosM 1 = [1]
primosM m | primo m == True = m : primosM (m-1)
          | otherwise = primosM (m-1)
          
--Ejercicio 10
--dada una lista, retorne la reversa de la misma
--agarro primer elemento de [a] y lo pongo al final de la nueva lista
reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) = reversa xs ++ [x]

--Ejercicio 11
listaIgual :: (Eq a) => [a] -> [a] -> Bool
listaIgual xs ys | xs == ys = True
                 | otherwise = False

--Ejercicio 12
--QUE PORONGA ES UN PALINDROMO

--Ejercicio 13
-- dados 3 nros devuelva la cant de raices reales de ecuacion ax^2 + bx + c = 0
raices :: Int -> Int -> Int -> Int
raices a b c | (b^2-4*a*c) > 0 = 2
             | (b^2-4*a*c) < 0 = 0
             | (b^2-4*a*c) == 0 = 2 
