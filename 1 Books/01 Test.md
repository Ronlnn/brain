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


```dataviewjs
// Используем dataviewjs для более гибкого форматирования
const cards = dv.pages("#books")
  .where(b => !b.file.path.includes("_templates/📘Book"))
  .sort(b => b.status, 'desc');

// Настройки карточек
const settings = {
  preset: "portrait",
  columns: 4,
  imageProperty: "cover",
  imageFit: "cover",
  imageSize: "large",
  imageHeight: "200px",
  fontSize: "small",
  enableShadows: true,
  cardSpacing: 12,
  contentHeight: "60px",
  defaultDateFormat: "DD-MM-YY",
  properties: ["file.link", "author", "rating", "status", "progress"],
};

// Функция для отрисовки progress bar
function renderProgressBar(progress) {
  const percent = Math.min(100, Math.max(0, progress || 0));
  return `
    <div style="width: 100%; background: #eee; border-radius: 5px; margin-top: 4px;">
      <div style="width: ${percent}%; height: 6px; background: #4CAF50; border-radius: 5px;"></div>
    </div>
    <small style="color: #666;">${percent}%</small>
  `;
}

// Генерация карточек
for (const card of cards) {
  const progressBar = card.progress ? renderProgressBar(card.progress) : "";
  dv.span(`
    <div class="datacard">
      ![](${card.cover})
      <h3>${card.file.link}</h3>
      <p>${card.author || "—"}</p>
      <p>Rating: ${card.rating || "—"}</p>
      <p>Status: ${card.status || "—"}</p>
      ${progressBar}
    </div>
  `);
}
```
