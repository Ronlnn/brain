---
banner: "![[_attachments/pixel-banner-images/library.png]]"
banner-x: 51
banner-y: 46
cssclasses:
  - cards
  - cards-1-1,
  - cards-cols-4
  - cards-cover
  - table-max,
---
```dataview
TABLE WITHOUT ID
  "![](" + cover + ")" AS "Обложка",
  file.link ,
  author,
  status ,
  rating ,
  "<progress max='100' value='" + 
    (round((number(pages_read) / number(pages)) * 100)) + 
    "' style='width:100%; height:6px;'></progress> " + 
    (round((number(pages_read) / number(pages)) * 100)) + 
    "% (" + pages_read + "/" + pages + ")" AS "Прогресс"
FROM #books
WHERE !contains(file.path, "_templates/📘Book")
SORT status desc
```


