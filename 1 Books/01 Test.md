---
cssclasses:
  - cards
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
