# darktable-refcard
A reference card for the darktable 2.0 photography workflow application.

The darktable home is at [http://www.darktable.org/](http://www.darktable.org/ "darktable homepage")

# Variants

The refcard is produced in different variants related to:

* Paper size
* Color style
* Language

Currently supported are:

* Paper size: A4, Letter
* Color style: bright, dark
* Language: English, German, (French template exists but needs translation)

Combinations of these are generated so that people can choose their preferred one.

# Releases

Pre-built PDF versions of the reference card are available under [Releases](https://github.com/x9foo/darktable-refcard/releases).

# Building

Building the refcards from source requires Bash, GNU Make and pdfLaTeX.


```bash
cd src
./generate-latex.sh
make
```

# Copyright and License

This reference card is Copyright (C) 2015,2016 Mark Richters. It uses material from the darktable application which is licensed under GPL v3 and copyrighted by the darktable project (see http://www.darktable.org). The source code of this refcard is licensed under GPL v3. The generated PDF output is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License (http://creativecommons.org/licenses/by-sa/4.0/).
