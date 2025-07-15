---
banner: "![[_attachments/pixel-banner-images/astraunaft.jpg]]"
banner-x: 49
banner-y: 54
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
// Выполненные проекты-задачи
let totalProjects = 0;
for (let page of dv.pages('"6 Projects"')){
	if(page.status === "✅ Done"){
		totalProjects += 1;
	}
}
// Выполненные задачи
let totalTasks = 0;
for (let page of dv.pages("")){
	if(page.tasks === "-[x]"){
	totalTasks += 1;
	}
}

dv.header(2,`📑 Всего заметок: **${totalPages}**`);
dv.header(2,`❗ Решено проблем: **${totalProblems}**`);
dv.header(2,`📁 Выполнено проектов: **${totalProjects}**` );
dv.header(2,`✅ Выполненные задачи: **${totalTasks}**`)
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

## 📁 Мои Проекты
```dataviewjs
const current = dv.pages('"6 Projects"');
const pages = current.file.inlinks
    .map(link => dv.page(link.path))
    .filter(p => p && p.file.name !== "📁Projects");

let rows = [];

for (let page of pages) {
    const status = page.status ?? "—";
    const priority = page.priority;
    let deadline = page.deadline;

    // Асинхронно читаем содержимое файла для подсчёта задач
    const content = await app.vault.read(app.vault.getAbstractFileByPath(page.file.path));
    
    // Считаем задачи
    const tasks = content.match(/- \[[ xX]\] .*/g) || [];
    const total = tasks.length;
    const done = tasks.filter(t => /^- \[[xX]\]/.test(t)).length;

    // Рассчитываем прогресс и создаём прогресс-бар
    const percent = total === 0 ? 0 : Math.round((done / total) * 100);
    const width = 200;
    const bar = `![progress](https://progress-bar.xyz/${percent}/?width=${width})`;

    // Добавляем в строки таблицы
    rows.push([page.file.link, status, priority, deadline, bar]);
}

// Сортировка по Приоритету
const order = { high: 3, medium: 2, low: 1 };
const clean = (text) => {
    return text?.toLowerCase()?.replace(/[^\w]/g, "") ?? "";
};
rows.sort((a, b) => {
    const pa = order[clean(a[2])] ?? 0;
    const pb = order[clean(b[2])] ?? 0;
    return pb - pa;
});

// Вывод таблицы
dv.table(["Проект", "Статус", "Приоритет", "Дедлайн", "Прогресс"], rows);

```
- [x] ff
- [ ] 