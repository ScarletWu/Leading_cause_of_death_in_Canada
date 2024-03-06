library(readr)


# Download and unzip the file
url <- "https://www150.statcan.gc.ca/n1/tbl/csv/13100394-eng.zip"

destfile <- "/cloud/project/data/13100394-eng.zip" 

download.file(url, destfile, mode = "wb")

unzip(destfile, exdir = "/cloud/project/data")

data_path <- "/cloud/project/data/13100394.csv" 

data <- read_csv(data_path)