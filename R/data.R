#' Full geochemical data set from Saanich Inlet 2006 to 2014
#'
#' Saanich Inlet, a seasonally anoxic fjord on the coast of Vancouver Island
#' British Columbia, is a model ecosystem for monitoring microbial community
#' structure, function and dynamics in relation to changing levels of water
#' column oxygen-deficiency extensible to coastal and open ocean OMZs. This data
#' set contains nine years of monthly time series observations in Saanich Inlet
#' encompassing water column chemistry. Chemical bottle data collected from
#' Station S3 (-123.505, 48.59166667) in Saanich Inlet, BC, Canada. Subset of a
#' combination of "Saanich_TimeSeries_Chemical_DATA.csv" (all variables) and
#' "Saanich_TimeSeries_CTD_DATA.csv" (Temperature, Salinity, Density) data sets.
#'
#' @format A data frame with 1605 rows and 29 variables:
#' \describe{
#'   \item{Longitude}{Unique geographical coordinates for sampling station.
#'   Units: Decimal degrees}
#'   \item{Latitude}{Unique geographical coordinates for sampling station.
#'   Units: Decimal degrees}
#'   \item{Cruise}{Numerical identifier of individual cruises. Units: Numeric
#'   string}
#'   \item{Date}{Date of cruise. Units: YYYY-MM-DD}
#'   \item{Depth}{Sampling depth. Units: Meters}
#'   \item{CTD_O2}{Oxygen concentration calculated from CTD SBE. Units:
#'   Micromolar}
#'   \item{PO4}{Phosphate (Bran Luebbe AutoAnalyser - colorimetric). Units:
#'   Micromolar}
#'   \item{SI}{Silicate (Bran Luebbe AutoAnalyser - colorimetric). Units:
#'   Micromolar}
#'   \item{NO3}{Nitrate (Bran Luebbe AutoAnalyser - colorimetric). Units:
#'   Micromolar}
#'   \item{Mean_NH4}{Average concentration of Ammonium for each depth
#'   (fluorometric assay). Units: Micromolar}
#'   \item{Std_NH4}{Standard deviation for Ammonium average concentration.
#'   Units: NA}
#'   \item{Mean_NO2}{Average concentration of Nitrite for each depth
#'   (colorimetric assay). Units: Micromolar}
#'   \item{Std_NO2}{Standard deviation for Nitrite average concentration. Units:
#'   NA}
#'   \item{Mean_H2S}{Average concentration of Hydrogen sulfide for each depth
#'   (colorimetric assay). Units: Micromolar}
#'   \item{Std_H2S}{Standard deviation for Hydrogen sulfide average
#'   concentration. Units: NA}
#'   \item{Cells/ml}{Cell counts value quantified by flow cytometry. Units:
#'   Number of cells per millilitre (cells/mL)}
#'   \item{Mean_N2}{Average concentration of Nitrogen gas (headspace). Units:
#'   Micromolar}
#'   \item{Std_N2}{Standard deviation for Nitrogen gas. Units: NA}
#'   \item{Mean_O2}{Average concentration of Oxygen (headspace). Units:
#'   Micromolar}
#'   \item{Std_O2}{Standard deviation for Oxygen. Units: NA}
#'   \item{Mean_CO2}{Average concentration of Carbon dioxide (headspace). Units:
#'   Micromolar}
#'   \item{Std_CO2}{Standard deviation for Carbon dioxide. Units: NA}
#'   \item{Mean_N2O}{Average concentration of Nitrous oxide (headspace or
#'   automated purge-and-trap). Units: Nanomolar}
#'   \item{Std_N2O}{Standard deviation for Nitrous oxide. Units: NA}
#'   \item{Mean_CH4}{Average concentration of Methane (headspace or automated
#'   purge-and-trap). Units: Nanomolar}
#'   \item{Std_CH4}{Standard deviation for Methane. Units: NA}
#'   \item{Temperature}{CTD temperature. Units: Celsius degrees}
#'   \item{Salinity}{CTD salinity measurement at each pressure point. Units:
#'   Practical salinity unit}
#'   \item{Density}{CTD density measurement at each pressure point. Units:
#'   Sigma-theta}
#' }
#' @source For a brief introduction to the data, see Hallam SJ \emph{et al.}
#'   2017. Monitoring microbial responses to ocean deoxygenation in a model
#'   oxygen minimum zone. Sci Data 4: 170158. doi:
#'   \href{https://www.nature.com/articles/sdata2017158}{10.1038/sdata.2017.158}.
#'    More detailed information on the geochemical data can be found in
#'   Torres-Beltrán M \emph{et al.} 2017. A compendium of geochemical
#'   information from the Saanich Inlet water column. Sci Data 4: 170159. doi:
#'   \href{https://www.nature.com/articles/sdata2017159}{10.1038/sdata.2017.159}
#'   (\href{https://datadryad.org/stash/dataset/doi:10.5061/dryad.nh035}{dataset}).
"geochemicals"

