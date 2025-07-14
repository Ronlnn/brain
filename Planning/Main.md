```dataviewjs
const pages = dv.pages('"Goals"').where(p => p.type == "project");

dv.table(["🎯 Цель", "📌 Статус", "🔥 Приоритет", "✅ Прогресс"], 
  pages.map(p => {
    let bar = (value) => {
      return `![bar](https://progress-bar.dev/${value}/?title=&width=100&color=38bdf8)`
    };

    return [
      p.file.link,
      p.status,
      p.priority,
      bar(p.progress || 0)
    ];
  })
);

```
