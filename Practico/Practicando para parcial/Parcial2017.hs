--Ejerc 1
--IMplicacion logica
imp :: Bool -> Bool -> Bool
imp True True = True
imp False _ = False
imp _ False = False

--or
impp :: Bool -> Bool -> Bool
impp p q | p==True && q==True = True
         | p==False && q==False = True
         | otherwise = False
         
--Ejerc 2
data Nat = Zero | Succ Nat deriving Show
data Tree a = Nil | Node (Tree a) a (Tree a) deriving (Show)

summ :: Nat -> Nat -> Nat
summ Zero m = m
summ n Zero = n
summ (Succ n) m = summ n (Succ m)

--mult:: Nat -> Nat -> Nat

par:: Nat -> Bool
par Zero = True
par (Succ Zero) = False
par (Succ (Succ n)) = par n


preOrden :: Tree a -> [a]
preOrden Nil = []
preOrden (Node hi a hd) = a : (preOrden hi ++ preOrden hd)

---------------------------------------------
flatten :: [[a]] -> [a]
flatten [] = []
flatten [[]] = []
flatten [x] = x
flatten (x:xs) = x ++ flatten xs

--------------------------------------------------
count :: [Int] -> Int -> Int
count [] n = 0
count (x:xs) n | x==n = 1 + count xs n
               | otherwise = count xs n
--------------------- ----------------------------

