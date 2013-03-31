collatz :: (Integral x) => [x] -> [x]
collatz x 
  | x == [] = []
  | last x == 1 = x
  | even (last x) = collatz (x ++ [div (last x) 2])
  | odd (last x) = collatz (x ++ [3 * last x + 1]) 
