import Data.List

panDigital :: Integer -> Bool
--panDigital 0
panDigital x = ( sort $ digits x ) == [1..n]
  where n = len x

len = toInteger . length . digits

digits :: Integer -> [Integer]
digits 0 = []
digits x = mod x 10 : digits (div x 10)

primesTME = 2 : gaps 3 (joinT [[p*p, p*p+2*p..] | p <- primes']) 
  where
    primes' = 3 : gaps 5 (joinT -- [[p*p, p*p+2*p..] | p <- primes'])
                  [map (p*) $ scanl (+) p (cycle[2]) | p <- primes'])
 
joinT ((x:xs):t) = x : union xs (joinT (pairs t))  
pairs ((x:xs):ys:t) = (x : union xs ys) : pairs t 
gaps k s@(x:xs) | k<x  = k:gaps (k+2) s    -- equivalent to
                | True =   gaps (k+2) xs   --  [k,k+2..]`minus`s, k<=head s

--main = do
--  let primes = takeWhile ( <= 987654321 ) primesTME
--  print $ filter panDigital primes
