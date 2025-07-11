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
TABLE
FROM "4 Logs"
FLATTEN all(sum(map(file.tasks, (x) => x.completed))) AS "allCompleted"
WHERE !allCompleted
```



