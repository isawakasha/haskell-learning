import Text.CSV (parseCSV)
import System.Environment (getArgs)

main :: IO ()
main = do
        args <- getArgs
        let fileName = args !! 0
        file <- readFile fileName
        let csv = parseCSV fileName file
        either printError printCsv csv where
                printError err = print err
                printCsv some_csv = mapM_ (print) some_csv
