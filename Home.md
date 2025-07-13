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
let totalProblems = 0;
for (let page of dv.pages("")) {
  if (page.problems) {
    total += Number(page.problems);
  }
}
// Все заметки
let totalPages = dv.pages("").length;


dv.paragraph(`📁 Всего заметок: **${totalPages}**`);
dv.paragraph(`❗Решено проблем: **${totalProblems}**`);

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

