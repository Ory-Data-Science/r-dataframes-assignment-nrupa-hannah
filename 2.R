setwd("~/GitHub")
shrubs <- read.csv("shrubs.csv")

names(shrubs)
str(shrubs)
head(shrubs)
select(shrubs, length)
print(head(shrubs))
print(select(shrubs, length))
select(shrubs, site, experiment)
print(select(shrubs, site, experiment))
filter(shrubs, height > 5)
print(filter(shrubs, height > 5))
shrub_data_w_vols <- mutate(shrubs, "volume" = length * width * height)
print(shrubs_data_w_vols)