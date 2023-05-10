# "grammar mining"
This is a repository for things, which are related to the systematic extraction of information from grammatical descriptions. 
This means linguistic descriptions of languages are the target; not to be confused with the computational term "grammar mining".

## Workflow Documentation
A couple of text (markdown) files describe the workflow used in the project.

## Defining the scope
There is an R script (SA_scope_languoids.R) used for the filtering of languoids used in the sample (Glottolog).

## Link extraction
As input for the download script, we need a list of filenames. This can be extracted from a .bib file using filename_extraction_glottolog.R.

## Download script
THe file "downloading_script_v2.2.4_flexible.py" is a python3 script, which takes as input a csv file 
and downloads the specified items from the (not publically accessible) website gramfinder.
The input file needs to specify the latter part of the URL (i.e. the folder), in the format 
"/macro-area/author_keywordyear(_suffix).pdf" like "eurasia\zydenbos_kannada2011_o.pdf" (can be found in the bib-files on Glottolog).
(Note: this is my first python script; it's rather basic, and you may receive a warning about the security of the session - however, 
as I have been told by the owner of the website, this is at current unavoidable. You may of course, report any issues via an issue, DM or pull request.)
