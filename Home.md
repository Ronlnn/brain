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

```dataviewjs
const statsFile = app.vault.getAbstractFileByPath("5 Resources/code-stats.json");
if (statsFile) {
  const data = JSON.parse(await app.vault.read(statsFile));
  dv.paragraph("Статистика CodeStats:")
  dv.paragraph(`🧠 Всего: **${data.total_xp} XP**`);
  dv.paragraph(`💻 JS: **${data.languages.JavaScript.xps} XP**`);
}
```

- 🧩 **Решено проблем:** `<% tp.user.countProblems() %> `
    
- 📁 **Всего заметок:** `<% tp.user.countNotes() %>`
    
- 📚 **Прочитано книг:** `<% tp.user.countCompletedBooks() %>`

```dataviewjs
let total = dv.pages("").length;
dv.paragraph(`🧩 Всего заметок: **${total}**`);
```

