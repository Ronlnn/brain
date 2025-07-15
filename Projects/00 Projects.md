---
tags:
  - planning
  - projects
cssclasses:
  - projects
---
```dataviewjs
const current = dv.current();
const pages = current.file.inlinks
    .map(link => dv.page(link.path))
    .filter(p => p && p.file.name !== "Projects");

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

