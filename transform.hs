import Language.Haskell.Syntax
import Language.Haskell.Parser
import System.Environment
import Control.Monad

import MIT6005

parseFile filename = readFile filename >>= return . parseModule

main = do
    args <- getArgs
    if null args
        then putStrLn "usage: transform FILENAME.hs"
        else do
                (ParseOk v) <- parseFile $ head args
                putStrLn (prettyPrint v)
