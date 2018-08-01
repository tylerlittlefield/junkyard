# Function
new_client <- function(client_id) {
  require(geosapi)
  
  # Connect to geoserver REST API, change user/password
  gsman <- GSManager$new(
    url = "http://localhost:8085/geoserver", 
    user = "some username", pwd = "some password", 
    logger = NULL # logger, for info or debugging purpose
  )
  
  # Copy feature type, change workspace/datastore/layername
  featureTypeTemplate <- gsman$getFeatureType(ws = "workspace", ds = "datastore", "layer_name")
  
  # Modify feature type name, title, and cql filter
  featureTypeTemplate$setName(paste0("trees_", client_id))
  featureTypeTemplate$setTitle(paste0("trees_", client_id))
  featureTypeTemplate$setCqlFilter(paste0("clientid='", client_id,"'"))
  
  # Create the feature type in GeoServer, change workspace/datastore
  created <- gsman$createFeatureType(ws = "workspace", 
                                     ds = "datastore", 
                                     featureType = featureTypeTemplate)
}

# Test function
new_client("TEST")