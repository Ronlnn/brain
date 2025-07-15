---
prompt: 
tags:
  - planning
  - projects
zero-links: "[[00 Projects]]"
status: 📫 ToDo
priority: ❕Low
deadline:
---
```dataviewjs
const page = dv.current();
const filePath = page.file?.path; // safer access to file path

if (!filePath) {
  dv.paragraph("No file path available.");
} else {
  const content = await app.vault.read(app.vault.getAbstractFileByPath(filePath));
  
  const tasks = content.match(/- \[[ xX]\] .*/g) || [];
  const total = tasks.length;
  const done = tasks.filter(t => /^- \[[xX]\]/.test(t)).length;
  
  const percent = total === 0 ? 0 : Math.round((done / total) * 100);
  const width = 700;
  
  dv.paragraph(`📈 Progress:: **${done}/${total}** — ${percent}%`);
  dv.paragraph(`![progress](https://progress-bar.xyz/${percent}/?width=${width})`);
}

```
# ff


## 📅 Задачи:
- [x] ff
- [x] ffff
- [ ] fff
- [ ] 

## 🥇 Первый шаг:


### 👍 Критерий завершения:
- 

