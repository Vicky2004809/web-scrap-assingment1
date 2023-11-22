library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)

link <- "https://www.amazon.in/s?k=camera&crid=37ZJG4J00WZJX&sprefix=camera%2Caps%2C220&ref=nb_sb_ss_ts-doa-p_1_6"
path = paths_allowed(link)

web<-read_html(link)

CameraName<-web%>%html_nodes(".a-color-base.a-text-normal")%>%html_text()
View(CameraName)

ratings<-web%>%html_nodes(".aok-align-bottom")%>%html_text()
View(ratings)

Users<-web%>%html_nodes(".s-link-style .s-underline-text")%>%html_text()
View(Users)


CameraDetails<-data.frame(CameraName,ratings,Users)
View(CameraDetails)

