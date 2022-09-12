library(ggplot2)
library(tidyverse)

Raw_Data <- read_excel("/Users/user1/Desktop/Drafts/EuroMed/Raw_Data.xlsx")
p1 <- ggplot() +
  geom_line(aes(y = Units, x = Year), data = Raw_Data) +
  scale_y_continuous(breaks=seq(20, 45, 5)) +
  scale_x_continuous(breaks=seq(1991, 2021, 1)) +
  geom_point(color = "green", size = 5) +
  labs(x = "Years", y = "Percentage") +
  geom_point(color = "green", size = 2) +
  theme(text=element_text(family="Tahoma"))
plot(p1)