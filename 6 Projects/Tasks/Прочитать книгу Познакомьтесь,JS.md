---
prompt: 
zero-links: "[[Первая работа]]"
tags:
  - planning
status: 📌 Doing
priority: ❗Medium
deadline: 23 июля 25
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
# Прочитать книгу Познакомьтесь,JS
## 📑 Описание:
- Прочитать 1 из 6 книг Кайла Симпсона

## Шаги к выполнению задачи:
- [x] Прочитать 1 главу и сделать заметки
- [x] Прочитать 2 главу и сделать заметки
- [ ] Прочитать 3 главу и сделать заметки
- [ ] Прочитать 4 главу и сделать заметки