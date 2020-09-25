import Control.Monad
import Data.Function(on)
import System.Exit
import System.Environment(getArgs)

groupBy :: (a -> a -> Bool) -> [a] -> [[a]]
groupBy _  []     =  []
groupBy eq (x:xs) =  (x:ys) : groupBy eq zs
    where (ys,zs) = span (eq x) xs

isColon n = n == ':'

ord :: String -> [String]
ord = filter (not . all isColon) . groupBy (on (==) isColon) 

lstrip [] = []
lstrip xs'@(x:xs) | x == ' '  = lstrip xs
                  | otherwise = xs'
rstrip = reverse . lstrip . reverse
strip = lstrip . rstrip

printStep line = do
  let sum = 13
  let word = ord line
  let loop = (read (word !! 0) :: Int)
  forM_ [1..loop] $ \i  -> do
    forM_ [1..i] $ \j  -> do
      putStr $ strip (word !! 1)
    putStr "\n"
  return 13

main = do
  args <- getArgs
  if 1 <= length args
  then do
    n <- printStep (args !! 0)
    exitWith $ ExitFailure n
  else do
    line <- getLine
    n <- printStep line
    exitWith $ ExitFailure n
