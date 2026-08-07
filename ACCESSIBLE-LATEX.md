# Accessible LaTeX — quick reference

Setup on this machine: TeX Live 2026 at `~/texlive/2026`, user-owned (no sudo needed
for `tlmgr install`). TeX Live 2020 is still at `/usr/local/texlive/2020` and untouched.

## Two kinds of document

**Ordinary documents — nothing changes.** Problem sets, exams, scratch notes, drafts.
Write them the way you always have and compile with `pdflatex`. TeX Live 2026 is just a
newer TeX Live; everything you know still works.

**Documents students read as documents** — syllabi, handouts, lecture notes, anything
posted for a course. These get three lines of boilerplate.

## The boilerplate

```latex
% !TEX program = lualatex
\DocumentMetadata{lang=en-US, pdfversion=2.0, testphase={phase-III,math}}
\documentclass[11pt]{article}
```

`\DocumentMetadata` must be the first **command** in the file — comments above it are
fine, which is why the `% !TEX program` directive can sit on line 1.

Then compile with **lualatex**. `pdflatex` will fail outright on `\DocumentMetadata`.

The `% !TEX program` line is what makes VimTeX's `\ll` use lualatex instead of its
default pdflatex. It travels with the file, so no vimrc changes.

If you keep a `.latexmkrc` in the folder, command-line `latexmk` picks it up too:

```perl
# lualatex is required: \DocumentMetadata (PDF/UA tagging) does not work under pdflatex.
$pdf_mode = 4;
```

### Checking it worked

```bash
python3 -c "
from pypdf import PdfReader
r = PdfReader('yourfile.pdf'); root = r.trailer['/Root']
print('tagged:', '/StructTreeRoot' in root,
      '| Marked:', (root.get('/MarkInfo') or {}).get('/Marked'),
      '| Lang:', root.get('/Lang'))
"
```

Want: `tagged: True | Marked: True | Lang: en-US`.

## Habits that matter more than the boilerplate

Adopt these gradually. They help whether or not a document is tagged, and they are what
makes an eventual HTML conversion good.

- **Real `\section{}`, never `\textbf{}` for headings.** This is the big one. Bold text
  carries no structure at all — a screen reader user cannot navigate by it and gets no
  PDF bookmarks. Add `\setcounter{secnumdepth}{0}` if you do not want numbers shown.
- **`\href{url}{descriptive text}`** rather than a bare `\url{}`. Screen readers read
  the entire URL aloud otherwise. Put the bare address in parentheses afterward if the
  document will be printed.
- **Alt text on figures**, once you have any.
- **Label–value lists** (instructor, office, email …) belong in a `description`
  environment, not a run of bold paragraphs.

## Math papers

Headings: **same rule, but you are probably already doing it.** Papers use `\section{}`
naturally, so the `\textbf{}` pseudo-heading problem is a handout problem, not a paper
problem.

What differs is everything around the math:

- **Do not put `\DocumentMetadata` in a journal submission.** Publishers want their own
  class file and plain source; extra packages can break their production pipeline. AMS
  runs its own `texml` toolchain to produce accessible output from what you send.
- **For preprints you post yourself, it matters more.** arXiv generates HTML from your
  LaTeX automatically, and the quality of that HTML depends on how semantically you
  wrote the source. Check arXiv's HTML preview — it reports conversion problems.
- **Write semantically, not visually.** Use `amsthm` environments rather than
  hand-rolled bold-and-italic; `\eqref` and `\label` rather than hard-coded numbers;
  named macros (`\newcommand{\Rn}{\mathbb{R}^n}`) rather than ad-hoc formatting;
  `\text{}` inside math rather than `\mbox`. The AMS guidance puts it as: let go of
  fine-grained layout control.
- **Avoid images of math.** A `tikz-cd` diagram converts; a scanned or drawn commutative
  diagram does not.
- If you ever do tag a math-heavy document, load **`unicode-math`** — the tagging code
  warns when it is absent, because it needs the Unicode math structure to tag formulas
  properly.

## Caveats

Tagging is officially `testphase`, so the interface may shift in future TeX Live
releases. Re-test each August rather than assuming it keeps working silently.

For genuinely math-heavy material, AMS's position is that **HTML/EPUB beats PDF** —
tagged PDF math is still immature. Tools they name: LaTeXML, PreTeXt, Pandoc, and the
AMS `texml` toolchain.

## Background

- AMS, [Guidance for Making Mathematics Accessible Online](https://www.ams.org/accessibility/accessibility-guidance)
- Driver: 2024 DOJ final rule under ADA Title II, WCAG 2.1 Level AA. Compliance required
  by **April 2027** for institutions serving more than 50,000 people, including higher
  education.
- Campus accessibility staff and librarians are a real resource — AMS explicitly
  suggests using them.
