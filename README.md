# "grammar mining"
This is a repository for things, which are related to the systematic extraction of information from grammatical descriptions. 
This means linguistic descriptions of languages are the target; not to be confused with the computational term "grammar mining".

## Workflow Documentation
A couple of text (markdown) files describe the workflow used in the project. 
The basic outline is described in [workflow.md](workflow.md).
Specific steps of the workflow are explained in more depth in the files [Creating_bibliographies.md](Creating_bibliographies.md), [duplicate_reduction.md](duplicate_reduction.md) and [Acquire_sources.md](Acquire_sources.md).   

## Defining the scope
The R script [SA_scope_languoids.R](SA_scope_languoids.R) is used for the filtering of languoids used in the sample (using input from [Glottolog](https://glottolog.org/)), cf. [workflow.md](workflow.md).

## Link extraction
As input for the [download script](downloading_script_v2.2.4_flexible.py), we need a list of filenames (stored as csv). This list is extracted from a bib file (cf. [Creating_bibliographies.md](Creating_bibliographies.md)) using [filename_extraction_glottolog_v3.R](filename_extraction_glottolog_v3.R).

One version of the output of the filename extraction can be found here as well (*pigritiae causa vel* for reasons of convenience): [SA_alldoctypes_bestfn.csv](SA_alldoctypes_bestfn.csv). Note that this is not necessarily the output of the *current* version of the script and it doesn't claim to be; it's only there for testing the script below without having to create a file yourself. 

## Download script
THe file [downloading_script_v2.2.4_flexible.py](Downloading/downloading_script_v2.2.4_flexible.py) is a python3 script, which takes as input a csv file (cf. above) 
and downloads the specified items from the (**not publically accessible!**) website gramfinder.
If you want to customize the script: The input file needs to specify the latter part of the URL (i.e. the folder), in the format "/macro-area/author_keywordYear(\_suffix).pdf" like "eurasia\zydenbos_kannada2011_o.pdf" (can be found in the bib-files from [Glottolog](https://glottolog.org/)).
(Note: this is my first python script; it's rather basic, and you may receive a warning about the security of the session - however, 
as I have been told by the owner of the website, this is at current unavoidable. You may, of course, report any issues via an issue, DM or pull request.)
