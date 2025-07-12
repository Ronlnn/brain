---
banner: "![[_attachments/pixel-banner-images/guts-dark.png]]"
banner-x: 58
banner-y: 8
banner-height: 350
banner-fade: 100
icon-image: 
icon:
---

```dataviewjs
let total = 0;
for (let page of dv.pages('[[Logs]]')) {
  if (page.problems) {
    total += Number(page.problems); // 🔧 Приведение к числу
  }
}
dv.paragraph(`🧩 Total solved problems: **${total}**`);

```

```habittracker 
{ 
"path": "6 Habits/",
"daysToShow": 90,
"lastDisplayedDate": 
} 
```