#' Abundance of OTUs for Saanich Inlet Cruise 72
#'
#' Saanich Inlet, a seasonally anoxic fjord on the coast of Vancouver Island
#' British Columbia, is a model ecosystem for monitoring microbial community
#' structure, function and dynamics in relation to changing levels of water
#' column oxygen-deficiency extensible to coastal and open ocean OMZs. This data
#' set contains cruise 72 of monthly time series observations in Saanich Inlet
#' encompassing environmental sequence information. Sequencing data was
#' processed using the mothur_pipeline R Markdown file to bin the data into
#' operational taxonomic units and determine their abundance (alternatively, use
#' the \link[=normalized_OTUs]{normalized data set}).
#' % Find way to link Rmd file
#'
#' @format A data frame with 30,576 rows and 4 variables:
#' \describe{
#'   \item{Cruise}{Numerical identifier of individual cruises. Units: Numeric
#'   string}
#'   \item{Depth}{Sampling depth. Units: Meters}
#'   \item{OTU}{Numerical identifier of OTU. Units: Numeric string}
#'   \item{Count}{Count of OTU sequences. Units: Numeric string}
#' }
#' @source For a brief introduction to the data, see Hallam SJ \emph{et al.}
#'   2017. Monitoring microbial responses to ocean deoxygenation in a model
#'   oxygen minimum zone. Sci Data 4: 170158. doi:
#'   \href{https://www.nature.com/articles/sdata2017158}{10.1038/sdata.2017.158}.
#'    More detailed information on the mutli-omic microbial data can be found in
#'   Hawley AK *et al*. 2017. A compendium of multi-omic sequence information
#'   from the Saanich Inlet water column. Sci Data 4: 170160. doi:
#'   \href{https://www.nature.com/articles/sdata2017160}{10.1038/sdata.2017.160}.
"OTUs"

#' Normalized abundance of OTUs for Saanich Inlet Cruise 72
#'
#' Saanich Inlet, a seasonally anoxic fjord on the coast of Vancouver Island
#' British Columbia, is a model ecosystem for monitoring microbial community
#' structure, function and dynamics in relation to changing levels of water
#' column oxygen-deficiency extensible to coastal and open ocean OMZs. This data
#' set contains cruise 72 of monthly time series observations in Saanich Inlet
#' encompassing environmental sequence information. Sequencing data was
#' processed using the mothur_pipeline R Markdown file to bin the data into
#' operational taxonomic units and determine their abundance
#' (\link[=OTUs]{non-normalized data set}) and then normalized to 100,000
#' sequences for each sample (seed = 4832).
#' % Find way to Rmd link file
#'
#' @format A data frame with 30,576 rows and 4 variables:
#' \describe{
#'   \item{Cruise}{Numerical identifier of individual cruises. Units: Numeric
#'   string}
#'   \item{Depth}{Sampling depth. Units: Meters}
#'   \item{OTU}{Numerical identifier of OTU. Units: Numeric string}
#'   \item{Count}{Count of OTU sequences. Units: Numeric string}
#' }
#' @source For a brief introduction to the data, see Hallam SJ \emph{et al.}
#'   2017. Monitoring microbial responses to ocean deoxygenation in a model
#'   oxygen minimum zone. Sci Data 4: 170158. doi:
#'   \href{https://www.nature.com/articles/sdata2017158}{10.1038/sdata.2017.158}.
#'    More detailed information on the mutli-omic microbial data can be found in
#'   Hawley AK *et al*. 2017. A compendium of multi-omic sequence information
#'   from the Saanich Inlet water column. Sci Data 4: 170160. doi:
#'   \href{https://www.nature.com/articles/sdata2017160}{10.1038/sdata.2017.160}.
"normalized_OTUs"

#' Combined data set of geochemicals and OTU abundance
#'
#' A subset of the \link[=geochemicals]{geochemical} and
#' \link[=normalized_OTUs]{normalized OTU abundance}) data sets at 7 depths for
#' Saanich Inlet Cruise 72.
#'
#' @format A data frame with 7 rows and 10 variables:
#' \describe{
#'   \item{Cruise}{Numerical identifier of individual cruises. Units: Numeric
#'   string}
#'   \item{Depth}{Sampling depth. Units: Meters}
#'   \item{OTU0001}{Operational taxonomic unit 1}
#'   \item{OTU0002}{Operational taxonomic unit 2}
#'   \item{OTU0003}{Operational taxonomic unit 3}
#'   \item{OTU0004}{Operational taxonomic unit 4}
#'   \item{NO3}{Nitrate (Bran Luebbe AutoAnalyser - colorimetric). Units:
#'   Micromolar}
#'   \item{Mean_NO2}{Average concentration of Nitrite for each depth
#'   (colorimetric assay). Units: Micromolar}
#'   \item{Mean_N2O}{Average concentration of Nitrous oxide (headspace or
#'   automated purge-and-trap). Units: Nanomolar}
#'   \item{Mean_NH4}{Average concentration of Ammonium for each depth
#'   (fluorometric assay). Units: Micromolar}
#' }
#' @source For a brief introduction to the data, see Hallam SJ \emph{et al.}
#'   2017. Monitoring microbial responses to ocean deoxygenation in a model
#'   oxygen minimum zone. Sci Data 4: 170158. doi:
#'   \href{https://www.nature.com/articles/sdata2017158}{10.1038/sdata.2017.158}.
#'    More detailed information on the geochemical data can be found in
#'   Torres-Beltrán M \emph{et al.} 2017. A compendium of geochemical
#'   information from the Saanich Inlet water column. Sci Data 4: 170159. doi:
#'   \href{https://www.nature.com/articles/sdata2017159}{10.1038/sdata.2017.159}
#'   (\href{https://datadryad.org/stash/dataset/doi:10.5061/dryad.nh035}{dataset}).
#'   More detailed information on the mutli-omic microbial data can be found in
#'   Hawley AK *et al*. 2017. A compendium of multi-omic sequence information
#'   from the Saanich Inlet water column. Sci Data 4: 170160. doi:
#'   \href{https://www.nature.com/articles/sdata2017160}{10.1038/sdata.2017.160}.
"combined"
