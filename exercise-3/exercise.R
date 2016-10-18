# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(dplyr)

# Which Accura model has the best hwy MPG in 2015? (without method chaining)
model <- filter(vehicles, year == 2015)
model.a <- filter(model, make == "Acura")
model.b <- select(model.a, hwy = max(hwy))

# Which Accura model has the best hwy MPG in 2015? (nesting functions)


# Which Accura model has the best hwy MPG in 2015? (pipe operator)
model.nest <- filter(vehicles, year == 2015) %>% 
  filter(make == "Acura") %>% 
  filter(hwy == max(hwy)) %>% 
  select(model)


### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
