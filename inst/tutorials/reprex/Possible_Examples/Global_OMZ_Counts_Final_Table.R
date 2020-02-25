library(tidyverse)
#read in data



OMZ<-data.frame(read.csv("Possible_Examples/Update_Global_SAGs_Jan_30_2020.csv", header =TRUE))

OMZ_Trim <- unique(OMZ %>% select(Region, Depth, Month, Year, Site_ID, Lat, Long))
#OMZ_Trim <-mutate(OMZ_Trim, table(unlist(OMZ$Site_ID)))

for (i in 1: dim (OMZ_Trim)[1]){
  OMZ_Trim[i,8]<-tally(OMZ %>% filter(Site_ID==as.character(OMZ_Trim$Site_ID[i])))
  OMZ_Trim[i,9]<-tally(OMZ %>% filter(Site_ID==as.character(OMZ_Trim$Site_ID[i]), Status=="Sequenced"))
}

colnames(OMZ_Trim)[8]<-"Total Number of SAGs"
colnames(OMZ_Trim)[9]<-"Total Number of Sequenced SAGs"

#Total Number of SAGs in the Catalog
dim(OMZ)[1]

OMZ_Counts<-unique(OMZ%>%select(Primary_Tax_Method))

for (i in 1: dim (OMZ_Counts)[1]){
  OMZ_Counts[i,2]<-tally(OMZ %>% filter(Primary_Tax_Method==as.character(OMZ_Counts$Primary_Tax_Method[i])))
  OMZ_Counts[i,3]<-tally(OMZ %>% filter(Primary_Tax_Method==as.character(OMZ_Counts$Primary_Tax_Method[i]), Status=="Sequenced"))
}
colnames(OMZ_Counts)<-c("Primary Taxonomic Assignment Method", "Total Number of SAGs", "Total Number of Sequenced SAGs")


OMZ_Amps<-unique(OMZ%>%select(WGA_Approach))

for (i in 1: dim (OMZ_Amps)[1]){
  OMZ_Amps[i,2]<-tally(OMZ %>% filter(WGA_Approach==as.character(OMZ_Amps$WGA_Approach[i])))
  OMZ_Amps[i,3]<-tally(OMZ %>% filter(WGA_Approach==as.character(OMZ_Amps$WGA_Approach[i]), Status=="Sequenced"))
}

colnames(OMZ_Amps)<-c("Whole Genome Amplification Method", "Total Number of SAGs", "Total Number of Sequenced SAGs")

write.csv(OMZ_Trim, file = "Summary_Table_Sites_Jan_30_2020.csv")
write.csv(OMZ_Counts, file = "Summary_Table_Primary_Jan_Tax_30_2020.csv")
write.csv(OMZ_Amps, file = "Summary_Table_WGA_Approach_Jan_30_2020.csv")

