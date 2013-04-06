import Data.List
import Data.Digits

sameElements a b = ( sort $ digits 10 a ) == ( sort $ digits 10 b ) 

check n = all (sameElements n) (map (n*) [2..6])

prob52 = head $ filter check [1..]
