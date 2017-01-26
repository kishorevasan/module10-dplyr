# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1

# install and load dplyr
library("dplyr")

# Require/library the fueleconomy package
library(fueleconomy)

# You should have have access to the vehicles data.frame
View(vehicles)

# Which Accura model has the best hwy MPG in 2015? (without method chaining)
vehicles$model[vehicles$make=="Accura" & vehicles$year == 2015 & vehicles$hwy==max(vehicles$hwy)]

# Which Accura model has the best hwy MPG in 2015? (nesting functions)
select(
  filter(
    filter(filter(vehicles,
                  make=="Accura")
           ,year == 2015),
    hwy == max(hwy)
  ),model)



# Which Accura model has the best hwy MPG in 2015? (pipe operator)


### Bonus ###

# Write 3 functions, one for each approach.  Then,
# Test how long it takes to perform each one 1000 times

# Without chaining


# Nested functions


# Pipe operator


# Pretty similar...
