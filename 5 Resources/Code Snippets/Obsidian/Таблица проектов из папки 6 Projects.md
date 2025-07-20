---
tags:
  - resources
zero-links: "[[02 Obsidian]]"
---
```dataviewjs
const folderPath = '"6 Projects"'; // Основная папка
const excludeSubfolder = "Tasks"; // Подпапка для исключения

// Получаем все страницы из основной папки, исключая подпапку
const pages = dv.pages(folderPath)
    .filter(p => 
        p.file.path.includes("6 Projects/") && // Только из нужной папки
        !p.file.path.includes(`6 Projects/${excludeSubfolder}/`) // Исключаем подпапку
    )
    .file.inlinks
    .map(link => dv.page(link.path))
    .filter(p => p && p.file.name !== "📁Projects" && p.file.name !== "01 Цели");

let rows = [];

for (let page of pages) {
    // Дополнительная проверка на случай, если предыдущие фильтры не сработали
    if (page.file.path.includes(`6 Projects/${excludeSubfolder}/`)) continue;
    
    const status = page.status ?? "—";
    const priority = page.priority;
    let deadline = page.deadline;

    const content = await app.vault.read(app.vault.getAbstractFileByPath(page.file.path));
    const tasks = content.match(/- \[[ xX]\] .*/g) || [];
    const total = tasks.length;
    const done = tasks.filter(t => /^- \[[xX]\]/.test(t)).length;

    const percent = total === 0 ? 0 : Math.round((done / total) * 100);
    const width = 200;
    const bar = `![progress](https://progress-bar.xyz/${percent}/?width=${width})`;

    rows.push([page.file.link, status, priority, deadline, bar]);
}

// Порядок сортировки (остаётся без изменений)
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

