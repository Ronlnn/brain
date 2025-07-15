---
cssclasses:
  - cards
  - cards-cover
  - cards-1-1, table-max, cards-cols-4
---

```dataview
TABLE without id
  "![]("+cover+")",
  file.link ,
  status,
  rating,
  progressBar
FROM #books
WHERE !contains(file.path, "_templates/📘Book")
```
