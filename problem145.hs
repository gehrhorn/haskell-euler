import Data.Digits 
revSum :: (Integral x) => x -> x
revSum x = x + revx x

revx :: (Integral x) => x -> x
revx = ( unDigits 10 . digitsRev 10 ) 

allOdd :: (Integral x) => x -> Bool
allOdd x =  (all odd $ digits 10 x)

reversible :: (Integral x) => x -> Bool
reversible x 
  | mod x 10 == 0 = False
  | allOdd x = True
  | otherwise = False
