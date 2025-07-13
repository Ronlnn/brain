---
banner: "![[_attachments/pixel-banner-images/greenIt.png]]"
banner-x: 43
banner-y: 27
banner-display: auto
banner-repeat: false
---
```dataviewjs
// Решенные проблемы
let totalProblems = 0;
for (let page of dv.pages("")) {
  if (page.problems) {
    totalProblems += Number(page.problems);
  }
}
// Все заметки
let totalPages = dv.pages("").length;

// Прочитанные книги
let totalBooks = 0;
for (let page of dv.pages('"1 Books"')){
	if(page.status === "✅ Done"){
		totalBooks += 1;
	}
}

dv.header(2,`📁 Всего заметок: **${totalPages}**`);
dv.header(2,`❗ Решено проблем: **${totalProblems}**`);
dv.header(2,`📚 Прочитано книг: **${totalBooks}**`);

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


