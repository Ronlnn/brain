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
for (let page of dv.pages('"4 Logs"')) {
  if (page.problems) {
    total += page.problems;
  }
}
dv.paragraph(`🧩 Total solved problems: **${total}**`);

```



