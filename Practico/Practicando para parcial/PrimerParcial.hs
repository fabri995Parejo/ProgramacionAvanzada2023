--1) 
data BinTree a = Nil | Node (BinTree Int) Int (BinTree Int) deriving (Show)

f :: BinTree Int -> Int
f (Node Nil r Nil) = r
f (Node hi r Nil) = r + f hi
f (Node Nil r hd) = r + f hd
f (Node hi r hd) = r + f hi + f hd

--2)
--data SIntExp = Cte Int | Sum SIntExp SIntExp  | Mul SIntExp SIntExp

--i- cte 1
--ii- sum cte 1 cte 3
--iii- mul (sum cte 3 cte 4) cte 3
--iv- cte 5

--4 + (5 * 2)
--Sum (Cte 4 Mul (Cte 5 Cte 2)) 

--3)
--compact :: [Int] -> [Int]
--compact [] = []
--compact [x] = [x]
--compact (x:y:xs) | x==y = y: compact xs
--                | otherwise = x: compact y:xs
                 
---------------------------------------------
--[4,5,2,4,7,4,5,7]

---------------------------------------------

--4)
--square :: Int -> Int
--square x = x*x

--and :: Bool -> Bool -> Bool
--and true y = y
--and false x = false

--inf :: Int
--inf = inf + 1
-------------------------------
--aplicativa -> mas adentro mas a la derecha
--(square inf) + (square inf)
--def inf
--(square inf) + (square inf + 1)
--def inf
--(square inf) + (square inf + inf + 1)
------------------------------
---normal -> mas afuera mas a la izquierda
--(square inf) + (square inf)
--def inf
---(square inf + 1) + (square inf)
--def inf
--(square inf + 1 + 1)  + (square inf)
--------------------------------













