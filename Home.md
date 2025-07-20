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
const current = dv.pages('"6 Projects"');
const pages = current.file.inlinks
    .map(link => dv.page(link.path))
    .filter(p => p && p.file.name !== "📁Projects" && p.file.name !== "01 Цели");

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

// Порядок сортировки
const statusOrder = {
    "todo": 1, 
    "doing": 2, 
    "done": 3,
    "—": 4  // Неопределенные статусы в конец
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
    // Сначала по статусу (To Do > Doing > Done)
    const statusA = clean(a[1]);
    const statusB = clean(b[1]);
    const statusCompare = (statusOrder[statusA] ?? 4) - (statusOrder[statusB] ?? 4);
    
    if (statusCompare !== 0) return statusCompare;
    
    // Затем по приоритету (Low > Medium > High)
    const priorityA = priorityOrder[clean(a[2])] ?? 0;
    const priorityB = priorityOrder[clean(b[2])] ?? 0;
    return priorityA - priorityB;
});

// Вывод таблицы
dv.table(["Проект", "Статус", "Приоритет", "Дедлайн", "Прогресс"], rows);
```
