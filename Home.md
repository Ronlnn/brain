---
banner: "![[_attachments/pixel-banner-images/guts-dark.png]]"
banner-x: 58
banner-y: 8
banner-height: 350
banner-fade: 100
icon-image: 
icon:
---
```dataview
table file.name as "Заметка", length(rows) as "Количество решений"
from [[Logs]]
where contains(text, "###")
flatten split(text, "###") as rows

```

