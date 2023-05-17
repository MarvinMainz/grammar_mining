# loading necessary packages
library(tidyverse)
library(stringr)
library(readr)

# specify home directory; important: all files used must be in this folder!
## setwd("/home/marvin/R")

# importing data
bib <- read_file("SA_alldoctypes_glottolog-refs.bib")
# bib1 <- read_file("SA_doctype_grammarsketch_glottolog-refs.bib")
# bib2 <- read_file("SA_doctype_phonology_glottolog-refs.bib")
# bib3 <- read_file("SA_doctype dictionary_glottolog-refs.bib")
# bib1 <- read_file(SA_doctype_grammar_glottolog-refs.bib")


# extracting the filenames 
  # bestfn only gives the best version
  # pdfs gives you all available documents (which may be necessary, because in some cases, bestfn is left blank)
bestfn <- str_match_all(bib, regex('bestfn     = \\{(?<target>.*)\\}'))
# pdfs <- str_match_all(bib, regex('\\{(?<target>.*\\.pdf)\\}'))


# adapt the document names to our needs
bestfn <- bestfn %>%
  as_tibble(.name_repair = ~ "target", ncol = 1) %>% 
  unique()

bestfn <- bestfn %>% 
  transmute(target = target)

# write to file
write_csv(bestfn, "SA_alldoctypes_bestfn.csv", col_names = FALSE)
