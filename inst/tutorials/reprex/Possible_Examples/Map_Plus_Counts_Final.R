library(tidyverse)

#read in data

OMZ<-data.frame(read.csv("Possible_Examples/Update_Global_SAGs_Jan_30_2020.csv", header =TRUE))


Tax_list<-unique(OMZ %>% select(Taxonomy) %>% arrange (Taxonomy))
oxygen1<-read.csv("Possible_Examples/woa18_all_o00mn01.csv", header = TRUE)
oxygen5<-read.csv("Possible_Examples/woa18_all_o00mn5d.csv", header = TRUE)


OMZ_Counts_Amp<-data.frame()
OMZ_Counts_Seq<-data.frame()


OMZ_Counts_Amp_Dot<-data.frame()
OMZ_Counts_Seq_Dot<-data.frame()


#####Make World Map
OMZ<- OMZ %>% mutate(Round_Lat=round(OMZ$Lat))
OMZ<- OMZ %>% mutate(Round_Long=round(OMZ$Long))

plot_points<-OMZ %>% select(Region,Round_Lat, Round_Long)
plot_points<-unique(plot_points)


counter<-1
for (i in 1:dim(plot_points)[1]){
    round_OMZ_lat<-
    input<-tally(OMZ %>% filter (Region==plot_points[i,1],Round_Lat==plot_points[i,2], Round_Long==plot_points[i,3]))
    plot_points[counter,4]<-input
    counter<- counter+1 
  }

colnames(plot_points)[4]<-"Total"

counter<-1
for (i in 1:dim(plot_points)[1]){
  input<-tally(OMZ %>% filter (Region==plot_points[i,1],Round_Lat==plot_points[i,2], Round_Long==plot_points[i,3], Status=="Sequenced"))
  plot_points[counter,5]<-input
  counter<- counter+1 
}

colnames(plot_points)[5]<-"Sequenced"



min_O2_1<-oxygen1 %>% select(LATITUDE, LONGITUDE)
min_O2_5<-oxygen5 %>% select (LATITUDE, LONGITUDE)

for (i in 1:dim(oxygen1)[1]){
  min_O2_1[i,3]<-min(oxygen1[i,3:dim(oxygen1)[2]], na.rm=TRUE)
}

for (i in 1:dim(oxygen5)[1]){
  min_O2_5[i,3]<-min(oxygen5[i,3:dim(oxygen5)[2]], na.rm=TRUE)
}
min_O2_plot_1<-min_O2_1
colnames(min_O2_plot_1)[3]<-"uM"


min_O2_plot_5<-min_O2_5
colnames(min_O2_plot_5)[3]<-"uM"



for (i in 1: dim(min_O2_plot_1)[1]){
  O2<-min_O2_plot_1[i,3]
  
  if (O2 >=200){
    min_O2_plot_1[i,3]<-200
  }
}


for (i in 1: dim(min_O2_plot_5)[1]){
  O2<-min_O2_plot_5[i,3]
  
  if (O2 >=200){
    min_O2_plot_5[i,3]<-200
  }
}

rainbow1<-c('#9e0142','#d53e4f','#f46d43','#fdae61','#fee08b','#ffffbf','#e6f598','#abdda4','#66c2a5','#3288bd','#5e4fa2', '#000066')
revrainbow1<-rev(rainbow1)


mp <- NULL
mapWorld <- borders("world", colour="grey40", fill="grey40") # create a layer of borders
mp <- ggplot() +
  geom_raster(aes(x=min_O2_plot_5$LONGITUDE, y=min_O2_plot_5$LATITUDE, fill=min_O2_plot_5$uM)) +
  geom_raster(aes(x=min_O2_plot_1$LONGITUDE, y=min_O2_plot_1$LATITUDE, fill=min_O2_plot_1$uM)) +
  scale_fill_gradientn(colours =revrainbow1, name="Minimum Oxygen Concentration (uM)")+

  mapWorld +
  coord_equal() +  theme_bw() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank()) +
  
  geom_point(aes(x=plot_points$Round_Long, y=plot_points$Round_Lat, size =plot_points$Total), color="white")+
  geom_point(aes(x=plot_points$Round_Long, y=plot_points$Round_Lat, size =plot_points$Sequenced), color="black")+
  scale_size(range = c(1, 10))+
  labs(size="Number of SAGs")
  

mp 


