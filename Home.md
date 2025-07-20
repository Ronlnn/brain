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
let totalTasks = 0;

// Получаем все заметки
for (let page of dv.pages()) {
    const file = page.file;
    if (!file || !file.path) continue;

    const content = await app.vault.read(app.vault.getAbstractFileByPath(file.path));
    
    // Ищем выполненные задачи в тексте
    const matches = content.match(/- \[[xX]\] .*/g);
    if (matches) {
        totalTasks += matches.length;
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
const folderPath = '"6 Projects"';
const excludeSubfolder = "Tasks";

// Получаем все страницы из основной папки, исключая подпапку
const pages = dv.pages(folderPath)
    .filter(p => 
        p.file.path.includes("6 Projects/") &&
        !p.file.path.includes(`6 Projects/${excludeSubfolder}/`)
    )
    .file.inlinks
    .map(link => dv.page(link.path))
    .filter(p => p && p.file.name !== "📁Projects" && p.file.name !== "01 Цели");
    const linkedPages = current.file.inlinks.map(link => dv.page(link.path)).filter(p => p);

let rows = [];

for (let page of pages) {
    if (page.file.path.includes(`6 Projects/${excludeSubfolder}/`)) continue;
    
    const status = page.status ?? "—";
    const priority = page.priority;
    let deadline = page.deadline;

    // Подсчет выполненных и общих задач по статусу страницы (как в вашем примере)
    let doneCount = 0;
    let totalCount = 0;
    
    if (page.status && page.status.toString().toLowerCase().includes("done")) {
        doneCount++;
    }
    totalCount++;

    const percent = totalCount === 0 ? 0 : Math.round((doneCount / totalCount) * 100);
    const width = 200;
    const bar = `![progress](https://progress-bar.xyz/${percent}/?width=${width})`;

    rows.push([page.file.link, status, priority, deadline, bar]);
}

// Порядок сортировки
const statusOrder = {
    "todo": 1, 
    "doing": 2, 
    "done": 3,
    "—": 4
};

const priorityOrder = {
    "low": 1,
    "medium": 2,
    "high": 3
};

const clean = (text) => {
    return text?.toLowerCase()?.replace(/[^\w]/g, "") ?? "";
};

// Сортировка
rows.sort((a, b) => {
    const statusA = clean(a[1]);
    const statusB = clean(b[1]);
    const statusCompare = (statusOrder[statusA] ?? 4) - (statusOrder[statusB] ?? 4);
    
    if (statusCompare !== 0) return statusCompare;
    
    const priorityA = priorityOrder[clean(a[2])] ?? 0;
    const priorityB = priorityOrder[clean(b[2])] ?? 0;
    return priorityA - priorityB;
});

// Вывод таблицы
dv.table(["Проект", "Статус", "Приоритет", "Дедлайн", "Прогресс"], rows);
```
