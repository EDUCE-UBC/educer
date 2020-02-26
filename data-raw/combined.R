# Needs data sets generated with normalized_OTUs.R and geochemicals.R
some_OTUs <- educer::normalized_OTUs %>%
  tidyr::pivot_wider(names_from = OTU, names_prefix = "OTU",
                     values_from = Count) %>%
  dplyr::select(Cruise, Depth, OTU0001:OTU0004)

some_geochemicals <- educer::geochemicals %>%
  dplyr::select(Cruise, Depth, NO3, Mean_NO2, Mean_N2O, Mean_NH4)

combined <- dplyr::left_join(some_OTUs, some_geochemicals)
usethis::use_data(combined, overwrite = TRUE, compress = "bzip2")
