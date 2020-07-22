geochemicals <- readr::read_csv("data-raw/Saanich_TimeSeries_Chemical_DATA.csv",
                                na = c("", "NA", "NAN", "NaN", "ND"))
other_variables <- readr::read_csv("data-raw/Saanich_TimeSeries_CTD_DATA.csv",
                                   skip = 16,
                                   na = c("", "NA", "NAN", "NaN", "ND")) %>%
  # Assumes that Pressure (in decibar) approxiates depth in m
  dplyr::rename(Depth = Pressure) %>%
  dplyr::select(Cruise, Date, Depth, Temperature, Salinity, Density) %>%
  # Remove row ith incomplete Date and duplicate row for Cruise 80 at 200 dbar
  # (kept reading with lower temperature)
  slice(-6225, -13462)

geochemicals <- geochemicals %>%
  dplyr::rename(Mean_CO2 = Mean_co2,
                Std_CO2  = Std_co2,
                Std_N2   = Std_n2,
                Std_O2   = Std_o2) %>%
  dplyr::left_join(other_variables)

usethis::use_data(geochemicals, overwrite = TRUE, compress = "bzip2")



