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
let totalPages = dv.pages("").length;

let totalProblems = 0;
for (let page of dv.pages('"3 Problems"')) {
  if (page.problems) total += Number(page.problems);
}

dv.paragraph(`📁 Всего заметок: **${totalPages}**`);
dv.paragraph(`❗Решено проблем: **${total}**`);
dv.paragraph(` Решено проблем: **${totalProblems}**`);

```
```dataviewjs


```
```dataviewjs

```
```dataviewjs
const statsFile = app.vault.getAbstractFileByPath("5 Resources/code-stats.json");
if (statsFile) {
  const data = JSON.parse(await app.vault.read(statsFile));
  dv.paragraph("Статистика CodeStats:")
  dv.paragraph(`🧠 Всего: **${data.total_xp} XP**`);
  dv.paragraph(`💻 JS: **${data.languages.JavaScript.xps} XP**`);
}
```
   
- 📚 **Прочитано книг:** `<% tp.user.countCompletedBooks() %>`

