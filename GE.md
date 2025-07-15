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
progress:
---
📫 Inbox, 📌 In Progress, ✅ Done, ❕Low, ❗Medium,‼️High

status:: 📫 Inbox
priority::❕Low
# GE
- [x] Hello
- [x] e
- [ ] 2
- [ ] 

```dataviewjs
const page = dv.current();
const total = page.file.tasks.length;
const done = page.file.tasks.filter(t => t.completed).length;
const percent = total === 0 ? 0 : Math.round((done / total) * 100);
dv.paragraph(`![progress](https://progress-bar.xyz/${percent}/)`);
```

