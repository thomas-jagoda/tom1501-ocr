library(tidyverse)
library(tesseract)

#tesseract_download("rus")

russian <- tesseract("rus")

pic_names <- fs::dir_ls("pics")

text <- pic_names %>% map(ocr, engine=russian)

text %>% walk(write_file, "manual.txt", append=T)
