# The first code formulation by_site_abgvol, calculates the average volume based on the site that it was collected at. 
# The second code formulation by_experiment_abgvol, calculates the average volume based on the experiment conducted. 


shrubs_data <- read.csv("shrubs.csv")
by_site_abgvol <- shrubs_data %>%
  mutate("volume" = length * width * height) %>%
  group_by(site) %>%
  summarise(mean_volume = mean(volume)) 
print(by_site_abgvol)
by_experiment_abgvol <- shrubs_data %>%
  mutate("volume" = length * width * height) %>%
  group_by(experiment) %>%
  summarise(mean_volume = mean(volume))
print(by_experiment_abgvol)

