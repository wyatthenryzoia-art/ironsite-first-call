# Template

The deliverable is a single self-contained HTML file in `dist/`. Styles, data, and markup all live inline. There is no separate template, stylesheet, or JS file to keep in sync.

If a future build needs a reusable template, extract the `<style>` block and the section scaffolding from `dist/Ironsite_FirstCall_Limbach.html` into `index.template.html` / `style.css` and replace the Limbach-specific content with placeholders.

Decision logged: single-file wins over multi-file for this deliverable because the file is meant to be sent by email, opened offline, and printed to PDF without dependencies.
