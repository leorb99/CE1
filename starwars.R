library(tidyverse)

year_calc <- function(birth, zero) {
  year <- floor(birth - zero)
  result <- ifelse(year <= 0, paste(abs(year), "DA"), paste(abs(year), "AA"))
  return(result)
}

data()
View(starwars)
?starwars
?levels
glimpse(starwars)

filter(starwars, species == "Human")
starwars_humans <- filter(starwars, species == "Human")
View(starwars_humans)
# pega o ano de nascimento de Anakin
anakin_birth_year <- floor(starwars_humans$birth_year[2])
# birth_year negativo eh DA, positivo eh AA
starwars_era <- mutate(starwars, birth_year = round(birth_year - anakin_birth_year))
View(starwars_era)
current_year = 35 + anakin_birth_year
# outra forma de fazer chamando uma funcao e usando o pipe (%>%, Ctrl+Shift+M) 
starwars_era <- starwars %>% 
  mutate(birth_year = year_calc(birth_year, anakin_birth_year))
  
glimpse(starwars_era)
a <- starwars_era %>% 
  group_by(name) %>% 
  summarise(species, films)

ggplot(starwars_era, aes(x = height)) + geom_freqpoly() + geom_histogram() +
  labs(x = "Character height")
  