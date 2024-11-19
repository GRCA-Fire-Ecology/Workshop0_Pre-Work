#### SETUP ####
## Load Packages ##
# uncomment next line to install packages for the first time
# install.packages("tidyverse")

# pull installed packages into your local library for use
library(tidyverse)

## Define Working Directory ##
# save the location of your R project as the working directory
wd <- getwd()
wd

#### LOAD DATA ####
# read in the test data from a .csv file located within the "data" folder
# of your working directory, assign column types to the data columns
test_data <- read_csv(paste0(wd, "/", "data/test_data.csv"),
                      col_types = "cn")

# view the first 3 rows of the data
head(test_data,3)

# view the columns and column types assigned to data
spec(test_data)

#### CREATE OUTPUT ####
# create a new data object (test_output)
# the new object has an additional column in the data (HalfCount) based off
# values in an existing column (Count)
test_output <- test_data %>% mutate(HalfCount = Count/2)

# save the new object as a file in the "output" folder
write_csv(test_output, paste0(wd, "/", "output/test_output.csv"))

# view the help file of the write_csv function
?write_csv
