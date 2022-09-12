View(Raw_Data)
library(ggplot2)
library(tidyverse)

Line <- Raw_Data %>%
  ggplot(aes(x = Year, y = Units), data = Raw_Data) +
  geom_line(color = "blue", size = 2) +
  scale_x_continuous(breaks=seq(1991,2021, 1)) +
  theme(text=element_text(family="Tahoma"), size = 10) +
  labs(x = "Years", y = "Percentage") +
  geom_point(color = "green", size = 2)

plot(Line)
Line + labs(title = "Jordan: Youth Unemployment rate from 1999 to 2021", x = "Years", y = "Percentage", caption = "Data: ILO Database")

Line + geom_text (aes(label = Units), check_overlap = TRUE)
library(ggrepel)
Line + geom_label(aes(label = Units))