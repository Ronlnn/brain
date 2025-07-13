---
tags:
  - knowledge
zero-links: 
created: <% tp.date.now("DD-MM-YY") %>
---
<%* let title = await tp.system.prompt("Имя заметки"); %>
<%* let zeroLink = await tp.system.prompt("Zero-Link?"); %>
<%tp.file.rename(title)%>
# <%title%>

