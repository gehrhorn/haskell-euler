
-- choose :: Int -> Int -> Int
choose n 0 = 1
choose 0 r = 0
choose n r = choose (n - 1) (r - 1) * n `div` r
