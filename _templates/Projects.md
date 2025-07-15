---
prompt: <%* let title = await tp.system.prompt("Имя Проекта?") %><%*let statusOptions = ["📫 ToDo", "📌 Doing", "✅ Done"];let status = await tp.system.suggester(statusOptions,statusOptions);%><%* let priorityOptions = ["❕Low", "❗Medium", "‼️High"]; let priority = await tp.system.suggester(priorityOptions,priorityOptions);%>
tags:
  - planning
  - projects
zero-links: "[[00 Projects]]"
status: <%status%>
priority: <%priority%>
deadline:
---
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
dv.paragraph(`📈 Progress::**${done}/${total}** — ${percent}%`);
dv.paragraph(`![progress](https://progress-bar.xyz/${percent}/?width=${width})`);

```
# <%title%>


## 📅 Задачи

