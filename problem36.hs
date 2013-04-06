import Data.Digits

isPalindrome :: Int -> Bool
isPalindrome x = ( digits 10 x == digitsRev 10 x ) && (digits 2 x == digitsRev 2 x) 
