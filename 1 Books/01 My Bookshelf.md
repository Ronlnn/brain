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
  pages 
FROM #books
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
contentHeight: 50px
defaultDateFormat: DD-MM-YY
properties: [file.link, author, rating, status]
```

