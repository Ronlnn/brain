```dataviewjs
const current = dv.current();
const pages = current.file.inlinks.map(link => dv.page(link.path)).filter(p => p);

let rows = [];

for (let page of pages) {
    const status = page.status ?? "—";
    const progress = parseInt(page.progress ?? 0);
    const bar = `![bar](https://progress-bar.xyz/${progress}/?width=200&fg=4ade80&bg=e5e7eb)`;

    rows.push([page.file.link, status, `${progress}%`, bar]);
}

dv.table(["Файл", "Статус", "Прогресс", "Бар"], rows);

```
