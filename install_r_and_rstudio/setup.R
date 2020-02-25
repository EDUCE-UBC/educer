# This setup script defines variables to populate Rmd documents with standard
# information.
# root variable MUST be set directly in Rmd document, do NOT define here.
# Set images path
images_path <- file.path(root, "images")
# Set CSS path
css_path <- file.path(root, "css")
# Set academic year
academic_year <- "2019.20"
# Set R and RStudion versions
r_version <- "3.6.2" # current
r_legacy_version <- "3.3.3"
rstudio_version <- "1.2.5033"
rstudio_legacy_version <- "1.1.463"
# Packages used, packages_course is defined in course specific file
tidyverse_legacy <- "tibble readr dplyr tidyr ggplot2 stringr purrr forcats " 
packages_general <- "learnr "
packages <- paste0("`tidyverse ", packages_general, packages_course, "`")
packages_legacy <- paste0("`", tidyverse_legacy, packages_general,
                          packages_course, "`")
# Set contact
contact <- "Dr. Stephan Koenig (stephan.koenig@ubc.ca)"
contact_short <- "Dr. Koenig"
# Set office hours
office_hours <- paste0("Office hours start Jan 20 and end Apr 24, 2020:\n\n",
                       "- Tuesday, 4–5 pm in LSC1510\n",
                       "- Wednesday, 10–11 am in LSK121 (after class)\n",
                       "- Thursday, 4–5 pm in LSC1410 ",
                       "(except Mar 5 and Apr 2: LSC West Atrium)\n")