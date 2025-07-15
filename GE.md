---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline: 
priority: ❕Low
status: 📫 Inbox
prompt: 
progress:
---
📫 Inbox, 📌 In Progress, ✅ Done, ❕Low, ❗Medium,‼️High

status:: 📫 Inbox
priority::❕Low
# GE



```dataviewjs
    const totalPages = dv.current().totalPages
    const currentPage = dv.current().currentPage
    
    dv.span(
        "![progress](https://progress-bar.xyz/91/"
        + parseInt((currentPage / totalPages) * 100)
        + "/)"
    )
```






