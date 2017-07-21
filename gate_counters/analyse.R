library(tidyverse)
library(lubridate)

tib <- read_csv("HSL-2017-07-01-18.csv")

tib <- tib %>% mutate(dayy=mday(mdy_hm(date)),dai=wday(mdy_hm(date)))

tib <- tib %>%  mutate(wday=wday(mdy_hm(date),label=TRUE))

# https://rpubs.com/davoodastaraky/lubridate
# sunday = 1

ggplot(data=tib) + geom_point(mapping=aes(x=dayy,y=visitors,color=wday))
ggplot(tib,aes(dayy,visitors)) + geom_line()

# http://r4ds.had.co.nz/model-building.html#what-affects-the-number-of-daily-flights

ggplot(tib,aes(wday,visitors)) + geom_boxplot()
