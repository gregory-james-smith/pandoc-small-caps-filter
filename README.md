# Pandoc Small Caps Filter

Pandoc Lua filter for transforming bold italics into small caps. This filter is agnostic to the output format.

## Script

```
pandoc -s -f markdown -t html --lua-filter pandoc-small-caps-filter.lua demo.md -o demo.html
pandoc -s -f markdown -t latex --lua-filter pandoc-small-caps-filter.lua demo.md -o demo.tex
pandoc -s -f markdown -t pdf --lua-filter pandoc-small-caps-filter.lua demo.md -o demo.pdf
```
