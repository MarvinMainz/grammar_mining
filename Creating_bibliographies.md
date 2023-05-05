# Creating bibliographies

This is both a more specific instruction on how we create bibliographies for sets of languages in our general data acquisition process for linguistics descriptions and a documentation of the steps taken, updated whereever the workflow is updated.

0. What I (MM) did for preparation: I performed step1 ("defining the scope") of our data acquisition process, including creating a [checklist](SA_grammar_mining_checklist.ods) to document the progress.
For creating a comprehensive bibliography (or bibliographies for each language, depending on your understanding), I enriched this checklist with the steps that need to follow, which are described below.
I have also downloaded all the references for South America from Glottolog, divided into grammars, grammarsketches, dictionaries and phonology references. The format of these files containing references is bibtex (.bib), thus: SA_doctype_phonology_glottolog-refs.bib (and the rest with the same formula, only differing after "doctype_"). Bibtex files may be opened in a texteditor, just like this file, or, among other things, they may be imported into Zotero.


1. Set up Zotero, download and install the addons "Zotfile", "Better bibtex for Zotero", "DOI manager", "Zutilo" and "Zotero OCR".

2. Import the bib-files and create collections (folders within the Zotero library) for each doctype (using the respective doctype as name of the collection).

3. Then we want to assign tags to the references. In a first step, we will first tag the Glottocode, (main) name of the language and language family in the reference.
With the new version of the bibtex Files, you can read the language name directly from the Zotero item (in the right "item" pane, under "extra" it will be listed under "tex.lgcode"). However, the glottocode and family name need to be retrieved from the (checklist) (SA_grammar_mining_checklist.ods) I sent you.

4. Delete every item, which is either a) directly doubled (which happens sometimes; Zotero can help you with that, but you will have to double-check) or b) if there is a thesis/manuscript version and a published version (and probably c) other miscellaneous cases).
For the cases in (a) Zotero has a collection called "Duplicate Items" and helps you merging those duplicates with one another. For (b), see the document ["duplicate reduction"](duplicate_reduction.md).

5. Now we want to add anything that might have escaped the bibliography in Glottolog. Search for references, using the language name and its alternatives (which may be found on Glottolog, right-side pane). Look at least on [worldcat](https://www.worldcat.org/) and google scholar. If you do find something, try adding it to Zotero collection by copying an ID like DOI or ISBN ideally (double-check that the import worked correctly!).

Note: we expect rather few truly helpful additional references (many references with the language name in the title may be ethnographical); use common sense to classify and discern! Don't take up too much time, focus on the languages where the bibliography is scarce!

6. Again tagging: now that we have our updated bibliography for every language, we want to tag the **"most extensive description" (MED)** of every language, which is the grammatical description with the most pages (if there is a tie, please report). We use the definition used in [Glottolog](https://glottolog.org/meta/glossary#sec-mostextensivedescriptionmed):

> "The Most Extensive Description (MED) for a language is the longest document of the highest ranking document type. From highest to lowest, the ranking is grammar, grammar sketch, dictionary/phonology/specific feature/text, wordlist, followed by the remaining document types. Note that 'description' here refers to grammatical description rather than, e.g., lexical documentation, so grammar trumps dictionary."

That means: a dictionary/phonology/specific feature document can only be the MED if there is no grammar or grammar sketch available at all.
Additionally: If there is a tie of two documents of the exact same length, we will tag both as MED.

We also want to tag the **most recent description (MRD)**, judged by the year of (first) publication. The rules for MEDs shall also apply to MRDs.
One of the reasons why the interplay of MED and MRD is interesting, is the following: Sometimes, one author has written 2 versions, and the older one is the longer one and the shorter one is the more recent one; thus, the MED would be the older one; but often, the author only digested his older work into a more readable and thought-through shorter version, which is the newer one.

Note:
If references are tagged for more than one language, it might be tagged with MED or MRD for one language, whereas it might not be the MED/MRD for one or more of the other languages. To differentiate between them, we added the glottocode of the language that is meant as a suffix ("_glottocode_of_languoid").


(7. If we have time, we can also tag for another information: the endangerment status of the language. Glottolog usually provides (taken from Ethnologue), what the current status of any language supposedly is. We want to tag this information, esp. so that we are able to discern "living" and "dead" languages.)


Some additional notes:
- open checklist ideally in LibreOffice or OpenOffice
- keep the checklist updated
- make notes whenever something unexpected happens (on checklist or in Zotero)
- save changes often
- after each session, export the Zotero Bibliography in 2 different formats (Better Bibtex, Better Biblatex and/or Zotero RDF) and make a back-up of it and the checklist
- send me the most updated version of the Bibliography and the checklist on a fixed day every two weeks
