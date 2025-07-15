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
  progressBar,
    "<progress max='100' value='" + (round((pages_read / pages) * 100)) + "' style='width:100%; height:6px;'></progress> " + 
  (round((pages_read / pages) * 100)) + "% (" + pages_read + "/" + pages + ")" AS "Прогресс"
FROM #books
WHERE !contains(file.path, "_templates/📘Book")
```
