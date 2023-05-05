# load packages
library(tidyverse)

# define function for specific filtering

filter_na <- function(tbl, expr) {
  tbl %>% filter({
    {
      expr
    }
  } %>% replace_na(T))
}

# check that directory is correct
getwd()
setwd("/home/marvin/R")

# import data
languoids <- read_csv("languoid.csv")
languoids_geo <- read_csv("languages_and_dialects_geo.csv")

# merge tables
SA_langs <- languoids %>%
  left_join(languoids_geo, by = c("id" = "glottocode"))

# extracting all relevant SA languages (filtering rows)
SA_langs1 <- SA_langs %>%
  filter(macroarea == "South America" &
           level.x == "language" & bookkeeping == FALSE) %>%
filter_na(
  family_id != "uncl1493" # unclassified
  & family_id != "unat1236" # unattested
  & family_id != "book1242" # bookkeeping
#  & family_id != "sign1238" # sign language
#  & family_id != "spee1234" # speech register
#  & family_id != "pidg1258" # pidgin
#  & family_id != "mixe1287" # mixed language
)

# discarding of unnecessary columns (incl. reordering, renaming)
SA_langs2 <- SA_langs1 %>%
  select(id:name.x, latitude.x:longitude.x, country_ids) %>%
  transmute(
    name = name.x,
    glottocode = id,
    glottocode_family = family_id,
    glottocode_parent = parent_id,
    longitude = longitude.x,
    latitude = latitude.x,
    country_ids
  )

# visual check
view(SA_langs2)

# export data
write_csv(SA_langs2, "SA_langs_for_checklist.csv")