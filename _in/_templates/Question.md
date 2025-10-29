---
tags:
  - question
zero-links:
prompt: <%* let title = await tp.system.prompt("Имя заметки"); %><%tp.file.rename(title)%>
---
# <%title%>
<% tp.file.cursor() %>
