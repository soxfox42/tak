import System.Environment

tak :: Int -> Int -> Int -> Int
tak x y z
  | y < x = tak
    (tak (x - 1) y z)
    (tak (y - 1) z x)
    (tak (z - 1) x y)
  | otherwise = z

main :: IO ()
main = do
  args <- getArgs
  let [x, y, z] = map read args :: [Int]
  print $ tak x y z
