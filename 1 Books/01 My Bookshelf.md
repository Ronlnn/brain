---
banner: "![[_attachments/pixel-banner-images/library.png]]"
banner-x: 51
banner-y: 46
---
```datacards
TABLE 
  file.link as "Title", 
  author, 
  rating, 
  genre, 
  "![]("+cover+")" as cover,
  status,
  pages,
  pages_read,
  "[![](https://progress-bar.xyz/" + 
    (round((pages_read / pages) * 100)) + 
    "?width=200)]" as "📚 Progress"
FROM #books 
WHERE !contains(file.path, "_templates/📘Book")
SORT status DESC

// Settings
preset: portrait
columns: 4
imageProperty: cover
imageFit: cover
imageSize: large
imageHeight: 200px
fontSize: "small"
enableShadows: true
cardSpacing: 12
contentHeight: 60px
defaultDateFormat: DD-MM-YY
properties: [file.link, author, rating, status, progress]

```

