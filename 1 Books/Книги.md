```datacards
TABLE 
  file.link as "Title", 
  author, 
  rating, 
  genre, 
  "![]("+cover+")" as cover,
  status,
  pages 
FROM #books
SORT rating DESC

// Settings
preset: portrait
imageProperty: cover
imageFit: contain
defaultDateFormat: DD-MM-YY
properties: [file.link, author,  genre, pages, rating, status]
```

