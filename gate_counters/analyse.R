library(tidyverse)
library(lubridate)

tib <- read_csv("HSL-2017-07-01-18.csv")

tib <- tib %>% mutate(dayy=mday(mdy_hm(date)),dai=wday(mdy_hm(date)))

# https://rpubs.com/davoodastaraky/lubridate
# sunday = 1

ggplot(data=tib) + geom_point(mapping=aes(x=dayy,y=visitors,color=dai))
