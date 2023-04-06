library(tidyverse)

LL2020 <- read.csv("data/LL2020.csv")
LL2021 <- read.csv("data/LL2021.csv")
LL2022 <- read.csv("data/LL2022.csv")

LL2022 <- LL2022 %>% pivot_longer(c(LeafLength1, LeafLength2), names_to = NULL, values_to = "LeafLengthCM")

LLphe <- rbind.data.frame(LL2020, LL2021, LL2022)
write.table(LLphe, "data/LLphe.csv", sep = ",", quote = F, row.names = F)