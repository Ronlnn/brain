---
prompt: <%* let title = await tp.system.prompt("Имя заметки"); %><%tp.file.rename(title)%>
tags: 
zero-links:
---
## <%title%>
<%tp.file.cursor()%>