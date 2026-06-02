# Local Fonts

Put licensed font files here if you need fully reproducible cross-platform output.

The template will automatically use these filenames when all required files are present:

```text
fonts/simsun.ttc    # 宋体
fonts/simhei.ttf    # 黑体
fonts/simkai.ttf    # 楷体
fonts/times.ttf     # Times New Roman Regular
fonts/timesbd.ttf   # Times New Roman Bold
fonts/timesi.ttf    # Times New Roman Italic
fonts/timesbi.ttf   # Times New Roman Bold Italic
```

These fonts are commonly available from a licensed Windows or Office installation. Do not redistribute them unless your license allows it.

If CJK fonts are incomplete, the class falls back to TeX Live Fandol fonts and avoids platform-specific CJK font probing. If Times files are incomplete, it tries system Times New Roman first and then TeX Gyre Termes.
