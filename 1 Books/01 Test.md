```dataviewjs
dv.table(["Название", "Обложка", "Прогресс"], 
  dv.pages("#books")
    .where(p => p.cover && p.pages && p.pages_read)
    .map(p => {
        const percent = Math.round((p.pages_read / p.pages) * 100);
        const progress = `<p><progress max="100" value="${percent}"></progress> ${percent}%</p>`;
        const image = `${p.cover}`;
        
        return [p.file.link, image, progress];
    })
);

```

```
("![](" + Постер + ")") as Постер,
```