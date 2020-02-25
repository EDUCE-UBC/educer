library(tidyverse)

#install.packages("egg", dependencies=TRUE)
library(egg)

#read in data

#Read in Global Dataset
OMZ<-data.frame(read.csv("Possible_Examples/Update_Global_SAGs_Jan_30_2020.csv", header =TRUE))


#Select unique taxonomies
Tax_list<-unique(OMZ %>% select(Taxonomy) %>% arrange (Taxonomy))


#Variable declaration
Plot_labs<-c()

SSU_plot<-data.frame()

WGS_plot<-data.frame()



Tax_list_labs<-read.csv("Possible_Examples/Tax_list_labs_Apr_25_2019.csv", header = FALSE)

for (i in 1: dim(OMZ)[1]){
  for (j in 1:dim (Tax_list_labs)[1]){
    pattern<-as.character(Tax_list_labs[j,1])
    match<-grepl(pattern, as.character(OMZ$Taxonomy[i]))
    
    if (match==TRUE){
      OMZ$Plot_Taxa[i]<-pattern
      Plot_labs<-pattern
    }
  }
}


#Separate the global data set into 3 data frames based on how taxonomy was assigned
SSU<-OMZ %>% filter(Primary_Tax_Method=="16S")
SSU_Tax_list<-unique(SSU %>% select(Taxonomy) %>% arrange (Taxonomy))

WGS<-OMZ %>% filter(Primary_Tax_Method=="WGS")
WGS_Tax_list<-unique(WGS %>% select(Taxonomy) %>% arrange (Taxonomy))

##################################################
#Completentess/Contamination Plots
#pdf("CC_Plots.pdf")
Seq_OMZ<-OMZ %>% filter(Status=="Sequenced")
MDA_Seq<-Seq_OMZ %>% filter (WGA_Approach=="MDA")
WGA_Seq<-Seq_OMZ %>% filter (WGA_Approach=="WGA-X")

Amp_Method<-ggplot(Seq_OMZ, aes(x=Completeness, y=Contamination))+ 
  geom_point(na.rm = TRUE, aes(color=WGA_Approach))+
  facet_wrap(.~WGA_Approach)

unique_phylum<-unique(Seq_OMZ$Plot_Taxa)

Phylum_drop<-c()
counter<-1
for (i in 1:dim(Tax_list_labs)[1]){
  pattern<-as.character(Tax_list_labs[i,1])
  tmp_match<-match(pattern, unique_phylum)
  
  if(is.na(tmp_match)==TRUE){
    Phylum_drop<-c(Phylum_drop,i)
  }
}

Tax_list_labs<-as.vector(Tax_list_labs[-Phylum_drop,])
  

##########################################################################
#Split Between MDA/WGA-X
p1_Comp_MDA<-ggplot(MDA_Seq, aes(x=Plot_Taxa, y=Completeness)) + geom_boxplot(na.rm = TRUE, fill="red") +
  #theme(axis.text.x = element_text(angle=45, hjust = 1))+
  xlab("MDA")+
  ylab("% Completeness")+
  coord_flip()+ scale_x_discrete(limits = rev(Tax_list_labs))

p2_Contam_MDA<-ggplot(MDA_Seq, aes(x=Plot_Taxa, y=Contamination)) + geom_boxplot(na.rm = TRUE, fill="red")+
  # theme(axis.text.x = element_text(angle=45, hjust = 1)) +  
  ylab("% Contamination")+
  scale_y_continuous(limits=c(0,8), breaks = seq(0, 8, by = 2))+
  coord_flip()+ scale_x_discrete(limits = rev(Tax_list_labs))

p3_Len_MDA<-ggplot(MDA_Seq, aes(x=Plot_Taxa, y=Assembly_Length_MBP)) + 
  geom_boxplot(na.rm = TRUE, fill="red")+
  #  theme(axis.text.x = element_text(angle=45, hjust = 1)) +  
  ylab("Assembly Length (Mbp)")+
  scale_y_continuous(limits=c(0,4), breaks = seq(0, 4, by = 2))+
  coord_flip()+ scale_x_discrete(limits = rev(Tax_list_labs))

p1_Comp_WGA<-ggplot(WGA_Seq, aes(x=Plot_Taxa, y=Completeness)) + geom_boxplot(na.rm = TRUE, fill="blue") +
  #theme(axis.text.x = element_text(angle=45, hjust = 1))+
  xlab("WGA-X")+
  ylab("% Completeness")+
  coord_flip()+ scale_x_discrete(limits = rev(Tax_list_labs))

p2_Contam_WGA<-ggplot(WGA_Seq, aes(x=Plot_Taxa, y=Contamination)) + geom_boxplot(na.rm = TRUE, fill="blue")+
  # theme(axis.text.x = element_text(angle=45, hjust = 1)) +  
  ylab("% Contamination")+
  scale_y_continuous(limits=c(0,8), breaks = seq(0, 8, by = 2))+
  coord_flip()+ scale_x_discrete(limits = rev(Tax_list_labs))

p3_Len_WGA<-ggplot(WGA_Seq, aes(x=Plot_Taxa, y=Assembly_Length_MBP)) + 
  geom_boxplot(na.rm = TRUE,  fill="blue")+
  #  theme(axis.text.x = element_text(angle=45, hjust = 1)) +  
  ylab("Assembly Length (Mbp)")+
  scale_y_continuous(limits=c(0,4), breaks = seq(0, 4, by = 2))+
  coord_flip()+ scale_x_discrete(limits = rev(Tax_list_labs))


ggarrange(p1_Comp_MDA, 
          p2_Contam_MDA + 
            theme(axis.text.y = element_blank(),
                  axis.ticks.y = element_blank(),
                  axis.title.y = element_blank() ),
          
          p3_Len_MDA + 
            theme(axis.text.y = element_blank(),
                  axis.ticks.y = element_blank(),
                  axis.title.y = element_blank() ), 
          
          p1_Comp_WGA,
          
          p2_Contam_WGA + 
            theme(axis.text.y = element_blank(),
                  axis.ticks.y = element_blank(),
                  axis.title.y = element_blank() ), 
          
          p3_Len_WGA + 
            theme(axis.text.y = element_blank(),
                  axis.ticks.y = element_blank(),
                  axis.title.y = element_blank() ),
          nrow=2)



