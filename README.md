# vevor_vinyl_cutter_to_t_shirt_manual

[![DOI](https://zenodo.org/badge/846631753.svg)](https://doi.org/10.5281/zenodo.21810312)

![Our Vevor vinyl cutter from an isometric perspective](docs/vevor_vinyl_cutter_isometric.jpg)

Manual for using the Vevor vinyl cutter to create a T-shirt:

- [Website friendly](https://richelbilderbeek.github.io/vevor_vinyl_cutter_to_t_shirt_manual/)
- [Printer friendly](docs/pdfs/guide.pdf) (PDF)
- [Superguide](docs/pdfs/super_guide.pdf) (PDF): also contains the vinyl cutter manual and a vinyl manual

[Contributions are welcome](https://richelbilderbeek.github.io/vevor_vinyl_cutter_to_t_shirt_manual/CONTRIBUTING/)!

## Files used by continuous integration scripts

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Filename                              |Descriptions
--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)    |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)    |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)        |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
