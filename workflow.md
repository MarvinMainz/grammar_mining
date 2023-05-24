# Workflow

 This is a brief sketch of our workflow for extracting information from grammars of South American (Indigenous) langauges (SAILs) in a systematic, comprehensive and reproducible way.

## Outline

For this, we basically need to take the following steps (including loops to incrementally improve the results):

1. **define the scope** of our undertaking (figuring out which languages ought to be included)
2. [**create a bibliography**](Creating_bibliographies.md) for every language involved (list of sources for every language)
3. [**acquire access**](Acquire_sources.md) to all relevant sources (find & download sources)
4. **facilitate access** as much as possible (ideally: making the sources machine-readable; OCR where necessary)
5. **extract information** with clear reference to the source

All in all, this is just the typical academic process in working with literary sources, however, we want to do it in an efficient and well documented way.
This means, we want to automate as much as possible in order to take the least amount of time possible, while still keeping the error rate as minimal as possible. This is a lot to ask, so we have to find the middle ground.

## Websites and tools

We can do it in less or more software-intensive ways, but we will need a few tools and websites.
I am giving the tools and websites we need in the order we would use them and describe how we may use them.

1. Listing linguistic entities
**Glottolog.org**: "languages" (languoids) can be identified in several ways. The easiest (and a widely accepted) way will be to use the Glottocode. [Glottolog](Glottolog.org) provides us with a list of languages, which we can filter for the macroarea of South America (we might want to sort out colonial languages, unattested languages, creoles, pidgins, jargons and sign languages, or at least treat them differently). Every language will be referred to by a uniquely identifying code, the Glottocode. From this, we get a list of languages we can lay out in a document. In this document ("checklist.csv"), we will also note, which steps are done and which steps need to be done for every language.


2. Creating bibliographies
**Glottolog.org**: luckily for us, Glottolog is a bibliographically oriented language catalog. That means, we also get a list of documents, which are related to the languages, even pre-sorted into types like grammar, dictionary etc.

**Worldcat.org** and others: Creating comprehensive bibliographies for every language can and needs to be aided with a quick search in the library catalogue [worldcat](https://www.worldcat.org/), google scholar and possibly other places, in case something is missing in Glottolog - using the language name (and the alternative language names!) which are also provided by Glottolog.

**Zotero**: We will take these bibliographies and import them into Zotero. We will then create language-specific bibliographies by using a tag with their glottocode.
(In Addition: we will also tag the most extensive description (MED) of every language and the most recent description (MRD).)


3. Acquisition of sources
**Gramfinder**: We have access to a huge collection of grammatical descriptions and similar material, on a website called gramfinder, which is not publically available. It has been created by the same person who was the main creator of Glottolog, and thus, they combine very neatly (e.g. Glottolog even points you towards to place on the website where the pdf is stored; downloaded bibliographies from Glottolog contain the attribute/field "bestfn" among others; these when correctly extracted yield (part of) the link to the respective file if available).

**Other websites**: The gramfinder alone will not be enough, and so we will make use of our university library and possibly other websites which host publically available collections of scientific materials.

**Zotero**: We will do two things with the files we have acquired. A) link them to their bibliographic reference in Zotero and B) use a plugin of Zotero to store the files themselves in an orderly fashion (creating specific folders for them and renaming them according to a common schema).

**github.org**: in addition, I created a repository on [github](github.org) - this makes the access to the up-to-date results of our efforts easier and it documents every change, so that errors (e.g. if one has unwittingly changed something) can be detected and especially corrected more easily.



4. Facilitate access
**Zotero / tesseract / other software**: we want to try and find an efficient way to use OCR (optical character recognition) in order to make the documents (which are not already) machine-readable or at least more easily "searchable". More recent files are native PDFs and as such machine-readable; scans from Glottolog are often already OCR-ed (indicated usually by the suffix "_o" on the filename), however a) not all scans are OCR-ed and b) some OCRs are outdated and really bad, so we should very quickly check them and use OCR on them if necessary. Yet, we should not take too much time for performing this step.



5. Extracting information

**libre office calc**: we can use a program like excel (preferrably libre office calc) to create spread sheets for our data, which will be designed depending on the kind of data we want to extract.

**Zotero / Python / other software**: then comes the most interesting part, extracting the relevant information. We can do this in several different ways, which we will probably have to combine in order to yield good results.
That is
a) using python3 to more readily detect sections we are interested in,
b) using the Zotero PDF viewer (marks the specific reference including page(s) when citing)
As a side-note, the Zotero reader allows you to more easily get the specific reference (if you quote something, the reference including page(s) is printed in the target document as well); we should consider whether using this functionality facilitates our job.

That's it, in principle. This workflow may be refined to some degree, however, the basics are clear.


## summary

In summary, we will use 3 or more apps, the most important of which will be **Zotero**. And we will use 5 or more websites, the most important of which are **glottolog** and **gramfinder**.


### responsibilities

The division of labour will be roughly as follows:

MM takes care of step 1, and prepares a basic bibliography using glottolog (step 2, part 1).
SN works on refining this bibliography, modifying and adding to it (step 2).
MM gathers the major part of the documents needed (step 3, part 1), SN will complement this by searching and acquiring the rest (step 3, part 2).
MM takes care of step 4.
MM and SN will work jointly on step 5.
