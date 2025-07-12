---
tags:
  - problems
---
```dataviewjs
for (let page of dv.pages('[[00 Problems]]')) {
  dv.header(3, page.file.name);
  dv.table("Name",
    page.file.link);
}
```
