--Ejercicio 1
--(2^29)/(2^9)==2^20
--TRUE

--Ejercicio 2
--head(tail["h","o","l","a","m","u","n","d","o"])
--"o"

--Ejercicio 3
--head(reverse["h","o","l","a","m","u","n","d","o"])
--"o"

--Ejercicio 5
--Pasar un  entero a una lista con comas entre ellos
aLista :: Int -> [Int]
aLista 0 = [0]
aLista 1 = [1]
aLista n = (n `mod` 10) : aLista(n `div` 10)

bList :: Int -> [Int]
bList n = reverse(aLista(n))

cList :: Int -> Bool
cList n | head(reverse(bList(n))) `mod` 2 == 0 = True
        | otherwise = False
--version mas facil
dList :: Int -> Bool
dList n | head(aLista(n)) `mod` 2 == 0 = True
        |otherwise = False
--Ejercicio 6
--suma de los digitos de una lista mod 3 igual a 0 entonces true
mult3 :: Int -> Bool
mult3 n | n `mod` 3 == 0 = True
        | otherwise = False

--Ejericicio 7
--multiplo de 6
mult6:: Int -> Bool
mult6 n | n `mod` 6 == 0 = True
        |otherwise = False
        
--Ejercicio 8

