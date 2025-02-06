```haskell
import Data.List (sort)
import Data.Maybe (fromMaybe)

-- Efficient sorting for large lists using chunking
chunkSort :: Int -> [a] -> [a]
chunkSort chunkSize xs = concatMap (sort) (chunksOf chunkSize xs)
  where
    chunksOf :: Int -> [a] -> [[a]]
    chunksOf n xs = takeWhile (not . null) $ unfoldr (
s -> Just (take n ns, drop n ns)) xs

main :: IO ()
main = do
  let xs = [5, 2, 8, 1, 9, 4, 7, 3, 6]
  let ys = chunkSort 3 xs -- Example with chunk size 3
  print ys

--Alternatively for infinite lists, use a different algorithm (not implemented here)
-- which does not require sorting the entire list at once.
-- ... 
```