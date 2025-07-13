---
tags:
  - knowledge
zero-links: 
created: <% tp.date.now("DD-MM-YY") %>
prompt: <%* let title = await tp.system.prompt("Имя заметки"); %><%tp.file.rename(title)%>
---
# 📑 <%title%>
<% tp.file.cursor() %>
