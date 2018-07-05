# This is a pretty cool approach to naming list elements by their object name.
# See more here: https://stackoverflow.com/questions/50991452/how-to-form-a-dataframe-in-r-using-lists/50991609#50991609

child1 = c("a","b","c")
child2 = c("b","a","c")
child3 = c("a","a","b")

mget(ls(pattern = "^child\\d+$"))