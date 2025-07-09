---
tags:
  - obsidian
zero-links: "[[Dataview]]"
---

>[!important] Связанное
>```dataview
>TABLE WITHOUT ID
>file.link AS "Файл",file.frontmatter["zero-links"] AS "Связь" 
>FROM #obsidian
>WHERE file.frontmatter["zero-links"] = "[[Dataview]]"
>```


```dataview
TABLE WITHOUT ID
file.link AS "Файл", file.frontmatter["zero-links"] AS "Связь"
FROM [[Dataview]]
WHERE file.name != "Dataview"
```


```dataview
TABLE
file.link AS "File", file.tags AS "Tag"
FROM [[Dataview]] 
GROUP BY file.tags
```