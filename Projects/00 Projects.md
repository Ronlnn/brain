---
tags:
  - planning
  - projects
cssclass:
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
    //Прогресс и Бар
    const links = page.file?.inlinks;
	let done = 0;
	let total = 0;
	for (let link of links) {
	    const linkedPage = dv.page(link.path);
	    if (!linkedPage || !linkedPage.status) continue;

	    total += 1;
	    if (linkedPage.status.toLowerCase() === "done") {
	        done += 1;
	    }
	}
	const percent = total === 0 ? 0 : Math.round((done / total) * 100);
	const width = 200;
	let bar = (`![progress](https://progress-bar.xyz/${percent}/?width=${width})`);

//Добавляем все в rows
    rows.push([page.file.link, status, priority, deadline, bar]);
}

//Сортировка по Приоритету
const order = { high: 3, medium: 2, low: 1 };
const clean = (text) => {
    return text?.toLowerCase()?.replace(/[^\w]/g, "") ?? "";
};
rows.sort((a, b) => {
    const pa = order[clean(a[2])] ?? 0;
    const pb = order[clean(b[2])] ?? 0;
    return pb - pa;
});

//Сама таблица
dv.table(["Файл", "Статус","Приоритет" , "Дедлайн" , "Прогресс",], rows);
```

