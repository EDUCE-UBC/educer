OTUs <- readr::read_tsv("data-raw/Saanich_OTU.shared") %>%
  dplyr::select(-label, -numOtus) %>%
  tidyr::separate(Group, into = c(NA, "Depth"), sep = "_", convert = TRUE) %>%
  tidyr::pivot_longer(-Depth, names_to = "OTU", names_prefix = "Otu",
                      values_to = "Count") %>%
  dplyr::mutate(Cruise = 72) %>%
  dplyr::select(Cruise, Depth, OTU, Count)

usethis::use_data(OTUs, overwrite = TRUE, compress = "bzip2")
