---
cssclasses:
  - cards
---

```dataview
TABLE without id
  "![](" + cover + ")" AS "Обложка",
  file.link AS "Книга",
  status AS "Статус",
  progressBar AS "Прогресс"
FROM #books
WHERE !contains(file.path, "_templates/📘Book")
```
