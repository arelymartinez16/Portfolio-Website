---
name: Static preview stylesheet cache
description: A preview-specific caching behavior that can hide updated CSS after editing static HTML/CSS.
---

When changing CSS in this static site, version the stylesheet URL in the HTML if the preview continues rendering the previous styles.

**Why:** The Python static preview can serve the updated file while the preview browser keeps an older `/style.css` response cached, making a correct code change look ineffective.

**How to apply:** Update the query string on the stylesheet link in each HTML page, then take a cache-busted preview screenshot to verify the visual result.