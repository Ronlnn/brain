---
prompt: 
zero-links: "[[Первая работа]]"
tags:
  - planning
status: 📌 Doing
priority: ‼️High
deadline: 27-07-25
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
# Pet=проект "6 проектов"
## 📑 Описание:
- Задача из Проекта - [[Первая работа]]

## Шаги к выполнению задачи:
- [x] 1 проект - Счетчик
- [x] 2 проект - Квиз
- [x] 3 проект - Модальное окно
- [ ] 4 проект - список пользователей
- [ ] 5 проект - 
- [ ] 6 проект - 