```dataviewjs
const pages = dv.pages('"00 Planning"'); // или = dv.current().file.inlinks
let rows = [];

for (let page of pages) {
    const status = page.status ?? "—";
    const progress = parseInt(page.progress ?? 0);
    const bar = `![bar](https://progress-bar.dev/${progress}/?width=200&fg=4ade80&bg=e5e7eb)`;

    rows.push([page.file.link, status, `${progress}%`, bar]);
}

dv.table(["Файл", "Статус", "Прогресс", "Бар"], rows);

```
