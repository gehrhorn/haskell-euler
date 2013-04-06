import Data.Digits

isPalindrome :: (Integral x) => x -> Bool
isPalindrome x = digits 10 x == digitsRev 10 x

revx :: (Integral x) => x -> x
revx = ( unDigits 10 . digitsRev 10 ) 

isLychrel :: (Integral x) => x -> Bool
isLychrel x = not any isPalindrome (tail $ take 50 $ iterate (\a -> a + revx a) x)
