library(tidyverse)
library(paletteer)
library(palmerpenguins)


# Wrote a bunch of other code

# Finally, at the end I want to plot my results

ggplot(data = penguins, x = flipper_length, y = body_mass_g) +
  geom_point()


# Create data to include in our reprex
# Subset penguins to just the data I need to reproduce the error

penguins_subset <- penguins %>%
  select(flipper_length_mm, body_mass_g) %>%
  slice_head(n = 5)

datapasta::df_paste(penguins_subset)

# Create reprex
# What we're actually going to share

library(tidyverse)

penguins1 <- data.frame(flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
           body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L))



ggplot(data = penguins, x = flipper_length, y = body_mass_g) +
  geom_point()


``` r
library(tidyverse)
#> Warning: pacote 'tidyverse' foi compilado no R versão 4.4.3
#> Warning: pacote 'ggplot2' foi compilado no R versão 4.4.3
#> Warning: pacote 'tibble' foi compilado no R versão 4.4.3
#> Warning: pacote 'tidyr' foi compilado no R versão 4.4.3
#> Warning: pacote 'readr' foi compilado no R versão 4.4.3
#> Warning: pacote 'purrr' foi compilado no R versão 4.4.3
#> Warning: pacote 'dplyr' foi compilado no R versão 4.4.3
#> Warning: pacote 'stringr' foi compilado no R versão 4.4.3
#> Warning: pacote 'forcats' foi compilado no R versão 4.4.3
#> Warning: pacote 'lubridate' foi compilado no R versão 4.4.3

penguins <- data.frame(flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
                       body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L))



ggplot(data = penguins, x = flipper_length, y = body_mass_g) +
  geom_point()
#> Error in `geom_point()`:
#> ! Problem while setting up geom.
#> ℹ Error occurred in the 1st layer.
#> Caused by error in `compute_geom_1()`:
#> ! `geom_point()` requires the following missing aesthetics: x and y.
```

<sup>Created on 2025-08-21 with [reprex v2.1.1](https://reprex.tidyverse.org)</sup>
  
  

ggplot(data = penguins1, aes(x = flipper_length, y = body_mass_g)) +
  geom_point()  


ggplot() +
  geom_point(data = penguins1,
             aes(x = flipper_length_mm, y = body_mass_g), alpha = 0.5)
  

