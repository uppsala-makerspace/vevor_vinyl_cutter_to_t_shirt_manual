# vevor_vinyl_cutter_to_t_shirt_manual

![Our Vevor vinyl cutter from an isometric perspective](vevor_vinyl_cutter_isometric.jpg)

Manual for using the Vevor vinyl cutter to create a T-shirt:

- [Website friendly](https://uppsala-makerspace.github.io/vevor_vinyl_cutter_to_t_shirt_manual/guide.html)
- [Printer friendly](guide.pdf) (PDF)

[Contributions are welcome](CONTRIBUTING.md)!

## Some SVGs

Filename                                                |Thumbnail                                                                    |Description
--------------------------------------------------------|-----------------------------------------------------------------------------|---------------------------
[R_written.svg](R_written.svg)                          |![R_written_thumbnail.png](R_written_thumbnail.png)                          |A handwritten character `R`
[timeseries_horizontal.svg](timeseries_horizontal.svg)  |![timeseries_horizontal_thumbnail.png](timeseries_horizontal_thumbnail.png)  |A timeseries
[timeseries_vertical.svg](timeseries_vertical.svg)      |![timeseries_vertical_thumbnail.png](timeseries_vertical_thumbnail.png)      |A timeseries
[UMS_logo_18.svg](UMS_logo_18.svg)                      |![UMS_logo_18_thumbnail.png](UMS_logo_18_thumbnail.png)                      |UMS logo
[UMS_logo_18_no_letters.svg](UMS_logo_18_no_letters.svg)|![UMS_logo_18_no_letters_thumbnail.png](UMS_logo_18_no_letters_thumbnail.png)|UMS logo without the letters
[UMS_logo_18_lite.svg](UMS_logo_18_lite.svg)            |![UMS_logo_18_lite_thumbnail.png](UMS_logo_18_no_letters_thumbnail.png)      |Minimal version of UMS logo
[utusho.svg](utusho.svg)                                |![utusho_thumbnail.png](utusho_thumbnail.png)                                |Logo inspired by [Utsuho Reiuji](https://en.touhouwiki.net/wiki/Utsuho_Reiuji)

## Files used by continuous integration scripts

Filename                              |Descriptions
--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)    |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)    |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)        |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
