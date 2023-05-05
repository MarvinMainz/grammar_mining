# loading necessary packages
library(tidyverse)
library(stringr)
library(readr)

# specify home directory; important: all files used must be in this folder!
## setwd("/home/marvin/R")

# importing data
bib <- read_file("SA_doctype_grammar_glottolog-refs.bib")
bib <- read_file("../../grammar mining/SA_doctype_grammar_glottolog-refs.bib")

# bib1 <- read_file("SA_doctype_grammarsketch_glottolog-refs.bib")
# bib2 <- read_file("SA_doctype_phonology_glottolog-refs.bib")
# bib3 <- read_file("SA_doctype dictionary_glottolog-refs.bib")

# extracting the filenames from the data; bestfn only gives the best version
# pdfs gives you all available documents (which may be necessary, because in some cases, bestfn is left blank)
bestfn <- str_match_all(bib, regex('bestfn     = \\{(?<target>.*)\\}'))
pdfs <- str_match_all(bib, regex('\\{(?<target>.*\\.pdf)\\}'))

bestfn %>% str
bestfn %>% head
pdfs %>% str
pdfs %>% head

# adapt the document names to our needs
bestfn <- bestfn %>% 
  unlist() %>% 
    as_tibble(bestfn, .name_repair = ~ "target")
bestfn2 <- tail(bestfn, n = (nrow(bestfn)/2))
bestfn2 <- unique(bestfn2)

# note: in contrast to bestfn, pdfs has to be further processed before used in downloading script etc 
pdfs <- pdfs %>% 
  unlist() %>% 
  as_tibble(pdfs, .name_repair = ~ "target")
pdfs2 <- tail(pdfs, n = (nrow(pdfs)/2))
pdfs2 <- unique(pdfs2)

# write to file
write_csv(bestfn2,"SA_grammars_bestfn.csv", col_names = FALSE)
write_csv(pdfs2,"SA_grammars_PDFs.csv", col_names = FALSE)

##

bib <- read_lines("../../grammar mining/SA_doctype_grammar_glottolog-refs.bib")
bib <- read_file("../../grammar mining/SA_doctype_grammar_glottolog-refs.bib")

bib_2 <- str_split(bib, "@")
bib_2[[1]]

get_data <- function(tmp) {
    tmp <- str_split(str_remove_all(tmp, " "), "\n")[[1]]
    pdfs <- unique(unlist(str_split(str_remove_all(
        tmp[str_detect(tmp, "\\.pdf")],
        ".+=\\{|\\},"
    ), ",")))
    if (is.null(pdfs))
        pdfs <- "NULL"
    lgcode <- str_remove_all(tmp[str_detect(tmp, "lgcode")], "\\},|lgcode=\\{")
    data.frame(code = lgcode, pdfs = pdfs)
}


data.frame(code = "lgcode", pdfs = "NULL")

get_data(bib_2[[1]][100])

bib_3 <- bib_2[[1]][2:539]

tmp1 <- str_split(str_remove_all(bib_3[53], " "), "\n")[[1]]
tmp1

pdfs <- unique(unlist(str_split(str_remove_all(
    tmp1[str_detect(tmp1, "\\.pdf")],
    ".+=\\{|\\},"
), ",")))
tmp2 <- pdfs

is.null(tmp2)


lgcode <- str_remove_all(tmp1[str_detect(tmp1, "lgcode")], "\\},|lgcode=\\{")
lgcode

res <- lapply(bib_3, get_data) %>% bind_rows()

res

read_csv("~/Documentos/Uni/datasets/typology/wals/")

## ref_id,code,gramfinder_pdf,local_path
## 123,Spanish,spanish.pdf,./grammars/spanish.pdf


## @incollection{Guldemann.2007,
##     location = {Cambridge},
##     title = {The Macro-Sudan belt: towards identifying a linguistic area in northern sub-Saharan Africa},
##     isbn = {978-0-521-87611-7},
##     url = {https://www.cambridge.org/core/books/linguistic-geography-of-africa/macrosudan-belt-towards-identifying-a-linguistic-area-in-northern-subsaharan-africa/E6B107C0FD7AFA6B575EFEE0E65D8786},
##     series = {Cambridge Approaches to Language Contact},
##     shorttitle = {The Macro-Sudan belt},
##     pages = {151--185},
##     booktitle = {A Linguistic Geography of Africa},
##     publisher = {Cambridge University Press},
##     author = {Güldemann, Tom},
##     editor = {Heine, Bernd and Nurse, Derek},
##     urldate = {2021-05-07},
##     date = {2007},
##     file = {Güldemann_2007_The Macro-Sudan belt.pdf:/home/matias/Documentos/Zotero/Güldemann/2007/Güldemann_2007_The Macro-Sudan belt.pdf:application/pdf},
## }
