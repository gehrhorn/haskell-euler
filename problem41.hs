import Data.List
import Data.Numbers.Primes

panDigital :: Integer -> Bool
--panDigital 0
panDigital x = ( sort $ digits x ) == [1..n]
  where n = len x

len = toInteger . length . digits

digits :: Integer -> [Integer]
digits 0 = []
digits x = mod x 10 : digits (div x 10)

main = do
  let primelist = takeWhile (<987654321) primes
  let panPrimes = filter panDigital primelist
  print panPrimes
  return() 
