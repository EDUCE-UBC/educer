# Work in progress, trying to replicate this data set:
# https://raw.githubusercontent.com/EDUCE-UBC/educer/main/data-raw/data_intro_ws.csv

source("data-raw/geochemicals.R")

geochemicals %>%
  dplyr::filter(Cruise %in% c(26,72)) %>%
  dplyr::mutate(Season = ifelse(lubridate::quarter(Date) == 4,
                                "Fall", "Summer")) %>%
  dplyr::select(Season,
                Depth_m = Depth,
                O2_uM = CTD_O2)

# Missing `Add_data` column - whether additional microbiological data
# was collected; `TRUE` or `FALSE`
