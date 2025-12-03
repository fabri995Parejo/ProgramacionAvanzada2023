data Nat = Zero|Succ Nat deriving(Show)

natToInt:: Nat -> Int
--Recursion? si
--tengo que definir que significa Zero y Succ para Nat
natToInt Zero = 0
--natToInt n = Succ(n-1) + natToInt (n-1)
natToInt (Succ n)= (natToInt n) + 1
----------------------------------------------------------
intToNat :: Int -> Nat
intToNat 0 = Zero
--intToNat 1 = natToInt (Succ Zero)
intToNat n = Succ (intToNat(n-1))
-------------------------------------------------------
sumaNat :: Nat -> Nat -> Nat
sumaNat Zero m = m
sumaNat n Zero = n
sumaNat (Succ n) m = sumaNat n (Succ m)
-----------------------------------------------------
multNat :: Nat -> Nat -> Nat
multNat Zero m = Zero
multNat (Succ Zero) m = m
multNat n (Succ Zero) = n
multNat n m = intToNat(natToInt n * natToInt m) 
--------------------------------------------------
--Arboles Binarios
data Tree a = Nil|Node (Tree a) a (Tree a) deriving(Show)

--ejercicio 6
size :: Tree a -> Int
size (Node Nil r hd) = 1 + size hd
size (Node hi r Nil) = 1 + size hi
size (Node Nil r Nil) = 1
size (Node hi r hd) = 1 + size hi + size hd
--no funciona, no se porque

--Ej 7
--height 
heigth :: Tree a -> Int
height (Node Nil r Nil) = 1
heigth (Node hi r hd) = 1 + heigth(max (heigth hi) (heigth hd))
