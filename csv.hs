import Text.CSV

main :: IO ()
main = do
        let fileName = "./text.csv"
        file <- readFile fileName
        let csv = parseCSV fileName file
        either printError printCsv csv where
                printError err = print err
                printCsv some_csv = mapM_ (print) some_csv
