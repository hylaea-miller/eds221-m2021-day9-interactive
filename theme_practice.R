rm(list = ls())

library(tidyverse)
library(palmerpenguins)

source(here::here("my_ggplot_themes.R"))

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(colour = species)) +
  labs(x = "Flipper length (mm)",
       y = "Bpdy mass (grams)",
       title = "Palmer penguins body size") +
  theme(panel.background = element_rect(fill = "yellow"),
        panel.grid.major = element_line(color = "purple"),
        axis.text = element_text(color = "red"),
        axis.title = element_text(color = "green"))
  