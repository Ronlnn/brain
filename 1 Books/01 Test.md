---
cssclasses:
  - cards
  - cards-cover
  - cards-1-1, table-max, cards-cols-4
---

```dataview
TABLE WITHOUT ID
  "![](" + cover + ")" AS "Обложка",
  file.link AS "Книга",
  status AS "Статус",
  rating AS "Рейтинг",
  "<progress max='100' value='" + 
    (round((number(pages_read) / number(pages)) * 100)) + 
    "' style='width:100%; height:6px;'></progress> " + 
    (round((number(pages_read) / number(pages)) * 100)) + 
    "% (" + pages_read + "/" + pages + ")" AS "Прогресс"
FROM #books
WHERE !contains(file.path, "_templates/📘Book")
```
