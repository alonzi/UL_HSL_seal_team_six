library(tidyverse)
library(lubridate)

tib <- read_csv("CLEM_GateCount3.csv")

tib <- tib %>% mutate(dayy=date)

tib <- tib %>% mutate(visitors=`gate start`)

tib <- tib %>% mutate(wday=wday(mdy(dayy),label=TRUE))
                      
                    


ggplot(data=tib) + geom_point(mapping=aes(x=dayy,y=visitors,color=wday))
ggplot(tib,aes(dayy,visitors)) + geom_line()
ggplot(tib,aes(wday,visitors)) + geom_boxplot()
