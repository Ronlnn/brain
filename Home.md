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

dv.paragraph(`📁 Всего заметок: **${totalPages}**`);
dv.paragraph(`❗ Решено проблем: **${totalProblems}**`);
dv.paragraph(`📚 Прочитано книг: **${totalBooks}**`);

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

