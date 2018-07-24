# String similarity function
# https://en.wikipedia.org/wiki/Levenshtein_distance
#
# Using this function instead of loading the library because RecordLinkage has
# a shitload of dependencies.

levsim = function (str1, str2) {
  x <- RecordLinkage::levenshteinDist(str1, str2)
  y <- max(nchar(str1), nchar(str2))
  return(1 - (x / y))
}