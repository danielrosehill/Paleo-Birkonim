# Paleo Birkonim

Birkonim (ברכנים) from my wedding, written in Paleo Hebrew (כתב עברי) — the ancient Hebrew script used during the times of the Tanakh.

These were manually typed up in Paleo Hebrew. If you are printing a copy, please treat the material with the appropriate reverence and discard in a genizah.

## PDF Output (ready to print)

- [Paleo Hebrew Only](output/paleo-only.pdf) — Full Birkat HaMazon in Paleo Hebrew script
- [Separated](output/separated.pdf) — Conventional Hebrew first, then Paleo Hebrew
- [Bentschers](output/bentschers.pdf) — Each phrase interleaved: conventional then Paleo

## Proofreading

The Hebrew text is stored in JSON files under `content/` in conventional (square) script, making it easy to proofread before rendering:

- [`content/paleo_only.json`](content/paleo_only.json)
- [`content/separated.json`](content/separated.json)
- [`content/bentschers.json`](content/bentschers.json)

## Building

Requires [Typst](https://typst.app/). The Typst templates read the JSON content and convert Hebrew characters to Phoenician Unicode (U+10900–U+1091F) at build time.

```bash
./build.sh
```

## Project Structure

```
content/          # Hebrew text in JSON (conventional script, for proofreading)
typst/            # Typst templates
  lib.typ         # Shared library (Hebrew→Paleo conversion, styling)
  paleo-only.typ  # Paleo-only layout
  separated.typ   # Separated layout
  bentschers.typ  # Interleaved layout
fonts/            # Paleo Hebrew fonts
output/           # Generated PDFs
odt/              # Original ODT source files (legacy)
pdf/              # Original PDF exports (legacy)
```

## Note

These birkonim have not been fully proofread. Use with care.

## Related

This repository is part of a broader Paleo Hebrew project. See the main repository:

- [Paleo-Hebrew](https://github.com/danielrosehill/Paleo-Hebrew)
