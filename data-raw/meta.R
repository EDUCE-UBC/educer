# Simple Saanich data set with geochemical and OTU data
# At some point replace and derive from original geochemical and OTU data sets
meta <- readr::read_csv("data-raw/meta.csv")
usethis::use_data(meta, overwrite = TRUE, compress = "bzip2")
