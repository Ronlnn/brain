---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline: 
priority: ❕Low
status: 📫 Inbox
prompt:
---
📫 Inbox, 📌 In Progress, ✅ Done, ❕Low, ❗Medium,‼️High

status:: 📫 Inbox
priority::❕Low
# GE

## Подзадачи
- [[Task1]]
- [[Task2]]
- [[Task3]]


```dataviewjs
const page = dv.current();
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
const width = 700;
dv.paragraph(`🧩 Прогресс: **${done}/${total}** — ${percent}%`);
dv.paragraph(`![progress](https://progress-bar.xyz/${percent}/?width=${width})`);

```

