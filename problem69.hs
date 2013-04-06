--phi :: Int -> [Int]
phi x = filter (\i -> gcd x i == 1) [1..x-1]

--nOverPhi :: Float -> Float
nOverPhi x = fromIntegral x / fromIntegral ( length (phi x) )

main = do
  let novers = [nOverPhi x | x <- [5000..10000]]
  print $  maximum novers
  return ()
