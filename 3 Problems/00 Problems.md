---
tags:
  - problems
---
```dataviewjs
for (let page of dv.pages('[[00 Problems]]')) {
  dv.table(["Name"], [
    [page.file.link]
  ]);
}

```
