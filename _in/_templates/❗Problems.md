---
tags:
  - problems
zero-links: 
created: <% tp.date.now("DD-MM-YY") %>
prompt: <%* let title = await tp.system.prompt("Имя заметки"); %><%tp.file.rename(title)%>
---
# <%title%>
---
## ❓ В чем заключалась проблема? 
<% tp.file.cursor() %>
### 🔹Доп вводные (опционально):
- 
### 🔹Как решил:
- 

### 🔹Что помогло решить проблему?
- 
### 🔹Можно ли как-то улучшить?
- 







