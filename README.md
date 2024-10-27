# vevor_vinyl_cutter_to_t_shirt_manual

![Our Vevor vinyl cutter from an isometric perspective](vevor_vinyl_cutter_isometric.jpg)

Manual for using the Vevor vinyl cutter to create a T-shirt:

- [Website friendly](https://uppsala-makerspace.github.io/vevor_vinyl_cutter_to_t_shirt_manual/guide.html)
- [Printer friendly](guide.pdf) (PDF)
- [Superguide](super_guide.pdf) (PDF): also contains the vinyl cutter manual and a vinyl manual

[Contributions are welcome](CONTRIBUTING.md)!

## Overview

```mermaid
flowchart TD
  subgraph get_materials[Get the materials]
    get_vinyl[4.Get vinyl]
    get_t_shirt[3.Get T-shirt]
  end
  subgraph prepare_software[One-time software setup]
    install_inkcut[1.Install inkcut]
    setup_inkcut[2.Setup inkcut]
  end
  subgraph prepare_machines[Prepare machines]
    connect_cutter[Connect the vinyl cutter]
    connect_heat_press[Connect the heat press]
    setup_cutter[Setup the vinyl cutter]
    setup_heat_press[Setup the heat press]
  end
  cut[Cut vinyl]
  prepare_cut_vinyl[Prepare the cut vinyl]
  transfer[Transfer vinyl to T-shirt]
  done[Done!]


  connect_cutter --> setup_cutter
  connect_heat_press --> setup_heat_press
  install_inkcut --> setup_inkcut
  setup_inkcut --> cut
  setup_cutter --> cut

  get_vinyl --> setup_cutter
  get_t_shirt --> setup_heat_press

  setup_heat_press --> |15 minutes| transfer
  cut --> prepare_cut_vinyl
  prepare_cut_vinyl --> transfer

  transfer --> done
```

> Overview of the procedure

## Some SVGs

<!-- Some unavoidable long lines -->
<!-- markdownlint-disable MD013 -->

Filename                                                  |Thumbnail                                                                      |Description
----------------------------------------------------------|-------------------------------------------------------------------------------|---------------------------
[2024_logo_Complex_Black.svg](2024_logo_Complex_Black.svg)|![2024_logo_Complex_Black_thumbnail.png](2024_logo_Complex_Black_thumbnail.png)|2024 UMS logo, complex
[2024_logo_Simple_Black.svg](2024_logo_Simple_Black.svg)  |![2024_logo_Simple_Black_thumbnail.png](2024_logo_Simple_Black_thumbnail.png)  |2024 UMS logo, simple
[2024_logo_Lazy_Black.svg](2024_logo_Lazy_Black.svg)      |![2024_logo_Lazy_Black_thumbnail.png](2024_logo_Lazy_Black_thumbnail.png)      |2024 UMS logo, lazy
[UMS_logo_18.svg](UMS_logo_18.svg)                        |![UMS_logo_18_thumbnail.png](UMS_logo_18_thumbnail.png)                        |2014 UMS logo, complex
[UMS_logo_18_no_letters.svg](UMS_logo_18_no_letters.svg)  |![UMS_logo_18_no_letters_thumbnail.png](UMS_logo_18_no_letters_thumbnail.png)  |2014 UMS logo, simple
[UMS_logo_18_lite.svg](UMS_logo_18_lite.svg)              |![UMS_logo_18_lite_thumbnail.png](UMS_logo_18_lite_thumbnail.png)        |2014 UMS logo, lazy
[R_written.svg](R_written.svg)                            |![R_written_thumbnail.png](R_written_thumbnail.png)                            |A handwritten character `R`
[timeseries_horizontal.svg](timeseries_horizontal.svg)    |![timeseries_horizontal_thumbnail.png](timeseries_horizontal_thumbnail.png)    |A timeseries
[timeseries_vertical.svg](timeseries_vertical.svg)        |![timeseries_vertical_thumbnail.png](timeseries_vertical_thumbnail.png)        |A timeseries
[utusho.svg](utusho.svg)                                  |![utusho_thumbnail.png](utusho_thumbnail.png)                                  |Logo inspired by [Utsuho Reiuji](https://en.touhouwiki.net/wiki/Utsuho_Reiuji)

<!-- markdownlint-enable MD013 -->

## Files used by continuous integration scripts

Filename                              |Descriptions
--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)    |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)    |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)        |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
