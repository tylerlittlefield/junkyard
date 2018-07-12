library(tidyverse)
library(sf)
library(ggmap)

# Read shapefile
trees <- st_read("some/shapefile.shp")

# Grab bounding box, store as vector
bbox <- st_bbox(trees) %>% as.vector()

# Get basemap based on bounding box extent
sd_map <- get_map(location = bbox)

# Plot
ggmap(sd_map) +
  geom_sf(data = trees, inherit.aes = FALSE)
