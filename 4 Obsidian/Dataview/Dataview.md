---
tags:
  - obsidian
zero-links: "[[00 Obsidian]]"
---

>[!important] Связанное
>```dataview
TABLE WITHOUT ID
file.link AS "Файл", file.frontmatter["zero-links"] AS "Связь"
FROM [[Dataview]]
WHERE file.name != "Dataview"


