---
name: html-to-pdf-export
description: Use when converting HTML pages, educational materials, documentation, dashboards, or app-like HTML into printable or saved-as-PDF output, especially when preserving design while hiding buttons, controls, filters, navigation, or planning PDF links/forms/QR codes.
---

# HTML to PDF Export

## Purpose

Use this skill to prepare a beautiful HTML page for PDF export. The default goal is a PDF estatico bonito: keep the content, hierarchy, typography, colors, cards, and visual polish, while removing controls that only make sense on screen.

## First Decision

Choose the export mode before editing:

- **Mode 1: PDF estatico bonito** - default. The browser's print flow or Salvar como PDF should produce a clean, readable PDF.
- **Mode 2: PDF interativo** - advanced. Add navigation aids such as links internos, external links, simple form affordances, or QR codes, while accepting PDF limitations.

If the source HTML is simple, add print CSS to the original file. If it is very interactive, create a separate `print.html` or `<name>.print.html` that expands important content and removes app controls.

## Mode 1: Static Beautiful PDF

Preserve:

- headings, sections, cards, callouts, tables, images, typography, colors, and spacing;
- the reading order and the visual hierarchy that made the HTML useful;
- links, with visible URL text when that helps offline reading.

Hide or simplify:

- botoes, inputs, menus, filters, tabs, toolbars, floating actions, modals, animations, hover-only content, and app navigation;
- decorative backgrounds that waste ink or reduce contrast;
- duplicated UI chrome that does not help reading.

Add or improve:

```css
@media print {
  .no-print,
  button,
  input,
  select,
  textarea,
  nav,
  .toolbar,
  .filters {
    display: none !important;
  }

  body {
    background: #fff !important;
    color: #111 !important;
  }

  a {
    color: inherit;
    text-decoration: underline;
  }

  .card,
  section,
  figure,
  table {
    break-inside: avoid;
  }

  h1,
  h2,
  h3 {
    break-after: avoid;
  }
}
```

Use `@page` when page size and margins matter:

```css
@page {
  size: A4;
  margin: 14mm;
}
```

## When To Create `print.html`

Create a separate print file when:

- important content is hidden behind tabs, accordions, filters, pagination, or JavaScript state;
- the app layout has sidebars, sticky panels, or dashboards that would print poorly;
- the PDF should be sent by WhatsApp, opened on a phone, or read offline as a simple document;
- the original HTML should remain interactive and the PDF should be a linear reading version.

In `print.html`, copy only the content needed for reading, expand hidden sections, keep the visual identity, and remove interactive controls.

## Mode 2: Interactive PDF

Treat PDF interativo as limited navigation, not as an HTML app inside a PDF.

Good candidates:

- links internos from a table of contents to sections;
- external links to sources, forms, videos, dashboards, or the original HTML;
- QR codes pointing to the live interactive HTML;
- checklists and simple form-like fields when the target viewer supports them.

Avoid promising:

- reliable JavaScript inside PDF;
- real filters, dashboards, tabs, animations, or complex widgets;
- browser-like interactions across all PDF readers.

For rich interaction, prefer a static PDF plus QR codes or links back to the HTML.

## Export Options

- **Manual:** open the HTML in a browser, choose Print, then Salvar como PDF. Check "background graphics" if the design depends on background colors.
- **Browser headless:** use Chrome or Chromium print-to-PDF only when available and allowed in the environment.
- **Two-file workflow:** maintain `material.html` for interaction and `material.print.html` for PDF.

## Quality Checklist

Before calling the PDF ready, verify:

- botoes, filters, inputs, navigation, and toolbars do not appear in the PDF;
- all important text is visible without needing clicks;
- cards, tables, headings, and images are not cut awkwardly across pages;
- contrast is readable on phone screens and on paper;
- margins are comfortable;
- links internos and external links work when used;
- QR codes are large enough and have surrounding whitespace;
- the exported PDF is opened once after generation.

## Common Mistakes

- Hiding controls but also hiding the content they controlled.
- Leaving only the active tab in the PDF.
- Making the PDF plain when the user wanted to preserve the HTML's design.
- Printing dark theme unchanged when it hurts readability.
- Calling a PDF "interactive" when it only works in one viewer.
