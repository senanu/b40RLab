library(ggplot2)
library(ggmap)
library(osmdata)

# Getting data for Rotterdam
rotterdam <- getbb('Rotterdam')

df <- read.csv('rotter.csv')

head(df)

rott <- get_map(rotterdam, zoom = 13, source = "osm")

ggm <- ggmap(rott, extent="device", legend = "none")



print(ggm)
